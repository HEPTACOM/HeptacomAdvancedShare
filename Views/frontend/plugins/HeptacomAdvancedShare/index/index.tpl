{block name="frontend_index_page_wrap"}
	<div class="advanced-share--outer-wrap">
		<div class="advanced-share--icon-container">
			<a href="#" data-type="facebook" class="csbuttons btn">
				<span class="icon--facebook"></span>
			</a>
			<a href="#" data-type="twitter" class="csbuttons btn">
				<span class="icon--twitter"></span>
			</a>
			<a href="#" data-type="google" class="csbuttons btn">
				<span class="icon--googleplus"></span>
			</a>
		</div>
		<div class="advanced-share--inner-wrap">
			{$smarty.block.parent}
		</div>
	</div>
{/block}

{block name='frontend_index_search' append}
	<li class="navigation--entry entry--share" role="menuitem">
		<span class="advanced-share--toggle-btn btn">
			<i class="icon--share"></i>
		</span>
	</li>
{/block}
