%dw 2.0
output application/xml
---

{
  "RFC_READ_TABLE": {
    "import": {
      "DELIMITER": ";",
      "NO_DATA": null,
      "QUERY_TABLE": p('route.master.table.name'),
      "ROWCOUNT": p('route.master.row.count'),
      "ROWSKIPS": "0"
    },
    "tables": {
      "DATA": null,
      "FIELDS": {
        "ROW":{
          "FIELDNAME" :"ROUTE"
        },
        "ROW":{
          "FIELDNAME" :"BEZEI"
        }
      },
      "OPTIONS": {
        "ROW":{
          "TEXT" :"SPRAS = 'E'"
        },
        "ROW":{
          "TEXT" :" AND ROUTE <> ''"
        },
        "ROW":{
          "TEXT" :" AND BEZEI <> ''"
        }
      }
    }
  }
}