# eyesclosed: a minimal low-chroma theme

$env.config.color_config = {
    separator: "#3B3D4A"
    leading_trailing_space_bg: { attr: n }
    header: { fg: "#779BB0" attr: b }
    row_index: "#696D7D"
    empty: "#696D7D"
    hints: "#696D7D"
    search_result: { fg: "#D8D0D0" bg: "#464957" }
    selection: { bg: "#383B4A" }

    string: "#BBBCC7"
    int: "#ECD8AE"
    float: "#ECD8AE"
    bool: "#ECD8AE"
    filesize: "#BBBCC7"
    duration: "#BBBCC7"
    datetime: "#898D9E"
    range: "#8D8FA0"
    nothing: "#696D7D"
    binary: "#898D9E"
    cell-path: "#BBBCC7"
    record: "#BBBCC7"
    list: "#BBBCC7"
    block: "#BBBCC7"
    closure: "#779BB0"
    glob: "#BBBCC7"

    shape_keyword: { fg: "#779BB0" attr: b }
    shape_internalcall: "#D8D0D0"
    shape_external: "#D8D0D0"
    shape_external_resolved: "#D8D0D0"
    shape_externalarg: "#BBBCC7"
    shape_flag: "#91A5AA"
    shape_signature: "#B7C8CB"
    shape_string: "#D9CBAE"
    shape_string_interpolation: "#D9CBAE"
    shape_raw_string: "#D9CBAE"
    shape_glob_interpolation: "#D9CBAE"
    shape_int: "#ECD8AE"
    shape_float: "#ECD8AE"
    shape_bool: "#ECD8AE"
    shape_nothing: "#ECD8AE"
    shape_datetime: "#ECD8AE"
    shape_binary: "#ECD8AE"
    shape_literal: "#779BB0"
    shape_variable: "#BBBCC7"
    shape_vardecl: "#BBBCC7"
    shape_filepath: "#BBBCC7"
    shape_directory: "#BBBCC7"
    shape_globpattern: "#BBBCC7"
    shape_match_pattern: "#BBBCC7"
    shape_custom: "#BBBCC7"
    shape_operator: "#8D8FA0"
    shape_pipe: "#8D8FA0"
    shape_redirection: "#8D8FA0"
    shape_range: "#8D8FA0"
    shape_block: "#898D9E"
    shape_closure: "#898D9E"
    shape_record: "#898D9E"
    shape_list: "#898D9E"
    shape_table: "#898D9E"
    shape_matching_brackets: { attr: u }
    shape_garbage: { fg: "#FFABA2" attr: u }
}

$env.LS_COLORS = ([
    "rs=0"
    "fi=0"
    "di=1;38;2;183;200;203"
    "ln=38;2;119;155;176"
    "ex=38;2;236;216;174"
    "or=38;2;255;171;162"
    "mi=38;2;255;171;162"
    "pi=38;2;137;141;158"
    "so=38;2;137;141;158"
    "bd=38;2;137;141;158"
    "cd=38;2;137;141;158"
] | str join ":")
