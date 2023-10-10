<?php 
 
// Product Details 
$itemNumber = "DP12345"; 
$itemName = "Demo Product"; 
$itemPrice = 100;  
$currency = "USD"; 
 
/* PayPal REST API configuration 
 * You can generate API credentials from the PayPal developer panel. 
 * See your keys here: https://developer.paypal.com/dashboard/ 
 */ 
define('PAYPAL_SANDBOX', true); //TRUE=Sandbox | FALSE=Production 
define('PAYPAL_SANDBOX_CLIENT_ID', 'Ab1fEMmiyQo9T6u0rWEkLJyLBkPHzzT5jSRAnwfez4TvCRjjmQo8PeADViZbPLGw_VFXYk89fifxD1qZ'); 
define('PAYPAL_SANDBOX_CLIENT_SECRET', 'EJp1WmB3XcR-vRSLHVotdwJ_MZTGKxO7vMeG-KcdrmPlMfr25r-WhJ2JakJ8VMWZ1WEHz93vgqx9_Ixp'); 
define('PAYPAL_PROD_CLIENT_ID', ''); 
define('PAYPAL_PROD_CLIENT_SECRET', ''); 
  
// Database configuration  
// define('DB_HOST', 'kingdomvn.store');  
// define('DB_USERNAME', 'u950735164_perfume');  
// define('DB_PASSWORD', 'Kingdomvn@123');  
// define('DB_NAME', 'u950735164_perfume'); 
 
?>
