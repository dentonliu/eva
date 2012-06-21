
</div><!-- #page -->

<footer id="colophon" role="contentinfo">
    <div id="site-generator">
        <?php do_action( 'pinblack_credits' ); ?>
        <a href="<?php echo esc_url( __( 'http://wordpress.org/', 'pinblack' ) ); ?>" title="<?php esc_attr_e( 'Semantic Personal Publishing Platform', 'pinblack' ); ?>" rel="generator"><?php printf( __( 'Proudly powered by %s', 'pinblack' ), 'WordPress' ); ?></a>
        <span class="sep"> | </span>
        <a href="<?php echo esc_url( __( 'http://wpthemes.co.nz/', 'pinblack' ) ); ?>" rel="designer"><?php printf( __( '%1$s Theme by %2$s', 'pinblack' ), 'PinBlack', 'WPThemes.co.nz' ); ?></a> 
    </div>
</footer><!-- #colophon -->
    
<?php wp_footer(); ?>

</body>
</html>