<Container
  id="collapsibleContainer18"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showHeader={true}
  style={{ ordered: [{ background: "rgba(246, 246, 246, 0.05)" }] }}
>
  <Header>
    <Text
      id="collapsibleTitle26"
      value={
        '<span style="font-size: 13px;">**{{Competitor_Selection.value}}** – **{{Travelers_Selection.value}}** in **{{Region_Selection.value}}** {{RollingDays.value ? "(" + (RollingDays.value + 1) + " Tage laufend)" : ""}}</span>'
      }
      verticalAlign="center"
    />
    <ToggleButton
      id="collapsibleToggle19"
      horizontalAlign="right"
      iconForFalse="bold/interface-arrows-button-down"
      iconForTrue="bold/interface-arrows-button-up"
      iconPosition="right"
      style={{
        ordered: [{ background: '{{self.value ? "highlight" : "#FFFFFF"}}' }],
      }}
      text="{{ self.value ? 'Zuklappen' : 'Aufklappen' }}"
      value="{{ collapsibleContainer18.showBody }}"
    >
      <Event
        event="change"
        method="setShowBody"
        params={{ ordered: [{ showBody: "{{ self.value }}" }] }}
        pluginId="collapsibleContainer18"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </ToggleButton>
  </Header>
  <View id="65752" viewKey="View 1">
    <Tabs
      id="Competitor_Selection"
      alignment="justify"
      hidden=""
      itemMode="static"
      marginType="normal"
      style={{
        ordered: [
          { selectedBackground: "canvas" },
          { unselectedText: "canvas" },
        ],
      }}
      targetContainerId="Container_11"
      value="{{ self.values[0] }}"
    >
      <Option id="67c66" value="HolidayCheck" />
      <Option
        id="7307d"
        disabled="true"
        hidden={false}
        iconPosition="left"
        value="AIDU"
      />
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="LaggingCommands"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Tabs>
    <RadioGroup
      id="RollingDays"
      groupLayout="wrap"
      itemMode="static"
      label="gleitende Aggregation"
      labelWidth="40"
      marginType="normal"
      style={{
        ordered: [
          { checkedBackground: "rgb(6, 55, 115)" },
          { border: "" },
          { uncheckedBackground: "" },
          { check: "" },
        ],
      }}
      value="{{ self.values[0] }}"
    >
      <Option id="8ba43" label="täglich" value="0" />
      <Option id="660bb" label="7 Tage" value="6" />
      <Option id="ff90d" label="30 Tage" value="29" />
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="LaggingCommands"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </RadioGroup>
    <RadioGroup
      id="Travelers_Selection"
      data="{{ Travelers.data.description }}"
      disabledByIndex=""
      groupLayout="wrap"
      hideLabel={true}
      label="Reisegruppe"
      labelWidth="20"
      marginType="normal"
      style={{
        ordered: [
          { checkedBackground: "rgb(6, 55, 115)" },
          { checkedBorder: "canvas" },
        ],
      }}
      value="{{ self.values[0] }}"
      values=""
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="LaggingCommands"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </RadioGroup>
    <Tabs
      id="Region_Selection"
      alignment="justify"
      data="{{ [...new Set(Hotels.data.region)] }}"
      style={{
        ordered: [
          { selectedBackground: "canvas" },
          { unselectedText: "canvas" },
        ],
      }}
      value="{{ self.values[0] }}"
      values=""
    >
      <Option id="0000">
        <Event
          event="change"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="LaggingCommands"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option id="0001" />
      <Option id="0002" />
    </Tabs>
    <PlotlyChart
      id="DailyWinRates_Chart"
      chartType="line"
      data={include("../lib/DailyWinRates_Chart.data.json", "string")}
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
      layout={include("../lib/DailyWinRates_Chart.layout.json", "string")}
      skipDatasourceUpdate={true}
      xAxis="{{ DailyWinRates_11.data.datum}}"
      xAxisDropdown="datum"
    />
  </View>
</Container>
