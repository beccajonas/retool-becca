<Container
  id="container42"
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
      id="containerTitle41"
      marginType="normal"
      value="#### Container title"
      verticalAlign="center"
    />
  </Header>
  <View id="16fac" viewKey="View 1">
    <Text
      id="text167"
      marginType="normal"
      value="###### Werberang Platz 1"
      verticalAlign="center"
    />
    <RadioGroup
      id="select_anteilig"
      groupLayout="wrap"
      itemMode="static"
      label=""
      labelPosition="top"
      marginType="normal"
      style={{ ordered: [{ checkedBackground: "rgb(3, 54, 99)" }] }}
      value="{{ self.values[0] }}"
    >
      <Option id="96f21" label="Anteilig" value="true" />
      <Option id="f6572" label="Absolut" value="false" />
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="FirstRankComercial_ALL_12_Chart"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </RadioGroup>
    <Text
      id="text168"
      marginType="normal"
      value="{{select_anteilig.value ? '**Anteil**' : '**Anzahl**'}} der Werbeanzeigen **an erster Stelle** platziert"
      verticalAlign="center"
    />
    <PlotlyChart
      id="chart17"
      data={include("../lib/chart17.data.json", "string")}
      dataseries={{
        ordered: [
          {
            0: {
              ordered: [
                { label: "first_spot" },
                {
                  datasource:
                    "{{ FirstRankComercial_ALL_12_Chart.data.first_spot}}",
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
      datasourceJS="{{ FirstRankComercial_ALL_12_Chart.data }}"
      isJsonTemplateDirty={true}
      isLayoutJsonDirty={true}
      layout={include("../lib/chart17.layout.json", "string")}
      skipDatasourceUpdate={true}
      xAxis="{{ FirstRankComercial_ALL_12_Chart.data .werbetreibender}}"
      xAxisDropdown="werbetreibender"
    />
  </View>
</Container>
