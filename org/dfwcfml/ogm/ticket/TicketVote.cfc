<cfcomponent output="false" persistent="true">
	
	<cfimport path="org.dfwcfml.ogm.user.User" />
	
	<cfproperty name="id" fieldtype="id" generator="native" />
	<cfproperty name="user" cfc="User" fieldtype="one-to-one" fkcolumn="userid" />
	<cfproperty name="ticket" cfc="Ticket" fieldtype="one-to-one" fkcolumn="ticketid" />
	<cfproperty name="direction" type="Numeric" required="false" default="0" hint="Identifies if the vote was up, down or none. 1:Up, -1:Down, 0:None" />
	
</cfcomponent>