{block name="frontend_index_page_wrap"}
	<div class="advanced-share--outer-wrap">
		<div class="advanced-share--icon-container">
			<span class="btn">
				<span class="icon--facebook"></span>
			</span>
			<span class="btn">
				<span class="icon--googleplus"></span>
			</span>
			<span class="btn">
				<span class="icon--twitter"></span>
			</span>
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
