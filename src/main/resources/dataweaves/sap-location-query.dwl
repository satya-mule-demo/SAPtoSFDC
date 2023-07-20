%dw 2.0
output application/xml
---

{
  "RFC_READ_TABLE": {
    "import": {
      "DELIMITER": ";",
      "NO_DATA": null,
      "QUERY_TABLE": p('location.master.table.name'),
      "ROWCOUNT": p('location.master.row.count'),
      "ROWSKIPS": "0"
    },
    "tables": {
      "DATA": null,
      "FIELDS": {
        "ROW":{
          "FIELDNAME" :"WERKS"
        },
        "ROW":{
          "FIELDNAME" :"NAME1"
        },
        "ROW":{
          "FIELDNAME" :"ADRNR"
        },
        "ROW":{
          "FIELDNAME" :"VKORG"
        },
        "ROW":{
          "FIELDNAME" :"VTWEG"
        },
        "ROW":{
          "FIELDNAME" :"SPART"
        },
        "ROW":{
          "FIELDNAME" :"LAND1"
        },
        "ROW":{
          "FIELDNAME" :"REGIO"
        }
      },
      "OPTIONS": {
        "ROW":{
          "TEXT" :"SPRAS = 'E'"
        },
        "ROW":{
          "TEXT" :" AND NAME1 <> ''"
        },
        "ROW":{
          "TEXT" :" AND WERKS <> ''"
        }
      }
    }
  }
}