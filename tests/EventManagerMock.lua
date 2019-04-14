EVENT_MANAGER = {}
local registeredEvents = {}

function EVENT_MANAGER:RegisterForEvent(addonName, event, callback)
    event = {
        ["addonName"] = addonName,
        ["event"] = event,
        ["callback"] = callback
    };

    table.insert(registeredEvents, event)
end

function EVENT_MANAGER:GetRegisteredEvents()
    return registeredEvents
end

return EVENT_MANAGER
