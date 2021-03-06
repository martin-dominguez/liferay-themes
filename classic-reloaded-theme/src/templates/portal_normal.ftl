<!DOCTYPE html>

<#include init />

<#assign showcontrolmenu = false />
<#if is_signed_in>
    <#assign roles = user.getRoles() 
        showcontrolmenu = true
    />
    <#list roles as role>
          <#if role.getName() == "Employee" >
		  		<#assign
		  			css_class = css_class?replace("has-control-menu", "")
                 	showcontrolmenu = false />
                <#break>
        </#if>             
    </#list> 
</#if>

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${the_title} - ${company_name}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />

	<@liferay_util["include"] page=top_head_include />
</head>

<body class="${css_class}">

<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<#if showcontrolmenu>
	<@liferay.control_menu />
</#if>

<div class="pt-0" id="wrapper">
	<#if show_header>
		<header id="banner">
			<div class="navbar navbar-classic navbar-top py-3">
				<div class="container user-personal-bar">
					<div class="align-items-center autofit-row">
						<a class="${logo_css_class} align-items-center d-md-inline-flex d-sm-none d-none logo-md" href="${site_default_url}" title="<@liferay.language_format arguments="" key="go-to-x" />">
							<img alt="${logo_description}" class="mr-2" height="56" src="${site_logo}" />

							<#if show_site_name>
								<h2 class="font-weight-bold h2 mb-0 text-dark" role="heading" aria-level="1">${site_name}</h2>
							</#if>
						</a>

						<div class="autofit-col autofit-col-expand">
							<#if show_header_search && is_signed_in>
								<div class="justify-content-md-end mr-4 navbar-form" role="search">

									<#if gsearch_active>
										<#assign preferences = freeMarkerPortletPreferences.getPreferences(
											{
												"portletSetupPortletDecoratorId": "barebone",
												"showListed": "false",
												"targetPortletId": ""
											}
										) />

										<@liferay_portlet["runtime"]
											defaultPreferences="${preferences}"
											portletProviderAction=portletProviderAction.VIEW
											portletName="gsearchminiportlet"
										/>
									<#else>
										<#assign preferences = freeMarkerPortletPreferences.getPreferences(
											{
												"portletSetupPortletDecoratorId": "barebone", 
												"destination": "/search"
											}
										) />
										<@liferay.search_bar default_preferences="${preferences}" />
									</#if>
								</div>
							</#if>
						</div>

						<div class="autofit-col">
							<@liferay.user_personal_bar />
						</div>
					</div>
				</div>
			</div>

			<div class="navbar navbar-classic navbar-expand-md navbar-light pb-3">
				<div class="container">
					<a class="${logo_css_class} align-items-center d-inline-flex d-md-none logo-xs" href="${site_default_url}" rel="nofollow">
						<img alt="${logo_description}" class="mr-2" height="56" src="${site_logo}" />

						<#if show_site_name>
							<h2 class="font-weight-bold h2 mb-0 text-dark">${site_name}</h2>
						</#if>
					</a>

					<#include "${full_templates_path}/navigation.ftl" />
				</div>
			</div>
		</header>
	</#if>

	<#if is_portlet_page>
		<section class="bg-info">
			<div class="container py-3">
				<div class="row ">
					<div class="col-md-12">
						<div id="fragment-0-dmvb"> 
							<h1 class="component-heading mb-0 pb-0 text-white text-left text-break fragment-heading-text-colored">
								<span>${layout.getName(locale)}</span>
							</h1>
						</div>
					</div>
				</div>
			</div>
		</section>
	</#if>

	<section class="${portal_content_css_class}" id="content">
		<h2 class="sr-only" role="heading" aria-level="1">${the_title}</h2>

		<#if selectable>
			<@liferay_util["include"] page=content_include />
		<#else>
			${portletDisplay.recycle()}

			${portletDisplay.setTitle(the_title)}

			<@liferay_theme["wrap-portlet"] page="portlet.ftl">
				<@liferay_util["include"] page=content_include />
			</@>
		</#if>
	</section>

	<#if show_footer>
		<footer id="footer" role="contentinfo">
			<div class="container">
				<div class="row">
					<div class="align-items-center col-md-4 d-flex justify-content-md-start justify-content-center">
						<@liferay.language key="powered-by" />

						<a class="ml-1" href="http://www.liferay.com" rel="external">Liferay</a>
					</div>

					<div class="col-md-8 d-flex justify-content-md-start justify-content-center">
						<#assign preferences = freeMarkerPortletPreferences.getPreferences("portletSetupPortletDecoratorId", "barebone") />

						<@liferay_portlet["runtime"]
							defaultPreferences=preferences
							instanceId="bottom_navigation"
							portletName="com_liferay_site_navigation_menu_web_portlet_SiteNavigationMenuPortlet"
						/>
					</div>
				</div>
			</div>
		</footer>
	</#if>
</div>

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

</body>

</html>