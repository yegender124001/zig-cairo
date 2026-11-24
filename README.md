## It's AI generated completely

# zig-cairo

Zig bindings for Cairo's core drawing API, SVG surfaces, and Pango text layout.
The Zig API provides owned `Surface`, `Context`, `Pattern`, and `Layout` values,
typed enums, caller-owned image data, gradients, path operations, and
receiver-style methods. The complete generated Cairo, SVG, and Pango C
declarations are also available through `c` in `src/root.zig`.

## Requirements

- Zig 0.17.1
- Cairo and Pango development headers and libraries (`cairo` and `pangocairo`
  discoverable through `pkg-config`)

To regenerate the C API bindings after changing the Cairo headers:

```sh
zig translate-c $(pkg-config --cflags-only-I cairo pangocairo) src/cairo_bindings.h > src/cairo_c.zig
```

## Test

Run the binding tests with:

```sh
zig build test
```

## Usage

Import `src/root.zig` as a Zig module:

```zig
const cairo = @import("cairo");

pub fn draw() !void {
    var surface = try cairo.createImageSurface(.ARGB32, 16, 16);
    defer surface.deinit();

    var context = try surface.createContext();
    defer context.deinit();

    try context.setSourceRgb(1, 0, 0);
    try context.moveTo(1, 1);
    try context.lineTo(15, 15);
    try context.stroke();
}
```

For the complete low-level Cairo/SVG/Pango declarations, use `c.cairo_*`,
`c.pango_*`, and `c.pango_cairo_*` names.

`createImageSurfaceForData` wraps an aligned caller-owned pixel buffer; keep
that buffer alive until the surface is deinitialized. `imageData` flushes Cairo
before returning a mutable pixel view, and direct pixel writes must be followed
by `markDirty` or `markDirtyRectangle`. Use `imageSurfaceStride` to calculate
the required row stride for a format and width.
