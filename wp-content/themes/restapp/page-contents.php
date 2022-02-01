
<?php
/* Template Name: page-contents */
get_header();
    
    if(have_posts()) :
        while(have_posts()) : the_post(); ?>
        <article class="post">

            <h2><a> <?php the_title() ?></a></h2>
           <p> <?php the_content();?> </p>

        </article>
            
    <?php endwhile;
    else :
        echo '<p>No content found</p>';
    endif;

    get_footer();
?>

