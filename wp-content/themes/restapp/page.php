<?php

get_header();
    
    if(have_posts()) :
        while(have_posts()) : the_post(); ?>
        <article class="post page">

            <div class="column-container">
                <div class="title-column">
                    <h2><a href="<?php the_permalink(); ?>"> <?php the_title() ?></a></h2>

                    <p class="post-info">
                        <?php the_time('F jS,Y'); ?> 
                        
                        , Catagory:
                        <?php 
                        $categories = get_the_category();
                            if ( ! empty( $categories ) ) {
                                echo esc_html( $categories[0]->name );
                            }
                        ?>
                        
                        |<a href="<?php echo get_author_posts_url(get_the_author_meta('ID')); ?>" class="name">
                            By <?php the_author(); ?> 
                        </a> 
                     </p>

                </div> <!-- Title End -->
                <div class="text-column">
                    <?php the_excerpt();?>
                </div> <!-- text End -->
                


                
            </div>  <!-- Container End -->
           
        </article>
            
    <?php endwhile;
    else :
        echo '<p>No content found</p>';
    endif;

    get_footer();
?>

