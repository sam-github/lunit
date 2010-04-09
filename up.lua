require"lunitx"

module("up", lunit.testcase, package.seeall)

function testsuccess()
    assert_true(true)
end

function testfailure()
    assert_false(true, "expect to fail")
end

function testseeall()
    print("ok")
end

