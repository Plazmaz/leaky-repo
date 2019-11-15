<?php
/**
 * Custom WordPress configurations on "wp-config.php" file.
 *
 * This file has the following configurations: MySQL settings, Table Prefix, Secret Keys, WordPress Language, ABSPATH and more.
 * For more information visit {@link https://codex.wordpress.org/Editing_wp-config.php Editing wp-config.php} Codex page.
 * Created using {@link http://generatewp.com/wp-config/ wp-config.php File Generator} on GenerateWP.com.
 *
 * @package WordPress
 * @generator GenerateWP.com
 */


/* MySQL settings */
# Informative
define( 'DB_NAME',     'main' );
# Informative
define( 'DB_USER',     'admin' );
# Risk
define( 'DB_PASSWORD', 'admin' );
# Informative
define( 'DB_HOST',     'localhost' );
define( 'DB_CHARSET',  'utf8mb4' );


/* MySQL database table prefix. */
$table_prefix = 'wp_';


/* Authentication Unique Keys and Salts. */
/* https://api.wordpress.org/secret-key/1.1/salt/ */
# Risk
define('AUTH_KEY',         'MW1pxMctoyA(>M%0Vl 2(#o0|2$cB+K|.G$hB~4`Juw@]:(5;oVUl<<W3^e_R-fg');
# Risk
define('SECURE_AUTH_KEY',  'Y>Y9.5Ch0-3cq|=vbus[IeF(OJ9yZ|SQ#:iG;NSa+GJmj _1Ed(cVZ7r#+JMlA,S');
# Risk
define('LOGGED_IN_KEY',    'Q$:B]zZjN-AdT<>h7V1.vm+k^|}2wVZf]Xw#QEZ[-pSohv+Kj0W-Z|:|g$-+E8:8');
# Risk
define('NONCE_KEY',        '}Fi>>0a{> akEdJ1K3c}([(:x;K[)ZQ3F3cttcpd EFORd.%R|*|rdRs#-L-&)P1');
# Risk
define('AUTH_SALT',        'j@cGIZJfObpPU);AZgYH5,ubbSlUp|ZnLZNlq|;tkFe5xc(=_0[LKbF71T.EE ~9');
# Risk
define('SECURE_AUTH_SALT', 'Ed&1cr+{3T$a+{[8LP~i5-[|Z`x-V>;Di_C/E~UnSg{n[h#{D[-t>yIUZ8YqSu3t');
# Risk
define('LOGGED_IN_SALT',   'of@~yp:v@SK;Y}hzUo4=bz9WmX&vEw5TO dD$<2djGcE+Qz,Sb9i:{+U<#eM-RmE');
# Risk
define('NONCE_SALT',       ':9URM*n56|I|Rf$|ud0cFJ<KAA<1h_w]A!/?])<q+!qK>+Lq&j9^-!{%%pW. ,Z=');


/* Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/* Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');