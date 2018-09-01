<?php 
/**
 * The main template file
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * E.g., it puts together the home page when no home.php file exists.
 *
 * @link http://chist765.beget.tech
 *
 * @package WordPress
 * @subpackage Marysblog
 * @since Marysblog 1.0
 */	

get_header(); ?>
    <div class="cont_wrap">
        <main>
            <article>
                <?php
                $do_not_duplicate = array();
                $categories = get_categories(); 
                foreach ( $categories as $category ) {
                    $args = array(
                        'cat' => $category->term_id,
                        'post_type' => 'post',
                        'posts_per_page' => '1',
                    );  
                $query = new WP_Query( $args );
                
                if ( $query->have_posts() ) { ?>
                
                    <!-- <section class="<?php echo $category->name; ?> listing"> -->
                
                        <?php while ( $query->have_posts() ) {
                
                            $query->the_post();
                            $do_not_duplicate[] = $post->ID;
                            ?>
                            <h2 class="caption"><?php the_title(); ?></h2>
                            <?php the_content(); ?>
                            <p class="cont_edit"><?php edit_post_link('Редактировать пост'); ?></p>
                            <hr>
                        <?php } ?>
                
                    <!-- </section> -->
                
                <?php } 
                wp_reset_postdata();
                }
                ?>
            </article>          
        </main>
       <?php get_sidebar(); ?>
    </div>
<?php get_footer(); ?>