const std = @import("std");

pub fn main() void {
    defer std.debug.print("Two", .{});
    std.debug.print("One", .{});
}
