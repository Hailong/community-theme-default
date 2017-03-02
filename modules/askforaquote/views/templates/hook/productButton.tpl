{*
* 2007-2016 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
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
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2016 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}
{if $present_on_product == 1 && $SHOW_BY_CATEGORY == 1}
	<div class="ask_offer clearfix {if $filtered_on_status == 1 && $afq_product->available_for_order}unvisible{/if}">
		<fieldset class="quote_ask_form">
			<input type="hidden" name="afq_action" value="add" />
			<input type="hidden" name="afq_ajax" value="true" />
			<input type="hidden" name="afq_pid" value="{$id_product|intval}" />
			<input type="hidden" name="afq_ipa" class="afq_ipa" value="" />
			{if $PS_CATALOG_MODE && $MAIN_QUANTITY_FIELDS}
				<label for="afq_quantity_wanted_ask">{l s='Quantity' mod='askforaquote'}:</label>
				<input type="hidden" name="afq_catalog_mode" value="1" />
				<input id="afq_quantity_wanted_ask" type="text" name="afq_pqty" class="afq_pqty" value="1" size="2" onkeyup="this.value=this.value.replace(/[^\d]/,'')" maxlength="3" />
			{elseif $filtered_on_status && $MAIN_QUANTITY_FIELDS}
				<label for="afq_quantity_wanted_ask">{l s='Quantity' mod='askforaquote'}:</label>
				<input type="hidden" name="afq_filtered_quantity" id="afq_filtered_quantity" value="1" />
				<input id="afq_quantity_wanted_ask" type="text" name="afq_pqty" class="afq_pqty" value="1" size="2" onkeyup="this.value=this.value.replace(/[^\d]/,'')" maxlength="3" />
			{else}
				<input type="hidden" class="afq_pqty" name="afq_pqty" value="50" />
			{/if}

			{if isset($enableAnimation) AND $enableAnimation}
				<button class="fly_to_quote_cart_button btn btn-primary">
					<span>{l s='Ask for a quote' mod='askforaquote'}</span>
				</button>
			{else}
				<a class="ajax_add_to_quote_cart_button"  title="{l s='Ask for a quote' mod='askforaquote'}" >
					<span>{l s='Ask for a quote' mod='askforaquote'}</span>
				</a>
			{/if}
		</fieldset>
	</div>
{/if}