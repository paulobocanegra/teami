<Container
  id="container9"
  _gap="0px"
  _justify="end"
  _type="stack"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  margin="0"
  padding="0"
  showBody={true}
  showBorder={false}
>
  <Header>
    <Text
      id="containerTitle8"
      value="#### Container title"
      verticalAlign="center"
    />
  </Header>
  <View id="67b01" viewKey="View 1">
    <Icon
      id="icon1"
      horizontalAlign="center"
      icon="bold/interface-alert-alarm-bell-2-alternate"
      margin="10px 5px 0px"
    />
    <Button
      id="button3"
      style={{ map: { background: "rgba(255, 89, 0, 0)" } }}
      text="Support"
    >
      <Event
        event="click"
        method="trigger"
        params={{}}
        pluginId=""
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Avatar
      id="avatar1"
      fallback="{{ current_user.fullName }}"
      imageSize={32}
      label="{{ current_user.fullName }}"
      src="{{ current_user.profilePhotoUrl }}"
      style={{ map: { background: "automatic" } }}
    />
    <Button id="button2" text="Settings" />
  </View>
</Container>
