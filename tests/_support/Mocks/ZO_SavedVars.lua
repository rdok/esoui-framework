ZO_SavedVars = {
    accounts = {}
}

function ZO_SavedVars:NewAccountWide(savedVariableTable, version, namespace, defaults, profile, displayName)

    local index = 1

    if nil ~= ZO_SavedVars.accounts then
        index = #ZO_SavedVars.accounts + 1
    end

    ZO_SavedVars.accounts[index] = {
        ['savedVariableTable'] = savedVariableTable,
        ['version'] = version,
        ['namespace'] = namespace,
        ['defaults'] = defaults,
        ['profile'] = profile,
        ['displayName'] = displayName
    }
end

function ZO_SavedVars:getAccount(index)
    return ZO_SavedVars.accounts[index]
end

