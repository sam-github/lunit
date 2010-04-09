local _assert = assert

require"lunitx"

module("down", lunit.testcase)

function testluaerror()
    (nil)() -- error!
end

function testluasseert()
    _assert(false, "assertion of something") -- real assert!
end

function testseeallismissing()
    print("ok") -- no scope!
end

