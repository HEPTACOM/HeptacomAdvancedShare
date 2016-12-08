{block name="frontend_index_page_wrap"}
	<div class="advanced-share--outer-wrap">
		<div class="advanced-share--icon-container">
			<a href="#" data-type="facebook" class="csbuttons btn">
				<span class="fa fa-facebook"></span>
			</a>
			<a href="#" data-type="twitter" class="csbuttons btn">
				<span class="fa fa-twitter"></span>
			</a>
            <a href="#" data-type="google" class="csbuttons btn">
                <span class="fa fa-google-plus"></span>
            </a>
            <a href="#" data-type="linkedin" class="csbuttons btn">
                <span class="fa fa-linkedin"></span>
            </a>
            <a href="#" data-type="pinterest" class="csbuttons btn">
                <span class="fa fa-pinterest-p"></span>
            </a>
            <a href="#" data-type="whatsapp" class="btn">
                <span class="fa fa-whatsapp"></span>
            </a>
            <a href="#" data-type="email" class="btn">
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
