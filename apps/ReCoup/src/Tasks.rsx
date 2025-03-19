<Screen
  id="Tasks"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  browserTitle=""
  title="Page 1"
  urlSlug=""
>
  <SqlQueryUnified
    id="getOutstandingExpenses"
    enableTransformer={true}
    query={include("../lib/getOutstandingExpenses.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="e27e34f0-dbaf-469b-b0ea-88f45218aa75"
    transformer="return formatDataAsArray(data)"
    warningCodes={[]}
  />
  <Frame
    id="$main5"
    enableFullBleed={true}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    style={{}}
    type="main"
  >
    <Include src="./tabbedContainer1.rsx" />
  </Frame>
</Screen>
