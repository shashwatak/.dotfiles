local g = require("shared")


hl.bind(g.mainMod .. " + RETURN", hl.dsp.exec_cmd(g.terminal))
hl.bind(g.mainMod .. " + DELETE", hl.dsp.window.close())
hl.bind(g.mainMod .. " + P", hl.dsp.exec_cmd(g.menu))
hl.bind(g.mainMod .. " + Q", hl.dsp.exec_cmd(g.lock))
hl.bind(g.mainMod .. " + CTRL + SHIFT + " .. " + M", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))
hl.bind(g.mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))

-- Move focus with g.mainMod + arrow keys
hl.bind(g.mainMod .. " + left",  hl.dsp.focus({ direction = "left" }))
hl.bind(g.mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(g.mainMod .. " + up",    hl.dsp.focus({ direction = "up" }))
hl.bind(g.mainMod .. " + down",  hl.dsp.focus({ direction = "down" }))

-- Switch workspace with g.mainMod + right hand
hl.bind(g.mainMod .. " + N",         hl.dsp.focus({ workspace = 1}))
hl.bind(g.mainMod .. " + E",         hl.dsp.focus({ workspace = 2}))
hl.bind(g.mainMod .. " + I",         hl.dsp.focus({ workspace = 3}))
hl.bind(g.mainMod .. " + O",         hl.dsp.focus({ workspace = 4}))
hl.bind(g.mainMod .. " + L",         hl.dsp.focus({ workspace = 5}))
hl.bind(g.mainMod .. " + U",         hl.dsp.focus({ workspace = 6}))
hl.bind(g.mainMod .. " + Y",         hl.dsp.focus({ workspace = 7}))
hl.bind(g.mainMod .. " + SEMICOLON", hl.dsp.focus({ workspace = 8}))
hl.bind(g.mainMod .. " + H",         hl.dsp.focus({ workspace = 9}))
hl.bind(g.mainMod .. " + COMMA",     hl.dsp.focus({ workspace = 10}))
hl.bind(g.mainMod .. " + PERIOD",    hl.dsp.focus({ workspace = 11}))
hl.bind(g.mainMod .. " + SLASH",     hl.dsp.focus({ workspace = 12}))

-- Move current focused container and switch to workspace
hl.bind(g.mainMod .. " + SHIFT + N",         hl.dsp.window.move({ workspace = 1 }))
hl.bind(g.mainMod .. " + SHIFT + E",         hl.dsp.window.move({ workspace = 2 }))
hl.bind(g.mainMod .. " + SHIFT + I",         hl.dsp.window.move({ workspace = 3 }))
hl.bind(g.mainMod .. " + SHIFT + O",         hl.dsp.window.move({ workspace = 4 }))
hl.bind(g.mainMod .. " + SHIFT + L",         hl.dsp.window.move({ workspace = 5 }))
hl.bind(g.mainMod .. " + SHIFT + U",         hl.dsp.window.move({ workspace = 6 }))
hl.bind(g.mainMod .. " + SHIFT + Y",         hl.dsp.window.move({ workspace = 7 }))
hl.bind(g.mainMod .. " + SHIFT + SEMICOLON", hl.dsp.window.move({ workspace = 8 }))
hl.bind(g.mainMod .. " + SHIFT + H",         hl.dsp.window.move({ workspace = 9 }))
hl.bind(g.mainMod .. " + SHIFT + COMMA",     hl.dsp.window.move({ workspace = 10 }))
hl.bind(g.mainMod .. " + SHIFT + PERIOD",    hl.dsp.window.move({ workspace = 11 }))
hl.bind(g.mainMod .. " + SHIFT + SLASH",     hl.dsp.window.move({ workspace = 12 }))

-- Example special workspace (scratchpad)
hl.bind(g.mainMod .. " + SPACE",         hl.dsp.workspace.toggle_special("magic"))
hl.bind(g.mainMod .. " + SHIFT + SPACE", hl.dsp.window.move({ workspace = "special:magic" }))

-- PACE-- Scroll through existing workspaces with mainMod + scroll
-- hl.bind(g.mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
-- hl.bind(g.mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(g.mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(g.mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

