<?if(!defined("B_PROLOG_INCLUDED") || B_PROLOG_INCLUDED!==true)die();
/** @var array $arParams */
/** @var array $arResult */
/** @global CMain $APPLICATION */
/** @global CUser $USER */
/** @global CDatabase $DB */
/** @var CBitrixComponentTemplate $this */
/** @var string $templateName */
/** @var string $templateFile */
/** @var string $templateFolder */
/** @var string $componentPath */
/** @var CBitrixComponent $component */
$this->setFrameMode(true);
?>
<div class="news-list">
<?if($arParams["DISPLAY_TOP_PAGER"]):?>
	<?=$arResult["NAV_STRING"]?><br />
<?endif;?>
<? if($arResult["ITEMS"]): ?>
	<div class="content__feedback feedback" id="companies"> <!-- Here -->
		<p class="feedback__title title">See how companies benefit from partnering with iSpring</p>
		<div class="feedback__gallery gallery" id="sliderControls">
				<span class="feedback__prev"></span>
				<span class="feedback__next"></span>
		</div>
		<div class="feedback__block" id="slider">
			<?foreach($arResult["ITEMS"] as $arItem):?>
				<div class="feedback__card-wrapper">
					<div class="feedback__card">
						<div class="feedback__phrase">
							<p class="feedback__quote">
								<?echo $arItem["NAME"]?>
							</p>
							<img src="<?= SITE_TEMPLATE_PATH ?>/images/icons/yellow_blocks.svg" class="feedback__yellow-blocks" alt="yellow blocks">
						</div>
						<div class="feedback__reaction">
							<p class="feedback__reaction-text text"><? echo $arItem["PROPERTIES"]["review"]["VALUE"]; ?></p>
							<div class="feedback__name-block">
								<img src="<?=$arItem["PREVIEW_PICTURE"]["SRC"]?>" alt="Kirill" class="feedback__photo">
								<div class="feedback__name-unit">
										<p class="feedback__name"><? echo $arItem["PROPERTIES"]["fio"]["VALUE"]; ?></p>
										<p class="feedback__post"><? echo $arItem["PROPERTIES"]["post"]["VALUE"]; ?></p>
								</div>
							</div>
						</div>
					</div>
				</div>
			<?endforeach;?>
		</div>
	</div>
<? endif; ?>
<?if($arParams["DISPLAY_BOTTOM_PAGER"]):?>
	<br /><?=$arResult["NAV_STRING"]?>
<?endif;?>
</div>
