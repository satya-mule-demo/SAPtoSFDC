%dw 2.0
output application/java
---
payload map ((item, index) ->
{
	Country__r: {
		"type" : 'Country__c',
		"Country_Code__c":item.LAND1
		},
	Mapping_Code__c: item.LAND1 default "" ++ item.ZONE1 default "",
	Transportation_Zone_Code__c: item.ZONE1 default "",
	Name:item.VTEXT
	}) filter $.Transportation_Zone_Code__c !=""