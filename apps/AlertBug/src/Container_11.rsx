<Container
  id="Container_11"
  currentViewKey="{{ self.viewKeys[0] }}"
  footerPadding="4px 12px"
  footerPaddingType="normal"
  headerPadding="4px 12px"
  headerPaddingType="normal"
  marginType="normal"
  padding="12px"
  paddingType="normal"
  showBody={true}
  style={{ ordered: [] }}
  styleContext={{ ordered: [] }}
  transition="slide"
>
  <View id="e1a1a" viewKey="Billiger Pauschalreise">
    <Text
      id="text4"
      _disclosedFields={{ array: [] }}
      marginType="normal"
      style={{ ordered: [{ color: "" }, { links: "" }] }}
      value={'<h4 style="color: #444444;">1.1 On-Page Bestpreis'}
      verticalAlign="center"
    />
    <Button
      id="buttonModalInforatmion"
      iconBefore="bold/interface-alert-information-circle"
      style={{ ordered: [] }}
      styleVariant="outline"
      text="Information"
    >
      <Event
        event="click"
        method="show"
        params={{ ordered: [] }}
        pluginId="modalFrame1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <PlotlyChart
      id="DailyWinRates_Chart2"
      chartType="line"
      data={include("../lib/DailyWinRates_Chart2.data.json", "string")}
      dataseries={{
        ordered: [
          {
            0: {
              ordered: [
                { label: "crawler_count" },
                { datasource: "{{ DailyWinRates_11.data['crawler_count']}}" },
                { chartType: "line" },
                { aggregationType: "sum" },
                { color: "#1E3A8A" },
                { colors: { ordered: [] } },
                { visible: true },
                {
                  hovertemplate:
                    "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                },
              ],
            },
          },
          {
            1: {
              ordered: [
                { label: "wins" },
                { datasource: "{{ DailyWinRates_11.data['wins']}}" },
                { chartType: "line" },
                { aggregationType: "sum" },
                { color: "#3170F9" },
                { colors: { ordered: [] } },
                { visible: true },
                {
                  hovertemplate:
                    "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                },
              ],
            },
          },
          {
            2: {
              ordered: [
                { label: "parity" },
                { datasource: "{{ DailyWinRates_11.data['parity']}}" },
                { chartType: "line" },
                { aggregationType: "sum" },
                { color: "#60A5FA" },
                { colors: { ordered: [] } },
                { visible: true },
                {
                  hovertemplate:
                    "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                },
              ],
            },
          },
          {
            3: {
              ordered: [
                { label: "high_losses" },
                { datasource: "{{ DailyWinRates_11.data['high_losses']}}" },
                { chartType: "line" },
                { aggregationType: "sum" },
                { color: "#DBEAFE" },
                { colors: { ordered: [] } },
                { visible: true },
                {
                  hovertemplate:
                    "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                },
              ],
            },
          },
          {
            4: {
              ordered: [
                { label: "mid_losses" },
                { datasource: "{{ DailyWinRates_11.data['mid_losses']}}" },
                { chartType: "line" },
                { aggregationType: "sum" },
                { color: "#FDE68A" },
                { colors: { ordered: [] } },
                { visible: true },
                {
                  hovertemplate:
                    "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                },
              ],
            },
          },
          {
            5: {
              ordered: [
                { label: "low_losses" },
                { datasource: "{{ DailyWinRates_11.data['low_losses']}}" },
                { chartType: "line" },
                { aggregationType: "sum" },
                { color: "#F59E0B" },
                { colors: { ordered: [] } },
                { visible: true },
                {
                  hovertemplate:
                    "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                },
              ],
            },
          },
        ],
      }}
      datasourceDataType="object"
      datasourceInputMode="javascript"
      datasourceJS="{{ DailyWinRates_11.data}}"
      events={[]}
      hidden=""
      isJsonTemplateDirty={true}
      isLayoutJsonDirty={true}
      layout={include("../lib/DailyWinRates_Chart2.layout.json", "string")}
      skipDatasourceUpdate={true}
      xAxis="{{ DailyWinRates_11.data.datum}}"
      xAxisDropdown="datum"
    />
    <Text
      id="text220"
      value="##### Definition
Die KPI misst den prozentualen Anteil der Preisvergleiche in denen CHECK24 einen niedrigeren Preis als der jeweilige Wettbewerber anbieten kann. Preisparität sowie Preisverluste ergeben die Gegenstücke zur Gewinnrate, wobei die Preisverluste nochmals in die Höhe der Preisdifferenz unterteilt werden."
      verticalAlign="center"
    />
    <Text
      id="containerTitle64"
      marginType="normal"
      value={
        '<h5 class="indent" style="color: #444444;">Ø Preis p. Reisende/r <span style="color: #005EA8;">CHECK24</span> vs. <span style="color : #F2A992;">{{Competitor_Selection.selectedLabel}}</span>'
      }
      verticalAlign="center"
    />
    <PlotlyChart
      id="chart48"
      chartType="line"
      data={include("../lib/chart48.data.json", "string")}
      dataseries={{
        ordered: [
          {
            0: {
              ordered: [
                { label: "avg_daily_comp_price" },
                {
                  datasource:
                    "{{AveragePricePerDay.data['avg_daily_comp_price']}}",
                },
                { chartType: "line" },
                { aggregationType: "sum" },
                { color: "#1E3A8A" },
                { colors: { ordered: [] } },
                { visible: true },
                {
                  hovertemplate:
                    "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                },
              ],
            },
          },
          {
            1: {
              ordered: [
                { label: "avg_daily_ch24_price" },
                {
                  datasource:
                    "{{AveragePricePerDay.data['avg_daily_ch24_price']}}",
                },
                { chartType: "line" },
                { aggregationType: "sum" },
                { color: "#3170F9" },
                { colors: { ordered: [] } },
                { visible: true },
                {
                  hovertemplate:
                    "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                },
              ],
            },
          },
        ],
      }}
      datasourceDataType="object"
      datasourceInputMode="javascript"
      datasourceJS="{{AveragePricePerDay.data}}"
      isJsonTemplateDirty={true}
      isLayoutJsonDirty={true}
      layout={include("../lib/chart48.layout.json", "string")}
      skipDatasourceUpdate={true}
      xAxis="{{AveragePricePerDay.data.datum}}"
      xAxisDropdown="datum"
      yAxisTitle="Mietpreis/Mietdauer"
    />
    <Include src="./collapsibleContainer13.rsx" />
    <Select
      id="select1"
      data="{{ [...new Set(AllResults.data.datum)] }}"
      emptyMessage="No options"
      label=""
      labelPosition="top"
      labels=""
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      value="{{self.values[0]}}"
      values=""
    />
    <Alert
      id="alert2"
      description="Klicke auf den Preis um dir den entsprechenden Screenshot anzeigen zu lassen."
      title="Screenshots"
    />
    <Alert
      id="alert3"
      description="Klicke auf den Preis um dir den entsprechenden Screenshot anzeigen zu lassen."
      title="Screenshots"
    />
    <Table
      id="SingleResults_Table"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ AllResults.data }}"
      defaultFilters={{
        0: {
          ordered: [
            { id: "75ba0" },
            { columnId: "7c7ee" },
            { operator: "=" },
            { value: "{{select1.value}}" },
            { disabled: false },
          ],
        },
        1: {
          ordered: [
            { id: "67930" },
            { columnId: "e94f2" },
            { operator: "=" },
            { value: "{{Competitor_Selection.value}}" },
            { disabled: false },
          ],
        },
        2: {
          ordered: [
            { id: "5a913" },
            { columnId: "b5af9" },
            { operator: "=" },
            { value: "{{Region_Selection.value}}" },
            { disabled: false },
          ],
        },
        3: {
          ordered: [
            { id: "56bde" },
            { columnId: "ec6ec" },
            { operator: "=" },
            { value: "{{Travelers_Selection.value}}" },
            { disabled: false },
          ],
        },
      }}
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="7c7ee"
        alignment="left"
        format="date"
        formatOptions={{ dateFormat: "dd. MMM. yyyy" }}
        groupAggregationMode="none"
        hidden="true"
        key="datum"
        label="Datum"
        placeholder="Enter value"
        position="center"
        size={92.30000305175781}
        summaryAggregationMode="none"
      />
      <Column
        id="fc0ca"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="timestamp"
        label="Timestamp"
        placeholder="Enter value"
        position="center"
        size={235.53334045410156}
        summaryAggregationMode="none"
      />
      <Column
        id="e94f2"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="competitor"
        label="Competitor"
        placeholder="Select option"
        position="center"
        size={111.86666870117188}
        summaryAggregationMode="none"
      />
      <Column
        id="b5af9"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="region"
        label="Region"
        placeholder="Select option"
        position="center"
        size={131.78334045410156}
        summaryAggregationMode="none"
      />
      <Column
        id="488c1"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="hotel_name"
        label="Hotel"
        placeholder="Enter value"
        position="center"
        size={242.7833251953125}
        summaryAggregationMode="none"
      />
      <Column
        id="ec6ec"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="travelers"
        label="Travelers"
        placeholder="Select option"
        position="center"
        size={128.61666870117188}
        summaryAggregationMode="none"
      />
      <Column
        id="b8459"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="room_allocation"
        label="Room allocation"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="7d33c"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        label="Reisezeitraum"
        placeholder="Enter value"
        position="center"
        referenceId="reisezeitraum"
        size={203.0833282470703}
        summaryAggregationMode="none"
        valueOverride="{{new Date(currentSourceRow.departure_date).toLocaleDateString('de-DE', { day: '2-digit', month: 'short' }) + ' - ' + new Date(currentSourceRow.return_date).toLocaleDateString('de-DE', { day: '2-digit', month: 'short', year: 'numeric' })}}"
      />
      <Column
        id="a032c"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="string"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="holiday_duration_in_days"
        label="Reisedauer"
        placeholder="Enter value"
        position="center"
        size={82.08332824707031}
        summaryAggregationMode="none"
        valueOverride="{{item}} Tage"
      />
      <Column
        id="effc0"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="search_id"
        label="Search ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="494f1"
        alignment="left"
        format="tag"
        formatOptions={{
          automaticColors: false,
          color:
            "{{ item == 'verloren' ? '#ef977b' : item == 'gewonnen' ? '#6987ab': '#E8E8E8'}}",
        }}
        groupAggregationMode="none"
        key="vergleich"
        label="Vergleich"
        placeholder="Select option"
        position="center"
        size={91.46665954589844}
        summaryAggregationMode="none"
      />
      <Column
        id="cb9d6"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="string"
        formatOptions={{
          currency: "EUR",
          currencySign: "standard",
          notation: "standard",
          showSeparators: false,
          currencyDisplay: "symbol",
          decimalPlaces: "0",
        }}
        groupAggregationMode="sum"
        key="price"
        label="{{Competitor_Selection.value}}"
        placeholder="Enter value"
        position="center"
        size={97.76666259765625}
        summaryAggregationMode="none"
        valueOverride="{{new Intl.NumberFormat('de-DE', {style: 'currency', currency: 'EUR', maximumFractionDigits: 0}).format(item)}}"
      >
        <Event
          event="clickCell"
          method="show"
          params={{ ordered: [] }}
          pluginId="drawerFrame1"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Column
        id="f287b"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover", underlineStyle: "solid" }}
        groupAggregationMode="none"
        key="operator"
        label="Veranstalter"
        placeholder="Enter value"
        position="center"
        size={148.56666564941406}
        summaryAggregationMode="none"
      >
        <Event
          event="clickCell"
          method="openUrl"
          params={{ ordered: [{ url: "{{currentSourceRow.url}}" }] }}
          pluginId=""
          type="util"
          waitMs={0}
          waitType="debounce"
        />
      </Column>
      <Column
        id="f17f5"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="string"
        formatOptions={{
          currency: "EUR",
          currencySign: "standard",
          notation: "standard",
          showSeparators: false,
          currencyDisplay: "symbol",
          decimalPlaces: "0",
        }}
        groupAggregationMode="sum"
        key="price_ch24"
        label="CHECK24"
        placeholder="Enter value"
        position="center"
        size={74.31666564941406}
        summaryAggregationMode="none"
        valueOverride="{{new Intl.NumberFormat('de-DE', {style: 'currency', currency: 'EUR', maximumFractionDigits: 0}).format(item)}}"
      >
        <Event
          event="clickCell"
          method="show"
          params={{ ordered: [] }}
          pluginId="drawerFrame2"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Column
        id="96377"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover", underlineStyle: "solid" }}
        groupAggregationMode="none"
        key="operator_ch24"
        label="Veranstalter"
        placeholder="Enter value"
        position="center"
        size={197.8000030517578}
        summaryAggregationMode="none"
      >
        <Event
          event="clickCell"
          method="openUrl"
          params={{ ordered: [{ url: "{{currentSourceRow.url_ch24}}" }] }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Column
        id="57fef"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="percent"
        formatOptions={{
          showSeparators: false,
          notation: "standard",
          decimalPlaces: "2",
          padDecimal: true,
        }}
        groupAggregationMode="average"
        key="delta_price"
        label="Preisdifferenz"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="e2e1e"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="screenshot"
        label="ScreenshotURL"
        placeholder="Enter value"
        position="center"
        referenceId="screenshot"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="85175"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="screenshot_ch24"
        label="ScreenshotURL_CH24"
        placeholder="Enter value"
        position="center"
        referenceId="screenshot_ch24"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="5d4b5"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="url"
        label="URL"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="9a99f"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover", underlineStyle: "solid" }}
        groupAggregationMode="none"
        hidden="true"
        key="url_ch24"
        label="URL ch 24"
        position="center"
        size={100}
        summaryAggregationMode="none"
      >
        <Event
          event="clickCell"
          method="openUrl"
          params={{ ordered: [{ url: "{{ item }}" }] }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <ToolbarButton
        id="3c"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="exportData"
          params={{
            ordered: [
              {
                options: {
                  ordered: [
                    { fileName: "PR_Alle_Ergebnisse" },
                    { fileType: "xlsx" },
                    { includeHiddenColumns: true },
                  ],
                },
              },
            ],
          }}
          pluginId="SingleResults_Table"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="refresh"
          pluginId="SingleResults_Table"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
    <Divider
      id="divider72"
      hidden=""
      marginType="normal"
      style={{ ordered: [{ text: "rgb(224, 224, 224)" }] }}
      text="/"
      textSize="h4"
    />
    <Include src="./UrgencyGroup.rsx" />
  </View>
</Container>
