<link rel="stylesheet" href="style.css?v=<?php echo time(); ?>">

<?php
get_header();
    
    if(have_posts()) :
        while(have_posts()) : the_post(); 
        
        the_content();
            
    endwhile;
    else :
        echo '<p>No content found</p>';
    endif;

    get_footer();
?>

