<form method="post" action={"/design/menuconfig/"|ezurl}>

<div class="context-block">

{* DESIGN: Header START *}<div class="box-header"><div class="box-tc"><div class="box-ml"><div class="box-mr"><div class="box-tl"><div class="box-tr">

<h1 class="context-title">{"Menu management"|i18n("design/standard/menuconfig")}</h1>

{* DESIGN: Mainline *}<div class="header-mainline"></div>

{* DESIGN: Header END *}</div></div></div></div></div></div>

{* DESIGN: Content START *}<div class="box-ml"><div class="box-mr"><div class="box-content">

<div class="context-attributes">

<label>{'SiteAccess'|i18n( 'design/standard/menuconfig' )}:</label>

    {section show=$current_siteaccess}
{*        <p>{'Current siteaccess'|i18n( 'design/standard/menuconfig' )}: <strong>{$current_siteaccess}</strong></p> *}
    {/section}
{*        <label>{'Select siteaccess'|i18n( 'design/standard/menuconfig' )}</label><div class="labelbreak"></div> *}
        <select name="CurrentSiteAccess">
            {section var=siteaccess loop=$siteaccess_list}
                {section show=eq( $current_siteaccess, $siteaccess )}
                    <option value="{$siteaccess}" selected="selected">{$siteaccess}</option>
                {section-else}
                <option value="{$siteaccess}">{$siteaccess}</option>
            {/section}
        {/section}
        </select>
        &nbsp;

</div>

{* DESIGN: Content END *}</div></div></div>

<div class="controlbar">
{* DESIGN: Control bar START *}<div class="box-bc"><div class="box-ml"><div class="box-mr"><div class="box-tc"><div class="box-bl"><div class="box-br">
<div class="block">
        <input class="button" type="submit" value="{"Set"|i18n("design/standard/menuconfig")}" name="SelectCurrentSiteAccessButton" />
</div>
{* DESIGN: Control bar END *}</div></div></div></div></div></div>
</div>

</div>


<div class="context-block">

{* DESIGN: Header START *}<div class="box-header"><div class="box-tc"><div class="box-ml"><div class="box-mr"><div class="box-tl"><div class="box-tr">

<h2 class="context-title">{"Menu positioning"|i18n("design/standard/menuconfig")}</h2>

{* DESIGN: Subline *}<div class="header-subline"></div>

{* DESIGN: Header END *}</div></div></div></div></div></div>

{* DESIGN: Content START *}<div class="box-ml"><div class="box-mr"><div class="box-content">

<table class="list" cellspacing="0">
{section var=menu loop=$available_menu_array sequence=array( bglight, bgdark )}
<tr class="{$menu.sequence}">
    <td>{$menu.settings.TitleText}</td>
    <td>
    <label for="Menu_{$menu.type}">
        <img src={$menu.settings.MenuThumbnail|ezimage} alt="{$menu.settings.TitleText}" />
    </label>
    </td>
    <td>
    <input type="radio" id="Menu_{$menu.type}" name="MenuType" {$current_menu|eq( $menu.type )|choose( '', 'checked="checked"' )}  value="{$menu.type}" />
    </td>
</tr>
    {delimiter modulo=1}
    {/delimiter}
{/section}
</table>


{* DESIGN: Content END *}</div></div></div>

<div class="controlbar">
{* DESIGN: Control bar START *}<div class="box-bc"><div class="box-ml"><div class="box-mr"><div class="box-tc"><div class="box-bl"><div class="box-br">
<div class="block">
    <input class="button" type="submit" name="StoreButton" value="{"Apply changes"|i18n("design/standard/menuconfig")}" />
</div>
{* DESIGN: Control bar END *}</div></div></div></div></div></div>
</div>

</div>

</form>

