# Descent 1 DOS Source (Open Watcom 2.0)

Build the original Descent 1 for DOS from source using Open Watcom 2.0.

Based on [arbruijn/d1dos](https://github.com/arbruijn/d1dos) with patches for Open Watcom 2.0 compatibility.

## Build Requirements

- **Open Watcom 2.0** — C compiler and linker ([github.com/open-watcom/open-watcom-v2](https://github.com/open-watcom/open-watcom-v2))
- **Descent 1.5 DESCENTR.EXE** — placed in `original/`

Pre-built engine libraries are included in the repo, so no additional tools are needed for a basic build.

## Quick Start

1. Install Open Watcom 2.0 (e.g., `C:\Compilers\WATCOM`)
2. Edit `BUILD.BAT` if your install path differs
3. Run `BUILD.BAT`
4. Output: `main/DESCENTR.EXE`

## Rebuilding Engine Libraries (Optional)

The pre-built .lib files in `lib/` and subsystem directories are sufficient for building the game. If you want to modify and rebuild the engine libraries (2d, 3d, texmap, etc.), you will additionally need:

- **MASM 6.11** — for 94 assembly source files with MASM-specific syntax

## Open Watcom 2.0 Changes

The following patches were applied to compile with OW2.0 (original required Watcom 9.5b):

| Fix | File(s) | Description |
|-----|---------|-------------|
| `rle_stosb` pragma | `2d/rle.c` | Replaced broken pragma with `memset()` |
| Struct packing | `main/piggy.c` | `#pragma pack(push,1)` for `DiskBitmapHeader` |
| Case sensitivity | Linker | Added `nocaseexact` option for ASM/C symbol linking |
| `wstub.exe` path | Makefile | Changed from `binb/` to `binw/` |
| Return types | Various | Fixed double-void and implicit return type warnings |
| Type casts | Various | Added casts for `atexit()`, `qsort()`, `_harderr()` |
| EOF markers | Various | Stripped `^Z` (0x1A) EOF markers |
| Line continuation | Makefiles | Changed `\` to `&` (Watcom syntax) |
| `gr_linear_movsd` | `2d/grdef.h` | Added `#pragma aux` declaration |
| Missing globals | `main/render.c` | Added `Ordered_rendered_object_list`, `Num_rendered_objects` |
| Global packing | All builds | `-zp1` flag for PIG binary format compatibility |

## Build Structure

```
d1dos/
├── 2d/          — 2D graphics library (gr.lib)
├── 3d/          — 3D rendering library (3d.lib)
├── bios/        — BIOS/keyboard/timer (io.lib)
├── cfile/       — File I/O with HOG support (cfile.lib)
├── div/         — Division by zero handler (div0.lib)
├── fix/         — Fixed-point math (fix.lib)
├── iff/         — IFF image loader (iff.lib)
├── includes/    — Shared headers
├── lib/         — Compiled libraries + headers
├── main/        — Game executable source
├── mem/         — Memory manager (mem.lib)
├── misc/        — Misc utilities (misc.lib)
├── support/     — binextr/gwbind tools
├── texmap/      — Texture mapping (texmap.lib)
├── ui/          — UI library (ui.lib)
└── vecmat/      — Vector/matrix math (vecmat.lib)
```

## Credits

- Original source: Parallax Software Corporation (1998) https://github.com/historicalsource/descent
- d1dos fork: [arbruijn](https://github.com/arbruijn/d1dos)
- Open Watcom 2.0 patches: retrogcom
