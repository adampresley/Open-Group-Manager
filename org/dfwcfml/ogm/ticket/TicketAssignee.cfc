<cfcomponent output="false" persistent="true">
	
	<cfimport path="org.dfwcfml.ogm.user.User" />
	
	<cfproperty name="id" fieldtype="id" generator="identity" />
	<cfproperty name="user" type="User" />
	<cfproperty name="ticket" type="Ticket" />
	
</cfcomponent>