<?php 
session_start();
// Include the configuration file 
require_once './admin/config/config.php'; 
 
// Include the database connection file 
include_once './config-paypal.php'; 
 
// Include the PayPal API library 
require_once 'PaypalCheckout.class.php'; 
$paypal = new PaypalCheckout; 
 
use Carbon\Carbon;
use Carbon\CarbonInterval;


$response = array('status' => 0, 'msg' => 'Transaction Failed!'); 
if(!empty($_POST['paypal_order_check']) && !empty($_POST['order_id'])){ 
    // Validate and get order details with PayPal API 
    try {  
        $order = $paypal->validate($_POST['order_id']); 
    } catch(Exception $e) {  
        $api_error = $e->getMessage();  
    } 
     
    if(!empty($order)){ 
        $order_id = $order['id']; 
        $intent = $order['intent']; 
        $order_status = $order['status']; 
        $order_time = date("Y-m-d H:i:s", strtotime($order['create_time'])); 
 
        if(!empty($order['purchase_units'][0])){ 
            $purchase_unit = $order['purchase_units'][0]; 
 
            $item_number = $purchase_unit['custom_id']; 
            $item_name = $purchase_unit['description']; 
             
            if(!empty($purchase_unit['amount'])){ 
                $currency_code = $purchase_unit['amount']['currency_code']; 
                $amount_value = $purchase_unit['amount']['value']; 
            } 
 
            if(!empty($purchase_unit['payments']['captures'][0])){ 
                $payment_capture = $purchase_unit['payments']['captures'][0]; 
                $transaction_id = $payment_capture['id']; 
                $payment_status = $payment_capture['status']; 
            } 
 
            if(!empty($purchase_unit['payee'])){ 
                $payee = $purchase_unit['payee']; 
                $payee_email_address = $payee['email_address']; 
                $merchant_id = $payee['merchant_id']; 
            } 
        } 
 
        $payment_source = ''; 
        if(!empty($order['payment_source'])){ 
            foreach($order['payment_source'] as $key=>$value){ 
                $payment_source = $key; 
            } 
        } 
 
        if(!empty($order['payer'])){ 
            $payer = $order['payer']; 
            $payer_id = $payer['payer_id']; 
            $payer_name = $payer['name']; 
            $payer_given_name = !empty($payer_name['given_name'])?$payer_name['given_name']:''; 
            $payer_surname = !empty($payer_name['surname'])?$payer_name['surname']:''; 
            $payer_full_name = trim($payer_given_name.' '.$payer_surname); 
            $payer_full_name = filter_var($payer_full_name, FILTER_SANITIZE_STRING,FILTER_FLAG_STRIP_HIGH); 
 
            $payer_email_address = $payer['email_address']; 
            $payer_address = $payer['address']; 
            $payer_country_code = !empty($payer_address['country_code'])?$payer_address['country_code']:''; 
        } 
 
        if(!empty($order_id) && $order_status == 'COMPLETED'){ 
            // Check if any transaction data is exists already with the same TXN ID 
            $sqlQ = "SELECT id FROM transactions WHERE transaction_id = ?"; 
            $stmt = $mysqli->prepare($sqlQ);  
            $stmt->bind_param("s", $transaction_id); 
            $stmt->execute(); 
            $stmt->bind_result($row_id); 
            $stmt->fetch(); 
             
            $payment_id = 0; 
            if(!empty($row_id)){ 
                $payment_id = $row_id; 
            }else{ 
                // Insert transaction data into the database 
                $sqlQ = "INSERT INTO transactions (item_number,item_name,item_price,item_price_currency,payer_id,payer_name,payer_email,payer_country,merchant_id,merchant_email,order_id,transaction_id,paid_amount,paid_amount_currency,payment_source,payment_status,created,modified) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,NOW())"; 
                $stmt = $mysqli->prepare($sqlQ); 
                $stmt->bind_param("ssdsssssssssdssss", $item_number, $item_name, $itemPrice, $currency, $payer_id, $payer_full_name, $payer_email_address, $payer_country_code, $merchant_id, $payee_email_address, $order_id, $transaction_id, $amount_value, $currency_code, $payment_source, $payment_status, $order_time); 
                $insert = $stmt->execute(); 
    
                // them orders
                $order_code = rand(0, 9999);
                $order_date = 0;
                $account_id = $_SESSION['account_id'];
                $delivery_id = $_SESSION['delivery_id'];
                $total_amount = $_SESSION['total_amount'];
                $order_type = 6;
                $order_status_orders = 0;
                $insert_order1 = "INSERT INTO orders(order_code, order_date, account_id, delivery_id, total_amount, order_type, order_status) 
                VALUE ($order_code, $order_date, $account_id, $delivery_id, $total_amount, $order_type, $order_status_orders)";
                $query_insert_order = mysqli_query($mysqli, $insert_order1);

                //them orders_detail
                if ($query_insert_order) {
                    foreach ($_SESSION['cart'] as $cart_item) {
                        $product_id = $cart_item['product_id'];
                        $query_get_product = mysqli_query($mysqli, "SELECT * FROM product WHERE product_id = $product_id");
                        $product = mysqli_fetch_array($query_get_product);
                        if ($product['product_quantity'] >= $cart_item['product_quantity']) {
                            $product_quantity = $cart_item['product_quantity'];
                            $quantity = $product['product_quantity'] - $product_quantity;
                            $quantity_sales = $product['quantity_sales'] + $product_quantity;
                            $product_price = $cart_item['product_price'];
                            $product_sale = $cart_item['product_sale'];
                            $insert_order_detail = "INSERT INTO order_detail(order_code, product_id, product_quantity, product_price, product_sale) VALUE ('" . $order_code . "', '" . $product_id . "', '" . $product_quantity . "', '" . $product_price . "', '" . $product_sale . "')";
                            mysqli_query($mysqli, $insert_order_detail);
                            mysqli_query($mysqli, "UPDATE product SET product_quantity = $quantity, quantity_sales = $quantity_sales WHERE product_id = $product_id");
                        }
                    }
                    $update_total_amount = "UPDATE orders SET total_amount = $total_amount WHERE order_code = $order_code";
                    $query_total_amount = mysqli_query($mysqli, $update_total_amount);
    
                    unset($_SESSION['cart']);
                    //header('Location:../../index.php?page=thankiu&order_type=1');
                }

                // them dia chi giao hang
                // $delivery_id = $_SESSION['delivery_id'] ;
                // $delivery_name = $_SESSION['delivery_name'];
                // $delivery_address = $_SESSION['delivery_address'];
                // $delivery_phone = $_SESSION['delivery_phone'] ;
                // $delivery_note = $_SESSION['delivery_note'];

                // Lay thong tin thong qua phuong thuc POST
                $delivery_name = $_POST['delivery_name'];
                $delivery_address = $_POST['delivery_address'];
                $delivery_phone = $_POST['delivery_phone'];
                $delivery_note = $_POST['delivery_note'];
                $order_type = $_POST['order_type'];

                // Gan gia thong tin giao hang vao session delivery
                $_SESSION['delivery_id'] = $delivery_id;
                $_SESSION['delivery_name'] = $delivery_name;
                $_SESSION['delivery_address'] = $delivery_address;
                $_SESSION['delivery_phone'] = $delivery_phone;
                $_SESSION['delivery_note'] = $delivery_note;

                $insert_delivery = "INSERT INTO delivery(delivery_id, account_id, delivery_name, delivery_phone, delivery_address, delivery_note) VALUE ($delivery_id, $account_id, '$delivery_name', '$delivery_phone', '$delivery_address', '$delivery_note')";
                mysqli_query($mysqli, $insert_delivery);

                if($insert){ 
                    $payment_id = $stmt->insert_id; 
                } 

                // $insert_order1 = "INSERT INTO orders(order_code, order_date, account_id, delivery_id, total_amount, order_type, order_status) 
                // VALUE (1, 1, 1, 1, 1, 1, 1)";
                // $query_insert_order = mysqli_query($mysqli, $insert_order1);
            } 
 
            if(!empty($payment_id)){ 
                $ref_id_enc = base64_encode($transaction_id); 
                $response = array('status' => 1, 'msg' => 'Transaction completed!', 'ref_id' => $ref_id_enc); 
            } 
        } 
    }else{ 
        $response['msg'] = $api_error; 
    } 
} 
echo json_encode($response); 
?>