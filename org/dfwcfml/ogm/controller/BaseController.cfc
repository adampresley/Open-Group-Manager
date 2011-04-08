<cfcomponent output="false">
	
	<cffunction name="init" output="false" hint="Constructor, passed in the FW/1 instance.">
		<cfargument name="fw" />
		<cfset variables.fw = arguments.fw />
		<cfreturn this />
	</cffunction>
	
	<cffunction name="before" output="false" hint="I fire before the action is called">
		<cfargument name="rc" />
		<cfset variables.fw.service( 'navigation.topMenu', 'topNav' ) />
	</cffunction>
	
</cfcomponent>