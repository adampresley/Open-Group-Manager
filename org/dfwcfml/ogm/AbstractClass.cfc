<cfcomponent output="false" hint="Extend this to gain some abstract class functionality">
	
	<cffunction name="init" access="public" returntype="void" output="false">
		<cfthrow message="This is an abstract class and cannot be initialized directly. Try creating a class that extends it.">
	</cffunction>
	
</cfcomponent>