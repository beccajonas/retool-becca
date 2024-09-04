let tableData = Hotel_Table.data
let newRows = Hotel_Table.newRows
let changeSet = Hotel_Table.changesetObject

if (newRows) {
  tableData = [...tableData, ...newRows]
}
if (changeSet) {
  Object.entries(changeSet).forEach(([index, changes]) => {
    Object.entries(changes).forEach(([key, value]) => {
      tableData[index][key] = value
    })
  })
}


return tableData