%dw 2.0
output application/xml
---

{
  "RFC_READ_TABLE": {
    "import": {
      "DELIMITER": ";",
      "NO_DATA": null,
      "QUERY_TABLE": p('servicecenter.master.table.name'),
      "ROWCOUNT": p('servicecenter.master.row.count'),
      "ROWSKIPS": "0"
    },
    "tables": {
      "DATA": null,
      "FIELDS": null,
      "OPTIONS": null
    }
  }
}