<div class="full-intranet" id="main-content" role="main">
	<#if layout??>
		<h1 class="component-heading mb-0 pb-0 text-primary text-left text-break fragment-heading-text-colored">
			${layout.getName(themeDisplay.getLocale())}
		</h1>
	</#if>
	<div class="row">
		<div class="col-md-12" id="column-1">
			${processor.processColumn("column-1", "portlet-column-content portlet-column-content-only")}
		</div>
	</div>
</div>