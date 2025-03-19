<Container
  id="container6"
  enableFullBleed={true}
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  heightType="fixed"
  overflowType="hidden"
  padding="12px"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Text
      id="containerTitle5"
      value="### Spend Limits"
      verticalAlign="center"
    />
    <DropdownButton
      id="dropdownButton1"
      _colorByIndex={["", "", "", "", ""]}
      _fallbackTextByIndex={["", "", "", "", ""]}
      _imageByIndex={["", "", "", "", ""]}
      _values={["", "", "Action 5", "", "Action 4"]}
      itemMode="static"
      overlayMaxHeight={375}
      styleVariant="outline"
      text="Sort"
    >
      <Option id="55f58" label="Name">
        <Event
          enabled=""
          event="click"
          method="setSort"
          params={{ map: { sort: { columnId: "name", direction: "asc" } } }}
          pluginId="table3"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option id="ea96a" label="Limit">
        <Event
          event="click"
          method="setSort"
          params={{ map: { sort: { columnId: "limit", direction: "asc" } } }}
          pluginId="table3"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option id="9033c" disabled={false} hidden={false} label="Spent">
        <Event
          event="click"
          method="setSort"
          params={{ map: { sort: { columnId: "spent", direction: "asc" } } }}
          pluginId="table3"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option id="02e4a" label="Status">
        <Event
          event="click"
          method="setSort"
          params={{ map: { sort: { columnId: "status", direction: "asc" } } }}
          pluginId="table3"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option id="c7065" disabled={false} hidden={false} label="Usage">
        <Event
          event="click"
          method="setSort"
          params={{ map: { sort: { columnId: "usage", direction: "asc" } } }}
          pluginId="table3"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
    </DropdownButton>
    <TextInput
      id="textInput2"
      label=""
      labelPosition="top"
      placeholder="Search"
      style={{ map: { accent: "#f5f5f5" } }}
    />
    <Button id="button24" text="Request New">
      <Event
        event="click"
        method="show"
        params={{}}
        pluginId="modalFrame1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <View id="73bce" viewKey="View 1">
    <Table
      id="table3"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ query3.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      primaryKeyColumnId="df981"
      rowHeight="large"
      searchTerm="{{ textInput2.value }}"
      showBorder={true}
      showFooter={true}
      showHeader={true}
    >
      <Column
        id="df981"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="a7f19"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="name"
        label="Name"
        placeholder="Enter value"
        position="center"
        size={230}
        summaryAggregationMode="none"
      />
      <Column
        id="a1f5f"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="limit"
        label="Limit"
        placeholder="Enter value"
        position="center"
        size={200}
        summaryAggregationMode="none"
      />
      <Column
        id="0e8fe"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="spent"
        label="Spent"
        placeholder="Enter value"
        position="center"
        size={253}
        summaryAggregationMode="none"
      />
      <Column
        id="ec738"
        alignment="right"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="status"
        label="Status"
        placeholder="Select option"
        position="center"
        size={440}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="7f7e4"
        alignment="right"
        cellTooltipMode="custom"
        format="progress"
        formatOptions={{
          min: 0,
          max: 100,
          positiveTrend: 100,
          negativeTrend: 10,
        }}
        groupAggregationMode="average"
        label="Usage"
        placeholder="Enter value"
        position="center"
        referenceId="usage"
        size={484}
        summaryAggregationMode="none"
        valueOverride="{{ (currentSourceRow.spent * 100.00) / currentSourceRow.limit }}"
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
      >
        <Event
          event="clickToolbar"
          method="exportData"
          pluginId="table3"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="refresh"
          pluginId="table3"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
  </View>
</Container>
