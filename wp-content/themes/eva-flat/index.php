<?php
/**
 * The main template file.
 *
 *
 * @package WordPress
 * @subpackage eva-flat
 * @since EVA Flat 1.0
 */

get_header(); ?>
		<div id="content" role="main" class="grid_9">
		测试数据
		<?php
		/* Run the loop to output the posts.
		 * If you want to overload this in a child theme then include a file
		 * called loop-index.php and that will be used instead.
		 */
		 get_template_part( 'loop', 'index' );
		?>
		</div><!-- #content -->
<?php get_sidebar(); ?>
<?php get_footer(); ?>