{namespace name="frontend/plugins/HeptacomAdvancedShare/index/index"}

{block name="frontend_index_body_classes" append} advanced-share--outer-wrap{/block}

{block name="frontend_index_page_wrap"}
    <div class="advanced-share--close-area"></div>
	<div class="advanced-share--icon-container">
		<span data-type="facebook" class="csbuttons btn" title="{s name='ButtonFacebook'}Facebook{/s}">
			<i class="fa fa-facebook"></i>
		</span>
		<span data-type="twitter" class="csbuttons btn" title="{s name='ButtonTwitter'}Twitter{/s}">
			<i class="fa fa-twitter"></i>
		</span>
        <span data-type="google" class="csbuttons btn" title="{s name='ButtonGooglePlus'}Google+{/s}">
            <i class="fa fa-google-plus"></i>
        </span>
        <span data-type="linkedin" class="csbuttons btn" title="{s name='ButtonLinkedIn'}LinkedIn{/s}">
            <i class="fa fa-linkedin"></i>
        </span>
        <span data-type="pinterest" class="csbuttons btn" title="{s name='ButtonPinterest'}Pinterest{/s}">
            <i class="fa fa-pinterest-p"></i>
        </span>
        <span data-type="whatsapp" class="btn" title="{s name='ButtonWhatsApp'}WhatsApp{/s}">
            <i class="fa fa-whatsapp"></i>
        </span>
        <span data-type="email" class="btn" title="{s name='ButtonEmail'}E-Mail{/s}">
            <i class="fa fa-envelope-o"></i>
        </span>
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
