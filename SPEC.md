# Eyesclosed Spec

Background `#0B0D0E`. Every color is listed with its WCAG contrast ratio against that background. The theme is built so tokens are told apart mainly by **brightness and weight**, with faint hue as a secondary cue. Hue stays mostly on the blue ↔ amber axis; red–green is never the only difference.

## Syntax (brightest → dimmest)

| Hex       | Contrast | Style  | Helix scope                                    | Used for                                  |
| --------- | -------- | ------ | ---------------------------------------------- | ----------------------------------------- |
| `#EAD3A5` | 13.3     | —      | `constant, constant.numeric, constant.builtin` | Numbers, booleans, `nil`, ALL_CAPS consts |
| `#EAD3A5` | 13.3     | bold   | `constant.character.escape`                    | `\t`, `\n` inside strings                 |
| `#D5CCCC` | 12.4     | —      | `function`                                     | Function and method names                 |
| `#D6C7A8` | 11.7     | —      | `string`                                       | String and char literals                  |
| `#B2C4C8` | 10.8     | —      | `type, constructor`                            | Types, enum variants                      |
| `#B2C4C8` | 10.8     | italic | `function.macro`                               | `println!`, `vec!`                        |
| `#B7B8C4` | 9.9      | —      | `ui.text / foreground`                         | Default text                              |
| `#B7B8C4` | 9.9      | —      | `variable`                                     | Local variables                           |
| `#B6B2C8` | 9.5      | —      | `variable.parameter`                           | Function parameters                       |
| `#BAAEB6` | 9.1      | italic | `label`                                        | Rust lifetimes `'a`                       |
| `#9FA2B2` | 7.7      | —      | `variable.other.member`                        | Fields, `.member`                         |
| `#8EA2A7` | 7.3      | —      | `type.builtin`                                 | `int`, `string`, `usize`                  |
| `#AA94A6` | 7.0      | italic | `variable.builtin`                             | `self`, `Self`                            |
| `#7498AE` | 6.3      | bold   | `keyword`                                      | `fn`, `func`, `return`, `if`              |
| `#8E91A2` | 6.2      | —      | `namespace`                                    | `std::`, `fmt.`                           |
| `#8A8C9E` | 5.9      | —      | `operator`                                     | `+= -> :=`                                |
| `#868A9B` | 5.7      | italic | `comment.*.documentation`                      | `///` doc comments                        |
| `#7B7B92` | 4.7      | —      | `attribute`                                    | `#[derive]`                               |
| `#666A7A` | 3.6      | italic | `comment`                                      | Comments                                  |
| `#5B5E6D` | 3.0      | —      | `punctuation`                                  | Brackets, commas, semicolons              |

## Markdown

| Hex       | Contrast | Style     | Helix scope             |
| --------- | -------- | --------- | ----------------------- |
| `#E0D4D4` | 13.5     | bold      | `markup.bold`           |
| `#D3CEE4` | 12.7     | bold      | `markup.heading`        |
| `#D6C7A8` | 11.7     | —         | `markup.raw`            |
| `#B1C8D0` | 11.2     | underline | `markup.link.text`      |
| `#B7B8C4` | 9.9      | italic    | `markup.italic`         |
| `#868A9B` | 5.7      | italic    | `markup.quote`          |
| `#7C849C` | 5.2      | —         | `markup.heading.marker` |
| `#7498AE` | 6.3      | —         | `markup.list`           |
| `#5B5E6D` | 3.0      | —         | `markup.link.url`       |

## Editor UI

| Role                                            | Hex       | Helix scope                                     |
| ----------------------------------------------- | --------- | ----------------------------------------------- |
| Background                                      | `#0B0D0E` | `ui.background`                                 |
| Statusline / popups / menus                     | `#14161B` | `ui.statusline, ui.popup, ui.menu`              |
| Cursor line                                     | `#121217` | `ui.cursorline.primary`                         |
| Selection                                       | `#323644` | `ui.selection`                                  |
| Focused row: picker, menus, preview line (bold) | `#404451` | `ui.text.focus, ui.menu.selected, ui.highlight` |
| Fuzzy-match letters in pickers (bold)           | `#EAD3A5` | `special`                                       |
| Cursor (neutral gray)                           | `#C9CBCE` | `ui.cursor.primary`                             |
| Line numbers                                    | `#393B48` | `ui.linenr`                                     |
| Current line number, status text                | `#9496A8` | `ui.linenr.selected`                            |
| Normal-mode badge                               | `#7498AE` | `ui.statusline.normal`                          |
| Inlay hints (italic)                            | `#4E505F` | `ui.virtual.inlay-hint`                         |
| Indent guides, whitespace                       | `#191A20` | `ui.virtual.indent-guide`                       |

## Diagnostics

Severity is carried by underline shape as well as color. Diagnostic text is bold for every severity.

| Severity | Hex       | Contrast | Underline   |
| -------- | --------- | -------- | ----------- |
| error    | `#FFA59B` | 10.3     | curl (wavy) |
| warning  | `#BF8A5A` | 6.5      | dashed      |
| info     | `#99B3C0` | 8.9      | dotted      |
| hint     | `#7B7C93` | 4.8      | dotted      |

## Diff gutter

| Role                           | Hex       |
| ------------------------------ | --------- |
| Added (blue, not green)        | `#5C7684` |
| Changed                        | `#58616E` |
| Removed (orange-rose, not red) | `#8E625A` |

## Terminal (ANSI 0–15)

Green is a muted teal so it never depends on red vs green. Cyan (6, prompt paths) is bright and magenta (5, git branch) is dim, so they differ by brightness.

| #   | Name    | Normal    | Bright # | Bright    |
| --- | ------- | --------- | -------- | --------- |
| 0   | black   | `#1B1C24` | 8        | `#444656` |
| 1   | red     | `#E29296` | 9        | `#ECA8AC` |
| 2   | green   | `#76A4AC` | 10       | `#90B9C0` |
| 3   | yellow  | `#DCC396` | 11       | `#E8D3AD` |
| 4   | blue    | `#99B3C0` | 12       | `#B4CAD6` |
| 5   | magenta | `#8E84A6` | 13       | `#A9A0C1` |
| 6   | cyan    | `#D4D6D7` | 14       | `#E6E6E6` |
| 7   | white   | `#BEC0CC` | 15       | `#E4E5ED` |

Foreground `#B7B8C4`, cursor `#C9CBCE`, selection `#323644`.
