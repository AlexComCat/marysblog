
<?php get_header(); ?>
    <div class="cont_wrap">
        <main>
            <article>
                8888
                <?php if(have_posts()) : ?>
                    <?php	query_posts('cat=6');?>
                    <?php while(have_posts()) : the_post(); ?>
                        <h2 class="caption"><?php the_title(); ?></h2>
                        <?php the_content(); ?>
                        <?php edit_post_link('Редактировать'); ?>
                        <hr>

                    <?php endwhile; ?>
                <?php endif; ?>
                                
            </article>          
        </main>
       <?php get_sidebar(); ?>
    </div>
<?php get_footer(); ?>