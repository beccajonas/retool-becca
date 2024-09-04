<Container
  id="container46"
  disabled=""
  footerPadding="4px 12px"
  footerPaddingType="normal"
  headerPadding="4px 12px"
  headerPaddingType="normal"
  hidden={
    '{{current_user.groups.some(item => item.name === "Reise - Mietwagen PMs")}}'
  }
  loading="true"
  marginType="normal"
  padding="12px"
  paddingType="normal"
  showBody={true}
>
  <View id="9eab4" viewKey="View 1">
    <Text
      id="text234"
      value={
        '<h4 style="color: #444444;">1.3 <span style="color: #063773;">Gutscheine</span> und <span style="color: #40C0C0;">Guthabenkarten (GHK)</span>'
      }
      verticalAlign="center"
    />
    <Button
      id="button34"
      _disclosedFields={{ array: [] }}
      iconBefore="bold/interface-download-button-2"
      marginType="normal"
      style={{ ordered: [{ background: "rgb(3, 54, 99)" }] }}
      text="Excel"
    >
      <Event
        event="click"
        method="trigger"
        params={{
          ordered: [
            {
              options: {
                object: {
                  onSuccess: null,
                  onFailure: null,
                  additionalScope: null,
                },
              },
            },
          ],
        }}
        pluginId="Price_Download"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Text
      id="text235"
      _disclosedFields={{ array: ["background"] }}
      hidden={
        '{{current_user.groups.some(item => item.name === "Reise - Mietwagen PMs")}}'
      }
      marginType="normal"
      style={{ ordered: [] }}
      value={
        '<h5 style="color: #444444;"> Anteil Buchungen mit Gutschein oder GHK'
      }
      verticalAlign="center"
    />
    <Text
      id="text230"
      _disclosedFields={{ array: [] }}
      marginType="normal"
      style={{ ordered: [{ background: "" }] }}
      value="###### Definition KPI

Anteil der Mietwagenbuchungen für die eine Guthabenkarte (GHK) oder ein Gutschein verwendet wurden an den Gesamtbuchungen.
###### Mathematik
Anzahl Buchungen mit GHK & Gutschein geteilt durch Anzahl Buchungen."
      verticalAlign="center"
    />
    <PlotlyChart
      id="chart49"
      chartType="line"
      data={include("../lib/chart49.data.json", "string")}
      dataseries={{
        ordered: [
          {
            0: {
              ordered: [
                { label: "cpo_total" },
                { datasource: "{{Controlling.data['cpo_total']}}" },
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
                { label: "cpo_ghk" },
                { datasource: "{{Controlling.data['cpo_ghk']}}" },
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
                { label: "cpo_vouchers" },
                { datasource: "{{Controlling.data['cpo_vouchers']}}" },
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
                { label: "db_total" },
                { datasource: "{{Controlling.data['db_total']}}" },
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
                { label: "db_ghk" },
                { datasource: "{{Controlling.data['db_ghk']}}" },
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
                { label: "db_vouchers" },
                { datasource: "{{Controlling.data['db_vouchers']}}" },
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
          {
            6: {
              ordered: [
                { label: "ghk_voucher_ratio_num" },
                { datasource: "{{Controlling.data['ghk_voucher_ratio_num']}}" },
                { chartType: "line" },
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
                { label: "ghk_voucher_ratio_value" },
                {
                  datasource: "{{Controlling.data['ghk_voucher_ratio_value']}}",
                },
                { chartType: "line" },
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
        ],
      }}
      datasourceDataType="object"
      datasourceInputMode="javascript"
      datasourceJS="{{Controlling.data}}"
      hidden=""
      isJsonTemplateDirty={true}
      isLayoutJsonDirty={true}
      layout={include("../lib/chart49.layout.json", "string")}
      skipDatasourceUpdate={true}
      xAxis="{{Controlling.data.datum}}"
      xAxisDropdown="datum"
    />
    <Text
      id="text236"
      _disclosedFields={{ array: ["background"] }}
      hidden={
        '{{current_user.groups.some(item => item.name === "Reise - Mietwagen PMs")}}'
      }
      marginType="normal"
      style={{ ordered: [] }}
      value={'<h5 style="color: #444444;">Cost per Order (CPO)'}
      verticalAlign="center"
    />
    <PlotlyChart
      id="chart50"
      chartType="line"
      data={include("../lib/chart50.data.json", "string")}
      dataseries={{
        ordered: [
          {
            0: {
              ordered: [
                { label: "cpo_total" },
                { datasource: "{{Controlling.data['cpo_total']}}" },
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
                { label: "cpo_ghk" },
                { datasource: "{{Controlling.data['cpo_ghk']}}" },
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
                { label: "cpo_vouchers" },
                { datasource: "{{Controlling.data['cpo_vouchers']}}" },
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
                { label: "db_total" },
                { datasource: "{{Controlling.data['db_total']}}" },
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
                { label: "db_ghk" },
                { datasource: "{{Controlling.data['db_ghk']}}" },
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
                { label: "db_vouchers" },
                { datasource: "{{Controlling.data['db_vouchers']}}" },
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
          {
            6: {
              ordered: [
                { label: "ghk_voucher_ratio_num" },
                { datasource: "{{Controlling.data['ghk_voucher_ratio_num']}}" },
                { chartType: "line" },
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
                { label: "ghk_voucher_ratio_value" },
                {
                  datasource: "{{Controlling.data['ghk_voucher_ratio_value']}}",
                },
                { chartType: "line" },
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
        ],
      }}
      datasourceDataType="object"
      datasourceInputMode="javascript"
      datasourceJS="{{Controlling.data}}"
      hidden=""
      isJsonTemplateDirty={true}
      isLayoutJsonDirty={true}
      layout={include("../lib/chart50.layout.json", "string")}
      skipDatasourceUpdate={true}
      xAxis="{{Controlling.data.datum}}"
      xAxisDropdown="datum"
    />
    <Text
      id="text232"
      _disclosedFields={{ array: [] }}
      marginType="normal"
      style={{ ordered: [{ background: "" }] }}
      value="###### Definition KPI

Durchschnittlicher Eurobetrag verwendeter GHK oder Gutscheine pro Buchung, für die eine GHK oder ein Gutschein verwendet wurde.
###### Mathematik
GHK- & Gutscheinkosten / Anzahl Buchungen mit GHK & Gutschein "
      verticalAlign="center"
    />
    <Text
      id="text229"
      _disclosedFields={{ array: ["background"] }}
      hidden={
        '{{current_user.groups.some(item => item.name === "Reise - Mietwagen PMs")}}'
      }
      marginType="normal"
      style={{ ordered: [] }}
      value={'<h5 style="color: #444444;">Deckungsbeitrag'}
      verticalAlign="center"
    />
    <PlotlyChart
      id="chart51"
      chartType="line"
      data={include("../lib/chart51.data.json", "string")}
      dataseries={{
        ordered: [
          {
            0: {
              ordered: [
                { label: "cpo_total" },
                { datasource: "{{Controlling.data['cpo_total']}}" },
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
                { label: "cpo_ghk" },
                { datasource: "{{Controlling.data['cpo_ghk']}}" },
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
                { label: "cpo_vouchers" },
                { datasource: "{{Controlling.data['cpo_vouchers']}}" },
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
                { label: "db_total" },
                { datasource: "{{Controlling.data['db_total']}}" },
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
                { label: "db_ghk" },
                { datasource: "{{Controlling.data['db_ghk']}}" },
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
                { label: "db_vouchers" },
                { datasource: "{{Controlling.data['db_vouchers']}}" },
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
          {
            6: {
              ordered: [
                { label: "ghk_voucher_ratio_num" },
                { datasource: "{{Controlling.data['ghk_voucher_ratio_num']}}" },
                { chartType: "line" },
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
                { label: "ghk_voucher_ratio_value" },
                {
                  datasource: "{{Controlling.data['ghk_voucher_ratio_value']}}",
                },
                { chartType: "line" },
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
        ],
      }}
      datasourceDataType="object"
      datasourceInputMode="javascript"
      datasourceJS="{{Controlling.data}}"
      hidden=""
      isJsonTemplateDirty={true}
      isLayoutJsonDirty={true}
      layout={include("../lib/chart51.layout.json", "string")}
      skipDatasourceUpdate={true}
      xAxis="{{Controlling.data.datum}}"
      xAxisDropdown="datum"
    />
    <Text
      id="text233"
      _disclosedFields={{ array: [] }}
      marginType="normal"
      style={{ ordered: [{ background: "" }] }}
      value="###### Definition KPI

Durchschnittlicher Eurobetrag des Bruttogewinns (Pay per Order - Cost per Order) pro Buchung, für die eine GHK oder ein Gutschein verwendet wurde.
###### Mathematik
(PPO - CPO) / Anzahl Buchungen mit GHK & Gutschein "
      verticalAlign="center"
    />
  </View>
  <Footer>
    <Text
      id="text231"
      _disclosedFields={{ array: [] }}
      marginType="normal"
      style={{ ordered: [{ background: "" }] }}
      verticalAlign="center"
    />
  </Footer>
</Container>
