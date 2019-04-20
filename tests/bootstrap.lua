local manifestPath = 'AddonName.txt'

require "TimeAssertion"
require "ChatAssertion"
require "TypeAssertion"

local esouiLoader = require 'EsoLuaLoader'
esouiLoader:initializeGlobals()
esouiLoader:requireLuaFiles(manifestPath)

function dd(variable)
    local inspectioner = require 'inspect'
    local inspection = inspectioner.inspect(variable)
    print(inspection)
    os.exit()
end
