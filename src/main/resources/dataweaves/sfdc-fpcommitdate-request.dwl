%dw 2.0
output application/java
fun formatDate(payload: String) =
  payload[0 to 3] ++ "-" ++ payload[4 to 5] ++ "-" ++ payload[6 to 7]
---
payload map ((item, index) ->
{
	External_Id__c:item.SALESORDER_ID ++ "_" ++ item.SALES_LINENUM ++ "_" ++ item.SCHEDLINE default "",
	UDC_FP_First_Commit_Date__c:formatDate(item.FP_FIRST_COMMIT_DATE) ,
	FP_Daily_Run_Date__c:formatDate(item.FP_LATEST_COMMIT_DATE) 
	
}) filter $.External_Id__c !=""