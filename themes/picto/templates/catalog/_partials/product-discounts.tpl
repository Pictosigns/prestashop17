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
<section class="product-discounts mb-3">
{if $product.quantity_discounts}
    {block name='product_discount_table'}
      <table class="table table-bordered table-product-discounts" style="background: white;">
        <thead>
        <tr>
          <th style="background: gainsboro;">{l s='Quantity' d='Shop.Theme.Catalog'}</th>
          <th style="background: gainsboro;">{$configuration.quantity_discount.label}</th>
          <th style="background: gainsboro;">{l s='You Save' d='Shop.Theme.Catalog'}</th>
        </tr>
        </thead>
        <tbody>
        {foreach from=$product.quantity_discounts item='quantity_discount' name='quantity_discounts'}
          <tr data-discount-type="{$quantity_discount.reduction_type}" data-discount="{$quantity_discount.real_value}" data-discount-quantity="{$quantity_discount.quantity}">
            <td>{$quantity_discount.quantity}</td>
            <td style="color: #fc0f47; font-weight: 700;">{$quantity_discount.discount}</td>
            <td>{l s='Up to %discount%' d='Shop.Theme.Catalog' sprintf=['%discount%' => $quantity_discount.save]}</td>
          </tr>
        {/foreach}
        </tbody>
      </table>
    {/block}
    {/if}
</section>