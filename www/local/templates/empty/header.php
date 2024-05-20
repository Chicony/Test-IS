<?
if(!defined('B_PROLOG_INCLUDED') || B_PROLOG_INCLUDED !== true)
	die();
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><? $APPLICATION->ShowTitle(); ?></title>
		<? $APPLICATION->ShowHead(); ?>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700&display=swap" rel="stylesheet">
    <? $APPLICATION->SetAdditionalCSS(SITE_TEMPLATE_PATH.'/css/lib/tiny-slider.css'); ?>
		<? $APPLICATION->SetAdditionalCSS(SITE_TEMPLATE_PATH.'/css/style.css'); ?>
</head>

<body>
	<? $APPLICATION->ShowPanel(); ?>
	<header>
			<div class="header">
					<img src="<?= SITE_TEMPLATE_PATH ?>/images/icons/logo.svg" alt="Logo iSpring" class="header__logo">
					<nav class="header__menu menu">
							<span class="menu__link">Products
							</span>
							<a href="#form" class="menu__link">Pricing</a>
							<a href="#questions" class="menu__link">Support</a>
							<a href="#enthusiasts" class="menu__link">Customers</a>
							<a href="#companies" class="menu__link">Company</a>
							<a href="#newsletters" class="menu__link">Blog</a>
					</nav>
					<nav class="header__navigation navigation">
							<span class="navigation__link">EN</span>
							<img src="<?= SITE_TEMPLATE_PATH ?>/images/icons/recycle_bin.svg" alt="recycle bin" class="navigation__link">
							<img src="<?= SITE_TEMPLATE_PATH ?>/images/icons/loop.svg" alt="Loop" class="navigation__link">
							<span class="navigation__link">Log in</span>
					</nav>
					<div class="header__menu-small menu-small">
							<a href="#form" class="menu-small__link">Products
							</a>
							<a href="#form" class="menu-small__link">Pricing</a>
							<a href="#questions" class="menu-small__link">Support</a>
							<a href="#enthusiasts" class="menu-small__link">Customers</a>
							<a href="#companies" class="menu-small__link">Company</a>
							<a href="#newsletters" class="menu-small__link">Blog</a>
					</div>
			</div>
			<hr class="hr-line">
	</header>