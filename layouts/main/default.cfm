<cfinclude template="../inc/html_head.cfm" />

	<body>
		<div id="wrap">
			<div id="top">
				<cfoutput>
				<h2><a href="#buildURL('main.default')#" title="Back to main page">#application.configBean.getValue('appTitle')#</a></h2>
				</cfoutput>
				<cfinclude template="../inc/topNav.cfm" />
			</div>
			<div id="content">
				<div>
				<cfoutput>#body#</cfoutput>	<!--- body is result of views --->
				</div>
				<div id="clear"></div>
			</div>
			<div id="footer">
				<p>Managed by the <a href="http://dfwcfml.org/" target="_blank">DFW CFML User Group</a>. Design by <a href="http://loadfoo.org/" rel="external">LoadFoO</a>. Valid <a href="http://jigsaw.w3.org/css-validator/check/referer" rel="external">CSS</a> &amp; <a href="http://validator.w3.org/check?uri=referer" rel="external">XHTML</a></p>
			</div>
		</div>
	
	</body>
</html>
<!--- Stop layout nesting --->
<cfset request.layout = false />