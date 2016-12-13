{namespace name="frontend/plugins/HeptacomAdvancedShare/index/index"}

{block name="frontend_index_body_classes" append} advanced-share--outer-wrap{/block}

{block name="frontend_index_page_wrap"}
	<div class="advanced-share--icon-container">
		<a href="#" data-type="facebook" rel="nofollow" class="csbuttons btn"
            title="{s name='ButtonFacebook'}Facebook{/s}">
			<span class="fa fa-facebook"></span>
		</a>
		<a href="#" data-type="twitter" rel="nofollow" class="csbuttons btn"
            title="{s name='ButtonTwitter'}Twitter{/s}">
			<span class="fa fa-twitter"></span>
		</a>
        <a href="#" data-type="google" rel="nofollow" class="csbuttons btn"
            title="{s name='ButtonGooglePlus'}Google+{/s}">
            <span class="fa fa-google-plus"></span>
        </a>
        <a href="#" data-type="linkedin" rel="nofollow" class="csbuttons btn"
            title="{s name='ButtonLinkedIn'}LinkedIn{/s}">
            <span class="fa fa-linkedin"></span>
        </a>
        <a href="#" data-type="pinterest" rel="nofollow" class="csbuttons btn"
            title="{s name='ButtonPinterest'}Pinterest{/s}">
            <span class="fa fa-pinterest-p"></span>
        </a>
        <a href="#" data-type="whatsapp" rel="nofollow" class="btn"
            title="{s name='ButtonWhatsApp'}WhatsApp{/s}">
            <span class="fa fa-whatsapp"></span>
        </a>
        <a href="#" data-type="email" rel="nofollow" class="btn"
            title="{s name='ButtonEmail'}E-Mail{/s}">
            <span class="fa fa-envelope-o"></span>
        </a>
	</div>
	<div class="advanced-share--inner-wrap">
		{$smarty.block.parent}
	</div>
{/block}

{block name='frontend_index_search' append}
	<li class="navigation--entry entry--share" role="menuitem">
		<a href="#" class="advanced-share--toggle-btn btn"  rel="nofollow" title="{"{s name='DetailAdvancedShare'}Teilen{/s}"|escape}">
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
    <a href="#" class="action--link advanced-share--toggle-btn" rel="nofollow" title="{"{s name='DetailAdvancedShare'}{/s}"|escape}">
        <i class="fa fa-share-alt"></i> {s name="DetailAdvancedShare"}{/s}
    </a>
{/block}
