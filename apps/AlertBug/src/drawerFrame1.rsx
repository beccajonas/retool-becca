<DrawerFrame
  id="drawerFrame1"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showHeader={true}
  showOverlay={true}
  width="large"
>
  <Header>
    <Text
      id="drawerTitle1"
      value="###### {{Competitor_Selection.value}} – *{{SingleResults_Table.selectedSourceRow.operator}}* für {{new Intl.NumberFormat('de-DE', {style: 'currency', currency: 'EUR', maximumFractionDigits: 0}).format(SingleResults_Table.selectedSourceRow.price)}}"
      verticalAlign="center"
    />
    <Button
      id="drawerCloseButton1"
      ariaLabel="Close"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ ordered: [{ border: "transparent" }] }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="setHidden"
        params={{ ordered: [{ hidden: true }] }}
        pluginId="drawerFrame1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Image
      id="ScreenshotCompetitor_Image"
      horizontalAlign="center"
      retoolFileObject=""
      src="{{ ScreenshotCompetitor.data.body }}"
    />
  </Body>
</DrawerFrame>
