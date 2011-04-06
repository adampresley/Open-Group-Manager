<cfcomponent output="false" persistent="true">
	
	<cfimport path="org.dfwcfml.ticket.*" />
	
	<cfproperty name="id" fieldtype="id" generator="identity" />
	<cfproperty name="email" type="String" required="true" />
	<cfproperty name="password" type="String" required="true" />
	<cfproperty name="firstName" type="String" required="true" />
	<cfproperty name="lastName" type="String" required="true" />
	
	<cffunction name="init" access="public" returntype="User" output="false">
		<cfreturn this />
	</cffunction>
	
	<cffunction name="fullName" access="public" returntype="String" output="false">
		<cfreturn getFirstName() & " " & getLastName() />
	</cffunction>
	
	<cffunction name="authoredTickets" access="public" returntype="Ticket[]" output="false">
		<!--- TODO: Method Stub --->
	</cffunction>
	
	<cffunction name="ticketVotes" access="public" returntype="Ticket[]" output="false">
		<!--- TODO: Method Stub --->
	</cffunction>
	
	<cffunction name="assignedTickets" access="public" returntype="Ticket[]" output="false">
		<!--- TODO: Method Stub --->
	</cffunction>
	
</cfcomponent>