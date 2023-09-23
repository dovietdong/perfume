<?php
session_start();
require_once 'config-paypal.php';
?>
<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>SellingSavvyllc</title>
    <link rel="shortcut icon" href="./assets/images/icon/logo-short.png" />

    <link rel="stylesheet" href="./assets/css/helper.css" />
    <link rel="stylesheet" href="./assets/css/layout.css" />
    <link rel="stylesheet" href="./assets/css/main.css" />
    <link rel="stylesheet" href="./assets/css/responsive.css" />
    <link rel="stylesheet" href="./assets/css/login.css">
    <link rel="stylesheet" href="./assets/css/toast.css">

    <!-- start google font -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Manrope:wght@300;400;600&display=swap" rel="stylesheet">
    <!-- end google font -->

    <!-- toastr hiển thị toast message -->
    <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.0.1/css/toastr.css" rel="stylesheet" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.0.1/js/toastr.js"></script>
</head>

<body>
    <div id="wrapper">
        <?php
        include('admin/format/format.php');
        include('admin/config/config.php');
        include("./pages/main.php");
        ?>
    </div>
    <div id="toast"></div>
    <!-- Messenger Plugin chat Code -->
    <div id="fb-root"></div>
    <div id="fb-customer-chat" class="fb-customerchat"></div>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="./assets/js/toast_message.js"></script>
<script src="./assets/js/message.js"></script>
<script src="./assets/js/validator.js"></script>
<script src="https://www.paypal.com/sdk/js?client-id=<?php echo PAYPAL_SANDBOX ? PAYPAL_SANDBOX_CLIENT_ID : PAYPAL_PROD_CLIENT_ID; ?>&currency=<?php echo $currency; ?>"></script>

<script src="./assets/js/main.js"></script>
<script src="./assets/js/navigation.js"></script>
<script src="./assets/js/select-number.js"></script>
<script src="./assets/js/scrollsnap.js"></script>
<script src="./assets/js/payment.js"></script>
<script src="./assets/js/inputRange.js"></script>
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
<script src="https://kit.fontawesome.com/e63ed424f0.js" crossorigin="anonymous"></script>

</html>