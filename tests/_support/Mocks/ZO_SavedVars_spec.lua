describe("ZO_SavedVars", function()

    it("should store new account variables", function()
        ZO_SavedVars:NewAccountWide(
                'savedVariableTable',
                'version',
                'namespace',
                'defaults',
                'profile',
                'displayName'
        )

        expected = {
            ['savedVariableTable'] = 'savedVariableTable',
            ['version'] = 'version',
            ['namespace'] = 'namespace',
            ['defaults'] = 'defaults',
            ['profile'] = 'profile',
            ['displayName'] = 'displayName'
        }

        assert.is_same(expected, ZO_SavedVars:getAccounts()[1])
    end)

end)
