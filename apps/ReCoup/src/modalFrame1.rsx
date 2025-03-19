<ModalFrame
  id="modalFrame1"
  enableFullBleed={true}
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
  size="medium"
>
  <Header>
    <Text
      id="modalTitle1"
      value="### Request New Budget
"
      verticalAlign="center"
    />
    <Button
      id="modalCloseButton1"
      ariaLabel="Close"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ map: { border: "transparent" } }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="setHidden"
        params={{ map: { hidden: true } }}
        pluginId="modalFrame1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Form
      id="form1"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      initialData="{{ table3.selectedRow }}"
      padding="12px"
      requireValidation={true}
      resetAfterSubmit={true}
      scroll={true}
      showBody={true}
      showFooter={true}
      showHeader={true}
    >
      <Header>
        <Text id="formTitle1" value="#### Form title" verticalAlign="center" />
      </Header>
      <Body>
        <NumberInput
          id="idInput1"
          currency="USD"
          inputValue={0}
          label="ID"
          labelPosition="top"
          placeholder="Enter value"
          required={true}
          showSeparators={true}
          showStepper={true}
          value={0}
        />
        <TextInput
          id="nameInput"
          formDataKey="name"
          label="Name"
          labelPosition="top"
          placeholder="Enter value"
          required={true}
        />
        <NumberInput
          id="limitInput"
          currency="USD"
          format="currency"
          formDataKey="limit"
          inputValue={0}
          label="Limit"
          labelPosition="top"
          placeholder="Enter value"
          required={true}
          showSeparators={true}
          showStepper={true}
          value={0}
        />
        <NumberInput
          id="spentInput"
          currency="USD"
          format="currency"
          formDataKey="spent"
          inputValue={0}
          label="Spent"
          labelPosition="top"
          placeholder="Enter value"
          required={true}
          showSeparators={true}
          showStepper={true}
          value={0}
        />
        <Select
          id="statusInput"
          emptyMessage="No options"
          formDataKey="status"
          itemMode="static"
          label="Status"
          labelPosition="top"
          labels={null}
          overlayMaxHeight={375}
          placeholder="Select an option"
          required={true}
          showSelectionIndicator={true}
          values={null}
        >
          <Option id="c76f9" value="Active" />
          <Option id="91e44" value="Exprired" />
        </Select>
      </Body>
      <Footer>
        <Button
          id="formButton1"
          submit={true}
          submitTargetId="form1"
          text="Submit"
        />
      </Footer>
      <Event
        event="submit"
        method="trigger"
        params={{}}
        pluginId="query4"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </Body>
</ModalFrame>
