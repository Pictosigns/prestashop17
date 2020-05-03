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

{if $iqitTheme.f_newsletter_status == 1}
<div id="footer-container-first" class="footer-container footer-style-3 footer-style-4">
  <div class="container">
    <div class="row align-items-center">


      <div class="col block-newsletter">
        <h5>{l s='Sign up to newsletter' d='Shop.Warehousetheme'}</h5>
        {widget name="ps_emailsubscription" hook='displayFooter'}
      </div>


    </div>

    </div>
  </div>
</div>
{/if}

<div class="footer-container footer-style-inline footer-style-4 dropup">
  <div id="linkfooter-container" >
    <div class="link-footer">
      {block name='hook_footer'}
        {hook h='displayFooter'}
      {/block}
    </div>
</div>

    <hr style="color:grey;">
<div id=footer-container>
  <div class="blockinfo"><texte class="titlefooter-small">{l s='Ouvert' d='Shop.Theme.Catalog'}<br>{l s='de 8h à 12h' d='Shop.Theme.Catalog'}<br>{l s='& de 14h à 18h' d='Shop.Theme.Catalog'}</texte><br><texte class="txtfooter">{l s='Du lundi au vendredi' d='Shop.Theme.Catalog'}</texte></div>
  <div class="blockinfo">
    <div class=flexinfo>
      <div><img alt="info" src="{$urls.base_url}/themes/picto/assets/img/info.svg" style="height:8em; padding-right:10px; fill:#fedd32;"/></div>
      <div><texte class="titlefooter">{l s='Service Client' d='Shop.Theme.Catalog'}</texte><br><texte class="titlefooter-big">01 85 39 10 11</texte></div>
    </div>
  </div>
  <div class="blockinfo">
    <a href="/content/12-contactez-nous" title="Contactez-nous">
      <div id="chatfooter">Mail/tchat<img alt="chat" src="{$urls.base_url}/themes/picto/assets/img/question.svg" style="height:3em; padding-left:10px;"/></div>
    </a>
      <div><texte class="txtfooter">1 Place Léon Perrod <br>78170 La Celle Saint Cloud<br>France</texte></div>

  </div>
</div>

<div id="footer-paiement">
  <div class="footer-paiement-space"><img alt="paypal" src="{$urls.base_url}/themes/picto/assets/img/paiements/paypal-logo.svg" style="height:2em; padding-right:10px;"/></div>
  <div class="footer-paiement-space"><img alt="visa" src="{$urls.base_url}/themes/picto/assets/img/paiements/visa.svg" style="height:2em; padding-right:10px;"/></div>
  <div class="footer-paiement-space"><img alt="mastercard" src="{$urls.base_url}/themes/picto/assets/img/paiements/mastercard.svg" style="height:5em; padding-right:10px;"/></div>
  <div class="footer-paiement-space">Virement<br>Bancaire</div>
  <div class="footer-paiement-space"><img alt="mandat" src="{$urls.base_url}/themes/picto/assets/img/paiements/mandat.svg" style="height:2em; padding-right:10px;"/></div>
  <div class="footer-paiement-space"><img alt="mastercard" src="{$urls.base_url}/themes/picto/assets/img/paiements/cb.png" style="height:3em; padding-right:10px;"/></div>
</div>
</div>

<div id="footermarque"><texte id="footermarque-color">Pictosigns</texte>-{l s=' Marque déposée SARL GRAPHORIZON - tous droits réservés' d='Shop.Theme.Catalog'}</div>
