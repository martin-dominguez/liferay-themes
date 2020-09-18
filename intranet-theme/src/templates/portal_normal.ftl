<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key='lang.dir' />" lang="${w3c_language_id}">
	<head>
		<title>${the_title} - ${company_name}</title>
		<meta content="initial-scale=1.0, width=device-width" name="viewport" />
		<@liferay_util["include"] page=top_head_include />
	</head>

	<body class="${css_class}">
		<@liferay_ui["quick-access"] contentId="#main-content" />

		<@liferay_util["include"] page=body_top_include />

		<#if is_signed_in>
			<@liferay.control_menu />
		</#if>
        <#include "${full_templates_path}/navigation.ftl" />
        <#include "${full_templates_path}/header.ftl" />
			
        <!-- Start Content-->
        <div id="page-wrapper">
            <#include "${full_templates_path}/right-sidebar.ftl" />
			<main id="content" role="main">
				<#if selectable>
					<@liferay_util["include"] page=content_include />
				<#else>
					${portletDisplay.recycle()}
			
					${portletDisplay.setTitle(the_title)}
			
					<@liferay_theme["wrap-portlet"] page="portlet.ftl">
						<@liferay_util["include"] page=content_include />
					</@>
				</#if>
			</main>
			
			<#if show_footer>
				<#include "${full_templates_path}/footer.ftl" />
			</#if>

		</div>

		<@liferay_util["include"] page=body_bottom_include />

		<@liferay_util["include"] page=bottom_include />
    <!-- START JS LINKS-->
    <script 
        src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" 
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" 
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/animejs/2.0.2/anime.min.js"></script>
    <!-- END JS LINKS-->
	</body>
</html>