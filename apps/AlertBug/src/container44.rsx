<Container
  id="container44"
  footerPadding="4px 12px"
  footerPaddingType="normal"
  headerPadding="4px 12px"
  headerPaddingType="normal"
  hoistFetching={true}
  marginType="normal"
  padding="12px"
  paddingType="normal"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Text
      id="containerTitle44"
      _disclosedFields={{ array: [] }}
      marginType="normal"
      value="##### Details der Suchläufe nach Tag

Datum wählen und in linker Tabelle Keyword zur näheren Inspektion auswählen. Nach Auswahl können in der unteren Tabelle die für das Keyword in den jeweiligen Suchläufen ausgespielten Werbeanzeigen ausgewählt und durch Klicken auch der Anzeigetext untersucht werden."
      verticalAlign="center"
    />
  </Header>
  <View id="4ac65" viewKey="View 1">
    <Select
      id="date_keywords6"
      data="{{ AdcheckDates_ALL_12_Select.data }}"
      emptyMessage="No options"
      label="Datum"
      marginType="normal"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      value="{{AdcheckDates_ALL_12_Select.data.Datum[0]}}"
      values="{{ item.Datum }}"
    />
    <Select
      id="region_keywords"
      data="{{ RegionKeywords_ALL_12_Select.data }}"
      emptyMessage="No options"
      label="Region"
      marginType="normal"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      value="Gesamt"
      values="{{ item.Region }}"
    />
    <TableLegacy
      id="table16"
      _columns={[
        "date",
        "keyword",
        "searches",
        "pk",
        "accepted",
        "pk_abs",
        "wins",
      ]}
      _columnSummaryTypes={{
        ordered: [
          { anteil_preiskampf_keyword: "average" },
          { avg_price_comp_won: "average" },
          { keyword_avg_price_comp: "average" },
          { pk: "average" },
          { wins: "average" },
          { accepted: "average" },
          { pk_abs: "sum" },
          { searches: "sum" },
        ],
      }}
      _columnSummaryValues={{
        ordered: [
          { anteil_preiskampf_keyword: "" },
          { avg_price_comp_won: "" },
          { keyword_avg_price_comp: "" },
          { pk: "" },
          { wins: "" },
          { accepted: "" },
          { pk_abs: "" },
          { searches: "" },
        ],
      }}
      _columnVisibility={{
        ordered: [{ date_crawled: false }, { date: false }],
      }}
      _compatibilityMode={false}
      _disclosedFields={{
        array: ["selectedRowBackground", "hoverRowBackground"],
      }}
      _unfilteredSelectedIndex="0"
      columnAlignment={{
        ordered: [
          { anteil_preiskampf_keyword: "right" },
          { avg_price_comp_won: "right" },
          { keyword_avg_price_comp: "right" },
          { pk: "right" },
          { wins: "right" },
          { accepted: "right" },
          { pk_abs: "right" },
          { searches: "right" },
        ],
      }}
      columnColors={{
        ordered: [
          { date: "" },
          { keyword: "" },
          {
            wins: "{{self > 0.70 ? '#063773' :\n   self > 0.50 ? '#C1E3E3' :\n  '#F3F2F2' }}",
          },
          {
            pk: "{{self > 0.70 ? '#063773' :\n   self > 0.50 ? '#C1E3E3' :\n  '#F3F2F2' }}",
          },
          {
            accepted:
              "{{self > 0.70 ? '#063773' :\n   self > 0.50 ? '#C1E3E3' :\n  '#F3F2F2' }}",
          },
          {
            pk_abs:
              "{{currentRow.pk > 0.70 ? '#063773' :\n   currentRow.pk  > 0.50 ? '#C1E3E3' :\n  '#F3F2F2' }}",
          },
          { searches: "" },
        ],
      }}
      columnFormats={{
        ordered: [
          { anteil_preiskampf_keyword: "PercentDataCell" },
          { avg_price_comp_won: "PercentDataCell" },
          { keyword_avg_price_comp: "PercentDataCell" },
          { pk: "PercentDataCell" },
          { wins: "PercentDataCell" },
          { accepted: "PercentDataCell" },
          { pk_abs: "NumberDataCell" },
          { searches: "NumberDataCell" },
        ],
      }}
      columnFrozenAlignments={{
        ordered: [{ keyword: "left" }, { wins: "right" }, { pk_abs: null }],
      }}
      columnHeaderNames={{
        ordered: [
          { accepted: "Hat CHECK24 teilgenommen?" },
          { keyword_avg_price_comp: "% Preiskampfvorkommen" },
          { anteil_preiskampf_keyword: "% Preiskampfvorkommen" },
          { keyword: "Keyword" },
          { avg_price_comp_won: "% Preiskampfgewinn" },
          { pk_abs: "Preiskämpfe mit C24" },
          { date: "Datum" },
          { searches: "Suchanfragen" },
          { wins: "Hat CHECK24 den Preiskampf gewonnen?" },
          { pk: "Hat ein Preiskampf stattgefunden?" },
        ],
      }}
      columnTypeProperties={{
        ordered: [
          {
            anteil_preiskampf_keyword: {
              ordered: [
                { showSeparators: true },
                { padDecimal: true },
                { decimalPlaces: "2" },
              ],
            },
          },
          {
            avg_price_comp_won: {
              ordered: [
                { showSeparators: true },
                { padDecimal: true },
                { decimalPlaces: "0" },
              ],
            },
          },
          {
            keyword_avg_price_comp: {
              ordered: [
                { showSeparators: true },
                { padDecimal: true },
                { decimalPlaces: "0" },
              ],
            },
          },
          {
            pk: {
              ordered: [
                { showSeparators: true },
                { padDecimal: true },
                { decimalPlaces: "0" },
              ],
            },
          },
          {
            wins: {
              ordered: [
                { showSeparators: true },
                { padDecimal: true },
                { decimalPlaces: "0" },
              ],
            },
          },
          {
            accepted: {
              ordered: [
                { showSeparators: true },
                { padDecimal: true },
                { decimalPlaces: "0" },
              ],
            },
          },
          {
            pk_abs: {
              ordered: [{ showSeparators: true }, { padDecimal: true }],
            },
          },
          {
            searches: {
              ordered: [{ showSeparators: true }, { padDecimal: true }],
            },
          },
        ],
      }}
      columnWidths={[
        { object: { id: "anteil_preiskampf_keyword", value: 171.328125 } },
        { object: { id: "avg_price_comp_won", value: 142 } },
        { object: { id: "searches", value: 109 } },
        { object: { id: "pk_abs", value: 155 } },
        { object: { id: "accepted", value: 190.75 } },
        { object: { id: "pk", value: 231 } },
        { object: { id: "wins", value: 258 } },
        { object: { id: "keyword", value: 245.5 } },
      ]}
      customButtonName="Excel Export"
      data="{{ DetailedSearchResults_ALL_12_Table.data }}"
      defaultSortByColumn="searches"
      defaultSortDescending={true}
      doubleClickToEdit={true}
      emptyMessage={
        '{{"Für das Datum " + date_keywords6.value + " und die Region " + region_keywords.value + " sind keine Daten verfügbar 😢"}}'
      }
      onCustomButtonPressQueryName="xlsx_dl_EBP_keyword_day"
      overflowType="scroll"
      rowHeight="dense"
      showBoxShadow={false}
      showCustomButton={true}
      showDownloadButton={false}
      style={{
        ordered: [
          { selectedRowBackground: "rgba(6, 55, 115, 0.75)" },
          { hoverRowBackground: "rgba(6, 55, 115, 0.25)" },
        ],
      }}
    />
    <Text
      id="text172"
      _disclosedFields={{ array: [] }}
      marginType="normal"
      value={
        '**<span style="font-size: 15px;">Keyword Detailansicht für <u>*{{table16.selectedRow.data.keyword}}*</u>**</span>'
      }
      verticalAlign="center"
    />
    <Checkbox
      id="checkbox2"
      _disclosedFields={{ array: [] }}
      label={'nur Anzeigen mit "ab Preis"'}
      marginType="normal"
      value="true"
    />
    <Table
      id="table17"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ KeywordDetails_ALL_12_Table.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage={
        '{{"Für das Datum " + date_keywords6.value + ", die Region " + region_keywords.value + " und das Keyword " + table16.selectedRow.data.keyword + " sind keine Daten verfügbar 😢"}}'
      }
      enableSaveActions={true}
      showBorder={true}
      showFooter={true}
      showHeader={true}
      style={{ accent: "rgb(6, 55, 115)" }}
      toolbarPosition="bottom"
    >
      <Column
        id="8b2d3"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        key="search_id"
        label="Search ID"
        placeholder="Select option"
        position="center"
        size={87.625}
      />
      <Column
        id="566f9"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        hidden="false"
        key="bundesland"
        label="Bundesland"
        placeholder="Select option"
        position="center"
        size={148.296875}
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="ece89"
        alignment="left"
        format="string"
        formatOptions={{ automaticColors: true }}
        key="werbetreibender"
        label="Werbetreibender"
        placeholder="Enter value"
        position="center"
        size={114.671875}
      />
      <Column
        id="7113e"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true }}
        key="Rang"
        label="Rang"
        placeholder="Enter value"
        position="center"
        size={45.53125}
      />
      <Column
        id="9f88c"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="currency"
        formatOptions={{
          currency: "EUR",
          showSeparators: true,
          decimalPlaces: "0",
          padDecimal: true,
          notation: "standard",
          currencySign: "standard",
          currencyDisplay: "symbol",
        }}
        key="preis"
        label="Preis"
        placeholder="Enter value"
        position="center"
        size={61.75}
      />
      <Column
        id="8e3d4"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true }}
        hidden="true"
        key="suchlauf_id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={39.328125}
      />
      <Column
        id="8cb6b"
        alignment="left"
        format="string"
        hidden="true"
        key="text"
        label="Text"
        placeholder="Enter value"
        position="center"
        size={673}
      />
      <Column
        id="ab1d1"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        key="preiskampf"
        label="Preiskampf"
        placeholder="Select option"
        position="center"
        size={81.5625}
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="f3601"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        key="teilgenommen"
        label="Teilgenommen"
        placeholder="Select option"
        position="center"
        size={101.53125}
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="2e4c4"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        key="gewonnen"
        label="Gewonnen"
        placeholder="Select option"
        position="center"
        size={78.359375}
        valueOverride="{{ _.startCase(item) }}"
      />
    </Table>
    <Container
      id="container45"
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
          id="containerTitle43"
          marginType="normal"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="16fac" viewKey="View 1">
        <Text
          id="text171"
          _disclosedFields={{ array: [] }}
          heightType="fixed"
          hidden="{{!table17.selectedRow.werbetreibender && !table17.selectedRow.text}}"
          marginType="normal"
          value="###### <u>{{table17.selectedRow.werbetreibender}}</u>
###### 
{{table17.selectedRow.text}}"
        />
      </View>
    </Container>
    <Container
      id="collapsibleContainer17"
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
          id="collapsibleTitle18"
          _disclosedFields={{ array: [] }}
          marginType="normal"
          value="##### Kommentare"
          verticalAlign="center"
        />
        <ToggleButton
          id="collapsibleToggle18"
          _disclosedFields={{ array: [] }}
          horizontalAlign="right"
          iconForFalse="bold/interface-arrows-button-down"
          iconForTrue="bold/interface-arrows-button-up"
          iconPosition="right"
          marginType="normal"
          styleVariant="outline"
          text="{{ self.value ? 'Zuklappen' : 'Aufklappen' }}"
          value="{{ collapsibleContainer17.showBody }}"
        >
          <Event
            event="change"
            method="setShowBody"
            params={{ ordered: [{ showBody: "{{ self.value }}" }] }}
            pluginId="collapsibleContainer17"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </ToggleButton>
      </Header>
      <View id="8dfde" viewKey="View 1">
        <Note
          id="comment7"
          evaluatedKey="{{table16.id}}"
          placeholder="Hier Notiz einfügen..."
        />
      </View>
    </Container>
  </View>
</Container>
