describe("TypeAssertion", function()

    it("should check if a variable is of type function", function()
        callback = function()
        end

        assert.type_of('function', callback)

        assert.is_not_type_of('function', 1)
    end)

    it("should check if a variable is of type string", function()
        assert.type_of('string', 'Value')

        assert.is_not_type_of('string', 1)
    end)

    it("should check if a variable is of type table", function()
        assert.type_of('table', {})

        assert.is_not_type_of('table', 1)
    end)
end)
