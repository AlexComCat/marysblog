<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="<?php bloginfo('html_type'); ?>; charset=<?php bloginfo('charset'); ?>" />	
        <meta name="generator" content="WordPress <?php bloginfo('version'); ?>" /> <!-- leave this for stats please -->
        <meta name="viewport" content="width=device-width">
        <title><?php bloginfo('name'); ?><?php wp_title(); ?></title>

        <link href="<?= bloginfo('template_directory'); ?>/css/reset.css" rel="stylesheet" type="text/css" />
        <link href="<?= bloginfo('template_directory'); ?>/css/fonts.css" rel="stylesheet" type="text/css" />
        <link href="<?= bloginfo('template_directory'); ?>/css/style.css" rel="stylesheet" type="text/css" />
        <link href="<?= bloginfo('template_directory'); ?>/css/media.css" rel="stylesheet" type="text/css" />

        <link rel="alternate" type="application/rss+xml" title="RSS 2.0" href="<?php bloginfo('rss2_url'); ?>" />
        <link rel="alternate" type="text/xml" title="RSS .92" href="<?php bloginfo('rss_url'); ?>" />
        <link rel="alternate" type="application/atom+xml" title="Atom 0.3" href="<?php bloginfo('atom_url'); ?>" />
        <link rel="pingback" href="<?php bloginfo('pingback_url'); ?>" />
        
        <script type="text/javascript" src="<?= bloginfo('template_directory'); ?>/js/jquery-3.3.1.min.js"></script>
        <script type="text/javascript" src="<?= bloginfo('template_directory'); ?>/js/script.js"></script>

        <?php //wp_get_archives('type=monthly&format=link'); ?>
        <?php //comments_popup_script(); // off by default ?> 
        <?php //wp_head(); ?>
    </head>
    <body>
        <header>
        <div class="sun"></div> 
        <div class="birds"></div>                
    </header>
    <h1 class="logo"><a href="<?php bloginfo('url'); ?>"><?php bloginfo('name'); ?></h1>
    <nav>
        <div class="nav_center">
            <button class="toggle-hamburger toggle-hamburger__animx">
                <span>menu</span>
            </button>
            <section class="nav_section">
                <a href="<?php get_site_url(); ?>/love?cat=10" class="link" id="link_10">О любви</a>
                <a href="<?php get_site_url(); ?>/homeland?cat=9" class="link" id="link_9">О родине</a>
                <a href="<?php get_site_url(); ?>/friends?cat=6" class="link" id="link_6">Друзьям</a>
                <a href="<?php get_site_url(); ?>/reflections?cat=7" class="link" id="link_7">Размышления</a>
                <a href="<?php get_site_url(); ?>/favorite_poets?cat=8" class="link" id="link_8">Стихи любимых поэтов</a>
            </section>
        </div>
    </nav>