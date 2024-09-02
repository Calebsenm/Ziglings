const std = @import("std");

pub fn main() void {
    var n: u32 = 1;

    while (true) : (n += 1) {
        if (n == 10) break;
    }

    std.debug.print("n={}\n", .{n});
}
