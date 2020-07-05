{**
 * 2007-2017 PrestaShop
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Open Software License (OSL 3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * http://opensource.org/licenses/osl-3.0.php
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to http://www.prestashop.com for more information.
 *
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2007-2017 PrestaShop SA
 * @license   http://opensource.org/licenses/osl-3.0.php Open Software License (OSL 3.0)
 * International Registered Trademark & Property of PrestaShop SA
 *}
{block name='product_thumbnail'}
    {include file='catalog/_partials/miniatures/_partials/product-miniature-thumb.tpl'}
{/block}

{block name='product_description_block'}
<div class="product-description">
    {block name='product_category_name'}
        {if $product.category_name != ''}
            <div class="product-category-name text-muted">{$product.category_name}</div>{/if}
    {/block}

    {block name='product_name'}
    {if $product.reference|strstr:"creator-" != true}
        <h3 class="h3 product-title">
            <a href="{$product.canonical_url}">{$product.name|truncate:90:'...'}</a>
        </h3>
        {/if}

    {/block}

    {block name='product_brand'}
        {if isset($product.manufacturer_name ) && $product.manufacturer_name != ''}
            <div class="product-brand text-muted"> <a href="{$product.canonical_url}">{$product.manufacturer_name}</a></div>{/if}
    {/block}

    {block name='product_reference'}
        {if $product.reference != '' && $product.reference|strstr:"creator-" != true}
            <div class="product-reference text-muted"> <a href="{$product.canonical_url}">{$product.reference}</a></div>
            {/if}

    {/block}

    {block name='product_reviews'}
        {hook h='displayProductListReviews' product=$product}
    {/block}



    {block name='product_price_and_shipping'}

{* ------- CREATOR PRODUCT DISPLAY ------- *}

    {if $product.reference|strpos:"creator-c-" !== false && isset($product.show_price)}
            <div>
                <div><a href="{$product.canonical_url}"> <span  class="vat-on" content="{$product.price_amount}">{$product.price} </span><span class="vat-on">{l s='VAT'}</span></a></div>
                <div>{l s='Canva-Size'} :</div>
                <div>{l s='Canva-Material'} :</div>
                <div><a class="btn btn-primary btn-lg" href="">{l s='Modify Creation'}</a></div>

            </div>
    {else}
            <div class="product-price-and-shipping">
                {hook h='displayProductPriceBlock' product=$product type="before_price"}
                <div class="product-price" style="display: inline;">{$product.price_tax_exc|round:2|string_format:"%.2f"} € <span class="vat-out">{l s='NoVAT'}</span></div>

                {if $product.has_discount}
                    {hook h='displayProductPriceBlock' product=$product type="old_price"}
                    <div><span class="regular-price text-muted">{$product.regular_price}</span></div>
                {/if}
                {hook h='displayProductPriceBlock' product=$product type='unit_price'}
                {hook h='displayProductPriceBlock' product=$product type='weight'}
                {if $product.has_discount}
                    {hook h='displayCountDown'}
                {/if}

{* ------- CREATOR PRODUCT DISPLAY------- *}

                {if $product.reference|strpos:"creator-" !== false && isset($product.show_price)}
                <div>{l s='Canva-Size'} :</div>
                <div>{l s='Canva-Material'} :</div>
                <div><a class="btn btn-primary btn-lg" href="">{l s='Modify Creation'}</a></div>
                {/if}
            </div>
        {/if}





    {/block}



    {block name='product_variants'}
        {if $product.main_variants}
            <div class="products-variants">
                {if $product.main_variants}
                    {include file='catalog/_partials/variant-links.tpl' variants=$product.main_variants}
                {/if}
            </div>
        {/if}
    {/block}

    {block name='product_description_short'}
        <div class="product-description-short text-muted">
            <a href="{$product.canonical_url}">{$product.description_short|strip_tags:'UTF-8'|truncate:360:'...'}</a>
        </div>
    {/block}

    {block name='product_add_cart'}
        {include file='catalog/_partials/miniatures/_partials/product-miniature-btn.tpl'}
    {/block}

    {block name='product_add_cart_below'}
        {hook h='displayProductListBelowButton' product=$product}
    {/block}

</div>
{/block}
