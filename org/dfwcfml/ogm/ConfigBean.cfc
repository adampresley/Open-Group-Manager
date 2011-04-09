<cfcomponent output="false">
	
	<cffunction name="init" access="public" returntype="ConfigBean" output="false">
		<cfreturn loadSettingsFile() />
	</cffunction>
	
	<cffunction name="loadSettingsFile" access="public" returntype="ConfigBean" output="false">
		<cfset local.settings = {
			appTitle="Open Group Manager",
			context=""
		} />
		
		<cfset local.settingsFilePath = expandPath("/config/settings.json") />
		<cfif fileExists(local.settingsFilePath)>
			<cffile action="read" file="#local.settingsFilePath#" variable="local.settingsFile" />
			<cftry>
				<cfset local.settings = deserializejson(local.settingsFile) />
				<cfcatch type="any">
					<cfthrow message="The content of #local.settingsFilePath# does not apear to be in a valid JSON format. Check the file for any formatting issues." />
				</cfcatch>
			</cftry>
		</cfif>
		
		<cfset variables.instance = duplicate(local.settings) />
		
		<cfreturn this />
	</cffunction>
	
	<cffunction name="getValue" access="public" returntype="any" output="false">
		<cfargument name="key" type="string" required="true" />
		<cfset local.value = "" />
		<cfif structKeyExists(variables.instance,arguments.key)>
			<cfset local.value = variables.instance[key] />
		</cfif>
		<cfreturn local.value />
	</cffunction>
	
	<cffunction name="getAllSettings" access="public" returntype="struct" output="false">
		<cfreturn duplicate(variables.instance) />
	</cffunction>
	
</cfcomponent>