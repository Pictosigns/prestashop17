{extends file='parent:checkout/cart.tpl'}

{block name='cart_summary'}
{$smarty.block.parent}
<div class="clearfix text-sm-center mt-1 mb-1">

  <a href="{$link->getModuleLink('opartdevis', 'CreateQuotation', ['create' => true])|escape:'htmlall':'UTF-8'}" class="btn btn-primary" style="background-color: #01164a; margin-bottom:20px; color: white;"><img src="{$urls.img_url}quotation.svg" alt="" style="height: 1.2em;">
    <span>
      <b>
        {if !$quotation}
          {l s='Transformer ce panier en devis' mod='opartdevis'}
        {else}
          {l s='Mettre à jour mon devis' mod='opartdevis'}
        {/if}
      </b>
    </span>
  </a>
</div>
{/block}
