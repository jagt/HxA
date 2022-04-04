const std = @import("std");
const Builder = std.build.Builder;

pub fn build(b: *std.build.Builder) void {
    const mode = b.standardReleaseOptions();
    const target = b.standardTargetOptions(.{});

    var exe = b.addExecutable("hxa", null);
    exe.setBuildMode(mode);  
    exe.setTarget(target);

    const flags = &[_][]const u8{
        "-std=gnu99",
        "-g",
    };

    exe.addCSourceFiles(&.{
        // "aces.c",
        "hxa_convesion_generated.c",
        // "hxa_fbx_convert.c",
        // "hxa_fbx_parse.c",
        "hxa_load_save.c",
        "hxa_load_save_upi_wrapper.c",
        // "hxa_persuade_image_test.c",
        "hxa_print.c",
        // "hxa_upi_command_line_interface.c",
        // "hxa_upi_host.c",
        // "hxa_upi_plugin.c",
        "hxa_util_close.c",
        "hxa_util_command_line.c",
        "hxa_util_convert.c",
        "hxa_util_fbx_convert.c",
        "hxa_util_fbx_parse.c",
        "hxa_util_font_process.c",
        "hxa_util_gpu_optimize.c",
        "hxa_util_inflate.c",
        "hxa_util_merge_split.c",
        "hxa_util_meta.c",
        "hxa_util_neighbour.c",
        "hxa_util_normals.c",
        "hxa_util_obj.c",
        "hxa_util_png.c",
        "hxa_util_primitive.c",
        "hxa_util_triangulate.c",
        "hxa_util_true_type_parse.c",
        "hxa_util_type_conversion.c",
        "hxa_util_validate.c",
        "hxa_util_vertex_purge.c",
    }, flags);

    exe.linkSystemLibrary("c");
    exe.install();
}

