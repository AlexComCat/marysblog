<?php 
// функция виджетирования сайдбара
if ( function_exists('register_sidebar') )
    register_sidebar();
	
// функция поддержки миниатюр	
if ( function_exists( 'add_theme_support' ) )
add_theme_support( 'post-thumbnails' );

?>