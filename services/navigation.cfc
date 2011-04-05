<cfcomponent output="false" hint="I build navigation">
	
	<cffunction name="topMenu" output="false">
		<cfargument name="action" />
		<cfset var navArray = [] />
		<cfset var navItem = {} />
		<cfscript>
		navArray[1] = {
			label = "home",
			action = "main.default"
		};
		navArray[2] = {
			label = "topics",
			action = "topics.default"
		};
		</cfscript>
		
		<cfloop array="#navArray#" index="navItem">
			<cfset navItem['current'] = listFirst(arguments.action,'.') == listFirst(navItem.action,'.') ? true : false />
		</cfloop>
		
		<cfreturn navArray />
	</cffunction>
	
</cfcomponent>