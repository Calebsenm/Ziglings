const std = @import("std");

const MyNumberError = error{ TooSmall, TooBig };

pub fn main() void {
    const a: u32 = addFive(44) catch 0;
    const b: u32 = addFive(10) catch 0;
    const c: u32 = addFive(15) catch 0;

    std.debug.print("a: {}, b: {}, c: {}", .{ a, b, c });
}

fn addFive(n: u32) MyNumberError!u32 {
    const x = try detect(n);
    return x + 5;
}

fn detect(n: u32) MyNumberError!u32 {
    if (n < 10) return MyNumberError.TooSmall;
    if (n > 20) return MyNumberError.TooBig;
    return n;
}
