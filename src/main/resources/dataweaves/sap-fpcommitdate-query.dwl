%dw 2.0
output application/xml
---

{
  "RFC_READ_TABLE": {
    "import": {
      "DELIMITER": ";",
      "NO_DATA": null,
      "QUERY_TABLE": p('fpcommitdate.master.table.name'),
      "ROWCOUNT": p('fpcommitdate.master.row.count'),
      "ROWSKIPS": "0"
    },
    "tables": {
      "DATA": null,
      "FIELDS": {
        "ROW":{
          "FIELDNAME" :"MANDT"
        },
		"ROW":{
          "FIELDNAME" :"SALESORDER_ID"
        },
		"ROW":{
          "FIELDNAME" :"SALES_LINENUM"
        },
		"ROW":{
          "FIELDNAME" :"SCHEDLINE"
        },
		"ROW":{
          "FIELDNAME" :"FP_FIRST_COMMIT_DATE"
        },
        "ROW":{
          "FIELDNAME" :"FP_LATEST_COMMIT_DATE"
        },
        "ROW":{
          "FIELDNAME" :"MOQ_GROUP"
        },
        "ROW":{
          "FIELDNAME" :"CASTING_CONFIRMED"
        },
        "ROW":{
          "FIELDNAME" :"TARGET_SLAB_DIMENSION"
        },
        "ROW":{
          "FIELDNAME" :"TARGET_HR_COIL_WT"
        },
        "ROW":{
          "FIELDNAME" :"ERDAT"
        },
        "ROW":{
          "FIELDNAME" :"ERZET"
        },
        "ROW":{
          "FIELDNAME" :"ERNAM"
        }
      },
      "OPTIONS": null
    }
  }
}