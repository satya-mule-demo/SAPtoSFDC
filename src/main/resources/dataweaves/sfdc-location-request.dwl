%dw 2.0
output application/java
---
payload map ((item, index) ->
{
	
	Code__c: item.WERKS default "",
	Name: item.NAME1 default "",
	Type__c:if(item.NAME1 contains "Depot") "Stock Yard" 
		 else if (item.NAME1 contains "Port") "Port" 
		 else if (item.NAME1 contains "Works") "Plant" 
		 else "Plant" default "Plant",
	Company_Code__c: item.VKORG,
	Distribution_Channel__c:item.VTWEG,
	Division__r:{
		"type":"Division__c",
		"Code__c": item.SPART
	},
	isActive__c:true,
	Loc_Address__c:item.ADRNR,
	UDC_State_Code__c: item.LAND1 default "IN"++ "/" ++ item.REGIO default ""
	}) filter $.Code__c !=""