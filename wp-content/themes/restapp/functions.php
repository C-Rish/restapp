<?php

function restApp() {
    wp_enqueue_style('style', get_stylesheet_uri());
    wp_enqueue_script('main_js', get_template_directory_uri() . '/js/main.js',NULL,1.0,true);
    wp_localize_script('main_js', 'customData', array(
        'nonce' => wp_create_nonce('wp_rest')
    ));
}

add_action('wp_enqueue_scripts','restApp');


// Customized exceprt word count
function custom_excerpt() {
    return 25;
}

add_filter('excerpt_length','custom_excerpt');

// Theme setup
function restapp_setup() {
    // navigation menus
    register_nav_menus(array (
        'primary' => __( 'Pirmary Menu')
    ));
    
    // Add feature image support
    add_theme_support('post-thumbnails');

    add_image_size('small-thumbnail', 400, 200, true);
    add_image_size('banner-image', 1000, 400, array('left','top'));

    // Add post format support, optional
    add_theme_support('post-formats', array('aside','gallery','link'));
}

add_action('after_setup_theme','restapp_setup');

