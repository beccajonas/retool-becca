let tableData = Travelers_Table.data
let newRows = Travelers_Table.newRows
let changeSet = Travelers_Table.changesetObject

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