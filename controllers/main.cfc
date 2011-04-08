<cfcomponent extends="org.dfwcfml.ogm.controller.BaseController" output="false" hint="Example FW/1 controller.">
	
	<cffunction name="default" output="false" hint="Default action.">
		<cfargument name="rc" />
		<cfset rc.when = now() />	<!--- set when for service argument --->
		<!--- queue up a specific service (formatter.longdate) with named result (today)  --->
		
		<cfset variables.fw.service( 'formatter.longdate', 'today' ) />
	</cffunction>
	
</cfcomponent>