<?php
/** 
 * WordPress 基础配置文件。
 *
 * 本文件包含以下配置选项：MySQL 设置、数据库表名前缀、密匙、
 * WordPress 语言设定以及 ABSPATH。如需更多信息，请访问
 * {@link http://codex.wordpress.org/zh-cn:%E7%BC%96%E8%BE%91_wp-config.php
 * 编辑 wp-config.php} Codex 页面。MySQL 设置具体信息请咨询您的空间提供商。
 *
 * 这个文件用在于安装程序自动生成 wp-config.php 配置文件，
 * 您可以手动复制这个文件，并重命名为“wp-config.php”，然后输入相关信息。
 *
 * @package WordPress
 */

// ** MySQL 设置 - 具体信息来自您正在使用的主机 ** //
/** WordPress 数据库的名称 */
define('DB_NAME', 'eva');

/** MySQL 数据库用户名 */
define('DB_USER', 'root');

/** MySQL 数据库密码 */
define('DB_PASSWORD', 'abc123');

/** MySQL 主机 */
define('DB_HOST', 'localhost');

/** 创建数据表时默认的文字编码 */
define('DB_CHARSET', 'utf8');

/** 数据库整理类型。如不确定请勿更改 */
define('DB_COLLATE', '');

/**#@+
 * 身份认证密匙设定。
 *
 * 您可以随意写一些字符
 * 或者直接访问 {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org 私钥生成服务}，
 * 任何修改都会导致 cookie 失效，所有用户必须重新登录。
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'G9}Ky8bQluHx-;kyd[Nl)fGN8c)p2HP_Fv]u@b (E|oYVm]jbCal)L?bcn1(XXJm');
define('SECURE_AUTH_KEY',  'zf7xg#}iC7>^F%^s,&6$m}RsK9Ig8vu{i3{QY_^`Ni[.#]wk-&w8xz`CBlAbnW!C');
define('LOGGED_IN_KEY',    '1nZ8q8-9UZJaqd&n8Y}iNS+L.Pedc+h+,;_2)wY~@:B)j5n~nDNA@mzH}@Vvobzh');
define('NONCE_KEY',        '8E@K<u,XegCtB_K^K}Yjn{cXM& Ta9ACF8UATM~$,7Jw2E,:4Pa4$)Fq}7P]EM+t');
define('AUTH_SALT',        '`4hN_nkG}6q:NACRVmZm|b5SC< uoWp](x<ur`# r-g3-Oo*.{QTKjKbxqoSB4mG');
define('SECURE_AUTH_SALT', '{cIU9hJ/2&Y3(:l]UR+;?;gaGx9}C*S,bxowgh^Ee<V!9qWRqV70$3!O20gy yk1');
define('LOGGED_IN_SALT',   'h~}n@f0dH:0e4`:l $hpaktl~{@ B^X_6:O(tjD!Bt.gQm !M[[_@6JBAH4dwcmT');
define('NONCE_SALT',       'CJ6xSsVGmITJ`i5f#7-9,~Rk@O}*)50C Ib+y[~C?uD!r7>$uw,,N-u8e`[C`tzD');

/**#@-*/

/**
 * WordPress 数据表前缀。
 *
 * 如果您有在同一数据库内安装多个 WordPress 的需求，请为每个 WordPress 设置不同的数据表前缀。
 * 前缀名只能为数字、字母加下划线。
 */
$table_prefix  = 'eva_';

/**
 * WordPress 语言设置，中文版本默认为中文。
 *
 * 本项设定能够让 WordPress 显示您需要的语言。
 * wp-content/languages 内应放置同名的 .mo 语言文件。
 * 要使用 WordPress 简体中文界面，只需填入 zh_CN。
 */
define('WPLANG', 'zh_CN');

/**
 * 开发者专用：WordPress 调试模式。
 *
 * 将这个值改为“true”，WordPress 将显示所有用于开发的提示。
 * 强烈建议插件开发者在开发环境中启用本功能。
 */
define('WP_DEBUG', false);

/* 好了！请不要再继续编辑。请保存本文件。使用愉快！ */

/** WordPress 目录的绝对路径。 */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** 设置 WordPress 变量和包含文件。 */
require_once(ABSPATH . 'wp-settings.php');
