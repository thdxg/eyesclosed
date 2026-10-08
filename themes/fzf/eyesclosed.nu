# eyesclosed: a minimal low-chroma theme
# Nushell: source this file from config.nu (or env.nu).
$env.FZF_DEFAULT_OPTS = ([($env.FZF_DEFAULT_OPTS? | default "") "--color=fg:#BBBCC7,bg:-1,hl:#ECD8AE,fg+:#CDCFD1,bg+:#1A1B21,hl+:#ECD8AE,info:#9A9DAE,prompt:#779BB0,pointer:#D8D0D0,marker:#B7C8CB,spinner:#779BB0,header:#9A9DAE,border:#383B4A,gutter:-1,query:#BBBCC7,label:#9A9DAE,separator:#383B4A,scrollbar:#383B4A,preview-border:#383B4A"] | str join " " | str trim)
