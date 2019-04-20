describe("ZO_SavedVars", function()

    before_each(function()
        -- required to clear up other tests
        ZO_SavedVars:initialize()
    end)

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
