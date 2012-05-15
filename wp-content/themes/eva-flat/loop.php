<?php
/**
 * The loop that displays posts.
 *
 * The loop displays the posts and the post content.  See
 * http://codex.wordpress.org/The_Loop to understand it and
 * http://codex.wordpress.org/Template_Tags to understand
 * the tags used in it.
 *
 * This can be overridden in child themes with loop.php or
 * loop-template.php, where 'template' is the loop context
 * requested by a template. For example, loop-index.php would
 * be used if it exists and we ask for the loop with:
 * <code>get_template_part( 'loop', 'index' );</code>
 *
 * @package WordPress
 * @subpackage eva-flat
 * @since EVA Flat 1.0
 */
?>

<?php
	/* Start the Loop.
	 *
	 * Without further ado, the loop:
	 */ ?>
<?php query_posts('showposts=12')?>
<?php while ( have_posts() ) : the_post(); ?>
<?php if ( function_exists( 'get_post_format' ) && 'gallery' == get_post_format( $post->ID ) ): ?>
<?php elseif ( function_exists( 'get_post_format' ) && 'aside' == get_post_format( $post->ID ) ): ?>
<?php else: ?>
<div id="post-<?php the_id(); ?>" class="grid_2 entry">
  <a href="<?php the_permalink(); ?>" class="entry_title"><?php the_title(); ?></a>
  <div class="entry_content"><?php the_content(); ?></div>
</div>
<?php endif;?>
<?php endwhile; // End the loop. Whew. ?>
