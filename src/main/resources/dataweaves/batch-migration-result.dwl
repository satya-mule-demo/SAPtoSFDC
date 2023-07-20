%dw 2.0
output text/plain
---
"Migration Report: \n"

++ "\n Time [milliseconds]: " 		++ payload.elapsedTimeInMillis!
++ "\n Total Records: "				++ payload.totalRecords!
++ "\n Successful Records: "		++ payload.successfulRecords!
++ "\n Failed Records: "			++ payload.failedRecords!
++ "\n Loaded Records: "			++ payload.loadedRecords!
++ "\n Processed Records: " 		++ payload.processedRecords!