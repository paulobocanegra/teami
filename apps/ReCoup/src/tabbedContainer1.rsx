<Container
  id="tabbedContainer1"
  _gap="0px"
  _type="stack"
  currentViewKey={
    '{{ getOutstandingExpenses.data.length >= 1 ? "View 1" : "View 2" }}'
  }
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showBorder={false}
>
  <Header>
    <Tabs
      id="tabs1"
      itemMode="static"
      navigateContainer={true}
      targetContainerId="tabbedContainer1"
      value="{{ self.values[0] }}"
    >
      <Option id="d5572" value="Tab 1" />
      <Option id="94166" value="Tab 2" />
      <Option id="b9699" value="Tab 3" />
    </Tabs>
  </Header>
  <View id="7df2f" viewKey="View 1">
    <Container
      id="container8"
      _gap="0px"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      heightType="fixed"
      hidden=""
      overflowType="hidden"
      padding="12px"
      showBody={true}
      showBorder={false}
    >
      <Header>
        <Text
          id="containerTitle7"
          value="#### Requests"
          verticalAlign="center"
        />
      </Header>
      <View id="9687e" viewKey="View 1">
        <Text id="text45" value="#### Requests" verticalAlign="center" />
        <TextInput
          id="textInput3"
          iconBefore="line/interface-search"
          label=""
          labelPosition="top"
          placeholder="Search expenses"
        />
        <Table
          id="table4"
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ getOutstandingExpenses.data }}"
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          emptyMessage="No rows found"
          enableSaveActions={true}
          groupByColumns={{}}
          heightType="auto"
          overflowType="pagination"
          primaryKeyColumnId="90c23"
          rowHeight="large"
          searchTerm="{{ textInput3.value }}"
          showBorder={true}
          showFooter={true}
          showHeader={true}
          toolbarPosition="bottom"
        >
          <Column
            id="90c23"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            key="id"
            label="ID"
            placeholder="Enter value"
            position="center"
            size={100}
          />
          <Column
            id="7a9f5"
            alignment="left"
            format="datetime"
            groupAggregationMode="none"
            key="date"
            label="Date"
            placeholder="Enter value"
            position="center"
            size={100}
          />
          <Column
            id="5d4c3"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="merchant"
            label="Merchant"
            placeholder="Select option"
            position="center"
            size={100}
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="98a8e"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="employee"
            label="Employee"
            placeholder="Enter value"
            position="center"
            size={100}
          />
          <Column
            id="1b6b6"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="type"
            label="Type"
            placeholder="Select option"
            position="center"
            size={100}
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="d39e7"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="budget"
            label="Budget"
            placeholder="Select option"
            position="center"
            size={100}
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="9110c"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="memo"
            label="Memo"
            placeholder="Enter value"
            position="center"
            size={100}
          />
          <Column
            id="570aa"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="payment_status"
            label="Payment status"
            placeholder="Select option"
            position="center"
            size={100}
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="e7440"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            key="amount"
            label="Amount"
            placeholder="Enter value"
            position="center"
            size={100}
          />
          <Column
            id="5ef3d"
            alignment="left"
            format="datetime"
            groupAggregationMode="none"
            key="reimburse_date"
            label="Reimburse date"
            placeholder="Enter value"
            position="center"
            size={100}
          />
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
          />
          <ToolbarButton
            id="4d"
            icon="bold/interface-arrows-round-left"
            label="Refresh"
            type="custom"
          />
        </Table>
      </View>
    </Container>
    <Container
      id="stack4"
      _align="center"
      _gap="0px"
      _justify="space-between"
      _type="stack"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showBorder={false}
    >
      <View id="8ab3a" viewKey="View 1">
        <Button
          id="button20"
          horizontalAlign="left"
          iconBefore="line/interface-time-clock-circle"
          style={{ ordered: [{ background: "canvas" }] }}
          text="Requests
"
        />
        <Button
          id="button25"
          horizontalAlign="right"
          style={{ map: { borderRadius: "50%" } }}
          text="{{ getOutstandingExpenses.data.length }}"
        />
      </View>
    </Container>
  </View>
  <View id="77493" viewKey="View 2">
    <Container
      id="container7"
      _gap={0}
      footerPadding="4px 12px"
      footerPaddingType="normal"
      headerPadding="4px 12px"
      headerPaddingType="normal"
      hidden=""
      marginType="normal"
      padding="12px"
      paddingType="normal"
      showBody={true}
      style={{ map: { border: "rgb(229, 229, 229)" } }}
    >
      <Header>
        <Text
          id="containerTitle6"
          marginType="normal"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="27e4f" viewKey="View 1">
        <Image
          id="image3"
          horizontalAlign="center"
          marginType="normal"
          src="https://assets-dashboard.brex.com/static/media/congrats.54c2e0e7.png"
        />
        <Text
          id="text43"
          horizontalAlign="center"
          marginType="normal"
          value="### No tasks"
          verticalAlign="center"
        />
        <Text
          id="text44"
          horizontalAlign="center"
          marginType="normal"
          style={{ ordered: [{ color: "rgb(109, 109, 109)" }] }}
          value="When you have new tasks they'll appear here"
          verticalAlign="center"
        />
      </View>
    </Container>
    <Container
      id="stack5"
      _align="center"
      _gap="0px"
      _justify="space-between"
      _type="stack"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showBorder={false}
    >
      <View id="8ab3a" viewKey="View 1">
        <Button
          id="button26"
          horizontalAlign="left"
          iconBefore="line/interface-time-clock-circle"
          style={{ ordered: [{ background: "canvas" }] }}
          text="Requests
"
        />
        <Button
          id="button27"
          horizontalAlign="right"
          style={{ map: { borderRadius: "50%" } }}
          text="{{ getOutstandingExpenses.data.amount.length }}"
        />
      </View>
    </Container>
  </View>
</Container>
