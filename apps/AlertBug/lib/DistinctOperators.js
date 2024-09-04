function filter_suppliers(data) {
  let operator = data.operator
  let competitor = data.competitor
  let region = data.region
  let filtered_operator = []
  
  for (let i = 0; i < operator.length; i++) {
    if (competitor[i] == {{Competitor_Selection.value}} && region[i] == {{Region_Selection.value}}) {
      filtered_operator.push(operator[i])
    }
  } 
  return filtered_operator.sort((a, b) => a.localeCompare(b))
}


return {
  competitor: filter_suppliers({{CompetitorOperator_Multiselect.data}}),
  check24: filter_suppliers({{CH24Operator_Multiselect.data}})
}