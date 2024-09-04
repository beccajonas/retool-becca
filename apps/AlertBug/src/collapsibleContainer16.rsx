<Container
  id="collapsibleContainer16"
  footerPadding="4px 12px"
  footerPaddingType="normal"
  headerPadding="4px 12px"
  headerPaddingType="normal"
  hoistFetching={true}
  marginType="normal"
  padding="12px"
  paddingType="normal"
  showHeader={true}
>
  <Header>
    <Text
      id="collapsibleTitle16"
      _disclosedFields={{ array: [] }}
      marginType="normal"
      value="##### Informationen zur Gesamtheit der Suchläufe"
      verticalAlign="center"
    />
    <ToggleButton
      id="collapsibleToggle16"
      _disclosedFields={{ array: [] }}
      horizontalAlign="right"
      iconForFalse="bold/interface-arrows-button-down"
      iconForTrue="bold/interface-arrows-button-up"
      iconPosition="right"
      marginType="normal"
      styleVariant="outline"
      text="{{ self.value ? 'Zuklappen' : 'Aufklappen' }}"
      value="{{ collapsibleContainer16.showBody }}"
    >
      <Event
        event="change"
        method="setShowBody"
        params={{ ordered: [{ showBody: "{{ self.value }}" }] }}
        pluginId="collapsibleContainer16"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </ToggleButton>
  </Header>
  <View id="98a5b" viewKey="View 1">
    <RadioGroup
      id="select_timeframe_2"
      groupLayout="wrap"
      itemMode="static"
      label=""
      labelPosition="top"
      marginType="normal"
      style={{ ordered: [{ checkedBackground: "rgb(3, 54, 99)" }] }}
      value="{{ self.values[0] }}"
    >
      <Option id="96f21" label="Gesamter Zeitraum" value="all" />
      <Option id="f6572" label="Letzten 7 Tage" value="last_7d" />
      <Option id="f1f97" label="Gestern" value="last_day" />
    </RadioGroup>
    <Table
      id="table15"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ SearchResultDetails_ALL_12_Table.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      enableSaveActions={true}
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="911ad"
        alignment="left"
        format="string"
        key="keyword"
        label="Keyword"
        placeholder="Enter value"
        position="center"
        size={251.1666717529297}
      />
      <Column
        id="aec14"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, decimalPlaces: "2" }}
        key="c24_rank"
        label="Ø Platzierung"
        placeholder="Enter value"
        position="center"
        size={108.64999389648438}
      />
      <Column
        id="d9627"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true }}
        key="total_calls"
        label="Suchanfragen"
        placeholder="Enter value"
        position="center"
        size={99.53334045410156}
      />
      <Column
        id="6b2b1"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="percent"
        formatOptions={{ showSeparators: true, decimalPlaces: "0" }}
        key="teilnahme"
        label="C24 unter Werbetreibenden"
        placeholder="Enter value"
        position="center"
        size={182.8000030517578}
      />
      <Column
        id="a08f6"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true }}
        key="pk"
        label="Preiskämpfe"
        placeholder="Enter value"
        position="center"
        size={95.30000305175781}
      />
      <Column
        id="9d913"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="percent"
        formatOptions={{ showSeparators: true, decimalPlaces: "0" }}
        key="teilnahme_pk"
        label="Teilnahme C24"
        placeholder="Enter value"
        position="center"
        size={114.11666870117188}
      />
      <Column
        id="41978"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="percent"
        formatOptions={{ showSeparators: true, decimalPlaces: "0" }}
        key="wins"
        label="...davon gewonnen"
        placeholder="Enter value"
        position="center"
        referenceId="davonGewonnen"
        size={52.350006103515625}
      />
    </Table>
    <Divider
      id="divider1"
      marginType="normal"
      style={{ ordered: [{ color: "" }] }}
    />
    <Text
      id="text170"
      marginType="normal"
      value="###### Informationen zu Werbung der Top {{slider_top_n.value}} Werbetreibenden"
      verticalAlign="center"
    />
    <Slider
      id="slider_top_n"
      label="Anzahl Top Werbetreibende"
      labelWidth="66"
      marginType="normal"
      max="10"
      min="3"
      step={1}
      value="5"
    />
    <Container
      id="container41"
      footerPadding="4px 12px"
      footerPaddingType="normal"
      headerPadding="4px 12px"
      headerPaddingType="normal"
      marginType="normal"
      padding="12px"
      paddingType="normal"
      showBody={true}
    >
      <Header>
        <Text
          id="containerTitle40"
          marginType="normal"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="16fac" viewKey="View 1">
        <Text
          id="text166"
          marginType="normal"
          value="###### Durchschnittlicher Werberang
**Platzierung** innerhalb der Werbeanzeigen"
          verticalAlign="center"
        />
        <PlotlyChart
          id="chart16"
          data={include("../lib/chart16.data.json", "string")}
          dataseries={{
            ordered: [
              {
                0: {
                  ordered: [
                    { label: "avg_rank" },
                    {
                      datasource:
                        "{{ AvgCommercialRank_ALL_12_Chart.data.avg_rank}}",
                    },
                    { chartType: "bar" },
                    { aggregationType: "sum" },
                    { color: "#033663" },
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
          datasourceJS="{{ AvgCommercialRank_ALL_12_Chart.data }}"
          isJsonTemplateDirty={true}
          isLayoutJsonDirty={true}
          layout={include("../lib/chart16.layout.json", "string")}
          skipDatasourceUpdate={true}
          xAxis="{{ AvgCommercialRank_ALL_12_Chart.data .werbetreibender}}"
          xAxisDropdown="werbetreibender"
        />
      </View>
    </Container>
    <Container
      id="container43"
      footerPadding="4px 12px"
      footerPaddingType="normal"
      headerPadding="4px 12px"
      headerPaddingType="normal"
      marginType="normal"
      padding="12px"
      paddingType="normal"
      showBody={true}
    >
      <Header>
        <Text
          id="containerTitle42"
          marginType="normal"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="16fac" viewKey="View 1">
        <Text
          id="text169"
          marginType="normal"
          value="###### Durchschnittspreise
aufs Jahr hochgerechnete Preise, falls mit **Ab-Preisen geworben** wurde."
          verticalAlign="center"
        />
        <PlotlyChart
          id="chart18"
          data={include("../lib/chart18.data.json", "string")}
          dataseries={{
            ordered: [
              {
                0: {
                  ordered: [
                    { label: "avg_price" },
                    {
                      datasource: "{{ AvgPrices_ALL_12_Chart.data.avg_price}}",
                    },
                    { chartType: "bar" },
                    { aggregationType: "sum" },
                    { color: "#033663" },
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
          datasourceJS="{{ AvgPrices_ALL_12_Chart.data }}"
          isJsonTemplateDirty={true}
          isLayoutJsonDirty={true}
          layout={include("../lib/chart18.layout.json", "string")}
          skipDatasourceUpdate={true}
          xAxis="{{ AvgPrices_ALL_12_Chart.data .werbetreibender}}"
          xAxisDropdown="werbetreibender"
        />
      </View>
    </Container>
    <Container
      id="container40"
      footerPadding="4px 12px"
      footerPaddingType="normal"
      headerPadding="4px 12px"
      headerPaddingType="normal"
      marginType="normal"
      padding="12px"
      paddingType="normal"
      showBody={true}
    >
      <Header>
        <Text
          id="containerTitle39"
          marginType="normal"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="16fac" viewKey="View 1">
        <Text
          id="text165"
          marginType="normal"
          value="###### Impressionen
Auftauchen in **bezahlten Werbeanzeigen**"
          verticalAlign="center"
        />
        <PlotlyChart
          id="chart15"
          data={include("../lib/chart15.data.json", "string")}
          dataseries={{
            ordered: [
              {
                0: {
                  ordered: [
                    { label: "row_count" },
                    {
                      datasource:
                        "{{ Impressions_ALL_12_Chart.data.row_count}}",
                    },
                    { chartType: "bar" },
                    { aggregationType: "sum" },
                    { color: "#033663" },
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
          datasourceJS="{{ Impressions_ALL_12_Chart.data }}"
          isJsonTemplateDirty={true}
          isLayoutJsonDirty={true}
          layout={include("../lib/chart15.layout.json", "string")}
          skipDatasourceUpdate={true}
          xAxis="{{ Impressions_ALL_12_Chart.data .werbetreibender}}"
          xAxisDropdown="werbetreibender"
        />
      </View>
    </Container>
    <Include src="./container42.rsx" />
  </View>
</Container>
