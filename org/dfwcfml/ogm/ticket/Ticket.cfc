<cfcomponent output="false" persistent="true">
	
	<cfimport path="org.dfwcfml.ogm.user.*" />
	
	<cfproperty name="ticketid" fieldtype="id" generator="native" />
	<cfproperty name="title" type="String" required="true" />
	<cfproperty name="summary" type="String" required="true" />
	<cfproperty name="dateCreated" type="Date" required="true" />
	<cfproperty name="lastUpdated" type="Date" required="true" />
	<cfproperty name="status" type="String" required="true" />
	<cfproperty name="resolution" type="String" required="false" default="" />
	<cfproperty name="voteCounts" type="Numeric" required="false" default="0" />
	
	<cffunction name="init" access="public" returntype="Ticket" output="false">
		<cfreturn this />
	</cffunction>
	
	<cffunction name="open" access="public" returntype="Ticket" output="false">
		<cfset setStatus("Open") />
		<cfreturn this />
	</cffunction>
	
	<cffunction name="close" access="public" returntype="Ticket" output="false">
		<cfset setStatus("Closed") />
		<cfreturn this />
	</cffunction>
	
	<cffunction name="resolve" access="public" returntype="Ticket" output="false">
		<cfargument name="resolution" type="String" required="true" />
		<cfset setResolution(arguments.resolution) />
		<cfreturn this />
	</cffunction>
	
	<cffunction name="voteUp" access="public" returntype="Numeric" output="false">
		<cfset setVotes(getVotes()+1) />
		<cfreturn getVotes() />
	</cffunction>
	
	<cffunction name="voteDown" access="public" returntype="Numeric" output="false">
		<cfset setVotes(getVotes()-1) />
		<cfreturn getVotes() />
	</cffunction>
	
	<cffunction name="getVotes" access="public" returntype="TicketVote[]" output="false">
		<cfset local.ticketVotes = entityLoad("TicketVote",{ticket=this}) />
		<cfreturn (isNull(local.ticketVotes)) ? [] : local.ticketVotes />
	</cffunction>
	
	<cffunction name="getAuthor" access="public" returntype="User" output="false">
		<cfreturn findallusersby("TicketAuthor")[1] />
	</cffunction>
	
	<cffunction name="getVoters" access="public" returntype="User[]" output="false">
		<cfreturn findallusersby("TicketVote") />
	</cffunction>
	
	<cffunction name="getAssignees" access="public" returntype="User[]" output="false">
		<cfreturn findAllUsersBy("TicketAssignee") />
	</cffunction>
	
	<cffunction name="findAllUsersBy" access="private" returntype="User[]" output="false">
		<cfargument name="relClass" type="String" required="true" />
		
		<cfset local.users = [] />
		<cfset local.userRels = entityLoad(arguments.relClass,{ticket=this}) />
		
		<cfif !isNull(local.userRels)>
			<cfloop array="#local.userRels#" index="local.userRel">
				<cfset arrayAppend(local.users,local.userRel.getUser()) />
			</cfloop>
		</cfif>
		
		<cfreturn local.users />
	</cffunction>
	
</cfcomponent>