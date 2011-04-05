
<cfoutput>
<div id="menu">
	<ul>
		<cfloop array="#rc.topNav#" index="navItem">
			<li><a href="#buildURL(navItem.action)#" class="#(navItem.current) ? 'current' : ''#">#navItem.label#</a></li>
		</cfloop>
	</ul>
</div>
</cfoutput>
