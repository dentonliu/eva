﻿<?php
/**
 * The Header for our theme.
 *
 * Displays all of the <head> section and everything up till <div id="main">
 *
 * @package WordPress
 * @subpackage Twenty_Ten
 * @since Twenty Ten 1.0
 */
?><!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
<meta charset="<?php bloginfo( 'charset' ); ?>" />
<title><?php
	/*
	 * Print the <title> tag based on what is being viewed.
	 */
	global $page, $paged;

	wp_title( '|', true, 'right' );

	// Add the blog name.
	bloginfo( 'name' );

	// Add the blog description for the home/front page.
	$site_description = get_bloginfo( 'description', 'display' );
	if ( $site_description && ( is_home() || is_front_page() ) )
		echo " | $site_description";

	// Add a page number if necessary:
	if ( $paged >= 2 || $page >= 2 )
		echo ' | ' . sprintf( __( 'Page %s', 'twentyten' ), max( $paged, $page ) );

	?></title>
<link rel="profile" href="http://gmpg.org/xfn/11" />
<link rel="stylesheet" type="text/css" media="all" href="<?php bloginfo( 'stylesheet_url' ); ?>" />
<link rel="stylesheet" type="text/css" media="all" href="<?php bloginfo('template_directory'); ?>/third-party/960-grid/reset.css" />
<link rel="stylesheet" type="text/css" media="all" href="<?php bloginfo('template_directory'); ?>/third-party/960-grid/text.css" />
<script type="text/javascript" src="<?php bloginfo('template_directory'); ?>/third-party/jquery/jquery-1.7.2.js"></script>
<script type="text/javascript" src="<?php bloginfo('template_directory'); ?>/script.js"></script>
<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>" />
<?php
	/* We add some JavaScript to pages with the comment form
	 * to support sites with threaded comments (when in use).
	 */
	if ( is_singular() && get_option( 'thread_comments' ) )
		wp_enqueue_script( 'comment-reply' );

	/* Always have wp_head() just before the closing </head>
	 * tag of your theme, or you will break many plugins, which
	 * generally use this hook to add elements to <head> such
	 * as styles, scripts, and meta tags.
	 */
	wp_head();
?>
</head>
<body <?php //body_class(); ?>>
<div id="wrapper" class="">
	<div id="header" class="">
		<div id="logo">
			<h1>EVA</h1>
		</div>
		<div id="searchbar" role="search" class=" ">
			<?php get_search_form(); ?>
		</div><!-- #searchbar -->
		<div id="account-info" class=" ">
			<a href="<?php echo home_url( '/wp-login.php' ); ?>">登录</a>
			<a href="<?php echo home_url( '/wp-login.php?action=register'); ?>">注册</a>
		</div><!-- #account-info -->
	</div><!-- #header -->
	<div class="clear"></div>
	<div id="main" class="">
