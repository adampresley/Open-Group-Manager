<cfcomponent extends="org.dfwcfml.ogm.AbstractClass" output="false" hint="An abstract class to add some cool Active Record functionality">
	
	<cffunction name="init" access="public" returntype="void" output="false">
		<cfset super.init() />
	</cffunction>
	
	<cffunction name="save" access="public" returntype="PersistentEntity" output="false">
		<cfargument name="flush" type="boolean" required="false" default="false" />
		<cfargument name="insert" type="boolean" required="false" default="false" />
		
		<cfset entitySave(this,arguments.insert) />
		
		<cfif arguments.flush>
			<cfset ormflush() />
		</cfif>
		
		<cfreturn this />
	</cffunction>
	
	<cffunction name="delete" access="public" returntype="void" output="false">
		<cfargument name="flush" type="boolean" required="false" default="false" />
		
		<cfset entitydelete(this) />
		
		<cfif arguments.flush>
			<cfset ormflush() />
		</cfif>
		
		<cfreturn this />
	</cffunction>
	
	<cffunction name="findWhere" access="public" returntype="PersistentEntity" output="false">
		<cfargument name="criteria" type="Struct" required="true" />
		
		<cfset local.className = getMetadata(this).name />
		<cfset local.criteria = duplicate(arguments.criteria) />
		
		<cfreturn entityload(local.className,local.criteria,true) />
	</cffunction>
	
	<cffunction name="findAllWhere" access="public" returntype="PersistentEntity[]" output="false">
		<cfargument name="criteria" type="Struct" required="true" />
		
		<cfset local.className = getMetadata(this).name />
		<cfset local.criteria = duplicate(arguments.criteria) />
		
		<cfreturn entityload(local.className,local.criteria) />
	</cffunction>
	
</cfcomponent>