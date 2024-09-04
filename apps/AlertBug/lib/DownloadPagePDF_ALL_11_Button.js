const date = new Date();

let day = date.getDate();
let month = date.getMonth() + 1;
let year = date.getFullYear();

// This arrangement can be altered based on how we want the date's format to appear.
let currentDate = `${day}-${month}-${year}`;
//console.log](notion://console.log/)(currentDate); // "17-6-2022"

let file_name_1 = '1. Price Pauschalreise_1_'+ currentDate + '.pdf';
let file_name_2 = '1. Price Pauschalreise_2_'+ currentDate + '.pdf';

await default_state_false.setValue("true");

await utils.downloadPage(file_name_1, {selectorsToExclude:["sidebarFrame1"], scale: 3, fullScreen: true, componentsToInclude: ["text3", "text4", "tabbedContainer1","collapsibleContainer7","collapsibleContainer21"]})

await utils.downloadPage(file_name_2, {selectorsToExclude:["sidebarFrame1"], scale: 3,  fullScreen: true, componentsToInclude: ["text97", "container39", "collapsibleContainer15", "text98","container4", "text99", "container5", "text100", "container6"]})

await default_state_false.setValue("false");