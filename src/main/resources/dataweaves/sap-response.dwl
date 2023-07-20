%dw 2.0
output application/json

var data = payload.RFC_READ_TABLE.tables.DATA.*row.WA default []
var column = payload.RFC_READ_TABLE.tables.FIELDS.*row.FIELDNAME default []
--- 
data map ((item, index) -> 
{(
column map ((col, colIndex) -> 
    (col):trim((item splitBy  ";")[colIndex])
)
)}
)