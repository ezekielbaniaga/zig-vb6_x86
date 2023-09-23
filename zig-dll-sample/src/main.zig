const std = @import("std");
const testing = std.testing;

pub const fnCallback = *const fn () void;

var stat: i32 = 0;
var lastMessage: [*:0]const u8 = undefined;

export fn add(a: i32, b: i32) i32 {
    return a + b;
}

// called in a vb6 project
export fn testMsg(msg: [*:0]const u8, cbk: fnCallback) void {
    _ = std.os.windows.user32.MessageBoxA(null, "world", msg, 0);

    stat = 12;
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
