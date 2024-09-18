const std = @import("std");

pub fn main() void {
    const le = [_]u8{ 1, 2 };
    const et = [_]u8{ 3, 4 };

    const leet = le ++ et;
    const bit_pattern = [_]u8{ 1, 0, 0, 1 } ** 3;

    std.debug.print("LEET", .{});

    for (leet) |n| {
        std.debug.print("{}", .{n});
    }
    std.debug.print("Bits", .{});

    for (bit_pattern) |n| {
        std.debug.print("{}", .{n});
    }

    std.debug.print(" - {any} - {any} \n", .{ leet, bit_pattern });
}
