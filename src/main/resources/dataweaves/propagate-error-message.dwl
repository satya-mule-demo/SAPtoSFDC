%dw 2.0
var errorType = upper(vars.errorType)

var getErrorType = (if (vars.customMessage != null)
  "BUSINESS"
else if (errorType == "APIKIT")
  error.errorType.identifier
else
  errorType)
  
var getMessage = (if (vars.customMessage != null)
  vars.customMessage
else if (errorType == "BUSINESS")
  (if (error.exception.errorMessage.payload? and (not (isEmpty(error.exception.errorMessage.payload))))
    (if (error.exception.errorMessage.payload is Object)
      (error.exception.errorMessage.payload.Message default error.exception.errorMessage.payload)
    else
      error.exception.errorMessage.payload)
  else if (errorType == "BUSINESS" and vars.httpStatus == "500")
    (error.description default "Internal Error")
  else
    'Internal Error')
else if (errorType == "APIKIT")
	error.description default "Internal Error"       
else if (errorType == "TECHNICAL")
	error.description default "Internal Error"   
else
  error.description default "Internal Error")

output application/json  skipNullOn="everywhere"
---
{	
  "operationName":vars.operationName,	
  "success": false,
  "timestamp": now(),
  "requestId": correlationId,
  "sendNotification":true,
  "error": {
    "code": vars.httpStatus default "500",
    "type": getErrorType,
    "message": getMessage,
    "additionalDetails": vars.additionalDetails default []
  }
}