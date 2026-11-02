-------------------------------
---- ENVIRONMENT VARIABLES ----
-------------------------------

-- Cursor settings
hl.env("XCURSOR_SIZE", "24")
hl.env("XCURSOR_THEME", "BlackDot")
hl.env("HYPRCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_THEME", "BlackDot")

-- Persistant workspaces
hl.workspace_rule({ workspace = "1", monitor = "DP-1", persistent = true })
hl.workspace_rule({ workspace = "2", monitor = "DP-1", persistent = true })
hl.workspace_rule({ workspace = "3", monitor = "DP-1", persistent = true })
hl.workspace_rule({ workspace = "4", monitor = "HDMI-A-1", persistent = true })
hl.workspace_rule({ workspace = "5", monitor = "HDMI-A-1", persistent = true })
hl.workspace_rule({ workspace = "6", monitor = "HDMI-A-1", persistent = true })

-- Steam and workspace specifics
