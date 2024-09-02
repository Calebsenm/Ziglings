const std = @import("std");

pub fn main() void {
    const lyrics =
        \\ziggy played the guitar
        \\Jamming good with Andrew Kelly
        \\And Spiders from Mars
    ;

    std.debug.print("{s}", .{lyrics});
}
