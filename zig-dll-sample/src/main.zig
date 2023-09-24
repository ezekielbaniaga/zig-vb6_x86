const std = @import("std");
const testing = std.testing;

// Declarations for testMsg
var stat: i32 = 0;
pub const fnCallbackTestMsg = *const fn () void;

// Declarations for testString
var lastMessage: [*:0]const u8 = undefined;
pub const fnCallbackTestString = *const fn () void;

export fn add(a: i32, b: i32) i32 {
    return a + b;
}

export fn testMsg(msg: [*:0]const u8, cbk: fnCallbackTestMsg) void {
    _ = std.os.windows.user32.MessageBoxA(null, msg, "MessageBox From Zig", 0);
    _ = std.os.windows.user32.MessageBoxA(null, "The internal variable 'stat' has been mutated.\n Call 'getStat' to retrieve its value", "MessageBox from Zig", 0);

    stat = 12;
    cbk();
}

export fn testString(cbk: fnCallbackTestString) void {
    _ = std.os.windows.user32.MessageBoxA(null, "The internal variable 'lastMessage' has been mutated.\n Call 'getLastMessage' to retrieve its value", "MessageBox from Zig", 0);

    lastMessage = "This is the last message";
    cbk();
}

export fn getStat() i32 {
    return @as(i32, stat);
}

export fn getLastMessage() [*:0]const u8 {
    return lastMessage;
}

test "basic add functionality" {
    try testing.expect(add(3, 7) == 10);
}

test "hello Test" {
    testMsg("Hello there!");
    std.time.sleep(3 * std.time.ns_per_s);
}
