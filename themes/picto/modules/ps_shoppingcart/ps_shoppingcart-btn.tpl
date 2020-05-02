<div id="ps-shoppingcart-wrapper" class="col col-auto">
  <div id="ps-shoppingcart" class="header-btn-w header-cart-btn-w ps-shoppingcart {if isset($iqitTheme.cart_style) && $iqitTheme.cart_style == "floating"}dropdown{else}side-cart{/if}">
    {include 'module:ps_shoppingcart/ps_shoppingcart.tpl'}
  </div>
</div>
<a href="{$urls.base_url}panier?action=show" class="quotation" style="color:white;">
  <img src="{$urls.img_url}quotation.svg" alt="">Devis
</a>
