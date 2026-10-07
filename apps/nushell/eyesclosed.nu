# eyesclosed: a minimal low-chroma theme

$env.config.color_config = {
    separator: "#393B48"
    leading_trailing_space_bg: { attr: n }
    header: { fg: "#7498AE" attr: b }
    row_index: "#666A7A"
    empty: "#666A7A"
    hints: "#666A7A"
    search_result: { fg: "#D5CCCC" bg: "#404451" }
    selection: { bg: "#323644" }

    string: "#B7B8C4"
    int: "#EAD3A5"
    float: "#EAD3A5"
    bool: "#EAD3A5"
    filesize: "#B7B8C4"
    duration: "#B7B8C4"
    datetime: "#868A9B"
    range: "#8A8C9E"
    nothing: "#666A7A"
    binary: "#868A9B"
    cell-path: "#B7B8C4"
    record: "#B7B8C4"
    list: "#B7B8C4"
    block: "#B7B8C4"
    closure: "#7498AE"
    glob: "#B7B8C4"

    shape_keyword: { fg: "#7498AE" attr: b }
    shape_internalcall: "#D5CCCC"
    shape_external: "#D5CCCC"
    shape_external_resolved: "#D5CCCC"
    shape_externalarg: "#B7B8C4"
    shape_flag: "#8EA2A7"
    shape_signature: "#B2C4C8"
    shape_string: "#D6C7A8"
    shape_string_interpolation: "#D6C7A8"
    shape_raw_string: "#D6C7A8"
    shape_glob_interpolation: "#D6C7A8"
    shape_int: "#EAD3A5"
    shape_float: "#EAD3A5"
    shape_bool: "#EAD3A5"
    shape_nothing: "#EAD3A5"
    shape_datetime: "#EAD3A5"
    shape_binary: "#EAD3A5"
    shape_literal: "#7498AE"
    shape_variable: "#B7B8C4"
    shape_vardecl: "#B7B8C4"
    shape_filepath: "#B7B8C4"
    shape_directory: "#B7B8C4"
    shape_globpattern: "#B7B8C4"
    shape_match_pattern: "#B7B8C4"
    shape_custom: "#B7B8C4"
    shape_operator: "#8A8C9E"
    shape_pipe: "#8A8C9E"
    shape_redirection: "#8A8C9E"
    shape_range: "#8A8C9E"
    shape_block: "#868A9B"
    shape_closure: "#868A9B"
    shape_record: "#868A9B"
    shape_list: "#868A9B"
    shape_table: "#868A9B"
    shape_matching_brackets: { attr: u }
    shape_garbage: { fg: "#FFA59B" attr: u }
}

$env.LS_COLORS = ([
    "rs=0"
    "fi=0"
    "di=1;38;2;178;196;200"
    "ln=38;2;116;152;174"
    "ex=38;2;234;211;165"
    "or=38;2;255;165;155"
    "mi=38;2;255;165;155"
    "pi=38;2;134;138;155"
    "so=38;2;134;138;155"
    "bd=38;2;134;138;155"
    "cd=38;2;134;138;155"
] | str join ":")
