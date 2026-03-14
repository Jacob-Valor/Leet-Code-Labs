const std = @import("std");

pub fn main() !void {
    // 1. Initialize an allocator (the GPA is standard for debugging/safety)
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    defer _ = gpa.deinit();
    const allocator = gpa.allocator();

    // 2. Define test data
    const nums = [_]i32{ 2, 7, 11, 15 };
    const target = 9;

    // 3. Call the function
    if (try twoSum(allocator, &nums, target)) |result| {
        std.debug.print("Indices found: {d} and {d}\n", .{ result[0], result[1] });
    } else {
        std.debug.print("No solution found.\n", .{});
    }
}

pub fn twoSum(allocator: std.mem.Allocator, nums: []const i32, target: i32) !?[2]usize {
    var map = std.AutoHashMap(i32, usize).init(allocator);
    defer map.deinit();

    for (nums, 0..) |num, i| {
        const complement = target - num;

        if (map.get(complement)) |complement_idx| {
            return [2]usize{ complement_idx, i };
        }

        try map.put(num, i);
    }

    return null;
}
