<DrawerFrame
  id="drawerFrame2"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showFooter={true}
  showHeader={true}
  showOverlay={true}
  width="large"
>
  <Header>
    <Text
      id="drawerTitle2"
      value="###### CHECK24 – *{{SingleResults_Table.selectedSourceRow.operator_ch24}}* für {{new Intl.NumberFormat('de-DE', {style: 'currency', currency: 'EUR', maximumFractionDigits: 0}).format(SingleResults_Table.selectedSourceRow.price_ch24)}}"
      verticalAlign="center"
    />
    <Button
      id="drawerCloseButton2"
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
        pluginId="drawerFrame2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Image
      id="ScreenshotCHECK24_Image"
      horizontalAlign="center"
      src="{{ ScreenshotCHECK24.data.body }}"
    />
  </Body>
</DrawerFrame>
