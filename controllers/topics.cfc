<cfcomponent output="false" hint="The Topics controller">
	
	<cffunction name="init" output="false" hint="Constructor">
		<cfargument name="fw" />
		<cfset variables.fw = arguments.fw />
		<cfreturn this />
	</cffunction>
	
	<cffunction name="before" output="false" hint="I fire before the action is called">
		<cfargument name="rc" />
		<cfset variables.fw.service( 'navigation.topMenu', 'topNav' ) />
	</cffunction>
	
	<cffunction name="default" output="false" hint="The default action">
		<cfargument name="rc" />
	</cffunction>
	
</cfcomponent>