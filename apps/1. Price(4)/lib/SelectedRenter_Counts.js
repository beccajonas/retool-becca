function getTop5Counts(array, key_name) {
  let counts = array.reduce((acc, curr) => {
    acc[curr] = (acc[curr] || 0) + 1;
    return acc;
  }, {});
  
  const sortedEntries = Object.entries(counts)
    .sort(([, a], [, b]) => b - a)  // Sort by values in descending order
    .slice(0, 5);                   // Take the top 5
  
  return sortedEntries.map(entry => ({
    [key_name]: entry[0],
    count: entry[1]
  }));
}

let dataPoints = {{SelectedRenterResults.data}}
let renterMap = {}
dataPoints.cheapest_comp_renter.forEach((value, index) => {
  renterMap[value] = dataPoints.is_check_renter[index]
})
let destinationMap = {}
dataPoints.destination.forEach((value, index) => {
  renterMap[value] = dataPoints.country_code[index]
})
let anbieter = getTop5Counts(dataPoints.cheapest_comp_renter, "vermieter")
anbieter.forEach(element => {
  element.is_check_renter = renterMap[element.vermieter]
});
let destinations = getTop5Counts(dataPoints.destination, "destination")
destinations.forEach(element => {
  element.country_code = renterMap[element.destination]
});

return {
  anbieter: anbieter,
  destinations: destinations,
  countries: getTop5Counts(dataPoints.country_code, "land"),
}