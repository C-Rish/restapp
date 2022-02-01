<link rel="stylesheet" href="style.css?v=<?php echo time(); ?>">
<?php

get_header();
?>

<div class="main-column">
    <div class="admin-quick-add">
		<h3>Add Post Here</h3>
        Title
		<input id = 'post-title' type="text" name="title" placeholder="Title">
        Description
		<textarea id = 'post-desc' name="content" placeholder="Content"></textarea>
        <div class="form-numbers">

        <div>
            Category ID
            <input id = 'category' type="number" name="Category" placeholder="Category">
        </div>
        <div>
            Image ID
            <input id = 'media' type="number" name="Media" placeholder="Media">
        </div>
        </div>

		<button id="quick-add-button">Create Post</button>
	</div>
        <?php
        if(have_posts()) :
            while(have_posts()) : the_post(); 
            // Part of the code is in content
            get_template_part('content');
            
        ?>
        <!-- <button id="post-button">Load</button>
        <div id="post-container"></div> -->

        <?php
            endwhile;
            else :
                echo '<p>No content found</p>';
            endif;
            
        ?>
</div>
<?php
    get_footer();
?>

