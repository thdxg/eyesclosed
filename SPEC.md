# eyesclosed spec

A low-chroma dark theme: 15 named colors, read by brightness rather than hue.
The names follow the theme: what is left of light once your eyes are closed.
Background `#111214`. Contrast is the WCAG ratio against the background. Every app config
uses only these 15 colors; nothing else is allowed.

## Palette

| Name   | Hex       | Contrast | Used for                                                                                |
| ------ | --------- | -------- | --------------------------------------------------------------------------------------- |
| night  | `#111214` | —        | Background                                                                              |
| lid    | `#1A1B21` | 1.1      | Status bar, popups, menus, current line, indent guides                                  |
| shade  | `#383B4A` | 1.7      | Selection, line numbers, borders, terminal black                                        |
| glow   | `#464957` | 2.1      | Focused row in pickers and menus                                                        |
| haze   | `#696D7D` | 3.6      | Comments, punctuation, hints, inlay hints                                               |
| ash    | `#9A9DAE` | 7.0      | Fields, package paths, operators, built-in types, doc comments, attributes, status text |
| mist   | `#BBBCC7` | 9.9      | Default text, variables, parameters                                                     |
| moon   | `#CDCFD1` | 12.0     | Cursor, headings, emphasis                                                              |
| tide   | `#779BB0` | 6.3      | Keywords, `self`, lists, mode badge, info, added lines                                  |
| frost  | `#B7C8CB` | 10.8     | Types, macros, links                                                                    |
| blush  | `#D8D0D0` | 12.4     | Function names                                                                          |
| linen  | `#D9CBAE` | 11.7     | Strings, inline code                                                                    |
| candle | `#ECD8AE` | 13.4     | Numbers, booleans, constants, escapes                                                   |
| ember  | `#C18E5F` | 6.5      | Warnings, removed lines                                                                 |
| flare  | `#FFABA2` | 10.4     | Errors                                                                                  |

Brightness order of the code colors: candle > linen / blush > frost > mist > ash > tide (bold) > haze.
Hue stays on the blue ↔ amber axis; red–green is never the only difference.

## Syntax

| Helix scope                                                                   | Color  | Style  |
| ----------------------------------------------------------------------------- | ------ | ------ |
| `function`                                                                    | blush  | —      |
| `constant`, `constant.numeric`, `constant.builtin`                            | candle | —      |
| `constant.character.escape`                                                   | candle | bold   |
| `string`                                                                      | linen  | —      |
| `type`, `constructor`                                                         | frost  | —      |
| `function.macro`                                                              | frost  | italic |
| `variable`, `variable.parameter`                                              | mist   | —      |
| `label` (Rust lifetimes)                                                      | mist   | italic |
| `variable.other.member`, `namespace`, `operator`, `type.builtin`, `attribute` | ash    | —      |
| `comment.*.documentation`                                                     | ash    | italic |
| `keyword`                                                                     | tide   | bold   |
| `variable.builtin` (`self`)                                                   | tide   | italic |
| `comment`                                                                     | haze   | italic |
| `punctuation`                                                                 | haze   | —      |

## Markdown

| Helix scope                            | Color | Style     |
| -------------------------------------- | ----- | --------- |
| `markup.heading`                       | moon  | bold      |
| `markup.heading.marker`, `markup.list` | tide  | —         |
| `markup.bold`                          | moon  | bold      |
| `markup.italic`                        | mist  | italic    |
| `markup.raw`                           | linen | —         |
| `markup.link.text`                     | frost | underline |
| `markup.quote`                         | ash   | italic    |
| `markup.link.url`                      | haze  | —         |

## Diagnostics

Severity is carried by underline shape as well as color. Diagnostic text is bold for every severity.

| Severity | Color | Underline   |
| -------- | ----- | ----------- |
| error    | flare | curl (wavy) |
| warning  | ember | dashed      |
| info     | tide  | dotted      |
| hint     | haze  | dotted      |

## Diff gutter

| Gutter  | Color |
| ------- | ----- |
| added   | tide  |
| changed | haze  |
| removed | ember |

## Terminal (ANSI 0–15)

Bright variants reuse the normal colors, except black (8 = haze) and white (15 = moon).
Foreground mist, cursor moon, selection shade. Selected text keeps its own color; where a
terminal needs one fixed selected-text color, use mist.

| #   | Name    | Color  | Bright # | Bright |
| --- | ------- | ------ | -------- | ------ |
| 0   | black   | shade  | 8        | haze   |
| 1   | red     | flare  | 9        | flare  |
| 2   | green   | tide   | 10       | tide   |
| 3   | yellow  | candle | 11       | candle |
| 4   | blue    | frost  | 12       | frost  |
| 5   | magenta | ash    | 13       | ash    |
| 6   | cyan    | blush  | 14       | blush  |
| 7   | white   | mist   | 15       | moon   |
