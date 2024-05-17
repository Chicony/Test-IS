<?
if(!defined('B_PROLOG_INCLUDED') || B_PROLOG_INCLUDED !== true)
	die();
?>
    <footer class="footer">
        <div class="footer__logo-block">
            <img src="<?= SITE_TEMPLATE_PATH ?>/images/icons/logo.svg" class="footer__logo" alt="Logo iSpring">
            <p class="footer__text footer__text_size_small">© 2001-2020 iSpring Solutions Inc. All rights reserved.
                Terms of Use | Privacy Policy
            </p>
        </div>
        <div class="footer__newsletters newsletters" id="newsletters">
            <p class="newsletters__title">Subscribe to our newsletters</p>
            <p class="footer__text ">By clicking “Subscribe”, you agree to our Privacy Policy. All emails include an
                unsubscribe link, so you can opt-out at any time.</p>
            <form class="newsletters__form">
                <input type="email" name="Email" placeholder="Email" required class="newsletters__email">
                <input type="submit" name="submit" value="Subscribe" class="newsletters__button">
            </form>
        </div>
    </footer>
		<? 
			$APPLICATION->AddHeadScript(SITE_TEMPLATE_PATH.'/js/lib/tiny-slider.min.js');
			$APPLICATION->AddHeadScript(SITE_TEMPLATE_PATH.'/js/script.js');
		?>
</body>

</html>