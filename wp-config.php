<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'restdb' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         ' O5j,B 3GwHUA%6jbRwDa w.xQ48(i}`LYz)]%H(G$]kL-bv_RY[-1%VV4udK{j]' );
define( 'SECURE_AUTH_KEY',  '_TpiW{,kwM$.+VIPD/p#=4Js?ntBuK`,ApdPEc0gMrRTM/*DJ>#G?Fc.vd_BFq/5' );
define( 'LOGGED_IN_KEY',    'b9yB,RI%3$ot]0G.qRWH1vBM2]j0Rh.Md5^r8MGUMs>@)7<Q4$#[&e1HjXxF?z#f' );
define( 'NONCE_KEY',        'iF:bCW{J@}*U wEH3Zv{?;N#v%A9zY+Lexws>@L^l[_Fv ^IZU/7|4qS*$5^5T?y' );
define( 'AUTH_SALT',        'IvIZf!QxCR^,^Lt7va-nPSW[T%]#]P2X6k#*%nmx/I+gm!+oY:)f/J *M<D)Dz*8' );
define( 'SECURE_AUTH_SALT', 'K=].[*Hy4+;8CVok>g1vKj6EWtK>&F LHA;3kgaTv4!R99vIm$Jn&:_+FNdPh@Zd' );
define( 'LOGGED_IN_SALT',   '%,.eS ?=Qw%Mgsap<1R%f*()svctw/3X[j(Yv@nj{s&L2BD4RRw1Qvk$xYIL+*=?' );
define( 'NONCE_SALT',       '>nbe,?8Yr FQeuk NU(m7mP(s &EjLGK9M6=jGtzkvEM.F7Wx7Ovc=o3@;G;x<p8' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
