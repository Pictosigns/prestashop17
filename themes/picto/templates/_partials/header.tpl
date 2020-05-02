{extends file='parent:_partials/header.tpl'}

{block name='header_desktop'}
{$smarty.block.parent}
<div id="desktop-header-search-bar">
  {widget name="iqitsearch"}
</div>
{/block}
