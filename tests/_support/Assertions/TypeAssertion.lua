local assert = require('luassert.assert')
local say = require("say")

local function type_of(state, arguments)
    if #arguments ~= 2 then
        return negative
    end

    local expectedType = arguments[1]
    local actualType = type(arguments[2])

    return expectedType == actualType
end

say:set("assertion.type_of.positive", "Expected type of %s. Actual: %s")
say:set("assertion.type_of.negative", "Unexpected type of %s. Actual: %s")
assert:register("assertion", "type_of", type_of, "assertion.type_of.positive", "assertion.type_of.negative")

