<Container
  id="container39"
  disabled=""
  footerPadding="4px 12px"
  footerPaddingType="normal"
  headerPadding="4px 12px"
  headerPaddingType="normal"
  hoistFetching={true}
  marginType="normal"
  padding="12px"
  paddingType="normal"
  showBody={true}
  showFooter={true}
  showHeader={true}
>
  <Header>
    <Text
      id="text97"
      _disclosedFields={{ array: ["background"] }}
      marginType="normal"
      style={{ ordered: [] }}
      value={'<h4 style="color: #444444;">1.2 Google Bestpreis-Anteil </h4>'}
      verticalAlign="center"
    />
    <Button
      id="button33"
      iconBefore="bold/interface-alert-information-circle-alternate"
      style={{ ordered: [] }}
      styleVariant="outline"
      text="Information"
    >
      <Event
        event="click"
        method="show"
        params={{ ordered: [] }}
        pluginId="modalFrame2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Text
      id="containerTitle38"
      _disclosedFields={{ array: [] }}
      marginType="normal"
      value={
        '<h5 style="color: #444444;">Anteil  Google-Suchanfragen <span style="color: #C2BDBD;">mit Preiskampf</span>, davon <span style="color: #95C2DB;">teilgenommen</span>, und davon <span style="color: #005EA8;">gewonnen</span>.'
      }
      verticalAlign="center"
    />
    <Button
      id="button10"
      _disclosedFields={{ array: [] }}
      iconBefore="bold/interface-download-button-2"
      marginType="normal"
      style={{ ordered: [{ background: "rgb(3, 54, 99)" }] }}
      text="Excel"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="ExportXlsxAdcheck_ALL_12_Button"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Tabs
      id="tabs5"
      itemMode="static"
      marginType="normal"
      navigateContainer={true}
      style={{ ordered: [{ selectedText: "rgb(6, 55, 115)" }] }}
      targetContainerId="container39"
      value="{{ self.values[0] }}"
    >
      <Option id="e4085" value="Tab 1" />
      <Option id="2378d" value="Tab 2" />
      <Option id="4c6e3" value="Tab 3" />
    </Tabs>
  </Header>
  <View id="41a3e" viewKey="Täglich">
    <PlotlyChart
      id="chart13"
      data={include("../lib/chart13.data.json", "string")}
      dataseries={{
        ordered: [
          {
            0: {
              ordered: [
                { label: "win_rel" },
                { datasource: "{{AdCheckDaily_Chart.data.win_rel}}" },
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
          {
            1: {
              ordered: [
                { label: "win_abs" },
                { datasource: "{{AdCheckDaily_Chart.data.win_abs}}" },
                { chartType: "bar" },
                { aggregationType: "sum" },
                { color: "#247BC7" },
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
                { label: "preiskampf_rel" },
                { datasource: "{{AdCheckDaily_Chart.data.preiskampf_rel}}" },
                { chartType: "bar" },
                { aggregationType: "sum" },
                { color: "#55A1E3" },
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
                { label: "teilgenommen_rel" },
                { datasource: "{{AdCheckDaily_Chart.data.teilgenommen_rel}}" },
                { chartType: "bar" },
                { aggregationType: "sum" },
                { color: "#DAECFC" },
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
                { label: "preiskampf_abs" },
                { datasource: "{{AdCheckDaily_Chart.data.preiskampf_abs}}" },
                { chartType: "bar" },
                { aggregationType: "sum" },
                { color: "#EECA86" },
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
                { label: "teilgenommen_abs" },
                { datasource: "{{AdCheckDaily_Chart.data.teilgenommen_abs}}" },
                { chartType: "bar" },
                { aggregationType: "sum" },
                { color: "#E9AB11" },
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
      datasourceJS="{{AdCheckDaily_Chart.data}}"
      hidden=""
      isJsonTemplateDirty={true}
      isLayoutJsonDirty={true}
      layout={include("../lib/chart13.layout.json", "string")}
      skipDatasourceUpdate={true}
      xAxis="{{AdCheckDaily_Chart.data.date}}"
      xAxisDropdown="date"
    />
  </View>
  <View id="591f5" viewKey="7 Tage Ø">
    <PlotlyChart
      id="chart14"
      data={include("../lib/chart14.data.json", "string")}
      dataseries={{
        ordered: [
          {
            0: {
              ordered: [
                { label: "win_rel" },
                { datasource: "{{AdCheckDaily_Chart.data.win_rel}}" },
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
          {
            1: {
              ordered: [
                { label: "win_abs" },
                { datasource: "{{AdCheckDaily_Chart.data.win_abs}}" },
                { chartType: "bar" },
                { aggregationType: "sum" },
                { color: "#247BC7" },
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
                { label: "preiskampf_rel" },
                { datasource: "{{AdCheckDaily_Chart.data.preiskampf_rel}}" },
                { chartType: "bar" },
                { aggregationType: "sum" },
                { color: "#55A1E3" },
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
                { label: "teilgenommen_rel" },
                { datasource: "{{AdCheckDaily_Chart.data.teilgenommen_rel}}" },
                { chartType: "bar" },
                { aggregationType: "sum" },
                { color: "#DAECFC" },
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
                { label: "preiskampf_abs" },
                { datasource: "{{AdCheckDaily_Chart.data.preiskampf_abs}}" },
                { chartType: "bar" },
                { aggregationType: "sum" },
                { color: "#EECA86" },
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
                { label: "teilgenommen_abs" },
                { datasource: "{{AdCheckDaily_Chart.data.teilgenommen_abs}}" },
                { chartType: "bar" },
                { aggregationType: "sum" },
                { color: "#E9AB11" },
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
      datasourceJS="{{AdCheckDaily_Chart.data}}"
      isJsonTemplateDirty={true}
      isLayoutJsonDirty={true}
      layout={include("../lib/chart14.layout.json", "string")}
      skipDatasourceUpdate={true}
      xAxis="{{AdCheckDaily_Chart.data.date}}"
      xAxisDropdown="date"
    />
  </View>
  <Footer>
    <Text
      id="text163"
      _disclosedFields={{ array: [] }}
      marginType="normal"
      style={{ ordered: [{ background: "" }] }}
      value={
        '###### Definition & Erklärung KPI\n\nGemessen wird der Anteil an den Suchanfragen bei denen es zu einem <span style="color: #C2BDBD; font-weight: bold;">Preiskampf</span> kommt, der Anteil an den Preiskämpfen an denen <span style="color: #95C2DB; font-weight: bold;">CHECK24 teilnimmt</span> und der Anteil an den teilgenommenen Preiskämpfe bei denen <span style="color: #005EA8; font-weight: bold;">CHECK24 mit dem günstigsten Preis</span> wirbt. Die Keywords werden basierend auf den Impressionen ausgewählt und dementsprechend von der Performance Marketing Abteilung laufend aktualisiert.\n\n\n###### Weitere Definitionen\n- Eine <u>**Suchanfrage**</u> ist definiert als ein über AdPreview abgefragtes Suchergebnis. Bei den Ergebnissen einer Suchanfrage beschränken wir uns auf die **Werbeanzeigen** die **über den organischen Resultaten** erscheinen.\n- Ein <u>**Preiskampf**</u> ist definiert als eine Suchanfrage bei denen **mind. zwei Werbetreibenden mit einem Preis** werben.\n- Als <u>**Preis**</u> ist in diesem Kontext ein im Werbetext angegebener *ab-Preis* gemeint, z.B. "* ab 46,50€ am Tag*".\n- Google\'s <u>**AdPreview**</u> ist ein Tool für Werbetreibende, welches die Möglichkeit zur Vorschau von Google-Suchen für unterschiedliche Keywords, IP-Standorte und Gerätetypen bietet.'
      }
      verticalAlign="center"
    />
    <Text
      id="text164"
      _disclosedFields={{ array: [] }}
      marginType="normal"
      value={
        '###### Berechnungslogik\nAnteil ohne spezielle Gewichtung.\n- <span style="color: #C2BDBD; font-weight: bold;">% Preiskampf</span> = alle Preiskämpfe / alle Suchanfragen\n- <span style="color: #95C2DB; font-weight: bold;">% Teilnahme</span> = C24 Preiskampfteilnahmen / alle Preiskämpfe\n- <span style="color: #005EA8; font-weight: bold;">% gewonnen</span> = C24 Preiskämpfe gewonnen / C24 Preiskampfteilnahmen\n\n'
      }
      verticalAlign="center"
    />
    <Text
      id="text162"
      _disclosedFields={{ array: [] }}
      marginType="normal"
      value="###### Changelog Scraper

 "
      verticalAlign="center"
    />
    <Timeline
      id="timeline3"
      items={
        '["2024-06-14: Überarbeitete Logik in der Preisextraktion. Macht die vorherigen Datenpunkte nicht mehr vergleichbar.",\n"2023-05-29: Daten werden bezogen über AdCheck, Keywords werden von Performance-Marketing gesteuert, Anzahl Keywords 30-50"]'
      }
      timestamps={
        '["2020-06-29", "2020-06-29T20:39:00+00:00", "2020-06-28T11:12:00+00:00"]'
      }
    />
  </Footer>
</Container>
