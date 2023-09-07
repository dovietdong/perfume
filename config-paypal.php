<?php 
 
// Product Details 
$itemNumber = "DP12345"; 
$itemName = "Demo Product"; 
$itemPrice = 1;  
$currency = "USD"; 
 
/* PayPal REST API configuration 
 * You can generate API credentials from the PayPal developer panel. 
 * See your keys here: https://developer.paypal.com/dashboard/ 
 */ 
define('PAYPAL_SANDBOX', false); //TRUE=Sandbox | FALSE=Production 
define('PAYPAL_SANDBOX_CLIENT_ID', 'AdVEFGgmVdwvhEgW_3BsbqCq4Bo3JM3R1AEfVRegA4l2uaXyd2RQle3aDItWBtJT2q-Ckhd6gyev2Wnv'); 
define('PAYPAL_SANDBOX_CLIENT_SECRET', 'EObgtSR4Tv99ye-UyOekzSXukweOzlalyyGAK_w5lwlv0HM3P2pNZA571DOpyQxOmsD0LNI6ajH7xyVs'); 
define('PAYPAL_PROD_CLIENT_ID', 'AT0f05LN5fpPpztgmcdkeqU3lx5Gw5W3Ogag5vi_ev9-R7WayqNEY817vLik_yLr2D00y58sMYXw1WT3'); 
define('PAYPAL_PROD_CLIENT_SECRET', 'EGbBcnIJFnlRZ-prfZpPbCF8sR7BFXTHAyuybObBCf7u5AyzHZ0OYvFugC5iDb9lh8b0x_EIOh7da-YI'); 
  
// Database configuration  
// define('DB_HOST', 'kingdomvn.store');  
// define('DB_USERNAME', 'u950735164_perfume');  
// define('DB_PASSWORD', 'Kingdomvn@123');  
// define('DB_NAME', 'u950735164_perfume'); 
 
?>
