%dw 2.0
output application/java
---
payload map ((item, index) ->
{
	
	Name: item.WERKS default "",
	Service_Code__c: item.VSTEL default "",
	External_Code__c:(item.WERKS ++ item.VSTEL) default ""
	}) filter $.Service_Code__c !=""