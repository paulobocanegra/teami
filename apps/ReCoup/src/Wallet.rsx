<Screen
  id="Wallet"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  browserTitle=""
  title="Page 1"
  urlSlug=""
>
  <SqlQueryUnified
    id="getBudgets"
    query={include("../lib/getBudgets.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="e27e34f0-dbaf-469b-b0ea-88f45218aa75"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="query1"
    notificationDuration={4.5}
    query={include("../lib/query1.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="e27e34f0-dbaf-469b-b0ea-88f45218aa75"
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
    warningCodes={[]}
  />
  <Function
    id="transformer1"
    funcBody={include("../lib/transformer1.js", "string")}
  />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    type="main"
  >
    <Container
      id="stack1"
      _flexWrap={true}
      _gap="0px"
      _justify="end"
      _type="stack"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showBorder={false}
    >
      <View id="0417b" viewKey="View 1">
        <Button
          id="button4"
          text="Request limit
"
        />
        <Button id="button5" text="Request a new reimbursement" />
      </View>
    </Container>
    <Text id="text1" value="## My Wallet" verticalAlign="center" />
    <Container
      id="collapsibleContainer1"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <ToggleButton
          id="collapsibleToggle1"
          horizontalAlign="right"
          iconForFalse="bold/interface-arrows-button-down"
          iconForTrue="bold/interface-arrows-button-up"
          iconPosition="replace"
          styleVariant="outline"
          text="{{ self.value ? 'Hide' : 'Show' }}"
          value="{{ collapsibleContainer1.showBody }}"
        >
          <Event
            event="change"
            method="setShowBody"
            params={{ map: { showBody: "{{ self.value }}" } }}
            pluginId="collapsibleContainer1"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </ToggleButton>
        <Text
          id="collapsibleTitle1"
          value="#### My wallet"
          verticalAlign="center"
        />
      </Header>
      <View id="e732b" viewKey="View 1">
        <ListViewBeta
          id="listView1"
          _primaryKeys="{{ item.id }}"
          data="{{ getBudgets.data }}"
          itemWidth="200px"
          margin="0"
          numColumns={3}
          padding="0"
        >
          <Container
            id="container2"
            _align="center"
            _gap="0px"
            _type="stack"
            footerPadding="4px 12px"
            headerPadding="4px 12px"
            margin="0"
            padding="0"
            showBody={true}
            showBorder={false}
          >
            <View id="48828" viewKey="View 1">
              <Container
                id="stack3"
                _direction="vertical"
                _gap="0px"
                _justify="center"
                _type="stack"
                footerPadding="4px 12px"
                headerPadding="4px 12px"
                padding="12px"
                showBody={true}
                showBorder={false}
              >
                <View id="0417b" viewKey="View 1">
                  <Text
                    id="text41"
                    value="{{ item.name }} ({{ item.status }})"
                    verticalAlign="center"
                  />
                  <Text
                    id="text42"
                    style={{
                      fontSize: "8px",
                      fontWeight: "400",
                      fontFamily: "Inter",
                      color: "highlight",
                    }}
                    value="{{ transformer1.value[i]}} USD available"
                    verticalAlign="center"
                  />
                </View>
              </Container>
              <Icon
                id="icon3"
                horizontalAlign="center"
                icon="bold/interface-page-controller-settings"
              />
            </View>
          </Container>
        </ListViewBeta>
      </View>
    </Container>
    <Table
      id="table1"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ query1.data }}"
      defaultFilters={{
        0: {
          id: "1a032",
          columnId: "23279",
          operator: "includes",
          value: "{{ current_user.fullName }}",
          disabled: false,
        },
      }}
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      primaryKeyColumnId="60bee"
      rowHeight="large"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="60bee"
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
        summaryAggregationMode="none"
      />
      <Column
        id="3bff6"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="date"
        label="Date"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="ca10a"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="merchant"
        label="Merchant"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="23279"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="employee"
        label="Employee"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="fff6a"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="type"
        label="Type"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="bbdd3"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="budget"
        label="Budget"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="cbd8f"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="memo"
        label="Memo"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="70a9f"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="payment_status"
        label="Payment status"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="27b08"
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
        summaryAggregationMode="none"
      />
      <Column
        id="daaf1"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="reimburse_date"
        label="Reimburse date"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
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
          pluginId="table1"
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
          pluginId="table1"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
  </Frame>
</Screen>
