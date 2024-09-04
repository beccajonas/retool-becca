<Container
  id="UrgencyGroup"
  disabled="true"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  hidden="true"
  margin="0px"
  padding="0px"
  showBody={true}
  showBorder={false}
  style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
>
  <View id="d3783" viewKey="View 1">
    <Text
      id="collapsibleTitle8"
      _disclosedFields={{ array: [] }}
      marginType="normal"
      value={'<h5 style="color: #444444;">Urgency Score nach Destinationen'}
      verticalAlign="center"
    />
    <TextInput
      id="City_TextInput"
      disabled=""
      hidden={null}
      iconBefore="bold/travel-map-flag-alternate"
      label="Eingrenzung nach Destination"
      labelWidth="57"
      labelWrap={true}
      maintainSpaceWhenHidden={null}
      marginType="normal"
      placeholder="z.B. Leipzig"
      showClear={true}
      showInEditor={null}
      tooltipText="Wenn gewünscht, kann durch Eingabe im Suchfeld zusätzlich nach einer spezifischen Destination gefiltert werden."
    />
    <Table
      id="UrgencyTable_Destination"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ UrgencyPerDestination.data }}"
      defaultFilters={{
        0: {
          ordered: [
            { id: "5444f" },
            { columnId: "57388" },
            { operator: "=" },
            { value: "{{Competitor_Selection.value}}" },
            { disabled: false },
          ],
        },
        1: {
          ordered: [
            { id: "25665" },
            { columnId: "ee7d3" },
            { operator: "includes" },
            { value: "{{City_TextInput.value}}" },
            { disabled: false },
          ],
        },
        2: {
          ordered: [
            { id: "64920" },
            { columnId: "1c66a" },
            { operator: "=" },
            {
              value:
                "{{new Date(Math.max(...UrgencyPerDestination.data.datum.map(dateString => new Date(dateString)))).toISOString().split('T')[0]}}",
            },
            { disabled: false },
          ],
        },
        3: {
          ordered: [
            { id: "ae051" },
            { columnId: "c0e44" },
            { operator: ">" },
            { value: "0.05" },
            { disabled: false },
          ],
        },
      }}
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="Für den Wettbewerber sind keine Daten verfügbar."
      enableSaveActions={true}
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="1c66a"
        alignment="left"
        format="date"
        groupAggregationMode="none"
        hidden="true"
        key="datum"
        label="Letzter Durchlauf"
        placeholder="Enter value"
        position="center"
        size={119.18333435058594}
        summaryAggregationMode="none"
      />
      <Column
        id="57388"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="competitor"
        label="competitor"
        placeholder="Select option"
        position="center"
        size={80.93333435058594}
        summaryAggregationMode="none"
      />
      <Column
        id="2695d"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="country_code"
        label="Land"
        placeholder="Select option"
        position="center"
        referenceId="country_code"
        size={57.56666564941406}
        summaryAggregationMode="none"
      />
      <Column
        id="ee7d3"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="destination"
        label="Stadt"
        placeholder="Select option"
        position="center"
        size={96.55000305175781}
        summaryAggregationMode="none"
      />
      <Column
        id="c0e44"
        alignment="right"
        backgroundColor="{{item >= 10 ? '#ea734e' :
  item >= 5 ? '#ef977b' :
   item > 2 ? '#f5bba9' :
   item > 0.9 ? '#9f9f9f' : '#6987ab'}}"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{
          showSeparators: false,
          notation: "standard",
          decimalPlaces: "0",
          padDecimal: true,
        }}
        groupAggregationMode="sum"
        key="urgency_score"
        label="Urgency"
        placeholder="Enter value"
        position="center"
        size={73.80000305175781}
        summaryAggregationMode="none"
      />
      <Column
        id="849cf"
        alignment="left"
        editableOptions={{ showStepper: true }}
        format="icon"
        formatOptions={{
          icon: '{{ item > 0.01 ? "/icon:bold/interface-arrows-corner-up-right" : item < 0.01 ? "/icon:bold/interface-arrows-corner-down-right" : "/icon:bold/interface-remove-1" }}',
          color:
            "{{item > 0.5 ? '#ef977b' :\n  item > 0.1 ? '#ea734e' :\n   item < 0.1 ? '#6987ab' : '#9f9f9f'}}",
        }}
        groupAggregationMode="sum"
        key="trend"
        placeholder="Enter value"
        position="center"
        size={28}
        summaryAggregationMode="none"
        tooltip="Trend des Urgency Scores"
      />
      <Column
        id="304c1"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="percent"
        formatOptions={{
          showSeparators: true,
          notation: "standard",
          decimalPlaces: "0",
          padDecimal: true,
        }}
        groupAggregationMode="average"
        key="loss_rate"
        label="Verliererrate"
        placeholder="Enter value"
        position="center"
        size={90.28334045410156}
        summaryAggregationMode="none"
        tooltip="Anteil der Crawlersuchen bei denen CHECK24 durch den Wettbewerber unterboten wird."
      />
      <Column
        id="19c62"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="percent"
        formatOptions={{
          showSeparators: true,
          notation: "standard",
          decimalPlaces: "0",
          padDecimal: true,
        }}
        groupAggregationMode="average"
        key="rolling_median_delta"
        label="Median Δ"
        placeholder="Enter value"
        position="center"
        size={70.85000610351562}
        summaryAggregationMode="none"
        tooltip="Median der relativen Preisdifferenzen nur der Preisverluste"
      />
      <Column
        id="10cb1"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="rolling_losses"
        label="Rolling losses"
        placeholder="Enter value"
        position="center"
        size={96.98333740234375}
        summaryAggregationMode="none"
      />
      <Column
        id="9e61b"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="rolling_comparisons"
        label="Rolling comparisons"
        placeholder="Enter value"
        position="center"
        size={135.38333129882812}
        summaryAggregationMode="none"
      />
      <Column
        id="8c140"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="requests"
        label="Requests"
        placeholder="Enter value"
        position="center"
        size={70.98333740234375}
        summaryAggregationMode="none"
      />
      <Column
        id="33cf1"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="total_requests"
        label="Total requests"
        placeholder="Enter value"
        position="center"
        size={100.10000610351562}
        summaryAggregationMode="none"
      />
      <Column
        id="5412c"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="percent"
        formatOptions={{
          showSeparators: true,
          notation: "standard",
          decimalPlaces: "1",
          padDecimal: true,
        }}
        groupAggregationMode="average"
        key="requests_share"
        label="Suchanteil"
        placeholder="Enter value"
        position="center"
        referenceId="requests_share"
        size={78.36666870117188}
        summaryAggregationMode="none"
      />
      <Column
        id="2b7dc"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="percent"
        formatOptions={{
          showSeparators: true,
          notation: "standard",
          decimalPlaces: "0",
          padDecimal: true,
        }}
        groupAggregationMode="average"
        key="loss_share"
        label="Verlustanteil"
        placeholder="Enter value"
        position="center"
        size={90.64999389648438}
        summaryAggregationMode="none"
        tooltip="Anteil der Preisverluste in der jeweiligen Destination an der Gesamtanzahl an Preisverlusten über alle Destinationen hinweg."
      />
      <Column
        id="fef12"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="rolling_losses_total"
        label="Losses per Destination"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <ToolbarButton
        id="3c"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="exportData"
          pluginId="UrgencyTable_Destination"
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
          pluginId="UrgencyTable_Destination"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="04146"
        icon="bold/interface-arrows-data-trasnfer-vertical"
        label="Sort"
        type="sort"
      />
    </Table>
    <Text
      id="containerTitle46"
      marginType="normal"
      value={
        '###### Urgency Score - Destination <a href= "https://www.google.de/search?q={{UrgencyTable_Destination.selectedRow.destination.toUpperCase()}} Flughafen oder Destination" target = "_blank"> {{UrgencyTable_Destination.selectedRow.destination.toUpperCase()}} </a>'
      }
      verticalAlign="center"
    />
    <Statistic
      id="statistic37"
      align="right"
      currency="USD"
      decimalPlaces="0"
      formattingStyle="percent"
      label="Verliererrate"
      marginType="normal"
      padDecimal={true}
      positiveTrend="{{ self.value >= 0 }}"
      secondaryCurrency="USD"
      secondaryEnableTrend={true}
      secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
      secondaryShowSeparators={true}
      secondarySignDisplay="trendArrows"
      secondaryValue=""
      showSeparators={true}
      style={{
        ordered: [{ iconBackground: "rgb(6, 55, 115)" }, { color: "" }],
      }}
      tooltipText="Anteil der Crawlersuchen für die jeweilige Destination bei denen CHECK24 durch den Wettbewerber unterboten wird."
      value="{{ UrgencyTable_Destination.selectedRow.loss_rate}}"
    />
    <Statistic
      id="statistic38"
      align="right"
      currency="USD"
      decimalPlaces="0"
      formattingStyle="percent"
      label="Anteil an Kundensuchen"
      labelCaption="mtl. {{ new Intl.NumberFormat('de-DE').format(UrgencyTable_Destination.selectedRow.requests)}} von {{ new Intl.NumberFormat('de-DE').format(UrgencyTable_Destination.selectedRow.total_requests)}}"
      marginType="normal"
      padDecimal={true}
      positiveTrend="{{ self.value >= 0 }}"
      prefix="x"
      secondaryCurrency="USD"
      secondaryEnableTrend={true}
      secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
      secondaryShowSeparators={true}
      secondarySignDisplay="trendArrows"
      secondaryValue=""
      showSeparators={true}
      style={{
        ordered: [
          { iconBackground: "rgb(6, 55, 115)" },
          { color: "rgb(0, 0, 0)" },
        ],
      }}
      value="{{ UrgencyTable_Destination.selectedRow.requests_share }}"
    />
    <Statistic
      id="statistic39"
      align="right"
      decimalPlaces="0"
      formattingStyle="percent"
      label="Anteil an verlorenen Preiskämpfen"
      labelCaption="{{ new Intl.NumberFormat('de-DE').format(UrgencyTable_Destination.selectedRow.rolling_losses)}} von {{ new Intl.NumberFormat('de-DE').format(UrgencyTable_Destination.selectedRow.rolling_losses_total)}} innerhalb der letzten {{RollingDays.value + 1}} Tag(e)"
      marginType="normal"
      padDecimal={true}
      positiveTrend="{{ self.value >= 0 }}"
      prefix="x"
      secondaryCurrency="USD"
      secondaryEnableTrend={true}
      secondaryFormattingStyle="percent"
      secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
      secondaryShowSeparators={true}
      secondarySignDisplay="trendArrows"
      secondaryValue=""
      showSeparators={true}
      tooltipText="Anteil der Preisverluste in der jeweiligen Destination an der Gesamtanzahl an Preisverlusten über alle Destinationen hinweg."
      value="{{UrgencyTable_Destination.selectedRow.loss_share}}"
    />
    <Statistic
      id="statistic40"
      align="right"
      currency="USD"
      decimalPlaces="0"
      formattingStyle="percent"
      label="medianen Preisverlust"
      marginType="normal"
      padDecimal={true}
      positiveTrend="{{ self.value >= 0 }}"
      prefix="x"
      secondaryCurrency="USD"
      secondaryEnableTrend={true}
      secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
      secondaryShowSeparators={true}
      secondarySignDisplay="trendArrows"
      secondaryValue=""
      showSeparators={true}
      style={{
        ordered: [
          { iconBackground: "rgb(6, 55, 115)" },
          { color: "rgb(0, 0, 0)" },
        ],
      }}
      tooltipText="Median der relativen Preisdifferenzen nur der Preisverluste"
      value="{{ UrgencyTable_Destination.selectedRow.rolling_median_delta }}"
    />
    <Divider
      id="divider9"
      marginType="normal"
      style={{ ordered: [{ color: "rgba(0, 0, 0, 1)" }] }}
    />
    <Statistic
      id="statistic41"
      align="right"
      currency="USD"
      decimalPlaces="0"
      label="Urgency Score"
      marginType="normal"
      padDecimal={true}
      positiveTrend="{{ self.value >= 0 }}"
      secondaryCurrency="USD"
      secondaryEnableTrend={true}
      secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
      secondaryShowSeparators={true}
      secondarySignDisplay="trendArrows"
      secondaryValue=""
      style={{
        ordered: [
          { iconBackground: "rgb(6, 55, 115)" },
          { color: "rgb(238, 99, 99)" },
        ],
      }}
      value="{{ UrgencyTable_Destination.selectedRow.urgency_score }}"
    />
    <Text
      id="text222"
      value="##### Definition
Die Urgency Score aggregiert die Ergebnisse der letzten 7 Tage (heute inkl.) und berechnet anhand dessen die **Verliererrate**, den **medianen Preisverlust** und den Anteil der Destination an allen Preisverlusten ggü. dem Wettbewerber (**Anteil an verlorenen Preiskämpfen**).

Das Diagramm zur Linken zeigt, wie sich der Urgency Score für die in der Tabelle ausgewählte Destination über die Zeit entwickelt hat.

Die Tabelle darunter listet alle einzelnen Vergleiche auf, die zu diesem Urgency Score geführt haben."
      verticalAlign="center"
    />
    <PlotlyChart
      id="UrgencyChart_Destination"
      data={include("../lib/UrgencyChart_Destination.data.json", "string")}
      dataseries={{
        ordered: [
          {
            11: {
              ordered: [
                { label: "rolling_losses_total" },
                {
                  datasource:
                    "{{UrgencyPerDestination.data['rolling_losses_total']}}",
                },
                { chartType: "bar" },
                { aggregationType: "sum" },
                { color: "#A7F3D0" },
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
            12: {
              ordered: [
                { label: "rolling_comparisons" },
                {
                  datasource:
                    "{{UrgencyPerDestination.data['rolling_comparisons']}}",
                },
                { chartType: "bar" },
                { aggregationType: "sum" },
                { color: "#EECFF3" },
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
            13: {
              ordered: [
                { label: "rolling_losses" },
                {
                  datasource:
                    "{{UrgencyPerDestination.data['rolling_losses']}}",
                },
                { chartType: "bar" },
                { aggregationType: "sum" },
                { color: "#CF94D8" },
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
            14: {
              ordered: [
                { label: "rolling_median_delta" },
                {
                  datasource:
                    "{{UrgencyPerDestination.data['rolling_median_delta']}}",
                },
                { chartType: "bar" },
                { aggregationType: "sum" },
                { color: "#AE57BB" },
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
            15: {
              ordered: [
                { label: "urgency_score" },
                {
                  datasource: "{{UrgencyPerDestination.data['urgency_score']}}",
                },
                { chartType: "bar" },
                { aggregationType: "sum" },
                { color: "#6E3276" },
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
            16: {
              ordered: [
                { label: "trend" },
                { datasource: "{{UrgencyPerDestination.data['trend']}}" },
                { chartType: "bar" },
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
            0: {
              ordered: [
                { label: "requests" },
                { datasource: "{{UrgencyPerDestination.data['requests']}}" },
                { chartType: "bar" },
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
                { label: "total_requests" },
                {
                  datasource:
                    "{{UrgencyPerDestination.data['total_requests']}}",
                },
                { chartType: "bar" },
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
                { label: "requests_share" },
                {
                  datasource:
                    "{{UrgencyPerDestination.data['requests_share']}}",
                },
                { chartType: "bar" },
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
                { label: "low_win_rate" },
                {
                  datasource: "{{UrgencyPerDestination.data['low_win_rate']}}",
                },
                { chartType: "bar" },
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
                { label: "win_rate" },
                { datasource: "{{UrgencyPerDestination.data['win_rate']}}" },
                { chartType: "bar" },
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
                { label: "parity_rate" },
                { datasource: "{{UrgencyPerDestination.data['parity_rate']}}" },
                { chartType: "bar" },
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
          {
            6: {
              ordered: [
                { label: "loss_rate" },
                { datasource: "{{UrgencyPerDestination.data['loss_rate']}}" },
                { chartType: "bar" },
                { aggregationType: "sum" },
                { color: "#CD6F00" },
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
            7: {
              ordered: [
                { label: "low_loss_rate" },
                {
                  datasource: "{{UrgencyPerDestination.data['low_loss_rate']}}",
                },
                { chartType: "bar" },
                { aggregationType: "sum" },
                { color: "#92400E" },
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
            8: {
              ordered: [
                { label: "mid_loss_rate" },
                {
                  datasource: "{{UrgencyPerDestination.data['mid_loss_rate']}}",
                },
                { chartType: "bar" },
                { aggregationType: "sum" },
                { color: "#064E3B" },
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
            9: {
              ordered: [
                { label: "high_loss_rate" },
                {
                  datasource:
                    "{{UrgencyPerDestination.data['high_loss_rate']}}",
                },
                { chartType: "bar" },
                { aggregationType: "sum" },
                { color: "#059669" },
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
            10: {
              ordered: [
                { label: "loss_share" },
                { datasource: "{{UrgencyPerDestination.data['loss_share']}}" },
                { chartType: "bar" },
                { aggregationType: "sum" },
                { color: "#34D399" },
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
      datasourceJS="{{UrgencyPerDestination.data}}"
      isJsonTemplateDirty={true}
      isLayoutJsonDirty={true}
      layout={include("../lib/UrgencyChart_Destination.layout.json", "string")}
      skipDatasourceUpdate={true}
      xAxis="{{UrgencyPerDestination.data.datum}}"
      xAxisDropdown="datum"
    />
    <Multiselect
      id="ErgebnisSelection"
      emptyMessage="No options"
      iconBefore="bold/interface-award-trophy-alternate"
      itemMode="static"
      label="Ergebnisse in {{UrgencyTable_Destination.selectedRow.country_code}} - {{UrgencyTable_Destination.selectedRow.destination.toUpperCase()}}"
      labelCaption="Wähle in der Tabelle oben eine Stadt aus."
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      style={{ ordered: [] }}
      value="{{self.values.slice(0, self.values.length - 1)}}"
      wrapTags={true}
    >
      <Option id="e1a7b" label="Preiskampf gewonnen" value="gewonnen" />
      <Option id="d96f0" label="Preiskampf verloren" value="verloren" />
      <Option id="db723" label="Preisparität" value="Parität" />
    </Multiselect>
    <Table
      id="AllResults_Table"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ AllResults.data }}"
      defaultFilters={{
        0: {
          ordered: [
            { id: "87f0c" },
            { columnId: "94bfb" },
            { operator: "=" },
            { value: "{{Competitor_Selection.value}}" },
            { disabled: false },
          ],
        },
        1: {
          ordered: [
            { id: "15a7b" },
            { columnId: "41891" },
            { operator: "=" },
            { value: "{{UrgencyTable_Destination.selectedRow.destination}}" },
            { disabled: false },
          ],
        },
        2: {
          ordered: [
            { id: "81eb7" },
            { columnId: "bc39a" },
            { operator: "isOneOf" },
            { value: "{{ErgebnisSelection.value}}" },
            { disabled: false },
          ],
        },
      }}
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="Wähle in der oberen Tabelle eine Zeile (Stadt) aus."
      enableSaveActions={true}
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="d3bf1"
        alignment="left"
        format="date"
        formatOptions={{ dateFormat: "dd. MMM." }}
        groupAggregationMode="none"
        key="datum"
        label="Datum"
        placeholder="Enter value"
        position="center"
        size={62.01666259765625}
        summaryAggregationMode="none"
      />
      <Column
        id="94bfb"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="competitor"
        label="Competitor"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="2495c"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="country_code"
        label="Country code"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="41891"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="destination"
        label="Destination"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="50993"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="sum"
        key="days_to_pickup"
        label="in..."
        placeholder="Select option"
        position="center"
        size={85.89999389648438}
        summaryAggregationMode="none"
        tooltip="Abholungzeitpunkt"
        valueOverride={'{{item}} {{item > 1 ? "Tagen" : "Tag"}}'}
      />
      <Column
        id="8a26f"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="sum"
        key="rental_duration"
        label="für..."
        placeholder="Select option"
        position="center"
        size={83.43333435058594}
        summaryAggregationMode="none"
        tooltip="Mietdauer"
        valueOverride={'{{item}} {{item > 1 ? "Tage" : "Tag"}}'}
      />
      <Column
        id="53211"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="currency"
        formatOptions={{
          currency: "EUR",
          currencySign: "standard",
          notation: "standard",
          showSeparators: true,
          currencyDisplay: "symbol",
          decimalPlaces: "0",
        }}
        groupAggregationMode="sum"
        key="cheapest_ch24_price"
        label="CH24 Preis"
        placeholder="Enter value"
        position="center"
        size={82.80000305175781}
        summaryAggregationMode="none"
      />
      <Column
        id="0d386"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="currency"
        formatOptions={{
          currency: "EUR",
          currencySign: "standard",
          notation: "standard",
          showSeparators: true,
          currencyDisplay: "symbol",
          decimalPlaces: "0",
        }}
        groupAggregationMode="sum"
        key="cheapest_comp_price"
        label="{{Competitor_Selection.value}} Preis"
        placeholder="Enter value"
        position="center"
        size={77.18333435058594}
        summaryAggregationMode="none"
      />
      <Column
        id="9618b"
        alignment="right"
        backgroundColor="{{item >= .10 ? '#ea734e' :
  item >= .05 ? '#ef977b' :
   item > 0 ? '#f5bba9' :
   item > -0.01 ? '#9f9f9f' :
  '#6987ab'}}"
        editableOptions={{ showStepper: true }}
        format="percent"
        formatOptions={{
          showSeparators: true,
          notation: "standard",
          decimalPlaces: "0",
          padDecimal: true,
        }}
        groupAggregationMode="average"
        key="delta_price"
        label="Preis Δ"
        placeholder="Enter value"
        position="center"
        size={65.63333129882812}
        summaryAggregationMode="none"
        tooltip="relative Preisdifferenz"
      />
      <Column
        id="375f8"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="cheapest_ch24_renter"
        label="CH24 Vermieter"
        placeholder="Enter value"
        position="center"
        size={141.06666564941406}
        summaryAggregationMode="none"
      />
      <Column
        id="27e2d"
        alignment="left"
        format="string"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="cheapest_ch24_supplier"
        label="CH24 Anbieter"
        placeholder="Enter value"
        position="center"
        size={111.03334045410156}
        summaryAggregationMode="none"
      />
      <Column
        id="192ca"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="cheapest_comp_renter"
        label="{{Competitor_Selection.value}} Vermieter"
        placeholder="Enter value"
        position="center"
        size={128.14999389648438}
        summaryAggregationMode="none"
      />
      <Column
        id="ac1af"
        alignment="left"
        format="string"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="cheapest_comp_supplier"
        label="{{Competitor_Selection.value}} Anbieter"
        placeholder="Enter value"
        position="center"
        size={114}
        summaryAggregationMode="none"
      />
      <Column
        id="bc39a"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="vergleich"
        label="Vergleich"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <ToolbarButton
        id="3c"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="exportData"
          pluginId="AllResults_Table"
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
          pluginId="AllResults_Table"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
    <Divider
      id="divider79"
      hidden=""
      marginType="normal"
      style={{ ordered: [{ text: "rgb(224, 224, 224)" }] }}
      text="/"
      textSize="h4"
    />
    <Text
      id="collapsibleTitle25"
      _disclosedFields={{ array: [] }}
      marginType="normal"
      value={
        '<h5 class="indent" style="color: #444444;">Urgency Score nach Anbieter'
      }
      verticalAlign="center"
    />
    <Text
      id="containerTitle65"
      marginType="normal"
      value={
        '###### Urgency Score <a href= "https://www.google.de/search?q={{UrgencyTable_Supplier.selectedRow.cheapest_comp_supplier.toUpperCase()}} Pauschalreise" target = "_blank"> {{UrgencyTable_Supplier.selectedRow.cheapest_comp_supplier.toUpperCase()}} </a>'
      }
      verticalAlign="center"
    />
    <Table
      id="UrgencyTable_Supplier"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ UrgencyPerSupplier.data }}"
      defaultFilters={{
        0: {
          ordered: [
            { id: "5444f" },
            { columnId: "57388" },
            { operator: "=" },
            { value: "{{Competitor_Selection.value}}" },
            { disabled: false },
          ],
        },
        1: {
          ordered: [
            { id: "64920" },
            { columnId: "1c66a" },
            { operator: "=" },
            {
              value:
                "{{new Date(Math.max(...UrgencyPerSupplier.data.datum.map(dateString => new Date(dateString)))).toISOString().split('T')[0]}}",
            },
            { disabled: false },
          ],
        },
        2: {
          ordered: [
            { id: "ae051" },
            { columnId: "c0e44" },
            { operator: ">" },
            { value: "0" },
            { disabled: false },
          ],
        },
      }}
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="Für den Wettbewerber sind keine Daten verfügbar."
      enableSaveActions={true}
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="1c66a"
        alignment="left"
        format="date"
        groupAggregationMode="none"
        hidden="true"
        key="datum"
        label="Letzter Durchlauf"
        placeholder="Enter value"
        position="center"
        size={119.18333435058594}
        summaryAggregationMode="none"
      />
      <Column
        id="57388"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="competitor"
        label="competitor"
        placeholder="Select option"
        position="center"
        size={80.93333435058594}
        summaryAggregationMode="none"
      />
      <Column
        id="6f91c"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="cheapest_comp_supplier"
        label="Anbieter"
        placeholder="Enter value"
        position="center"
        size={130}
        summaryAggregationMode="none"
      />
      <Column
        id="c0e44"
        alignment="right"
        backgroundColor="{{item >= 10 ? '#ea734e' :
  item >= 5 ? '#ef977b' :
   item > 2 ? '#f5bba9' :
   item > 0.9 ? '#9f9f9f' : '#6987ab'}}"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{
          showSeparators: false,
          notation: "standard",
          decimalPlaces: "0",
          padDecimal: true,
        }}
        groupAggregationMode="sum"
        key="urgency_score"
        label="Urgency"
        placeholder="Enter value"
        position="center"
        size={75.80000305175781}
        summaryAggregationMode="none"
      />
      <Column
        id="849cf"
        alignment="left"
        editableOptions={{ showStepper: true }}
        format="icon"
        formatOptions={{
          icon: '{{ item > 0.01 ? "/icon:bold/interface-arrows-corner-up-right" : item < 0.01 ? "/icon:bold/interface-arrows-corner-down-right" : "/icon:bold/interface-remove-1" }}',
          color:
            "{{item > 0.5 ? '#ef977b' :\n  item > 0.1 ? '#ea734e' :\n   item < 0.1 ? '#6987ab' : '#9f9f9f'}}",
        }}
        groupAggregationMode="sum"
        key="trend"
        placeholder="Enter value"
        position="center"
        size={28}
        summaryAggregationMode="none"
        tooltip="Trend des Urgency Scores"
      />
      <Column
        id="304c1"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="percent"
        formatOptions={{
          showSeparators: true,
          notation: "standard",
          decimalPlaces: "0",
          padDecimal: true,
        }}
        groupAggregationMode="average"
        key="loss_rate"
        label="Verliererrate"
        placeholder="Enter value"
        position="center"
        size={98.28334045410156}
        summaryAggregationMode="none"
        tooltip="Anteil der Crawlersuchen bei denen CHECK24 durch den Wettbewerber unterboten wird."
      />
      <Column
        id="19c62"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="percent"
        formatOptions={{
          showSeparators: true,
          notation: "standard",
          decimalPlaces: "0",
          padDecimal: true,
        }}
        groupAggregationMode="average"
        key="rolling_median_delta"
        label="Median Δ"
        placeholder="Enter value"
        position="center"
        size={79.85000610351562}
        summaryAggregationMode="none"
        tooltip="Median der relativen Preisdifferenzen nur der Preisverluste"
      />
      <Column
        id="10cb1"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="rolling_losses"
        label="Rolling losses"
        placeholder="Enter value"
        position="center"
        size={96.98333740234375}
        summaryAggregationMode="none"
      />
      <Column
        id="9e61b"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="rolling_comparisons"
        label="Rolling comparisons"
        placeholder="Enter value"
        position="center"
        size={135.38333129882812}
        summaryAggregationMode="none"
      />
      <Column
        id="8c140"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="requests"
        label="Requests"
        placeholder="Enter value"
        position="center"
        size={70.98333740234375}
        summaryAggregationMode="none"
      />
      <Column
        id="33cf1"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="total_requests"
        label="Total requests"
        placeholder="Enter value"
        position="center"
        size={100.10000610351562}
        summaryAggregationMode="none"
      />
      <Column
        id="5412c"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="percent"
        formatOptions={{
          showSeparators: true,
          notation: "standard",
          decimalPlaces: "1",
          padDecimal: true,
        }}
        groupAggregationMode="average"
        key="requests_share"
        label="Suchanteil"
        placeholder="Enter value"
        position="center"
        referenceId="requests_share"
        size={87.36666870117188}
        summaryAggregationMode="none"
      />
      <Column
        id="2b7dc"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="percent"
        formatOptions={{
          showSeparators: true,
          notation: "standard",
          decimalPlaces: "0",
          padDecimal: true,
        }}
        groupAggregationMode="average"
        key="loss_share"
        label="Verlustanteil"
        placeholder="Enter value"
        position="center"
        size={90.64999389648438}
        summaryAggregationMode="none"
        tooltip="Anteil der Preisverluste in der jeweiligen Destination an der Gesamtanzahl an Preisverlusten über alle Destinationen hinweg."
      />
      <Column
        id="fef12"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="rolling_losses_total"
        label="Losses per Destination"
        placeholder="Enter value"
        position="center"
        size={150.5500030517578}
        summaryAggregationMode="none"
      />
      <Column
        id="44b9e"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="percent"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="average"
        hidden="true"
        key="low_win_rate"
        label="Low win rate"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="d64e6"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="percent"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="average"
        hidden="true"
        key="win_rate"
        label="Win rate"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="2ae09"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="percent"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="average"
        hidden="true"
        key="parity_rate"
        label="Parity rate"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="cf537"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="percent"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="average"
        hidden="true"
        key="low_loss_rate"
        label="Low loss rate"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="9b0d2"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="percent"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="average"
        hidden="true"
        key="mid_loss_rate"
        label="Mid loss rate"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="6bcd5"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="percent"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="average"
        hidden="true"
        key="high_loss_rate"
        label="High loss rate"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <ToolbarButton
        id="3c"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="exportData"
          pluginId="UrgencyTable_Supplier"
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
          pluginId="UrgencyTable_Supplier"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="04146"
        icon="bold/interface-arrows-data-trasnfer-vertical"
        label="Sort"
        type="sort"
      />
      <Event
        event="selectRow"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="SelectedRenterResults"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
    <Statistic
      id="statistic44"
      align="right"
      currency="USD"
      decimalPlaces="0"
      formattingStyle="percent"
      label="Verliererrate"
      marginType="normal"
      padDecimal={true}
      positiveTrend="{{ self.value >= 0 }}"
      secondaryCurrency="USD"
      secondaryEnableTrend={true}
      secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
      secondaryShowSeparators={true}
      secondarySignDisplay="trendArrows"
      secondaryValue=""
      showSeparators={true}
      style={{
        ordered: [{ iconBackground: "rgb(6, 55, 115)" }, { color: "" }],
      }}
      tooltipText="Anteil der Crawlersuchen für die jeweilige Destination bei denen CHECK24 durch den Wettbewerber unterboten wird."
      value="{{ UrgencyTable_Supplier.selectedRow.loss_rate}}"
    />
    <Statistic
      id="statistic45"
      align="right"
      currency="USD"
      decimalPlaces="1"
      formattingStyle="percent"
      label="Anteil an Kundensuchen"
      labelCaption="mtl. {{ new Intl.NumberFormat('de-DE').format(UrgencyTable_Supplier.selectedRow.requests)}} von {{ new Intl.NumberFormat('de-DE').format(UrgencyTable_Supplier.selectedRow.total_requests)}}"
      marginType="normal"
      padDecimal={true}
      positiveTrend="{{ self.value >= 0 }}"
      prefix="x"
      secondaryCurrency="USD"
      secondaryEnableTrend={true}
      secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
      secondaryShowSeparators={true}
      secondarySignDisplay="trendArrows"
      secondaryValue=""
      showSeparators={true}
      style={{
        ordered: [
          { iconBackground: "rgb(6, 55, 115)" },
          { color: "rgb(0, 0, 0)" },
        ],
      }}
      value="{{ UrgencyTable_Supplier.selectedRow.requests_share }}"
    />
    <Statistic
      id="statistic46"
      align="right"
      decimalPlaces="0"
      formattingStyle="percent"
      label="Anteil an verlorenen Preiskämpfen"
      labelCaption="{{ new Intl.NumberFormat('de-DE').format(UrgencyTable_Supplier.selectedRow.rolling_losses)}} von {{ new Intl.NumberFormat('de-DE').format(UrgencyTable_Supplier.selectedRow.rolling_losses_total)}} innerhalb der letzten {{RollingDays.value + 1}} Tag(e)"
      marginType="normal"
      padDecimal={true}
      positiveTrend="{{ self.value >= 0 }}"
      prefix="x"
      secondaryCurrency="USD"
      secondaryEnableTrend={true}
      secondaryFormattingStyle="percent"
      secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
      secondaryShowSeparators={true}
      secondarySignDisplay="trendArrows"
      secondaryValue=""
      showSeparators={true}
      tooltipText="Anteil der Preisverluste in der jeweiligen Destination an der Gesamtanzahl an Preisverlusten über alle Destinationen hinweg."
      value="{{UrgencyTable_Supplier.selectedRow.loss_share}}"
    />
    <Statistic
      id="statistic42"
      align="right"
      currency="USD"
      decimalPlaces="0"
      formattingStyle="percent"
      label="medianen Preisverlust"
      marginType="normal"
      padDecimal={true}
      positiveTrend="{{ self.value >= 0 }}"
      prefix="x"
      secondaryCurrency="USD"
      secondaryEnableTrend={true}
      secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
      secondaryShowSeparators={true}
      secondarySignDisplay="trendArrows"
      secondaryValue=""
      showSeparators={true}
      style={{
        ordered: [
          { iconBackground: "rgb(6, 55, 115)" },
          { color: "rgb(0, 0, 0)" },
        ],
      }}
      tooltipText="Median der relativen Preisdifferenzen nur der Preisverluste"
      value="{{ UrgencyTable_Supplier.selectedRow.rolling_median_delta }}"
    />
    <Divider
      id="divider73"
      marginType="normal"
      style={{ ordered: [{ color: "rgba(0, 0, 0, 1)" }] }}
    />
    <Statistic
      id="statistic43"
      align="right"
      currency="USD"
      decimalPlaces="0"
      label="Urgency Score"
      marginType="normal"
      padDecimal={true}
      positiveTrend="{{ self.value >= 0 }}"
      secondaryCurrency="USD"
      secondaryEnableTrend={true}
      secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
      secondaryShowSeparators={true}
      secondarySignDisplay="trendArrows"
      secondaryValue=""
      style={{
        ordered: [
          { iconBackground: "rgb(6, 55, 115)" },
          { color: "rgb(238, 99, 99)" },
        ],
      }}
      value="{{ UrgencyTable_Supplier.selectedRow.urgency_score }}"
    />
    <Text
      id="text223"
      value="##### Definition
Die Urgency Score aggregiert die Ergebnisse der letzten 7 Tage (heute inkl.) und berechnet anhand dessen die **Verliererrate**, den **medianen Preisverlust** und den Anteil des Anbieters an allen Preisverlusten ggü. dem Wettbewerber (**Anteil an verlorenen Preiskämpfen**).

Das Diagramm zur Linken zeigt, wie sich der Urgency Score für den in der Tabelle ausgewählten Anbieter über die Zeit entwickelt hat.
Die Tabelle darunter listet alle einzelnen Vergleiche auf, die zu diesem Urgency Score geführt haben."
      verticalAlign="center"
    />
    <PlotlyChart
      id="UrgencyChart_Supplier"
      data={include("../lib/UrgencyChart_Supplier.data.json", "string")}
      dataseries={{
        ordered: [
          {
            11: {
              ordered: [
                { label: "rolling_losses_total" },
                {
                  datasource:
                    "{{UrgencyPerDestination.data['rolling_losses_total']}}",
                },
                { chartType: "bar" },
                { aggregationType: "sum" },
                { color: "#A7F3D0" },
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
            12: {
              ordered: [
                { label: "rolling_comparisons" },
                {
                  datasource:
                    "{{UrgencyPerDestination.data['rolling_comparisons']}}",
                },
                { chartType: "bar" },
                { aggregationType: "sum" },
                { color: "#EECFF3" },
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
            13: {
              ordered: [
                { label: "rolling_losses" },
                {
                  datasource:
                    "{{UrgencyPerDestination.data['rolling_losses']}}",
                },
                { chartType: "bar" },
                { aggregationType: "sum" },
                { color: "#CF94D8" },
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
            14: {
              ordered: [
                { label: "rolling_median_delta" },
                {
                  datasource:
                    "{{UrgencyPerDestination.data['rolling_median_delta']}}",
                },
                { chartType: "bar" },
                { aggregationType: "sum" },
                { color: "#AE57BB" },
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
            15: {
              ordered: [
                { label: "urgency_score" },
                {
                  datasource: "{{UrgencyPerDestination.data['urgency_score']}}",
                },
                { chartType: "bar" },
                { aggregationType: "sum" },
                { color: "#6E3276" },
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
            16: {
              ordered: [
                { label: "trend" },
                { datasource: "{{UrgencyPerDestination.data['trend']}}" },
                { chartType: "bar" },
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
            0: {
              ordered: [
                { label: "requests" },
                { datasource: "{{UrgencyPerDestination.data['requests']}}" },
                { chartType: "bar" },
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
                { label: "total_requests" },
                {
                  datasource:
                    "{{UrgencyPerDestination.data['total_requests']}}",
                },
                { chartType: "bar" },
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
                { label: "requests_share" },
                {
                  datasource:
                    "{{UrgencyPerDestination.data['requests_share']}}",
                },
                { chartType: "bar" },
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
                { label: "low_win_rate" },
                {
                  datasource: "{{UrgencyPerDestination.data['low_win_rate']}}",
                },
                { chartType: "bar" },
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
                { label: "win_rate" },
                { datasource: "{{UrgencyPerDestination.data['win_rate']}}" },
                { chartType: "bar" },
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
                { label: "parity_rate" },
                { datasource: "{{UrgencyPerDestination.data['parity_rate']}}" },
                { chartType: "bar" },
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
          {
            6: {
              ordered: [
                { label: "loss_rate" },
                { datasource: "{{UrgencyPerDestination.data['loss_rate']}}" },
                { chartType: "bar" },
                { aggregationType: "sum" },
                { color: "#CD6F00" },
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
            7: {
              ordered: [
                { label: "low_loss_rate" },
                {
                  datasource: "{{UrgencyPerDestination.data['low_loss_rate']}}",
                },
                { chartType: "bar" },
                { aggregationType: "sum" },
                { color: "#92400E" },
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
            8: {
              ordered: [
                { label: "mid_loss_rate" },
                {
                  datasource: "{{UrgencyPerDestination.data['mid_loss_rate']}}",
                },
                { chartType: "bar" },
                { aggregationType: "sum" },
                { color: "#064E3B" },
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
            9: {
              ordered: [
                { label: "high_loss_rate" },
                {
                  datasource:
                    "{{UrgencyPerDestination.data['high_loss_rate']}}",
                },
                { chartType: "bar" },
                { aggregationType: "sum" },
                { color: "#059669" },
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
            10: {
              ordered: [
                { label: "loss_share" },
                { datasource: "{{UrgencyPerDestination.data['loss_share']}}" },
                { chartType: "bar" },
                { aggregationType: "sum" },
                { color: "#34D399" },
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
      datasourceJS="{{UrgencyPerDestination.data}}"
      isJsonTemplateDirty={true}
      isLayoutJsonDirty={true}
      layout={include("../lib/UrgencyChart_Supplier.layout.json", "string")}
      skipDatasourceUpdate={true}
      xAxis="{{UrgencyPerDestination.data.datum}}"
      xAxisDropdown="datum"
    />
    <Multiselect
      id="ErgebnisSelection2"
      emptyMessage="No options"
      iconBefore="bold/interface-award-trophy-alternate"
      itemMode="static"
      label="Ergebnisse vs. {{UrgencyTable_Supplier.selectedRow.cheapest_comp_supplier}} ({{Competitor_Selection.value}})"
      labelCaption="Wähle in der Tabelle oben einen Anbieter aus."
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      style={{ ordered: [] }}
      value="{{self.values.slice(0, self.values.length - 1)}}"
      wrapTags={true}
    >
      <Option id="e1a7b" label="Preiskampf gewonnen" value="gewonnen" />
      <Option id="d96f0" label="Preiskampf verloren" value="verloren" />
      <Option id="db723" label="Preisparität" value="Parität" />
    </Multiselect>
    <Table
      id="AllResults_Table2"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ AllResults.data }}"
      defaultFilters={{
        0: {
          ordered: [
            { id: "87f0c" },
            { columnId: "94bfb" },
            { operator: "=" },
            { value: "{{Competitor_Selection.value}}" },
            { disabled: false },
          ],
        },
        1: {
          ordered: [
            { id: "15a7b" },
            { columnId: "ac1af" },
            { operator: "=" },
            {
              value:
                "{{UrgencyTable_Supplier.selectedRow.cheapest_comp_supplier}}",
            },
            { disabled: false },
          ],
        },
        2: {
          ordered: [
            { id: "81eb7" },
            { columnId: "bc39a" },
            { operator: "isOneOf" },
            { value: "{{ErgebnisSelection2.value}}" },
            { disabled: false },
          ],
        },
      }}
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="Wähle in der oberen Tabelle eine Zeile (Anbieter) aus."
      enableSaveActions={true}
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="d3bf1"
        alignment="left"
        format="date"
        formatOptions={{ dateFormat: "dd. MMM." }}
        groupAggregationMode="none"
        key="datum"
        label="Datum"
        placeholder="Enter value"
        position="center"
        size={62.01666259765625}
        summaryAggregationMode="none"
      />
      <Column
        id="94bfb"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="competitor"
        label="Competitor"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="2495c"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="country_code"
        label="Country code"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="41891"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="destination"
        label="Destination"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="50993"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="sum"
        key="days_to_pickup"
        label="in..."
        placeholder="Select option"
        position="center"
        size={85.89999389648438}
        summaryAggregationMode="none"
        tooltip="Abholungzeitpunkt"
        valueOverride={'{{item}} {{item > 1 ? "Tagen" : "Tag"}}'}
      />
      <Column
        id="8a26f"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="sum"
        key="rental_duration"
        label="für..."
        placeholder="Select option"
        position="center"
        size={83.43333435058594}
        summaryAggregationMode="none"
        tooltip="Mietdauer"
        valueOverride={'{{item}} {{item > 1 ? "Tage" : "Tag"}}'}
      />
      <Column
        id="53211"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="currency"
        formatOptions={{
          currency: "EUR",
          currencySign: "standard",
          notation: "standard",
          showSeparators: true,
          currencyDisplay: "symbol",
          decimalPlaces: "0",
        }}
        groupAggregationMode="sum"
        key="cheapest_ch24_price"
        label="CH24 Preis"
        placeholder="Enter value"
        position="center"
        size={82.80000305175781}
        summaryAggregationMode="none"
      />
      <Column
        id="0d386"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="currency"
        formatOptions={{
          currency: "EUR",
          currencySign: "standard",
          notation: "standard",
          showSeparators: true,
          currencyDisplay: "symbol",
          decimalPlaces: "0",
        }}
        groupAggregationMode="sum"
        key="cheapest_comp_price"
        label="{{Competitor_Selection.value}} Preis"
        placeholder="Enter value"
        position="center"
        size={77.18333435058594}
        summaryAggregationMode="none"
      />
      <Column
        id="9618b"
        alignment="right"
        backgroundColor="{{item >= .10 ? '#ea734e' :
  item >= .05 ? '#ef977b' :
   item > 0 ? '#f5bba9' :
   item > -0.01 ? '#9f9f9f' :
  '#6987ab'}}"
        editableOptions={{ showStepper: true }}
        format="percent"
        formatOptions={{
          showSeparators: true,
          notation: "standard",
          decimalPlaces: "0",
          padDecimal: true,
        }}
        groupAggregationMode="average"
        key="delta_price"
        label="Preis Δ"
        placeholder="Enter value"
        position="center"
        size={65.63333129882812}
        summaryAggregationMode="none"
        tooltip="relative Preisdifferenz"
      />
      <Column
        id="375f8"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="cheapest_ch24_renter"
        label="CH24 Vermieter"
        placeholder="Enter value"
        position="center"
        size={141.06666564941406}
        summaryAggregationMode="none"
      />
      <Column
        id="27e2d"
        alignment="left"
        format="string"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="cheapest_ch24_supplier"
        label="CH24 Anbieter"
        placeholder="Enter value"
        position="center"
        size={111.03334045410156}
        summaryAggregationMode="none"
      />
      <Column
        id="192ca"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="cheapest_comp_renter"
        label="{{Competitor_Selection.value}} Vermieter"
        placeholder="Enter value"
        position="center"
        size={128.14999389648438}
        summaryAggregationMode="none"
      />
      <Column
        id="ac1af"
        alignment="left"
        format="string"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="cheapest_comp_supplier"
        label="{{Competitor_Selection.value}} Anbieter"
        placeholder="Enter value"
        position="center"
        size={114}
        summaryAggregationMode="none"
      />
      <Column
        id="bc39a"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="vergleich"
        label="Vergleich"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <ToolbarButton
        id="3c"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="exportData"
          pluginId="AllResults_Table2"
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
          pluginId="AllResults_Table2"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
    <Text
      id="text228"
      horizontalAlign="center"
      marginType="normal"
      value="**Häufigste Vermieter**"
      verticalAlign="center"
    />
    <Text
      id="text225"
      horizontalAlign="center"
      marginType="normal"
      value="**Häufigste Länder**"
      verticalAlign="center"
    />
    <Text
      id="text226"
      horizontalAlign="center"
      marginType="normal"
      value="**Häufigste Destinationen**"
      verticalAlign="center"
    />
    <Table
      id="table36"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ SelectedRenter_Counts.value.anbieter }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="c806a"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="vermieter"
        label="Vermieter"
        placeholder="Select option"
        position="center"
        size={154.9499969482422}
        summaryAggregationMode="none"
      />
      <Column
        id="41730"
        alignment="right"
        cellTooltipMode="overflow"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="count"
        label="Häufigkeit"
        placeholder="Enter value"
        position="center"
        size={77.03334045410156}
        summaryAggregationMode="none"
      />
      <Column
        id="cd2ff"
        alignment="left"
        cellTooltipMode="overflow"
        editableOptions={{ showStepper: true }}
        format="boolean"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="is_check_renter"
        label="auch bei CH24"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
    </Table>
    <Table
      id="table38"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ SelectedRenter_Counts.value.countries }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="c806a"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="land"
        label="Land"
        placeholder="Select option"
        position="center"
        size={129.9499969482422}
        summaryAggregationMode="none"
      />
      <Column
        id="41730"
        alignment="right"
        cellTooltipMode="overflow"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="count"
        label="Häufigkeit"
        placeholder="Enter value"
        position="center"
        size={77.03334045410156}
        summaryAggregationMode="none"
      />
    </Table>
    <Table
      id="table37"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ SelectedRenter_Counts.value.destinations }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="c806a"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="destination"
        label="Destination"
        placeholder="Select option"
        position="center"
        size={122.56666564941406}
        summaryAggregationMode="none"
      />
      <Column
        id="0f4c4"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="country_code"
        label="Land"
        placeholder="Select option"
        position="center"
        size={62.96665954589844}
        summaryAggregationMode="none"
      />
      <Column
        id="41730"
        alignment="right"
        cellTooltipMode="overflow"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="count"
        label="Häufigkeit"
        placeholder="Enter value"
        position="center"
        size={77.03334045410156}
        summaryAggregationMode="none"
      />
    </Table>
  </View>
</Container>
