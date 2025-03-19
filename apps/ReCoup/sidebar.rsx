<SidebarFrame
  id="sidebarFrame1"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  isHiddenOnMobile={true}
  padding="8px 12px"
  width="large"
>
  <Avatar
    id="avatar2"
    hidden=""
    imageSize={32}
    label="{{ current_user.fullName }}"
    labelCaption="{{ current_user.email }}"
    margin="4px 4px"
    style={{ map: { background: "automatic" } }}
  />
  <Navigation
    id="navigation1"
    appTargetByIndex=""
    captionByIndex=""
    data=""
    disabledByIndex=""
    hiddenByIndex=""
    highlightByIndex=""
    iconByIndex=""
    iconPositionByIndex=""
    itemMode="static"
    itemTypeByIndex=""
    keyByIndex=""
    labels=""
    orientation="vertical"
    parentKeyByIndex=""
    screenTargetByIndex=""
    screenTargetIdByIndex=""
    src={null}
    srcType={null}
    tooltipByIndex=""
  >
    <Option
      id="2e5a1"
      icon="bold/money-cash-bill-1"
      iconPosition="left"
      itemType="page"
      label="Wallet"
      screenTargetId="Wallet"
    />
    <Option
      id="76b17"
      icon="bold/programming-browser-check"
      iconPosition="left"
      itemType="page"
      label="Tasks"
      screenTargetId="Tasks"
    />
    <Option
      id="303df"
      disabled={false}
      hidden={false}
      icon="bold/money-graph-pie-chart"
      iconPosition="left"
      itemType="page"
      label="Spend Limits"
      screenTargetId="SpendLimits"
    />
    <Option
      id="39b8b"
      icon="bold/interface-content-note-pad-text-alternate"
      iconPosition="left"
      itemType="page"
      label="Expenses"
      screenTargetId="Expenses"
    />
    <Event
      event="click"
      method="openPage"
      params={{ map: { pageName: "{{ item.id }}" } }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
  </Navigation>
</SidebarFrame>
