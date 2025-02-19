const std = @import("std");
const builtin = @import("builtin");
const build_options = @import("build_options");

const c = @cImport({
    @cDefine("DEBUG", if (builtin.mode == .Debug) "1" else "0");
    @cDefine("TRACK_GLOBAL_RC", if (build_options.trackGlobalRC) "1" else "0");
    @cInclude("vm.h");
});

pub usingnamespace c;