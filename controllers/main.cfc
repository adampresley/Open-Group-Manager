<cfcomponent output="false" hint="Example FW/1 controller.">
	
	<cffunction name="init" output="false" hint="Constructor, passed in the FW/1 instance.">
		<cfargument name="fw" />
		<cfset variables.fw = arguments.fw />
		<cfreturn this />
	</cffunction>
	
	<cffunction name="before" output="false" hint="I fire before the action is called">
		<cfargument name="rc" />
		<cfset variables.fw.service( 'navigation.topMenu', 'topNav' ) />
	</cffunction>
	
	<cffunction name="default" output="false" hint="Default action.">
		<cfargument name="rc" />
		<cfset rc.when = now() />	<!--- set when for service argument --->
		<!--- queue up a specific service (formatter.longdate) with named result (today)  --->
		
		<cfimport path="org.dfwcfml.ogm.user.User" />
		<cfset local.user = entityload("User",{email='steve@stevegood.org'},"true") />
		<cfif isNull(local.user)>
			<cfset local.user = new User() />
			<cfset local.user.setEmail("steve@stevegood.org") />
			<cfset local.user.setFirstName("Steve") />
			<cfset local.user.setLastName("Good") />
			<cfset local.user.setPassword("password") />
			<cfset entitySave(local.user) />
			
			<cfimport path="org.dfwcfml.ogm.ticket.*" />
			<cfset local.ticket = new Ticket() />
			<cfset local.ticket.setTitle("Test Ticket") />
			<cfset local.ticket.setSummary("Test summary.") />
			<cfset local.ticket.setDateCreated(now()) />
			<cfset local.ticket.setLastUpdated(local.ticket.getDateCreated()) />
			<cfset local.ticket.open() />
			<cfset entitySave(local.ticket) />
			<cfset rc.ticket = local.ticket />
			
			<cfset local.ticketAuthor = new TicketAuthor() />
			<cfset local.ticketAuthor.setUser(local.user) />
			<cfset local.ticketAuthor.setTicket(local.ticket) />
			<cfset entitySave(local.ticketAuthor) />
			<cfset rc.ticketAuthor = local.ticketAuthor />
		</cfif>
		<cfset rc.user = local.user />
		
		
		<cfset variables.fw.service( 'formatter.longdate', 'today' ) />
	</cffunction>
	
</cfcomponent>