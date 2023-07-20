%dw 2.0
output application/xml
---

{
  "RFC_READ_TABLE": {
    "import": {
      "DELIMITER": ";",
      "NO_DATA": null,
      "QUERY_TABLE": p('tzone.master.table.name'),
      "ROWCOUNT": p('tzone.master.row.count'),
      "ROWSKIPS": "0"
    },
    "tables": {
      "DATA": null,
      "FIELDS": {
        "ROW":{
          "FIELDNAME" :"LAND1"
        },
        "ROW":{
          "FIELDNAME" :"ZONE1"
        },
        "ROW":{
          "FIELDNAME" :"VTEXT"
        }
      },
      "OPTIONS": {
        "ROW":{
          "TEXT" :"SPRAS = 'E'"
        },
        "ROW":{
          "TEXT" :" AND LAND1 = 'IN'"
        },
        "ROW":{
          "TEXT" :" AND ZONE1 <> ''"
        },
        "ROW":{
          "TEXT" :" AND VTEXT <> ''"
        }
      }
    }
  }
}