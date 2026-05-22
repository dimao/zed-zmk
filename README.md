# Zed ZMK / Devicetree Extension

Syntax highlighting for ZMK Firmware keymaps and Devicetree files in the
[Zed editor](https://zed.dev), inspired by the
[zmk-tools VSCode extension](https://github.com/joelspadin/zmk-tools).

Uses the [`tree-sitter-devicetree`](https://github.com/joelspadin/tree-sitter-devicetree)
grammar (the same one zmk-tools uses) for accurate parsing of Zephyr's
Devicetree superset.

## Supported file extensions

- `.keymap` — ZMK keymaps
- `.overlay` — Devicetree overlays
- `.dts`, `.dtsi`, `.dtso` — Devicetree source
- `.its` — Image tree source

## Install as a dev extension

Until this is published to the Zed extension registry, install it locally:

1. Open Zed.
2. Open the command palette (`Ctrl+Shift+P` / `Cmd+Shift+P`).
3. Run **`zed: install dev extension`**.
4. Select this directory (`zed-zmk`).

Or clone first:

```bash
git clone https://github.com/dimao/zed-zmk.git
```

Zed will clone the grammar, compile it with WASM, and register the language.
Open any `.keymap` file in your `zmk-config` to see highlighting.

## Features

- Highlights keywords (`/dts-v1/`, `/include/`, `/delete-node/`, ...)
- Highlights preprocessor directives (`#include`, `#define`, `#ifdef`, ...)
- Node labels, property names, references (`&phandle`), unit addresses
- Operators, brackets, strings, numbers, comments
- Bracket matching for `{}`, `[]`, `()`, `<>`, `""`
- Auto-indent inside nodes and `<...>` cell lists

## Not (yet) included

The VSCode plugin also offers code completion for `bindings` / `sensor-bindings`
and a "ZMK: Add Keyboard" command. Those rely on a TypeScript extension host
and are out of scope for a syntax-only Zed extension.

## Credits

- Grammar: [tree-sitter-devicetree](https://github.com/joelspadin/tree-sitter-devicetree) by Joel Spadin (MIT)
- Inspired by [zmk-tools](https://github.com/joelspadin/zmk-tools) by Joel Spadin (MIT)
