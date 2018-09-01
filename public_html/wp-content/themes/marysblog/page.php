<?php
/*
/**
 * The template for displaying pages
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages and that
 * other "pages" on your WordPress site will use a different template.
 *
 * @package WordPress
 * @subpackage Marysblog
 * @since Marysblog 1.0
 */

get_header(); ?>

    <div class="cont_wrap">
        <main>
            <article>
                
				<!-- <p><?php single_post_title() ?></p> -->
				
                <?php if(have_posts()) : ?>

					<?php if(isset($_GET['cat'])) {
							query_posts('cat='.$_GET['cat']);
					};?>

                    <?php while(have_posts()) : the_post(); ?>
                        <h2 class="caption"><?php the_title(); ?></h2>
                        <?php the_content(); ?>
                        <p class="cont_edit"><?php edit_post_link('Редактировать пост'); ?></p>
                        <hr>

                    <?php endwhile; ?>
                <?php endif; ?>              
            </article>          
        </main>
       <?php get_sidebar(); ?>
    </div>
<?php get_footer(); ?>