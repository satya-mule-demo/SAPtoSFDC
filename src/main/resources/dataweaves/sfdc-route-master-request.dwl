%dw 2.0
output application/java
---
payload map ((item, index) ->
{
	
	Description_of_Route__c: item.BEZEI default "",
	Route__c: item.ROUTE default "",
	Name:item.ROUTE default ""
	}) filter $.Route__c !=""