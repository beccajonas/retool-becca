<SidebarFrame
  id="sidebarFrame1"
  footerPadding="8px 12px"
  footerPaddingType="normal"
  headerPadding="8px 12px"
  headerPaddingType="normal"
  hidden=""
  isHiddenOnMobile={true}
  isInEditMode={false}
  padding="8px 12px"
  paddingType="normal"
  style={{
    ordered: [
      { footerBackground: "rgb(3, 54, 99)" },
      { background: "rgb(255, 255, 255)" },
    ],
  }}
  width="240px"
>
  <Body>
    <Navigation
      id="ToC"
      itemMode="static"
      marginType="normal"
      orientation="vertical"
      style={{ ordered: [{ hoverText: "rgb(255, 187, 28)" }] }}
    >
      <Option id="839a8" itemType="custom" label="1.1 On-Page Bestpreis">
        <Event
          event="click"
          method="scrollIntoView"
          params={{
            ordered: [
              {
                options: {
                  ordered: [{ block: "start" }, { behavior: "smooth" }],
                },
              },
            ],
          }}
          pluginId="text4"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option id="70d8d" itemType="custom" label="1.2 Google Bestpreis-Anteil">
        <Event
          event="click"
          method="scrollIntoView"
          params={{
            ordered: [
              {
                options: {
                  ordered: [{ block: "start" }, { behavior: "smooth" }],
                },
              },
            ],
          }}
          pluginId="text97"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="9401a"
        disabled="true"
        hidden={
          '{{current_user.groups.some(item => item.name.includes("PMs"))}}'
        }
        itemType="custom"
        label="1.3 Gutscheine und GHK"
      >
        <Event
          event="click"
          method="scrollIntoView"
          params={{
            ordered: [
              {
                options: {
                  ordered: [{ block: "start" }, { behavior: "smooth" }],
                },
              },
            ],
          }}
          pluginId="text234"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Event
        event="click"
        method="scrollIntoView"
        params={{
          ordered: [
            {
              options: {
                ordered: [{ block: "start" }, { behavior: "smooth" }],
              },
            },
          ],
        }}
        pluginId="text99"
        targetId="6e04a"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="scrollIntoView"
        params={{
          ordered: [
            {
              options: {
                ordered: [{ block: "start" }, { behavior: "smooth" }],
              },
            },
          ],
        }}
        pluginId="text100"
        targetId="58331"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="scrollIntoView"
        params={{
          ordered: [
            {
              options: {
                ordered: [{ block: "start" }, { behavior: "smooth" }],
              },
            },
          ],
        }}
        pluginId="containerTitle66"
        targetId="803d5"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="scrollIntoView"
        params={{
          ordered: [
            { options: { object: { block: "nearest", behavior: "auto" } } },
          ],
        }}
        pluginId="button12"
        targetId="8063c"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="scrollIntoView"
        params={{
          ordered: [
            {
              options: {
                ordered: [{ block: "start" }, { behavior: "smooth" }],
              },
            },
          ],
        }}
        pluginId="text105"
        targetId="6dc9c"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="scrollIntoView"
        params={{
          ordered: [
            {
              options: {
                ordered: [{ block: "start" }, { behavior: "smooth" }],
              },
            },
          ],
        }}
        pluginId="text5"
        targetId="de316"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="scrollIntoView"
        params={{
          ordered: [
            {
              options: {
                ordered: [{ block: "start" }, { behavior: "smooth" }],
              },
            },
          ],
        }}
        pluginId="text5"
        targetId="2c898"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Navigation>
  </Body>
  <Footer>
    <Avatar
      id="avatar1"
      _disclosedFields={{ array: [] }}
      fallback="{{ current_user.fullName }}"
      imageSize={32}
      label="{{ current_user.fullName }}"
      labelCaption="{{ current_user.email }}"
      marginType="normal"
      src="{{ current_user.profilePhotoUrl }}"
      style={{ ordered: [{ background: "automatic" }] }}
    />
  </Footer>
</SidebarFrame>
