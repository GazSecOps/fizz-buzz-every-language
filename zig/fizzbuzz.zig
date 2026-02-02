const std = @import("std");

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();

    for (1..101) |i| {
        if (i % 15 == 0) {
            try stdout.print("FizzBuzz\n", .{});
        } else if (i % 3 == 0) {
            try stdout.print("Fizz\n", .{});
        } else if (i % 5 == 0) {
            try stdout.print("Buzz\n", .{});
        } else {
            try stdout.print("{d}\n", .{i});
        }
    }
}
