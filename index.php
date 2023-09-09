<?php 
session_start();
// Include the configuration file  
require_once './config-paypal.php'; 
?>
<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>SellingSavvyllc</title>
    <link rel="shortcut icon" href="./assets/images/icon/logo-short.png" />
    <!-- start css -->
    <link rel="stylesheet" href="./assets/css/helper.css" />
    <link rel="stylesheet" href="./assets/css/layout.css" />
    <link rel="stylesheet" href="./assets/css/main.css" />
    <link rel="stylesheet" href="./assets/css/responsive.css" />
    <link rel="stylesheet" href="./assets/css/login.css">
    <link rel="stylesheet" href="./assets/css/toast.css">
    <!-- end css -->

    <!-- start google font -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Manrope:wght@300;400;600&display=swap" rel="stylesheet">

    <!-- <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=Assistant:wght@400;700&display=swap" rel="stylesheet" /> -->

    <!-- <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=Lato:wght@400;700&family=Roboto:wght@300;500&display=swap" rel="stylesheet" /> -->

    <!-- end google font -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="./assets/js/toast_message.js"></script>
    <script src="./assets/js/message.js"></script>
    <script src="./assets/js/validator.js"></script>

    <!-- paypal SDK -->
    <script src="https://www.paypal.com/sdk/js?client-id=<?php echo PAYPAL_SANDBOX?PAYPAL_SANDBOX_CLIENT_ID:PAYPAL_PROD_CLIENT_ID; ?>&currency=<?php echo $currency; ?>"></script>
</head>

<body>
    <div id="wrapper">
        <?php
    session_start();
    include('admin/format/format.php');
    include('admin/config/config.php');
    include("./pages/main.php");
    ?>
    </div>
    <div id="toast">
    </div>
    <script src="./assets/js/main.js"></script>
    <script src="./assets/js/navigation.js"></script>
    <script src="./assets/js/select-number.js"></script>
    <script src="./assets/js/scrollsnap.js"></script>
    <script src="./assets/js/payment.js"></script>
    <script src="./assets/js/inputRange.js"></script>
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    <script src="https://kit.fontawesome.com/e63ed424f0.js" crossorigin="anonymous"></script>
    <!-- Messenger Plugin chat Code -->
    <div id="fb-root"></div>

    <!-- Your Plugin chat code -->
    <div id="fb-customer-chat" class="fb-customerchat">
    </div>

    <script>
    // var chatbox = document.getElementById('fb-customer-chat');
    // chatbox.setAttribute("page_id", "101046545371764");
    // chatbox.setAttribute("attribution", "biz_inbox");
    </script>

    <!-- Your SDK code -->
    <script>
    // window.fbAsyncInit = function() {
    //     FB.init({
    //         xfbml: true,
    //         version: 'v16.0'
    //     });
    // };

    // (function(d, s, id) {
    //     var js, fjs = d.getElementsByTagName(s)[0];
    //     if (d.getElementById(id)) return;
    //     js = d.createElement(s);
    //     js.id = id;
    //     js.src = 'https://connect.facebook.net/vi_VN/sdk/xfbml.customerchat.js';
    //     fjs.parentNode.insertBefore(js, fjs);
    // }(document, 'script', 'facebook-jssdk'));
    </script>

<!-- thanh toan paypal -->
<script>
paypal.Buttons({
    // Sets up the transaction when a payment button is clicked
    createOrder: (data, actions) => {
        return actions.order.create({
            "purchase_units": [{
                "custom_id": "<?php echo $itemNumber; ?>",
                "description": "thanh toan paypal",
                "amount": {
                    "currency_code": "<?php echo $currency; ?>",
                    "value": <?php echo $itemPrice; ?>,
                    "breakdown": {
                        "item_total": {
                            "currency_code": "<?php echo $currency; ?>",
                            "value": <?php echo $itemPrice; ?>
                        }
                    }
                },
                "items": [
                    {
                        "name": "<?php echo $itemName; ?>",
                        "description": "<?php echo $itemName; ?>",
                        "unit_amount": {
                            "currency_code": "<?php echo $currency; ?>",
                            "value": <?php echo $itemPrice; ?>
                        },
                        "quantity": "1",
                        "category": "DIGITAL_GOODS"
                    }
                ]
            }]
        });
    },
    // Finalize the transaction after payer approval
    onApprove: (data, actions) => {
        return actions.order.capture().then(function(orderData) {
            setProcessing(true);

            var postData = {paypal_order_check: 1, order_id: orderData.id};
            fetch('paypal_checkout_validate.php', {
                method: 'POST',
                headers: {'Accept': 'application/json'},
                body: encodeFormData(postData)
            })
            .then((response) => response.json())
            .then((result) => {
                if(result.status == 1){
                    window.location.href = "payment-status.php?checkout_ref_id="+result.ref_id;
                    //window.location.href = "index.php?page=thankiu&order_type=1";
                }else{
                    const messageContainer = document.querySelector("#paymentResponse");
                    messageContainer.classList.remove("hidden");
                    messageContainer.textContent = result.msg;
                    
                    setTimeout(function () {
                        messageContainer.classList.add("hidden");
                        messageText.textContent = "";
                    }, 5000);
                }
                setProcessing(false);
            })
            .catch(error => {
                console.log(error);
            });
        });
    }
}).render('#paypal-button-container');

const encodeFormData = (data) => {
  var form_data = new FormData();

  for ( var key in data ) {
    form_data.append(key, data[key]);
  }
  return form_data;   
};

// Show a loader on payment form processing
const setProcessing = (isProcessing) => {
    if (isProcessing) {
        document.querySelector(".overlay").classList.remove("hidden");
    } else {
        document.querySelector(".overlay").classList.add("hidden");
    }
};    
</script>
</body>
</html>