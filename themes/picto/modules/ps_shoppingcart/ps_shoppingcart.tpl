<div class="blockcart cart-preview" data-refresh-url="{$refresh_url}"></div>
<div id="blockcart" data-refresh-url="{$refresh_url}">
  <a id="cart-toogle" class="cart-toogle header-btn header-cart-btn" data-toggle="dropdown" data-display="static">
    <div class="cart-container">
      <img class="cart" src="{$urls.img_url}cart.svg" alt="">
      <span class="cart-products-count-btn">{$cart.products_count}</span>
    </div>
    <span class="info-wrapper">

      <span class="cart-toggle-details">
        <span class="text-faded cart-separator"> / </span>
        {if $cart.products_count > 0}
        <span class="cart-products-count">({$cart.products_count})</span>
        {foreach from=$cart.subtotals item="subtotal"}
        {if $subtotal.type == 'products'}
        <span class="value">{$subtotal.value}</span>
        {/if}
        {/foreach}
        {else}
        {l s='Empty' d='Shop.Theme.Checkout'}
        {/if}
      </span>
    </span>
  </a>
  {include 'module:ps_shoppingcart/ps_shoppingcart-content.tpl' class='dropdown'}
</div>
