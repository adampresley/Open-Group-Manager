<cfcomponent extends="org.dfwcfml.ogm.entity.PersistentEntity" output="false" persistent="true">
	
	<cfimport path="org.dfwcfml.ticket.*" />
	
	<cfproperty name="userid" fieldtype="id" generator="native" />
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
		<cfreturn findAllTicketsBy("TicketAuthor") />
	</cffunction>
	
	<cffunction name="ticketVotes" access="public" returntype="Ticket[]" output="false">
		<cfreturn findAllTicketsBy("TicketVote") />
	</cffunction>
	
	<cffunction name="assignedTickets" access="public" returntype="Ticket[]" output="false">
		<cfreturn findAllTicketsBy("TicketAssignee") />
	</cffunction>
	
	<cffunction name="findAllTicketsBy" access="private" returntype="Ticket[]" output="false">
		<cfargument name="relClass" type="String" required="true" />
		
		<cfset local.ticketRels = entityload(arguments.relClass,{user=this}) />
		<cfset local.tickets = [] />
		<cfif !isNull(local.ticketRels)>
			<cfloop array="#local.ticketRels#" index="local.ticketAuthor">
				<cfset arrayAppend(local.tickets,local.ticketAuthor.getTicket()) />
			</cfloop>
		</cfif>
		<cfreturn local.tickets />
	</cffunction>
	
</cfcomponent>