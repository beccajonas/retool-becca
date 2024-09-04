// Filters the UrgencyScores data, so that the Chart does not have to do it. I assume this is more efficient, since it only filters once compared to Plotly, where each data-trace filters for itself.
let urgencyScores = {{UrgencyPerSupplier.data}}
let selectedCompetitor = {{Competitor_Selection.value}}
let selectedSupplier = {{UrgencyTable_Supplier.selectedRow.cheapest_comp_supplier}}
let datum = []
let win_rate = []
let low_win_rate = []
let parity_rate = []
let low_loss_rate = []
let mid_loss_rate = []
let high_loss_rate = []
let urgency_score = []

for (let i = 0; i < urgencyScores.datum.length; i++) {
  if (urgencyScores.competitor[i] == selectedCompetitor && urgencyScores.cheapest_comp_supplier[i] == selectedSupplier) {
    datum.push(urgencyScores.datum[i]);
    win_rate.push(urgencyScores.win_rate[i]);
    low_win_rate.push(urgencyScores.low_win_rate[i]);
    parity_rate.push(urgencyScores.parity_rate[i]);
    low_loss_rate.push(urgencyScores.low_loss_rate[i]);
    mid_loss_rate.push(urgencyScores.mid_loss_rate[i]);
    high_loss_rate.push(urgencyScores.high_loss_rate[i]);
    urgency_score.push(urgencyScores.urgency_score[i]);
  }
}


return {
  datum: datum,
  win_rate: win_rate,
  low_win_rate: low_win_rate,
  parity_rate: parity_rate,
  low_loss_rate: low_loss_rate,
  mid_loss_rate: mid_loss_rate,
  high_loss_rate: high_loss_rate,
  urgency_score: urgency_score,
}