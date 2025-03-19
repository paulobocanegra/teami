<Screen
  id="SpendLimits"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  browserTitle=""
  title={null}
  urlSlug=""
>
  <SqlQueryUnified
    id="query3"
    query={include("../lib/query3.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="e27e34f0-dbaf-469b-b0ea-88f45218aa75"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="query4"
    actionType="INSERT"
    changeset={
      '[{"key":"id","value":"{{ idInput1.value }}"},{"key":"name","value":"{{ nameInput.value }}"},{"key":"limit","value":"{{ limitInput.value }}"},{"key":"spent","value":"{{ spentInput.value }}"},{"key":"status","value":"{{ statusInput.value }}"}]'
    }
    changesetObject="{{ form1.data }}"
    editorMode="gui"
    isMultiplayerEdited={false}
    resourceDisplayName="retool_db"
    resourceName="e27e34f0-dbaf-469b-b0ea-88f45218aa75"
    runWhenModelUpdates={false}
    tableName="budget_data"
  >
    <Event
      event="success"
      method="trigger"
      params={{}}
      pluginId="query3"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="hide"
      params={{}}
      pluginId="modalFrame1"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <Include src="./modalFrame1.rsx" />
  <Frame
    id="$main4"
    enableFullBleed={true}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Include src="./container6.rsx" />
  </Frame>
</Screen>
