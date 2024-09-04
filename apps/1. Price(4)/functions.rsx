<GlobalFunctions>
  <Folder id="Javascript">
    <JavascriptQuery
      id="ExportXlsxAdcheck_ALL_12_Button"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("./lib/ExportXlsxAdcheck_ALL_12_Button.js", "string")}
      resourceName="JavascriptQuery"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      workflowBlockPluginId={null}
    />
    <JavascriptQuery
      id="ExportXlsxMonthlyTrend_ALL_15_Button"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("./lib/ExportXlsxMonthlyTrend_ALL_15_Button.js", "string")}
      resourceName="JavascriptQuery"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      workflowBlockPluginId={null}
    />
    <JavascriptQuery
      id="ExportXlsxMonthlyTrend_ALL_14_Button"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("./lib/ExportXlsxMonthlyTrend_ALL_14_Button.js", "string")}
      resourceName="JavascriptQuery"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      workflowBlockPluginId={null}
    />
    <JavascriptQuery
      id="DownloadPagePDF_ALL_11_Button"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("./lib/DownloadPagePDF_ALL_11_Button.js", "string")}
      queryFailureConditions="[]"
      resourceName="JavascriptQuery"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      workflowBlockPluginId={null}
    />
    <JavascriptQuery
      id="ExportXlsxMonthlyTrend_ALL_13_Button"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("./lib/ExportXlsxMonthlyTrend_ALL_13_Button.js", "string")}
      resourceName="JavascriptQuery"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      workflowBlockPluginId={null}
    />
  </Folder>
  <Folder id="Transformers" />
  <Folder id="StateVariables">
    <State
      id="selectedDataID"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
      value={'{{ urlparams.hash.data_id ? urlparams.hash.data_id : "" }}'}
    />
    <State
      id="default_state_false"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
      value="false"
    />
  </Folder>
  <Folder id="CrawlerInputs">
    <SqlQueryUnified
      id="UpdateTravelers"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("./lib/UpdateTravelers.sql", "string")}
      resourceName="46e9cc30-121f-4fbe-8bd2-e8425b229c58"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
    >
      <Event
        event="success"
        method="refresh"
        params={{ ordered: [] }}
        pluginId="Travelers_Table"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="UpdateHotels"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("./lib/UpdateHotels.sql", "string")}
      resourceName="46e9cc30-121f-4fbe-8bd2-e8425b229c58"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
    >
      <Event
        event="success"
        method="refresh"
        params={{ ordered: [] }}
        pluginId="Travelers_Table"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="Travelers"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("./lib/Travelers.sql", "string")}
      resourceName="46e9cc30-121f-4fbe-8bd2-e8425b229c58"
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
    />
    <JavascriptQuery
      id="ApplyTravelerChanges"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("./lib/ApplyTravelerChanges.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="UpdateTravelers"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </JavascriptQuery>
    <JavascriptQuery
      id="ApplyHotelChanges"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("./lib/ApplyHotelChanges.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="UpdateHotels"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </JavascriptQuery>
    <SqlQueryUnified
      id="Hotels"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("./lib/Hotels.sql", "string")}
      resourceName="46e9cc30-121f-4fbe-8bd2-e8425b229c58"
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
    />
  </Folder>
  <Folder id="DetailedView">
    <GCSQuery
      id="ScreenshotCHECK24"
      actionType="read"
      bucketName="pauschalreise"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      fileKey="{{SingleResults_Table.selectedRow.screenshot_ch24}}"
      isMultiplayerEdited={false}
      resourceName="ef5609c0-e2ba-4f43-8138-4717e9ed4623"
      resourceTypeOverride=""
      transformer="// Query results are available as the `data` variable
return data"
    />
    <GCSQuery
      id="ScreenshotCompetitor"
      actionType="read"
      bucketName="pauschalreise"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      fileKey="{{SingleResults_Table.selectedRow.screenshot}}"
      isMultiplayerEdited={false}
      resourceName="ef5609c0-e2ba-4f43-8138-4717e9ed4623"
      resourceTypeOverride=""
      transformer="// Query results are available as the `data` variable
return data"
    />
    <SqlQueryUnified
      id="AllResults"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("./lib/AllResults.sql", "string")}
      resourceName="46e9cc30-121f-4fbe-8bd2-e8425b229c58"
      retoolVersion="3.52.3"
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
    />
  </Folder>
  <Folder id="OnPage">
    <SqlQueryUnified
      id="CH24Operator_Multiselect"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("./lib/CH24Operator_Multiselect.sql", "string")}
      resourceName="46e9cc30-121f-4fbe-8bd2-e8425b229c58"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      showUpdateSetValueDynamicallyToggle={false}
      transformer="// Query results are available as the `data` variable
return data"
      updateSetValueDynamically={true}
      warningCodes={[]}
    />
    <Function id="LastDay" funcBody={include("./lib/LastDay.js", "string")} />
    <SqlQueryUnified
      id="CompetitorOperator_Multiselect"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("./lib/CompetitorOperator_Multiselect.sql", "string")}
      resourceName="46e9cc30-121f-4fbe-8bd2-e8425b229c58"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      showUpdateSetValueDynamicallyToggle={false}
      transformer="// Query results are available as the `data` variable
return data"
      updateSetValueDynamically={true}
      warningCodes={[]}
    />
    <SqlQueryUnified
      id="AveragePricePerDay"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("./lib/AveragePricePerDay.sql", "string")}
      resourceName="46e9cc30-121f-4fbe-8bd2-e8425b229c58"
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
    />
    <SqlQueryUnified
      id="DailyWinRates_11"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("./lib/DailyWinRates_11.sql", "string")}
      resourceName="46e9cc30-121f-4fbe-8bd2-e8425b229c58"
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
    />
    <Function
      id="DistinctOperators"
      funcBody={include("./lib/DistinctOperators.js", "string")}
    />
  </Folder>
  <Folder id="UrgencyScores">
    <SqlQueryUnified
      id="UrgencyPerSupplier"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      importedQueryInputs={{
        ordered: [
          { MW_Selection: "{{MW_Selection.value}}" },
          { Category_Selection: "{{Travelers_Selection.value}}" },
        ],
      }}
      isImported={true}
      notificationDuration={4.5}
      playgroundQueryName="UrgencyScorePerSupplier_Mietwagen"
      playgroundQueryUuid="8437a287-2ada-4bde-ac55-ef16a0221689"
      query={include("./lib/UrgencyPerSupplier.sql", "string")}
      queryDisabled="true"
      resourceName="46e9cc30-121f-4fbe-8bd2-e8425b229c58"
      retoolVersion="3.52.3"
      showSuccessToaster={false}
      showUpdateSetValueDynamicallyToggle={false}
      transformer="// Query results are available as the `data` variable
return data"
      updateSetValueDynamically={true}
      warningCodes={[]}
    />
    <Function
      id="SelectedRenter_Counts"
      funcBody={include("./lib/SelectedRenter_Counts.js", "string")}
    />
    <SqlQueryUnified
      id="SelectedRenterResults"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("./lib/SelectedRenterResults.sql", "string")}
      queryDisabled="true"
      resourceName="46e9cc30-121f-4fbe-8bd2-e8425b229c58"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
    />
    <Function
      id="UrgencyPerSupplier_Filtered"
      funcBody={include("./lib/UrgencyPerSupplier_Filtered.js", "string")}
    />
    <SqlQueryUnified
      id="UrgencyPerDestination"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      importedQueryInputs={{
        ordered: [
          { MW_Selection: "{{MW_Selection.value}}" },
          { Category_Selection: "{{Travelers_Selection.value}}" },
        ],
      }}
      isImported={true}
      notificationDuration={4.5}
      playgroundQueryName="UrgencyScorePerDestination_Mietwagen"
      playgroundQueryUuid="7d9aeb94-6a20-4dfa-91a9-56dc25f8b872"
      query={include("./lib/UrgencyPerDestination.sql", "string")}
      queryDisabled="true"
      resourceName="46e9cc30-121f-4fbe-8bd2-e8425b229c58"
      retoolVersion="3.52.3"
      showSuccessToaster={false}
      showUpdateSetValueDynamicallyToggle={false}
      transformer="// Query results are available as the `data` variable
return data"
      updateSetValueDynamically={true}
      warningCodes={[]}
    />
    <Function
      id="UrgencyPerDestination_Filtered"
      funcBody={include("./lib/UrgencyPerDestination_Filtered.js", "string")}
    />
  </Folder>
  <Folder id="EBP">
    <SqlQueryUnified
      id="AvgPrices_ALL_12_Chart"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("./lib/AvgPrices_ALL_12_Chart.sql", "string")}
      queryDisabled="{{!collapsibleToggle16.value}}"
      resourceName="46e9cc30-121f-4fbe-8bd2-e8425b229c58"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
      workflowBlockPluginId={null}
    />
    <SqlQueryUnified
      id="DetailedSearchResults_ALL_12_Table"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("./lib/DetailedSearchResults_ALL_12_Table.sql", "string")}
      queryDisabled="{{!collapsibleToggle17.value}}"
      resourceName="46e9cc30-121f-4fbe-8bd2-e8425b229c58"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
      workflowBlockPluginId={null}
    />
    <SqlQueryUnified
      id="SearchResultDetails_ALL_12_Table"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("./lib/SearchResultDetails_ALL_12_Table.sql", "string")}
      queryDisabled="{{!collapsibleToggle16.value}}"
      resourceName="46e9cc30-121f-4fbe-8bd2-e8425b229c58"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
      workflowBlockPluginId={null}
    />
    <SqlQueryUnified
      id="AdCheckRollingAvg_Chart"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("./lib/AdCheckRollingAvg_Chart.sql", "string")}
      queryDisabled={'{{tabs5.value != "7 Tage Ø"}}'}
      resourceName="46e9cc30-121f-4fbe-8bd2-e8425b229c58"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
      workflowBlockPluginId={null}
    />
    <SqlQueryUnified
      id="AdCheckDaily_Chart"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("./lib/AdCheckDaily_Chart.sql", "string")}
      queryDisabled={'{{tabs5.value != "Täglich"}}'}
      resourceName="46e9cc30-121f-4fbe-8bd2-e8425b229c58"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
      workflowBlockPluginId={null}
    />
    <SqlQueryUnified
      id="Impressions_ALL_12_Chart"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("./lib/Impressions_ALL_12_Chart.sql", "string")}
      queryDisabled="{{!collapsibleToggle16.value}}"
      resourceName="46e9cc30-121f-4fbe-8bd2-e8425b229c58"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
      workflowBlockPluginId={null}
    />
    <SqlQueryUnified
      id="KeywordDetails_ALL_12_Table"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("./lib/KeywordDetails_ALL_12_Table.sql", "string")}
      queryDisabled="{{!collapsibleToggle17.value || DetailedSearchResults_ALL_12_Table.isFetching}}"
      resourceName="46e9cc30-121f-4fbe-8bd2-e8425b229c58"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
      workflowBlockPluginId={null}
    />
    <SqlQueryUnified
      id="AvgCommercialRank_ALL_12_Chart"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("./lib/AvgCommercialRank_ALL_12_Chart.sql", "string")}
      queryDisabled="{{!collapsibleToggle16.value}}"
      resourceName="46e9cc30-121f-4fbe-8bd2-e8425b229c58"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
      workflowBlockPluginId={null}
    />
    <SqlQueryUnified
      id="CutoffDay_ALL_12_Query"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("./lib/CutoffDay_ALL_12_Query.sql", "string")}
      resourceName="46e9cc30-121f-4fbe-8bd2-e8425b229c58"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
      workflowBlockPluginId={null}
    />
    <SqlQueryUnified
      id="FirstRankComercial_ALL_12_Chart"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("./lib/FirstRankComercial_ALL_12_Chart.sql", "string")}
      queryDisabled="{{!collapsibleToggle16.value}}"
      resourceName="46e9cc30-121f-4fbe-8bd2-e8425b229c58"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
      workflowBlockPluginId={null}
    />
    <SqlQueryUnified
      id="RegionKeywords_ALL_12_Select"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("./lib/RegionKeywords_ALL_12_Select.sql", "string")}
      queryDisabled="{{!collapsibleToggle17.value}}"
      resourceName="46e9cc30-121f-4fbe-8bd2-e8425b229c58"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
      workflowBlockPluginId={null}
    />
    <SqlQueryUnified
      id="AdcheckDates_ALL_12_Select"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("./lib/AdcheckDates_ALL_12_Select.sql", "string")}
      queryDisabled="{{!collapsibleToggle17.value}}"
      resourceName="46e9cc30-121f-4fbe-8bd2-e8425b229c58"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
      workflowBlockPluginId={null}
    />
  </Folder>
  <Folder id="Gutschein">
    <SqlQueryUnified
      id="Controlling"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("./lib/Controlling.sql", "string")}
      resourceName="46e9cc30-121f-4fbe-8bd2-e8425b229c58"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
      workflowBlockPluginId={null}
    />
  </Folder>
  <State
    id="product"
    _persistedValueGetter={null}
    _persistedValueSetter={null}
    persistedValueKey=""
    persistValue={false}
    value="Pauschalreise"
  />
  <JavascriptQuery
    id="LaggingCommands"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    notificationDuration={4.5}
    query={include("./lib/LaggingCommands.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
  />
  <State
    id="productAdCheck"
    _persistedValueGetter={null}
    _persistedValueSetter={null}
    persistedValueKey=""
    persistValue={false}
    value="Reisen"
  />
</GlobalFunctions>
