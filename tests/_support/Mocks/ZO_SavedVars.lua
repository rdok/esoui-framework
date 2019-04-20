ZO_SavedVars = {}
ZO_SavedVars.accounts = {}

function ZO_SavedVars:NewAccountWide(savedVariableTable, version, namespace, defaults, profile, displayName)
    table.insert(ZO_SavedVars.accounts, {
        ['savedVariableTable'] = savedVariableTable,
        ['version'] = version,
        ['namespace'] = namespace,
        ['defaults'] = defaults,
        ['profile'] = profile,
        ['displayName'] = displayName
    })
end

function ZO_SavedVars:getAccounts()
    return ZO_SavedVars.accounts
end
