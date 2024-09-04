<App>
  <Include src="./functions.rsx" />
  <AppStyles id="$appStyles" css={include("./lib/$appStyles.css", "string")} />
  <CustomAppTheme
    id="$appTheme"
    _migrated={true}
    automatic={[
      "#fde68a",
      "#eecff3",
      "#a7f3d0",
      "#bfdbfe",
      "#c7d2fe",
      "#fecaca",
      "#fcd6bb",
    ]}
    borderRadius="4px"
    canvas="#f6f6f6"
    danger="#dc2626"
    defaultFont={{
      size: "12px",
      name: "Inter",
      source: "https://fonts.googleapis.com/css2?family=Inter",
    }}
    h1Font={{ size: "36px" }}
    h2Font={{ size: "28px" }}
    h3Font={{ size: "24px" }}
    h4Font={{ size: "18px" }}
    h5Font={{ size: "16px" }}
    h6Font={{ size: "14px" }}
    highlight="#fde68a"
    info="#3170f9"
    primary="#3170f9"
    secondary=""
    success="#059669"
    surfacePrimary="#ffffff"
    surfacePrimaryBorder=""
    surfaceSecondary="#ffffff"
    surfaceSecondaryBorder=""
    tertiary=""
    textDark="#0d0d0d"
    textLight="#ffffff"
    warning="#cd6f00"
  />
  <UrlFragments
    id="$urlFragments"
    value={{ ordered: [{ _hideNav: "true" }, { "": "" }] }}
  />
  <Include src="./header.rsx" />
  <Include src="./src/drawerFrame1.rsx" />
  <Include src="./src/drawerFrame2.rsx" />
  <Include src="./src/modalFrame1.rsx" />
  <Include src="./src/modalFrame2.rsx" />
  <Include src="./sidebar.rsx" />
  <Frame
    id="$main"
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    paddingType="normal"
    sticky={false}
    type="main"
  >
    <Text
      id="text3"
      _disclosedFields={{ array: [] }}
      marginType="normal"
      style={{ ordered: [{ background: "rgb(6, 55, 115)" }] }}
      value={'<h3 class="indent">1. Price</h3>'}
      verticalAlign="center"
    />
    <Button
      id="button1"
      _disclosedFields={{ array: [] }}
      iconBefore="bold/interface-download-button-2"
      marginType="normal"
      style={{
        ordered: [
          { background: "highlight" },
          { label: "" },
          { border: "highlight" },
        ],
      }}
      text="PDF"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="DownloadPagePDF_ALL_11_Button"
        type="datasource"
        waitMs="100"
        waitType="debounce"
      />
    </Button>
    <Include src="./src/Container_11.rsx" />
    <Divider
      id="divider80"
      hidden=""
      marginType="normal"
      style={{ ordered: [{ text: "rgb(224, 224, 224)" }] }}
      text="/"
      textSize="h4"
    />
    <Include src="./src/container39.rsx" />
    <Container
      id="collapsibleContainer15"
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
      showHeader={true}
    >
      <Header>
        <Text
          id="collapsibleTitle17"
          _disclosedFields={{ array: [] }}
          marginType="normal"
          value="#### Weiterführende Informationen"
          verticalAlign="center"
        />
        <ToggleButton
          id="collapsibleToggle17"
          _disclosedFields={{ array: [] }}
          iconForFalse="bold/interface-arrows-button-down"
          iconForTrue="bold/interface-arrows-button-up"
          iconPosition="right"
          marginType="normal"
          styleVariant="outline"
          text="{{ self.value ? 'Zuklappen' : 'Aufklappen' }}"
          value="{{ collapsibleContainer15.showBody }}"
        >
          <Event
            event="change"
            method="setShowBody"
            params={{ ordered: [{ showBody: "{{ self.value }}" }] }}
            pluginId="collapsibleContainer15"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </ToggleButton>
      </Header>
      <View id="f6310" viewKey="View 1">
        <Include src="./src/container44.rsx" />
        <Include src="./src/collapsibleContainer16.rsx" />
      </View>
    </Container>
    <Divider
      id="divider81"
      hidden=""
      marginType="normal"
      style={{ ordered: [{ text: "rgb(224, 224, 224)" }] }}
      text="/"
      textSize="h4"
    />
    <Include src="./src/container46.rsx" />
  </Frame>
</App>
