const std = @import("std");

/// Complete generated Cairo, SVG, and Pango C declarations for lower-level use.
pub const c = @import("cairo_c.zig");

/// Errors returned by the Zig wrappers.
pub const Error = error{
    CairoFailure,
    ClipNotRepresentable,
    ContextReleased,
    DeviceError,
    DeviceFinished,
    DeviceTypeMismatch,
    DwriteError,
    FileNotFound,
    FontTypeMismatch,
    FreeTypeError,
    ImageDataUnavailable,
    InvalidClusters,
    InvalidContent,
    InvalidDataAlignment,
    InvalidDash,
    InvalidDscComment,
    InvalidFormat,
    InvalidIndex,
    InvalidDimensions,
    InvalidMatrix,
    InvalidMeshConstruction,
    InvalidPathData,
    InvalidRestore,
    InvalidPopGroup,
    InvalidSlant,
    InvalidStatus,
    InvalidString,
    InvalidVisual,
    InvalidWeight,
    InvalidTextLength,
    InsufficientBuffer,
    Jbig2GlobalMissing,
    LayoutReleased,
    NegativeCount,
    NotImageSurface,
    PatternReleased,
    NoCurrentPoint,
    NullPointer,
    OutOfMemory,
    PatternTypeMismatch,
    PngError,
    ReadError,
    SurfaceFinished,
    SurfaceReleased,
    SurfaceTypeMismatch,
    SvgFontError,
    TagError,
    TempFileError,
    UserFontError,
    UserFontImmutable,
    UserFontNotImplemented,
    Win32GdiError,
    WriteError,
    InvalidStride,
};

/// Cairo image pixel formats.
pub const Format = enum(c.cairo_format_t) {
    ARGB32 = c.CAIRO_FORMAT_ARGB32,
    RGB24 = c.CAIRO_FORMAT_RGB24,
    A8 = c.CAIRO_FORMAT_A8,
    A1 = c.CAIRO_FORMAT_A1,
    RGB16_565 = c.CAIRO_FORMAT_RGB16_565,
    RGB30 = c.CAIRO_FORMAT_RGB30,
    RGB96F = c.CAIRO_FORMAT_RGB96F,
    RGBA128F = c.CAIRO_FORMAT_RGBA128F,
};

/// Cairo compositing operators.
pub const Operator = enum(c.cairo_operator_t) {
    Clear = @intCast(c.CAIRO_OPERATOR_CLEAR),
    Source = @intCast(c.CAIRO_OPERATOR_SOURCE),
    Over = @intCast(c.CAIRO_OPERATOR_OVER),
    In = @intCast(c.CAIRO_OPERATOR_IN),
    Out = @intCast(c.CAIRO_OPERATOR_OUT),
    Atop = @intCast(c.CAIRO_OPERATOR_ATOP),
    Dest = @intCast(c.CAIRO_OPERATOR_DEST),
    DestOver = @intCast(c.CAIRO_OPERATOR_DEST_OVER),
    DestIn = @intCast(c.CAIRO_OPERATOR_DEST_IN),
    DestOut = @intCast(c.CAIRO_OPERATOR_DEST_OUT),
    DestAtop = @intCast(c.CAIRO_OPERATOR_DEST_ATOP),
    Xor = @intCast(c.CAIRO_OPERATOR_XOR),
    Add = @intCast(c.CAIRO_OPERATOR_ADD),
    Saturate = @intCast(c.CAIRO_OPERATOR_SATURATE),
    Multiply = @intCast(c.CAIRO_OPERATOR_MULTIPLY),
    Screen = @intCast(c.CAIRO_OPERATOR_SCREEN),
    Overlay = @intCast(c.CAIRO_OPERATOR_OVERLAY),
    Darken = @intCast(c.CAIRO_OPERATOR_DARKEN),
    Lighten = @intCast(c.CAIRO_OPERATOR_LIGHTEN),
    ColorDodge = @intCast(c.CAIRO_OPERATOR_COLOR_DODGE),
    ColorBurn = @intCast(c.CAIRO_OPERATOR_COLOR_BURN),
    HardLight = @intCast(c.CAIRO_OPERATOR_HARD_LIGHT),
    SoftLight = @intCast(c.CAIRO_OPERATOR_SOFT_LIGHT),
    Difference = @intCast(c.CAIRO_OPERATOR_DIFFERENCE),
    Exclusion = @intCast(c.CAIRO_OPERATOR_EXCLUSION),
    HslHue = @intCast(c.CAIRO_OPERATOR_HSL_HUE),
    HslSaturation = @intCast(c.CAIRO_OPERATOR_HSL_SATURATION),
    HslColor = @intCast(c.CAIRO_OPERATOR_HSL_COLOR),
    HslLuminosity = @intCast(c.CAIRO_OPERATOR_HSL_LUMINOSITY),
};

/// Cairo antialiasing modes.
pub const Antialias = enum(c.cairo_antialias_t) {
    Default = @intCast(c.CAIRO_ANTIALIAS_DEFAULT),
    None = @intCast(c.CAIRO_ANTIALIAS_NONE),
    Gray = @intCast(c.CAIRO_ANTIALIAS_GRAY),
    Subpixel = @intCast(c.CAIRO_ANTIALIAS_SUBPIXEL),
    Fast = @intCast(c.CAIRO_ANTIALIAS_FAST),
    Good = @intCast(c.CAIRO_ANTIALIAS_GOOD),
    Best = @intCast(c.CAIRO_ANTIALIAS_BEST),
};

/// Cairo fill rules.
pub const FillRule = enum(c.cairo_fill_rule_t) {
    Winding = @intCast(c.CAIRO_FILL_RULE_WINDING),
    EvenOdd = @intCast(c.CAIRO_FILL_RULE_EVEN_ODD),
};

/// Cairo line cap styles.
pub const LineCap = enum(c.cairo_line_cap_t) {
    Butt = @intCast(c.CAIRO_LINE_CAP_BUTT),
    Round = @intCast(c.CAIRO_LINE_CAP_ROUND),
    Square = @intCast(c.CAIRO_LINE_CAP_SQUARE),
};

/// Cairo line join styles.
pub const LineJoin = enum(c.cairo_line_join_t) {
    Miter = @intCast(c.CAIRO_LINE_JOIN_MITER),
    Round = @intCast(c.CAIRO_LINE_JOIN_ROUND),
    Bevel = @intCast(c.CAIRO_LINE_JOIN_BEVEL),
};

/// Cairo pattern extension modes.
pub const Extend = enum(c.cairo_extend_t) {
    None = @intCast(c.CAIRO_EXTEND_NONE),
    Repeat = @intCast(c.CAIRO_EXTEND_REPEAT),
    Reflect = @intCast(c.CAIRO_EXTEND_REFLECT),
    Pad = @intCast(c.CAIRO_EXTEND_PAD),
};

/// Cairo pattern filtering modes.
pub const Filter = enum(c.cairo_filter_t) {
    Fast = @intCast(c.CAIRO_FILTER_FAST),
    Good = @intCast(c.CAIRO_FILTER_GOOD),
    Best = @intCast(c.CAIRO_FILTER_BEST),
    Nearest = @intCast(c.CAIRO_FILTER_NEAREST),
    Bilinear = @intCast(c.CAIRO_FILTER_BILINEAR),
    Gaussian = @intCast(c.CAIRO_FILTER_GAUSSIAN),
};

/// Pango text alignment modes.
pub const Alignment = enum(c.PangoAlignment) {
    Left = @intCast(c.PANGO_ALIGN_LEFT),
    Center = @intCast(c.PANGO_ALIGN_CENTER),
    Right = @intCast(c.PANGO_ALIGN_RIGHT),
};

/// Pango line-breaking modes.
pub const WrapMode = enum(c.PangoWrapMode) {
    Word = @intCast(c.PANGO_WRAP_WORD),
    Character = @intCast(c.PANGO_WRAP_CHAR),
    WordCharacter = @intCast(c.PANGO_WRAP_WORD_CHAR),
};

/// Pango text ellipsizing modes.
pub const EllipsizeMode = enum(c.PangoEllipsizeMode) {
    None = @intCast(c.PANGO_ELLIPSIZE_NONE),
    Start = @intCast(c.PANGO_ELLIPSIZE_START),
    Middle = @intCast(c.PANGO_ELLIPSIZE_MIDDLE),
    End = @intCast(c.PANGO_ELLIPSIZE_END),
};

/// Owns a Cairo surface reference.
pub const Surface = struct {
    handle: ?*c.cairo_surface_t,
    backing_data: ?[]u8 = null,

    /// Creates a drawing context that retains its own reference to this surface.
    pub fn createContext(self: *const Surface) Error!Context {
        const surface = self.handle orelse return error.SurfaceReleased;
        const handle = c.cairo_create(surface) orelse return error.OutOfMemory;
        errdefer c.cairo_destroy(handle);
        try checkStatus(c.cairo_status(handle));
        return .{ .handle = handle };
    }

    /// Returns Cairo's status for this surface.
    pub fn status(self: *const Surface) Error!c.cairo_status_t {
        const handle = self.handle orelse return error.SurfaceReleased;
        return c.cairo_surface_status(handle);
    }

    /// Flushes pending drawing operations to the surface.
    pub fn flush(self: *Surface) Error!void {
        const handle = self.handle orelse return error.SurfaceReleased;
        c.cairo_surface_flush(handle);
        try checkStatus(c.cairo_surface_status(handle));
    }

    /// Finishes writing the surface and releases backend resources.
    pub fn finish(self: *Surface) Error!void {
        const handle = self.handle orelse return error.SurfaceReleased;
        c.cairo_surface_finish(handle);
        try checkStatus(c.cairo_surface_status(handle));
    }

    /// Returns the image surface width in pixels.
    pub fn width(self: *const Surface) Error!u32 {
        const handle = self.handle orelse return error.SurfaceReleased;
        if (@as(c.cairo_surface_type_t, @intCast(c.CAIRO_SURFACE_TYPE_IMAGE)) != c.cairo_surface_get_type(handle))
            return error.NotImageSurface;
        return @intCast(c.cairo_image_surface_get_width(handle));
    }

    /// Returns the image surface height in pixels.
    pub fn height(self: *const Surface) Error!u32 {
        const handle = self.handle orelse return error.SurfaceReleased;
        if (@as(c.cairo_surface_type_t, @intCast(c.CAIRO_SURFACE_TYPE_IMAGE)) != c.cairo_surface_get_type(handle))
            return error.NotImageSurface;
        return @intCast(c.cairo_image_surface_get_height(handle));
    }

    /// Returns the image surface's pixel format.
    pub fn format(self: *const Surface) Error!Format {
        const handle = try self.imageHandle();
        return @fromBackingInt(@intCast(c.cairo_image_surface_get_format(handle)));
    }

    /// Returns the image surface's row stride in bytes.
    pub fn stride(self: *const Surface) Error!usize {
        const handle = try self.imageHandle();
        const value = c.cairo_image_surface_get_stride(handle);
        if (value < 0) return error.InvalidStride;
        return @intCast(value);
    }

    /// Returns a borrowed mutable view of image pixels after flushing drawing.
    pub fn imageData(self: *Surface) Error![]u8 {
        const handle = try self.imageHandle();
        try self.flush();
        const data = c.cairo_image_surface_get_data(handle);
        if (data == null) return error.ImageDataUnavailable;
        const row_stride = c.cairo_image_surface_get_stride(handle);
        const image_height = c.cairo_image_surface_get_height(handle);
        if (row_stride < 0 or image_height < 0) return error.InvalidDimensions;
        const length = std.math.mul(usize, @intCast(row_stride), @intCast(image_height)) catch
            return error.InvalidDimensions;
        return data[0..length];
    }

    /// Notifies Cairo that pixels returned by `imageData` were modified.
    pub fn markDirty(self: *Surface) Error!void {
        const handle = try self.imageHandle();
        c.cairo_surface_mark_dirty(handle);
        try checkStatus(c.cairo_surface_status(handle));
    }

    /// Notifies Cairo that a rectangle of image pixels was modified.
    pub fn markDirtyRectangle(
        self: *Surface,
        x: i32,
        y: i32,
        rect_width: u32,
        rect_height: u32,
    ) Error!void {
        const handle = try self.imageHandle();
        const max_dimension: u32 = @intCast(std.math.maxInt(c_int));
        if (rect_width > max_dimension or rect_height > max_dimension)
            return error.InvalidDimensions;
        c.cairo_surface_mark_dirty_rectangle(handle, x, y, @intCast(rect_width), @intCast(rect_height));
        try checkStatus(c.cairo_surface_status(handle));
    }

    /// Releases this surface reference. Calling it more than once is safe.
    pub fn deinit(self: *Surface) void {
        if (self.handle) |handle| c.cairo_surface_destroy(handle);
        self.handle = null;
    }

    fn imageHandle(self: *const Surface) Error!*c.cairo_surface_t {
        const handle = self.handle orelse return error.SurfaceReleased;
        if (@as(c.cairo_surface_type_t, @intCast(c.CAIRO_SURFACE_TYPE_IMAGE)) != c.cairo_surface_get_type(handle))
            return error.NotImageSurface;
        return handle;
    }
};

/// Owns a Cairo pattern reference.
pub const Pattern = struct {
    handle: ?*c.cairo_pattern_t,

    /// Adds an RGBA color stop to a gradient pattern.
    pub fn addColorStopRgba(
        self: *Pattern,
        offset: f64,
        red: f64,
        green: f64,
        blue: f64,
        alpha: f64,
    ) Error!void {
        const handle = try self.pointer();
        c.cairo_pattern_add_color_stop_rgba(handle, offset, red, green, blue, alpha);
        try checkStatus(c.cairo_pattern_status(handle));
    }

    /// Sets how a pattern behaves outside its gradient domain.
    pub fn setExtend(self: *Pattern, extend: Extend) Error!void {
        const handle = try self.pointer();
        c.cairo_pattern_set_extend(handle, @backingInt(extend));
        try checkStatus(c.cairo_pattern_status(handle));
    }

    /// Sets the pattern's image filtering mode.
    pub fn setFilter(self: *Pattern, filter: Filter) Error!void {
        const handle = try self.pointer();
        c.cairo_pattern_set_filter(handle, @backingInt(filter));
        try checkStatus(c.cairo_pattern_status(handle));
    }

    /// Releases this pattern reference. Calling it more than once is safe.
    pub fn deinit(self: *Pattern) void {
        if (self.handle) |handle| c.cairo_pattern_destroy(handle);
        self.handle = null;
    }

    fn pointer(self: *const Pattern) Error!*c.cairo_pattern_t {
        return self.handle orelse error.PatternReleased;
    }
};

/// Owns a Cairo drawing context.
pub const Context = struct {
    handle: ?*c.cairo_t,

    /// Returns Cairo's sticky status for this context.
    pub fn status(self: *const Context) Error!c.cairo_status_t {
        return c.cairo_status(try self.pointer());
    }

    /// Saves the current graphics state.
    pub fn save(self: *Context) Error!void {
        const handle = try self.pointer();
        c.cairo_save(handle);
        try checkStatus(c.cairo_status(handle));
    }

    /// Adds an arc in the positive direction from angle1 to angle2.
    pub fn arc(
        self: *Context,
        x: f64,
        y: f64,
        radius: f64,
        angle1: f64,
        angle2: f64,
    ) Error!void {
        const handle = try self.pointer();
        c.cairo_arc(handle, x, y, radius, angle1, angle2);
        try checkStatus(c.cairo_status(handle));
    }

    /// Adds an arc in the negative direction from angle1 to angle2.
    pub fn arcNegative(
        self: *Context,
        x: f64,
        y: f64,
        radius: f64,
        angle1: f64,
        angle2: f64,
    ) Error!void {
        const handle = try self.pointer();
        c.cairo_arc_negative(handle, x, y, radius, angle1, angle2);
        try checkStatus(c.cairo_status(handle));
    }

    /// Restores the graphics state most recently saved with `save`.
    pub fn restore(self: *Context) Error!void {
        const handle = try self.pointer();
        c.cairo_restore(handle);
        try checkStatus(c.cairo_status(handle));
    }

    /// Sets the tolerance used when approximating curves.
    pub fn setTolerance(self: *Context, tolerance: f64) Error!void {
        const handle = try self.pointer();
        c.cairo_set_tolerance(handle, tolerance);
        try checkStatus(c.cairo_status(handle));
    }

    /// Sets the source to an opaque RGB color.
    pub fn setSourceRgb(self: *Context, red: f64, green: f64, blue: f64) Error!void {
        const handle = try self.pointer();
        c.cairo_set_source_rgb(handle, red, green, blue);
        try checkStatus(c.cairo_status(handle));
    }

    /// Intersects the current clip with the current path and preserves the path.
    pub fn clipPreserve(self: *Context) Error!void {
        const handle = try self.pointer();
        c.cairo_clip_preserve(handle);
        try checkStatus(c.cairo_status(handle));
    }

    /// Sets the source to an RGBA color.
    pub fn setSourceRgba(self: *Context, red: f64, green: f64, blue: f64, alpha: f64) Error!void {
        const handle = try self.pointer();
        c.cairo_set_source_rgba(handle, red, green, blue, alpha);
        try checkStatus(c.cairo_status(handle));
    }

    /// Begins drawing to a temporary group surface.
    pub fn pushGroup(self: *Context) Error!void {
        const handle = try self.pointer();
        c.cairo_push_group(handle);
        try checkStatus(c.cairo_status(handle));
    }

    /// Finishes a temporary group and returns its pattern.
    pub fn popGroup(self: *Context) Error!Pattern {
        const handle = try self.pointer();
        const pattern = c.cairo_pop_group(handle) orelse return error.OutOfMemory;
        return patternFromHandle(pattern);
    }

    /// Uses the completed group as the context's source pattern.
    pub fn popGroupToSource(self: *Context) Error!void {
        const handle = try self.pointer();
        c.cairo_pop_group_to_source(handle);
        try checkStatus(c.cairo_status(handle));
    }

    /// Uses another surface as the source pattern.
    pub fn setSourceSurface(self: *Context, surface: *const Surface, x: f64, y: f64) Error!void {
        const handle = try self.pointer();
        const source = surface.handle orelse return error.SurfaceReleased;
        c.cairo_set_source_surface(handle, source, x, y);
        try checkStatus(c.cairo_status(handle));
    }

    /// Sets the source to a Cairo pattern.
    pub fn setSourcePattern(self: *Context, pattern: *const Pattern) Error!void {
        const handle = try self.pointer();
        c.cairo_set_source(handle, try pattern.pointer());
        try checkStatus(c.cairo_status(handle));
    }

    /// Sets the line dash pattern.
    pub fn setDash(self: *Context, dashes: []const f64, offset: f64) Error!void {
        if (dashes.len > @as(usize, @intCast(std.math.maxInt(c_int)))) return error.InvalidDash;
        const handle = try self.pointer();
        c.cairo_set_dash(handle, dashes.ptr, @intCast(dashes.len), offset);
        try checkStatus(c.cairo_status(handle));
    }

    /// Sets the compositing operator.
    pub fn setOperator(self: *Context, operator: Operator) Error!void {
        const handle = try self.pointer();
        c.cairo_set_operator(handle, @backingInt(operator));
        try checkStatus(c.cairo_status(handle));
    }

    /// Sets the antialiasing mode.
    pub fn setAntialias(self: *Context, antialias: Antialias) Error!void {
        const handle = try self.pointer();
        c.cairo_set_antialias(handle, @backingInt(antialias));
        try checkStatus(c.cairo_status(handle));
    }

    /// Sets the width of strokes in user-space units.
    pub fn setLineWidth(self: *Context, width: f64) Error!void {
        const handle = try self.pointer();
        c.cairo_set_line_width(handle, width);
        try checkStatus(c.cairo_status(handle));
    }

    /// Sets the cap style used for line endpoints.
    pub fn setLineCap(self: *Context, cap: LineCap) Error!void {
        const handle = try self.pointer();
        c.cairo_set_line_cap(handle, @backingInt(cap));
        try checkStatus(c.cairo_status(handle));
    }

    /// Sets the join style used where stroked lines meet.
    pub fn setLineJoin(self: *Context, join: LineJoin) Error!void {
        const handle = try self.pointer();
        c.cairo_set_line_join(handle, @backingInt(join));
        try checkStatus(c.cairo_status(handle));
    }

    /// Sets the fill rule used to determine which regions are inside a path.
    pub fn setFillRule(self: *Context, rule: FillRule) Error!void {
        const handle = try self.pointer();
        c.cairo_set_fill_rule(handle, @backingInt(rule));
        try checkStatus(c.cairo_status(handle));
    }

    /// Begins a new sub-path at the specified point.
    pub fn moveTo(self: *Context, x: f64, y: f64) Error!void {
        const handle = try self.pointer();
        c.cairo_move_to(handle, x, y);
        try checkStatus(c.cairo_status(handle));
    }

    /// Adds a line to the specified point to the current path.
    pub fn lineTo(self: *Context, x: f64, y: f64) Error!void {
        const handle = try self.pointer();
        c.cairo_line_to(handle, x, y);
        try checkStatus(c.cairo_status(handle));
    }

    /// Adds a line from the current point using a relative offset.
    pub fn relLineTo(self: *Context, dx: f64, dy: f64) Error!void {
        const handle = try self.pointer();
        c.cairo_rel_line_to(handle, dx, dy);
        try checkStatus(c.cairo_status(handle));
    }

    /// Moves the current point by a relative offset.
    pub fn relMoveTo(self: *Context, dx: f64, dy: f64) Error!void {
        const handle = try self.pointer();
        c.cairo_rel_move_to(handle, dx, dy);
        try checkStatus(c.cairo_status(handle));
    }

    /// Adds a cubic Bézier curve to the current path.
    pub fn curveTo(self: *Context, x1: f64, y1: f64, x2: f64, y2: f64, x3: f64, y3: f64) Error!void {
        const handle = try self.pointer();
        c.cairo_curve_to(handle, x1, y1, x2, y2, x3, y3);
        try checkStatus(c.cairo_status(handle));
    }

    /// Adds a rectangle to the current path.
    pub fn rectangle(self: *Context, x: f64, y: f64, width: f64, height: f64) Error!void {
        const handle = try self.pointer();
        c.cairo_rectangle(handle, x, y, width, height);
        try checkStatus(c.cairo_status(handle));
    }

    /// Closes the current sub-path.
    pub fn closePath(self: *Context) Error!void {
        const handle = try self.pointer();
        c.cairo_close_path(handle);
        try checkStatus(c.cairo_status(handle));
    }

    /// Clears the current path.
    pub fn newPath(self: *Context) Error!void {
        const handle = try self.pointer();
        c.cairo_new_path(handle);
        try checkStatus(c.cairo_status(handle));
    }

    /// Strokes the current path using the current source.
    pub fn stroke(self: *Context) Error!void {
        const handle = try self.pointer();
        c.cairo_stroke(handle);
        try checkStatus(c.cairo_status(handle));
    }

    /// Strokes the current path while preserving it.
    pub fn strokePreserve(self: *Context) Error!void {
        const handle = try self.pointer();
        c.cairo_stroke_preserve(handle);
        try checkStatus(c.cairo_status(handle));
    }

    /// Fills the current path using the current source.
    pub fn fill(self: *Context) Error!void {
        const handle = try self.pointer();
        c.cairo_fill(handle);
        try checkStatus(c.cairo_status(handle));
    }

    /// Fills the current path while preserving it.
    pub fn fillPreserve(self: *Context) Error!void {
        const handle = try self.pointer();
        c.cairo_fill_preserve(handle);
        try checkStatus(c.cairo_status(handle));
    }

    /// Paints the current source over the current clip.
    pub fn paint(self: *Context) Error!void {
        const handle = try self.pointer();
        c.cairo_paint(handle);
        try checkStatus(c.cairo_status(handle));
    }

    /// Paints the current source with the specified alpha.
    pub fn paintWithAlpha(self: *Context, alpha: f64) Error!void {
        const handle = try self.pointer();
        c.cairo_paint_with_alpha(handle, alpha);
        try checkStatus(c.cairo_status(handle));
    }

    /// Intersects the current clip with the current path.
    pub fn clip(self: *Context) Error!void {
        const handle = try self.pointer();
        c.cairo_clip(handle);
        try checkStatus(c.cairo_status(handle));
    }

    /// Resets the current clip to its original state.
    pub fn resetClip(self: *Context) Error!void {
        const handle = try self.pointer();
        c.cairo_reset_clip(handle);
        try checkStatus(c.cairo_status(handle));
    }

    /// Translates the user-space origin.
    pub fn translate(self: *Context, x: f64, y: f64) Error!void {
        const handle = try self.pointer();
        c.cairo_translate(handle, x, y);
        try checkStatus(c.cairo_status(handle));
    }

    /// Scales user-space coordinates.
    pub fn scale(self: *Context, x: f64, y: f64) Error!void {
        const handle = try self.pointer();
        c.cairo_scale(handle, x, y);
        try checkStatus(c.cairo_status(handle));
    }

    /// Rotates user-space coordinates by an angle in radians.
    pub fn rotate(self: *Context, radians: f64) Error!void {
        const handle = try self.pointer();
        c.cairo_rotate(handle, radians);
        try checkStatus(c.cairo_status(handle));
    }

    /// Resets the current transformation matrix to identity.
    pub fn identityMatrix(self: *Context) Error!void {
        const handle = try self.pointer();
        c.cairo_identity_matrix(handle);
        try checkStatus(c.cairo_status(handle));
    }

    /// Creates a Pango layout associated with this drawing context.
    pub fn createLayout(self: *Context) Error!Layout {
        const handle = try self.pointer();
        const layout = c.pango_cairo_create_layout(handle) orelse return error.OutOfMemory;
        return .{ .handle = layout };
    }

    /// Releases this context. Calling it more than once is safe.
    pub fn deinit(self: *Context) void {
        if (self.handle) |handle| c.cairo_destroy(handle);
        self.handle = null;
    }

    fn pointer(self: *const Context) Error!*c.cairo_t {
        return self.handle orelse error.ContextReleased;
    }
};

/// Owns a Pango layout created by a Cairo context.
pub const Layout = struct {
    handle: ?*c.PangoLayout,

    /// Sets the UTF-8 text to lay out.
    pub fn setText(self: *Layout, text: []const u8) Error!void {
        const handle = self.handle orelse return error.LayoutReleased;
        if (text.len > @as(usize, @intCast(std.math.maxInt(c_int)))) return error.InvalidTextLength;
        c.pango_layout_set_text(handle, text.ptr, @intCast(text.len));
    }

    /// Sets the layout width in Pango units.
    pub fn setWidth(self: *Layout, width: i32) Error!void {
        const handle = self.handle orelse return error.LayoutReleased;
        c.pango_layout_set_width(handle, width);
    }

    /// Sets the layout width in pixels.
    pub fn setWidthPixels(self: *Layout, width: f64) Error!void {
        if (!std.math.isFinite(width) or width < 0) return error.InvalidDimensions;
        const scaled = width * @as(f64, @floatFromInt(c.PANGO_SCALE));
        if (scaled > @as(f64, @floatFromInt(std.math.maxInt(c_int))))
            return error.InvalidDimensions;
        return self.setWidth(@intFromFloat(scaled));
    }

    /// Sets the layout font from a Pango font description such as `Sans 12`.
    pub fn setFontDescription(self: *Layout, description: [:0]const u8) Error!void {
        const handle = self.handle orelse return error.LayoutReleased;
        const font = c.pango_font_description_from_string(description) orelse return error.OutOfMemory;
        defer c.pango_font_description_free(font);
        c.pango_layout_set_font_description(handle, font);
    }

    /// Sets horizontal text alignment.
    pub fn setAlignment(self: *Layout, alignment: Alignment) Error!void {
        const handle = self.handle orelse return error.LayoutReleased;
        c.pango_layout_set_alignment(handle, @backingInt(alignment));
    }

    /// Sets line wrapping behavior.
    pub fn setWrapMode(self: *Layout, mode: WrapMode) Error!void {
        const handle = self.handle orelse return error.LayoutReleased;
        c.pango_layout_set_wrap(handle, @backingInt(mode));
    }

    /// Sets how overflowing text is shortened.
    pub fn setEllipsizeMode(self: *Layout, mode: EllipsizeMode) Error!void {
        const handle = self.handle orelse return error.LayoutReleased;
        c.pango_layout_set_ellipsize(handle, @backingInt(mode));
    }

    /// Returns the rendered layout size in pixels.
    pub fn pixelSize(self: *const Layout) Error!struct { width: i32, height: i32 } {
        const handle = self.handle orelse return error.LayoutReleased;
        var width: c_int = 0;
        var height: c_int = 0;
        c.pango_layout_get_pixel_size(handle, &width, &height);
        return .{ .width = width, .height = height };
    }

    /// Renders the layout at the context's current point.
    pub fn show(self: *Layout, context: *Context) Error!void {
        const layout = self.handle orelse return error.LayoutReleased;
        const cr = try context.pointer();
        c.pango_cairo_update_layout(cr, layout);
        c.pango_cairo_show_layout(cr, layout);
        try checkStatus(c.cairo_status(cr));
    }

    /// Releases the layout's GObject reference. Calling it more than once is safe.
    pub fn deinit(self: *Layout) void {
        if (self.handle) |handle| c.g_object_unref(handle);
        self.handle = null;
    }
};

/// Creates an image surface using a Zig format enum.
pub fn createImageSurface(format: Format, width: u32, height: u32) Error!Surface {
    const max_dimension: u32 = @intCast(std.math.maxInt(c_int));
    if (width > max_dimension or height > max_dimension)
        return error.InvalidDimensions;
    return surfaceFromHandle(c.cairo_image_surface_create(
        @backingInt(format),
        @intCast(width),
        @intCast(height),
    ));
}

/// Computes the minimum byte stride Cairo requires for an image row.
pub fn imageSurfaceStride(format: Format, width: u32) Error!usize {
    if (width > @as(u32, @intCast(std.math.maxInt(c_int)))) return error.InvalidDimensions;
    const stride = c.cairo_format_stride_for_width(@backingInt(format), @intCast(width));
    if (stride < 0) return error.InvalidStride;
    return @intCast(stride);
}

/// Creates an image surface over caller-owned pixel memory.
///
/// The byte slice must outlive the returned surface and be aligned to four
/// bytes. `stride` is the number of bytes between rows.
pub fn createImageSurfaceForData(
    data: []u8,
    format: Format,
    width: u32,
    height: u32,
    stride: usize,
) Error!Surface {
    const max_dimension: u32 = @intCast(std.math.maxInt(c_int));
    const max_stride: usize = @intCast(std.math.maxInt(c_int));
    if (width == 0 or height == 0 or width > max_dimension or height > max_dimension)
        return error.InvalidDimensions;
    if (stride > max_stride or stride < try imageSurfaceStride(format, width))
        return error.InvalidStride;
    if (@intFromPtr(data.ptr) % @alignOf(u32) != 0) return error.InvalidDataAlignment;
    const required_length = std.math.mul(usize, stride, @intCast(height)) catch return error.InvalidDimensions;
    if (data.len < required_length) return error.InsufficientBuffer;

    var surface = try surfaceFromHandle(c.cairo_image_surface_create_for_data(
        data.ptr,
        @backingInt(format),
        @intCast(width),
        @intCast(height),
        @intCast(stride),
    ));
    surface.backing_data = data;
    return surface;
}

/// Creates an SVG surface that writes to a null-terminated file path.
pub fn createSvgSurface(filename: [:0]const u8, width: f64, height: f64) Error!Surface {
    if (!std.math.isFinite(width) or !std.math.isFinite(height) or width < 0 or height < 0)
        return error.InvalidDimensions;
    return surfaceFromHandle(c.cairo_svg_surface_create(filename, width, height));
}

/// Creates a linear gradient pattern in user-space coordinates.
pub fn createLinearGradient(x0: f64, y0: f64, x1: f64, y1: f64) Error!Pattern {
    return patternFromHandle(c.cairo_pattern_create_linear(x0, y0, x1, y1));
}

/// Creates a radial gradient pattern in user-space coordinates.
pub fn createRadialGradient(
    x0: f64,
    y0: f64,
    radius0: f64,
    x1: f64,
    y1: f64,
    radius1: f64,
) Error!Pattern {
    return patternFromHandle(c.cairo_pattern_create_radial(x0, y0, radius0, x1, y1, radius1));
}

/// Creates a surface pattern that retains a reference to its source surface.
pub fn createSurfacePattern(surface: *const Surface) Error!Pattern {
    const handle = surface.handle orelse return error.SurfaceReleased;
    return patternFromHandle(c.cairo_pattern_create_for_surface(handle));
}

fn surfaceFromHandle(handle: ?*c.cairo_surface_t) Error!Surface {
    const surface = handle orelse return error.OutOfMemory;
    errdefer c.cairo_surface_destroy(surface);
    try checkStatus(c.cairo_surface_status(surface));
    return .{ .handle = surface };
}

fn patternFromHandle(handle: ?*c.cairo_pattern_t) Error!Pattern {
    const pattern = handle orelse return error.OutOfMemory;
    errdefer c.cairo_pattern_destroy(pattern);
    try checkStatus(c.cairo_pattern_status(pattern));
    return .{ .handle = pattern };
}

fn checkStatus(status: c.cairo_status_t) Error!void {
    const value: c_int = @intCast(status);
    if (value == c.CAIRO_STATUS_SUCCESS) return;
    return switch (value) {
        c.CAIRO_STATUS_NO_MEMORY => error.OutOfMemory,
        c.CAIRO_STATUS_INVALID_RESTORE => error.InvalidRestore,
        c.CAIRO_STATUS_INVALID_POP_GROUP => error.InvalidPopGroup,
        c.CAIRO_STATUS_NO_CURRENT_POINT => error.NoCurrentPoint,
        c.CAIRO_STATUS_INVALID_MATRIX => error.InvalidMatrix,
        c.CAIRO_STATUS_INVALID_STATUS => error.InvalidStatus,
        c.CAIRO_STATUS_NULL_POINTER => error.NullPointer,
        c.CAIRO_STATUS_INVALID_STRING => error.InvalidString,
        c.CAIRO_STATUS_INVALID_PATH_DATA => error.InvalidPathData,
        c.CAIRO_STATUS_READ_ERROR => error.ReadError,
        c.CAIRO_STATUS_WRITE_ERROR => error.WriteError,
        c.CAIRO_STATUS_SURFACE_FINISHED => error.SurfaceFinished,
        c.CAIRO_STATUS_SURFACE_TYPE_MISMATCH => error.SurfaceTypeMismatch,
        c.CAIRO_STATUS_PATTERN_TYPE_MISMATCH => error.PatternTypeMismatch,
        c.CAIRO_STATUS_INVALID_CONTENT => error.InvalidContent,
        c.CAIRO_STATUS_INVALID_FORMAT => error.InvalidFormat,
        c.CAIRO_STATUS_INVALID_VISUAL => error.InvalidVisual,
        c.CAIRO_STATUS_FILE_NOT_FOUND => error.FileNotFound,
        c.CAIRO_STATUS_INVALID_DASH => error.InvalidDash,
        c.CAIRO_STATUS_INVALID_DSC_COMMENT => error.InvalidDscComment,
        c.CAIRO_STATUS_INVALID_INDEX => error.InvalidIndex,
        c.CAIRO_STATUS_CLIP_NOT_REPRESENTABLE => error.ClipNotRepresentable,
        c.CAIRO_STATUS_TEMP_FILE_ERROR => error.TempFileError,
        c.CAIRO_STATUS_INVALID_STRIDE => error.InvalidStride,
        c.CAIRO_STATUS_FONT_TYPE_MISMATCH => error.FontTypeMismatch,
        c.CAIRO_STATUS_USER_FONT_IMMUTABLE => error.UserFontImmutable,
        c.CAIRO_STATUS_USER_FONT_ERROR => error.UserFontError,
        c.CAIRO_STATUS_NEGATIVE_COUNT => error.NegativeCount,
        c.CAIRO_STATUS_INVALID_CLUSTERS => error.InvalidClusters,
        c.CAIRO_STATUS_INVALID_SLANT => error.InvalidSlant,
        c.CAIRO_STATUS_INVALID_WEIGHT => error.InvalidWeight,
        c.CAIRO_STATUS_INVALID_SIZE => error.InvalidDimensions,
        c.CAIRO_STATUS_USER_FONT_NOT_IMPLEMENTED => error.UserFontNotImplemented,
        c.CAIRO_STATUS_DEVICE_TYPE_MISMATCH => error.DeviceTypeMismatch,
        c.CAIRO_STATUS_DEVICE_ERROR => error.DeviceError,
        c.CAIRO_STATUS_INVALID_MESH_CONSTRUCTION => error.InvalidMeshConstruction,
        c.CAIRO_STATUS_DEVICE_FINISHED => error.DeviceFinished,
        c.CAIRO_STATUS_JBIG2_GLOBAL_MISSING => error.Jbig2GlobalMissing,
        c.CAIRO_STATUS_PNG_ERROR => error.PngError,
        c.CAIRO_STATUS_FREETYPE_ERROR => error.FreeTypeError,
        c.CAIRO_STATUS_WIN32_GDI_ERROR => error.Win32GdiError,
        c.CAIRO_STATUS_TAG_ERROR => error.TagError,
        c.CAIRO_STATUS_DWRITE_ERROR => error.DwriteError,
        c.CAIRO_STATUS_SVG_FONT_ERROR => error.SvgFontError,
        else => error.CairoFailure,
    };
}

test "typed image surface and receiver-style context methods" {
    var surface = try createImageSurface(.ARGB32, 16, 16);
    defer surface.deinit();

    try std.testing.expectEqual(@as(u32, 16), try surface.width());
    try std.testing.expectEqual(@as(u32, 16), try surface.height());

    var context = try surface.createContext();
    defer context.deinit();

    try context.setSourceRgb(1, 0, 0);
    try context.setOperator(.Over);
    try context.setLineCap(.Round);
    try context.moveTo(1, 1);
    try context.lineTo(15, 15);
    try context.stroke();
    try surface.flush();

    try std.testing.expectEqual(
        @as(c.cairo_status_t, @intCast(c.CAIRO_STATUS_SUCCESS)),
        try context.status(),
    );
    try std.testing.expectEqual(
        @as(c.cairo_status_t, @intCast(c.CAIRO_STATUS_SUCCESS)),
        try surface.status(),
    );
}

test "image surface can use caller-owned pixel storage" {
    const words = try std.testing.allocator.alloc(u32, 16);
    defer std.testing.allocator.free(words);
    @memset(words, 0);

    const data = std.mem.sliceAsBytes(words);
    const stride = try imageSurfaceStride(.ARGB32, 4);
    var surface = try createImageSurfaceForData(data, .ARGB32, 4, 4, stride);
    defer surface.deinit();

    try std.testing.expectEqual(Format.ARGB32, try surface.format());
    try std.testing.expectEqual(stride, try surface.stride());
    const pixels = try surface.imageData();
    try std.testing.expectEqual(data.len, pixels.len);
    pixels[0] = 0xff;
    try surface.markDirtyRectangle(0, 0, 1, 1);
    try std.testing.expectEqual(@as(u8, 0xff), data[0]);
}

test "external image storage validates alignment and buffer size" {
    const words = try std.testing.allocator.alloc(u32, 17);
    defer std.testing.allocator.free(words);
    const bytes = std.mem.sliceAsBytes(words);
    const stride = try imageSurfaceStride(.ARGB32, 4);

    try std.testing.expectError(
        error.InvalidDataAlignment,
        createImageSurfaceForData(bytes[1..], .ARGB32, 4, 4, stride),
    );
    try std.testing.expectError(
        error.InsufficientBuffer,
        createImageSurfaceForData(bytes[0..1], .ARGB32, 4, 4, stride),
    );
}

test "gradient patterns can be selected as a context source" {
    var surface = try createImageSurface(.ARGB32, 16, 16);
    defer surface.deinit();
    var context = try surface.createContext();
    defer context.deinit();
    var gradient = try createLinearGradient(0, 0, 16, 16);
    defer gradient.deinit();

    try gradient.addColorStopRgba(0, 1, 0, 0, 1);
    try gradient.addColorStopRgba(1, 0, 0, 1, 1);
    try gradient.setExtend(.Pad);
    try context.setSourcePattern(&gradient);
    try context.rectangle(0, 0, 16, 16);
    try context.fill();
    try std.testing.expectEqual(
        @as(c.cairo_status_t, @intCast(c.CAIRO_STATUS_SUCCESS)),
        try context.status(),
    );
}

test "paths and temporary groups render through receiver methods" {
    var surface = try createImageSurface(.ARGB32, 32, 32);
    defer surface.deinit();
    var context = try surface.createContext();
    defer context.deinit();

    try context.save();
    try context.pushGroup();
    try context.arc(16, 16, 8, 0, std.math.tau);
    try context.setSourceRgba(0.2, 0.4, 0.8, 1);
    try context.fill();
    var group = try context.popGroup();
    defer group.deinit();
    try context.setSourcePattern(&group);
    try context.paintWithAlpha(0.5);
    try context.restore();

    try std.testing.expectEqual(
        @as(c.cairo_status_t, @intCast(c.CAIRO_STATUS_SUCCESS)),
        try context.status(),
    );
}

test "Pango layout text renders through a Cairo context" {
    var surface = try createImageSurface(.ARGB32, 128, 48);
    defer surface.deinit();
    var context = try surface.createContext();
    defer context.deinit();
    var layout = try context.createLayout();
    defer layout.deinit();

    try layout.setText("Hello, Cairo");
    try layout.setFontDescription("Sans 10");
    try layout.setWidthPixels(96);
    try layout.setAlignment(.Center);
    try layout.setWrapMode(.WordCharacter);
    try layout.setEllipsizeMode(.End);
    const size = try layout.pixelSize();
    try std.testing.expect(size.width > 0);
    try std.testing.expect(size.height > 0);
    try layout.show(&context);
    try std.testing.expectEqual(
        @as(c.cairo_status_t, @intCast(c.CAIRO_STATUS_SUCCESS)),
        try context.status(),
    );
}

test "SVG surfaces write vector output and report image-only methods" {
    var tmp = std.testing.tmpDir(.{});
    defer tmp.cleanup();

    const filename = try std.fmt.allocPrintSentinel(
        std.testing.allocator,
        ".zig-cache/tmp/{s}/drawing.svg",
        .{tmp.sub_path},
        0,
    );
    defer std.testing.allocator.free(filename);

    var surface = try createSvgSurface(filename, 24, 24);
    defer surface.deinit();
    var context = try surface.createContext();
    defer context.deinit();

    try context.rectangle(2, 2, 20, 20);
    try context.setSourceRgb(0, 0, 1);
    try context.fill();
    try surface.finish();
    try std.testing.expectError(error.NotImageSurface, surface.width());
}

test "released surfaces and invalid dimensions return explicit errors" {
    var surface = try createImageSurface(.ARGB32, 4, 4);
    surface.deinit();
    try std.testing.expectError(error.SurfaceReleased, surface.createContext());
    try std.testing.expectError(error.InvalidDimensions, createImageSurface(.ARGB32, 0x80000000, 4));
}
