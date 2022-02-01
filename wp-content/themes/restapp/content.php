<article class="post page <?php if (has_post_thumbnail() ) { ?> has-thumbnail <?php } ?>">

<div class="column-container">
    <div class="title-column">
        <h2><a href="<?php the_permalink(); ?>"> <?php the_title() ?></a></h2>

        <p class="post-info">
            <?php the_time('F jS,Y'); ?> 
           <!-- Displays the category -->
            
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
    
    <div class="image-column">
        <?php the_post_thumbnail('small-thumbnail'); ?>
    </div> <!-- Image End -->

    <div class="text-column">
    
        <?php if($post->post_excerpt){ ?>
        <p> 
        <?php echo get_the_excerpt();?> 
        <!-- This creates a read more link -->
        <a href="<?php the_permalink(); ?>">Read More</a>
            </p>

            <?php }else {
                the_content();
            } ?>

    </div> <!-- text End -->

    <div class="delete-column">
        <button class="quick-delete-button">Delete Post</button>
    </div> <!-- Delete End -->
    
</div>  <!-- Container End -->

</article>