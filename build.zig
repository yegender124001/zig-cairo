const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const cairo_module = b.addModule("cairo", .{
        .root_source_file = b.path("src/root.zig"),
        .target = target,
        .optimize = optimize,
        .link_libc = true,
    });
    cairo_module.linkSystemLibrary("cairo", .{});
    cairo_module.linkSystemLibrary("pangocairo-1.0", .{});
    cairo_module.linkSystemLibrary("pango-1.0", .{});
    cairo_module.linkSystemLibrary("gobject-2.0", .{});

    const tests = b.addTest(.{ .root_module = cairo_module });
    const run_tests = b.addRunArtifact(tests);

    const test_step = b.step("test", "Run Cairo binding tests");
    test_step.dependOn(&run_tests.step);
}
