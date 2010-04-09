local newproxy = newproxy
local debug = debug
local assert = assert
local setmetatable = setmetatable

local actions = {}

local function gc(fn)
    local p = assert(newproxy())
    assert(debug.setmetatable(p, { __gc = fn }))
    return p
end

function atexit(fn)
    actions[#actions+1] = gc(fn)
end

return atexit

