<cfinclude template="inc/html_head.cfm" />

	<body>
		<div id="wrap">
			<div id="top">
				<cfoutput>
				<h2><a href="#buildURL('main.default')#" title="Back to main page">#application.configBean.getValue('appTitle')#</a></h2>
				</cfoutput>
				<cfinclude template="inc/topNav.cfm" />
			</div>
			<div id="content">
				<div id="left">
					<cfoutput>#body#</cfoutput>	<!--- body is result of views --->
				</div>
				<div id="right">
				<ul id="nav">
					<li><a href="#Home">Home</a></li>
					<li><a href="#Archive">Archive</a></li>
					<li><a href="#Link">Links</a></li>
					<li><a href="#download">Download</a></li>
					<li><a href="#support">Support</a></li>
					<li><a href="#contact">Contact</a></li>
				</ul>
					<div class="box">
						<h2 style="margin-top:17px">Recent Entries</h2>
						<ul>
							<li><a href="#">Recent Entries1</a> <i>01 Des 06</i></li>
							<li><a href="#">Recent Entries2</a> <i>01 Des 06</i></li>
							<li><a href="#">Recent Entries3</a> <i>01 Des 06</i></li>
							<li><a href="#">Recent Entries4</a> <i>01 Des 06</i></li>
							<li><a href="#">Recent Entries5</a> <i>01 Des 06</i></li>
						</ul>
					</div>
				</div>
				<div id="clear"></div>
			</div>
			<div id="footer">
				<p>Managed by the <a href="http://dfwcfml.org/" target="_blank">DFW CFML User Group</a>. Design by <a href="http://loadfoo.org/" rel="external">LoadFoO</a>. Valid <a href="http://jigsaw.w3.org/css-validator/check/referer" rel="external">CSS</a> &amp; <a href="http://validator.w3.org/check?uri=referer" rel="external">XHTML</a></p>
			</div>
		</div>
	
	</body>
</html>
