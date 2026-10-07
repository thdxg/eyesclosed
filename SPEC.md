# Eyesclosed Spec

Background `#111214`. Every color is listed with its WCAG contrast ratio against that background. The theme is built so tokens are told apart mainly by **brightness and weight**, with faint hue as a secondary cue. Hue stays mostly on the blue ↔ amber axis; red–green is never the only difference.

## Syntax (brightest → dimmest)

| Hex       | Contrast | Style  | Helix scope                                    | Used for                                  |
| --------- | -------- | ------ | ---------------------------------------------- | ----------------------------------------- |
| `#ECD8AE` | 13.4     | —      | `constant, constant.numeric, constant.builtin` | Numbers, booleans, `nil`, ALL_CAPS consts |
| `#ECD8AE` | 13.4     | bold   | `constant.character.escape`                    | `\t`, `\n` inside strings                 |
| `#D8D0D0` | 12.4     | —      | `function`                                     | Function and method names                 |
| `#D9CBAE` | 11.7     | —      | `string`                                       | String and char literals                  |
| `#B7C8CB` | 10.8     | —      | `type, constructor`                            | Types, enum variants                      |
| `#B7C8CB` | 10.8     | italic | `function.macro`                               | `println!`, `vec!`                        |
| `#BBBCC7` | 9.9      | —      | `ui.text / foreground`                         | Default text                              |
| `#BBBCC7` | 9.9      | —      | `variable`                                     | Local variables                           |
| `#BAB6CB` | 9.5      | —      | `variable.parameter`                           | Function parameters                       |
| `#BDB2B9` | 9.1      | italic | `label`                                        | Rust lifetimes `'a`                       |
| `#A3A6B5` | 7.7      | —      | `variable.other.member`                        | Fields, `.member`                         |
| `#91A5AA` | 7.3      | —      | `type.builtin`                                 | `int`, `string`, `usize`                  |
| `#AD97A9` | 6.9      | italic | `variable.builtin`                             | `self`, `Self`                            |
| `#779BB0` | 6.3      | bold   | `keyword`                                      | `fn`, `func`, `return`, `if`              |
| `#9194A4` | 6.2      | —      | `namespace`                                    | `std::`, `fmt.`                           |
| `#8D8FA0` | 5.9      | —      | `operator`                                     | `+= -> :=`                                |
| `#898D9E` | 5.7      | italic | `comment.*.documentation`                      | `///` doc comments                        |
| `#7E7E94` | 4.7      | —      | `attribute`                                    | `#[derive]`                               |
| `#696D7D` | 3.6      | italic | `comment`                                      | Comments                                  |
| `#5E6170` | 3.1      | —      | `punctuation`                                  | Brackets, commas, semicolons              |

## Markdown

| Hex       | Contrast | Style     | Helix scope             |
| --------- | -------- | --------- | ----------------------- |
| `#E3D9D9` | 13.6     | bold      | `markup.bold`           |
| `#D7D2E6` | 12.7     | bold      | `markup.heading`        |
| `#D9CBAE` | 11.7     | —         | `markup.raw`            |
| `#B6CCD3` | 11.2     | underline | `markup.link.text`      |
| `#BBBCC7` | 9.9      | italic    | `markup.italic`         |
| `#898D9E` | 5.7      | italic    | `markup.quote`          |
| `#7F879E` | 5.2      | —         | `markup.heading.marker` |
| `#779BB0` | 6.3      | —         | `markup.list`           |
| `#5E6170` | 3.1      | —         | `markup.link.url`       |

## Editor UI

| Role                                            | Hex       | Helix scope                                     |
| ----------------------------------------------- | --------- | ----------------------------------------------- |
| Background                                      | `#111214` | `ui.background`                                 |
| Statusline / popups / menus                     | `#1A1B21` | `ui.statusline, ui.popup, ui.menu`              |
| Cursor line                                     | `#18171D` | `ui.cursorline.primary`                         |
| Selection                                       | `#383B4A` | `ui.selection`                                  |
| Focused row: picker, menus, preview line (bold) | `#464957` | `ui.text.focus, ui.menu.selected, ui.highlight` |
| Fuzzy-match letters in pickers (bold)           | `#ECD8AE` | `special`                                       |
| Cursor (neutral gray)                           | `#CDCFD1` | `ui.cursor.primary`                             |
| Line numbers                                    | `#3B3D4A` | `ui.linenr`                                     |
| Current line number, status text                | `#9799AA` | `ui.linenr.selected`                            |
| Normal-mode badge                               | `#779BB0` | `ui.statusline.normal`                          |
| Inlay hints (italic)                            | `#505261` | `ui.virtual.inlay-hint`                         |
| Indent guides, whitespace                       | `#1F1F26` | `ui.virtual.indent-guide`                       |

## Diagnostics

Severity is carried by underline shape as well as color. Diagnostic text is bold for every severity.

| Severity | Hex       | Contrast | Underline   |
| -------- | --------- | -------- | ----------- |
| error    | `#FFABA2` | 10.4     | curl (wavy) |
| warning  | `#C18E5F` | 6.5      | dashed      |
| info     | `#9EB6C3` | 8.9      | dotted      |
| hint     | `#7E7F95` | 4.8      | dotted      |

## Diff gutter

| Role                           | Hex       |
| ------------------------------ | --------- |
| Added (blue, not green)        | `#5F7986` |
| Changed                        | `#5B6370` |
| Removed (orange-rose, not red) | `#90655D` |

## Terminal (ANSI 0–15)

Green is a muted teal so it never depends on red vs green. Cyan (6, prompt paths) is bright and magenta (5, git branch) is dim, so they differ by brightness.

| #   | Name    | Normal    | Bright # | Bright    |
| --- | ------- | --------- | -------- | --------- |
| 0   | black   | `#21212A` | 8        | `#4A4B5C` |
| 1   | red     | `#E3979B` | 9        | `#EDADB1` |
| 2   | green   | `#7AA7AE` | 10       | `#95BCC3` |
| 3   | yellow  | `#DEC79C` | 11       | `#EAD8B6` |
| 4   | blue    | `#9EB6C3` | 12       | `#B9CED9` |
| 5   | magenta | `#9187A8` | 13       | `#ACA4C3` |
| 6   | cyan    | `#D8DADB` | 14       | `#EBEBEB` |
| 7   | white   | `#C2C4CF` | 15       | `#E9E9F0` |

Foreground `#BBBCC7`, cursor `#CDCFD1`, selection `#383B4A`.
