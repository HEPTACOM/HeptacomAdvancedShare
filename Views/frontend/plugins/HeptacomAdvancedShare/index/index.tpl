{block name="frontend_index_page_wrap"}
	<div class="advanced-share--outer-wrap">
		<div class="advanced-share--icon-container">
			<a href="#" data-type="facebook" rel="nofollow" class="csbuttons btn"
                title="{s name='ButtonFacebook' namespace='frontend/plugins/HeptacomAdvancedShare/index/index'}Facebook{/s}">
				<span class="fa fa-facebook"></span>
			</a>
			<a href="#" data-type="twitter" rel="nofollow" class="csbuttons btn"
                title="{s name='ButtonTwitter' namespace='frontend/plugins/HeptacomAdvancedShare/index/index'}Twitter{/s}">
				<span class="fa fa-twitter"></span>
			</a>
            <a href="#" data-type="google" rel="nofollow" class="csbuttons btn"
                title="{s name='ButtonGooglePlus' namespace='frontend/plugins/HeptacomAdvancedShare/index/index'}Google+{/s}">
                <span class="fa fa-google-plus"></span>
            </a>
            <a href="#" data-type="linkedin" rel="nofollow" class="csbuttons btn"
                title="{s name='ButtonLinkedIn' namespace='frontend/plugins/HeptacomAdvancedShare/index/index'}LinkedIn{/s}">
                <span class="fa fa-linkedin"></span>
            </a>
            <a href="#" data-type="pinterest" rel="nofollow" class="csbuttons btn"
                title="{s name='ButtonPinterest' namespace='frontend/plugins/HeptacomAdvancedShare/index/index'}Pinterest{/s}">
                <span class="fa fa-pinterest-p"></span>
            </a>
            <a href="#" data-type="whatsapp" rel="nofollow" class="btn"
                title="{s name='ButtonWhatsApp' namespace='frontend/plugins/HeptacomAdvancedShare/index/index'}WhatsApp{/s}">
                <span class="fa fa-whatsapp"></span>
            </a>
            <a href="#" data-type="email" rel="nofollow" class="btn"
                title="{s name='ButtonEmail' namespace='frontend/plugins/HeptacomAdvancedShare/index/index'}E-Mail{/s}">
                <span class="fa fa-envelope-o"></span>
            </a>
		</div>
		<div class="advanced-share--inner-wrap">
			{$smarty.block.parent}
		</div>
	</div>
{/block}

{block name='frontend_index_search' append}
	<li class="navigation--entry entry--share" role="menuitem">
		<a href="#" class="advanced-share--toggle-btn btn"  rel="nofollow" title="{"{s name='DetailAdvancedShare' namespace="frontend/plugins/HeptacomAdvancedShare/index/index"}Teilen{/s}"|escape}">
			<i class="fa fa-share-alt"></i>
		</a>
	</li>
{/block}

{block name='frontend_index_offcanvas_left_trigger'}
    <li class="navigation--entry entry--menu-left" role="menuitem">
        <a class="entry--link entry--trigger btn is--icon-left" href="#offcanvas--left" data-offcanvas="true" data-offCanvasSelector=".sidebar-main">
            <i class="icon--menu"></i>
            <span class="entry--menu-text">{s namespace='frontend/index/menu_left' name="IndexLinkMenu"}{/s}</span>
        </a>
    </li>
{/block}

{block name='frontend_detail_actions_review' append}
    <a href="#" class="action--link advanced-share--toggle-btn" rel="nofollow" title="{"{s name='DetailAdvancedShare' namespace="frontend/plugins/HeptacomAdvancedShare/index/index"}{/s}"|escape}">
        <i class="fa fa-share-alt"></i> {s name="DetailAdvancedShare" namespace="frontend/plugins/HeptacomAdvancedShare/index/index"}{/s}
    </a>
{/block}
