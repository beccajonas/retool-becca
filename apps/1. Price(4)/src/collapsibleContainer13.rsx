<Container
  id="collapsibleContainer13"
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
      id="collapsibleTitle14"
      _disclosedFields={{ array: [] }}
      marginType="normal"
      value={'<h6 style="color: #444444;">Zugrundeliegende Inputkombinationen'}
      verticalAlign="center"
    />
    <ToggleButton
      id="collapsibleToggle14"
      _disclosedFields={{ array: [] }}
      horizontalAlign="right"
      iconForFalse="bold/interface-arrows-button-down"
      iconForTrue="bold/interface-arrows-button-up"
      iconPosition="right"
      marginType="normal"
      styleVariant="outline"
      text="{{ self.value ? 'Zuklappen' : 'Aufklappen' }}"
      value="{{ collapsibleContainer13.showBody }}"
    >
      <Event
        event="change"
        method="setShowBody"
        params={{ ordered: [{ showBody: "{{ self.value }}" }] }}
        pluginId="collapsibleContainer13"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </ToggleButton>
  </Header>
  <View id="f6310" viewKey="Billiger Pauschalreise">
    <Table
      id="Travelers_Table"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ Travelers.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="36f0c"
        alignment="left"
        editable="false"
        editableInNewRows={true}
        format="string"
        groupAggregationMode="none"
        key="description"
        label="Beschreibung"
        placeholder="Frühbucher..."
        position="center"
        size={149.28334045410156}
        summaryAggregationMode="none"
      />
      <Column
        id="19dac"
        alignment="right"
        editable="true"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="departure_in_days"
        label="Flug ab"
        placeholder="Enter value"
        position="center"
        size={59.16667175292969}
        summaryAggregationMode="none"
        tooltip="in Tagen"
      />
      <Column
        id="ec5ff"
        alignment="right"
        editable="true"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="holiday_duration_in_days"
        label="Reisedauer"
        placeholder="Enter value"
        position="center"
        size={101.08332824707031}
        summaryAggregationMode="none"
        tooltip="in Tagen"
      />
      <Column
        id="ca772"
        alignment="right"
        editable="true"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="time_frame_in_days"
        label="Reisezeitraum"
        placeholder="Enter value"
        position="center"
        size={112.85000610351562}
        summaryAggregationMode="none"
        tooltip="in Tagen"
      />
      <Column
        id="bbeba"
        alignment="left"
        editable="true"
        format="string"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="room_allocation"
        label="Zimmerverteilung"
        placeholder="Enter value"
        position="center"
        size={136}
        summaryAggregationMode="none"
        tooltip="Ein weiteres Zimmer wird durch ein Komma getrennt. Z.B. A-A,A-A"
      />
      <Column
        id="6523b"
        alignment="right"
        editable="true"
        editableOptions={{ showStepper: true }}
        format="percent"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="average"
        key="weight"
        label="Gewichtung"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="10e49"
        alignment="left"
        editable="true"
        format="boolean"
        groupAggregationMode="none"
        key="enabled"
        label="Aktiv"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <ToolbarButton
        id="1e381"
        icon="bold/interface-add-1"
        label="Add Row"
        type="addRow"
      />
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="refresh"
          pluginId="Travelers_Table"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
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
          pluginId="Travelers_Table"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <Event
        event="save"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="ApplyTravelerChanges"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
    <TextInput
      id="Hotel_TableSearch"
      hideLabel={true}
      iconBefore="bold/interface-search"
      label="Search"
      placeholder="Suche nach Region, Website oder Hotels..."
    />
    <Table
      id="Hotel_Table"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ Hotels.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      searchTerm="{{ Hotel_TableSearch.value }}"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="366d0"
        alignment="left"
        editable="true"
        editableOptions={{ allowCustomValue: true }}
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="region"
        label="Region"
        optionList={{
          mode: "mapped",
          mappedData: "{{ [...new Set(Hotels.data.region)] }}",
        }}
        placeholder="Select option"
        position="center"
        size={132.3000030517578}
        summaryAggregationMode="none"
      />
      <Column
        id="f1db3"
        alignment="left"
        editable="true"
        editableOptions={{ allowCustomValue: true }}
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="website"
        label="Website"
        optionList={{
          mode: "mapped",
          mappedData: "{{ [...new Set(Hotels.data.website)] }}",
          valueByIndex: "{{ item }}",
          labelByIndex: "",
        }}
        placeholder="Select option"
        position="center"
        size={127.14999389648438}
        summaryAggregationMode="none"
      />
      <Column
        id="2a00e"
        alignment="left"
        editable="true"
        editableOptions={{ object: {} }}
        format="string"
        groupAggregationMode="none"
        key="hotel_name"
        label="Hotel name"
        placeholder="Enter value"
        position="center"
        size={285.91668701171875}
        summaryAggregationMode="none"
      />
      <Column
        id="5d704"
        alignment="left"
        editable="true"
        editableOptions={{ object: {} }}
        format="string"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="hotel_id"
        label="Hotel ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <ToolbarButton
        id="62fe5"
        icon="bold/interface-add-1"
        label="Add Row"
        type="addRow"
      />
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="refresh"
          pluginId="Hotel_Table"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
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
          params={{
            ordered: [{ options: { ordered: [{ fileType: "xlsx" }] } }],
          }}
          pluginId="Hotel_Table"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <Event
        event="save"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="ApplyHotelChanges"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
  </View>
</Container>
