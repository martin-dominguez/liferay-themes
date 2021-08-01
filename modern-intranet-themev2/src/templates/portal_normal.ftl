<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${html_title} - ${themeDisplay.getTheme().getTimestamp()}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />

	<@liferay_util["include"] page=top_head_include />
	
	<script data-senna-off="true" src="${javascript_folder}/popper.js" type="text/javascript"></script>
	<script data-senna-off="true" src="${javascript_folder}/owl.carousel.min.js" type="text/javascript"></script>

</head>

<body class="${css_class}">

<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<div class="d-flex flex-column min-vh-100">
	<@liferay.control_menu />

	<div class="d-flex flex-row flex-fill" id="wrapper">
		<#include "${full_templates_path}/vertical_navigation.ftl" />
		
		<div class="${portal_content_css_class} flex-fill pr-6" id="content">
			<div class="mi-search-bar mt-3 d-flex">
				<div class="mr-2"><@liferay.user_personal_bar /></div>
				<#assign preferences = freeMarkerPortletPreferences.getPreferences({"portletSetupPortletDecoratorId": "barebone", "destination": "/search"}) />
				<@liferay.search_bar default_preferences="${preferences}" />
			</div>

			<#if selectable>
				<@liferay_util["include"] page=content_include />
			<#else>
				${portletDisplay.recycle()}

				${portletDisplay.setTitle(the_title)}

				<@liferay_theme["wrap-portlet"] page="portlet.ftl">
					<@liferay_util["include"] page=content_include />
				</@>
			</#if>
		</div>
	</div>
</div>

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />


</body>

</html>