<div id="post-<?php the_ID(); ?>" class="post-home video">
		<div class="post-thumbnail">
			<?php the_content(); ?>
		</div>
		<div class="post-info">
			<div class="views"><?php if(function_exists('the_views')) {$views = the_views(0);preg_match('/\d+/', $views, $match);echo '<span>'.$match[0].'</span>';} ?></div>
			<div class="comments"><span><?php comments_popup_link('0', '1', '%'); ?></span></div>
			<?php if(function_exists('wizylike')) wizylike('button');  ?>
		</div>
</div>