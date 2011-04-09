<cfcomponent output="false" hint="I build navigation">
	
	<cffunction name="init" output="false">
		<cfset loadNav() />
		<cfreturn this />
	</cffunction>
	
	<cffunction name="topMenu" output="false">
		<cfargument name="action" />
		
		<cfset local.navArray = duplicate(variables.topNavData) />
		
		<cfif !structKeyExists(variables,'topNavData')>
			<cfset loadNav() />
		</cfif>
		
		<cfloop array="#local.navArray#" index="local.navItem">
			<cfset local.navItem['current'] = ((listFirst(arguments.action,'.') == listFirst(local.navItem.action,'.')) ? true : false) />
		</cfloop>
		
		<cfreturn local.navArray />
	</cffunction>
	
	<cffunction name="loadNav" access="private" output="false">
		<cfset local.navFilePath = expandPath('/config/nav.json') />
		<cfif fileExists(local.navFilePath)>
			<cffile action="read" file="#local.navFilePath#" variable="local.navFile" />
			<cfset variables.topNavData = deserializejson(local.navFile) />
		<cfelse>
			<cfset variables.topNavData = [{label="home",action="main.default"}] />
		</cfif>
	</cffunction>
	
</cfcomponent>