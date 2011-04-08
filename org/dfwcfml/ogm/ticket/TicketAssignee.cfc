<cfcomponent output="false" persistent="true">
	
	<cfimport path="org.dfwcfml.ogm.user.User" />
	
	<cfproperty name="id" fieldtype="id" generator="native" />
	<cfproperty name="user" cfc="User" fieldtype="one-to-one" fkcolumn="userid" />
	<cfproperty name="ticket" cfc="Ticket" fieldtype="one-to-one" fkcolumn="ticketid" />
	
</cfcomponent>