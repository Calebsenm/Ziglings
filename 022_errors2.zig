const std = @import("std");

const MyNumberError = error{TooSmall};

pub fn main() void {
    var my_numer: MyNumberError!u8 = 5;

    my_numer = MyNumberError.TooSmall;
    std.debug.print("I Compiled! \n ", .{});
}
