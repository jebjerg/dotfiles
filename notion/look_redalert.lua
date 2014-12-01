--
-- Look_cleanviolet for Notion's default drawing engine. 
-- Based on look-clean and look-violetgrey.
-- 

if not gr.select_engine("de") then
    return
end

-- Clear existing styles from memory.
de.reset()

-- Base style
de.defstyle("*", {
    -- e.g. inactive (not selected) tab in (in)active group
    highlight_colour = "#e51717",
    shadow_colour = "#e51717",
    background_colour = "#000000",
    foreground_colour = "#6b6b6b",
    
    shadow_pixels = 1,
    highlight_pixels = 1,
    padding_pixels = 1,
    spacing = 0,
    border_style = "elevated",
    
    font = "-*-helvetica-medium-r-normal-*-14-*-*-*-*-*-*-*",
    text_align = "center",
})


de.defstyle("tab", {
    font = "-*-helvetica-medium-r-normal-*-12-*-*-*-*-*-*-*",
    
    de.substyle("active-selected", {
        -- active tab in active group
        highlight_colour = "#e51717",
        shadow_colour = "#e51717",
        background_colour = "#990000",
        foreground_colour = "#eeeeee",
    }),

    de.substyle("inactive-selected", {
        -- active tab in inactive group
        highlight_colour = "#e51717",
        shadow_colour = "#e51717",
        background_colour = "#000000",
        foreground_colour = "#eeeeee",
    }),
})


de.defstyle("input", {
    text_align = "left",
    spacing = 1,
    highlight_colour = "#e51717",
    shadow_colour = "#e51717",
    background_colour = "#990000",
    foreground_colour = "#eeeeee",
    
    de.substyle("*-selection", {
        background_colour = "#000000",
        foreground_colour = "#ffffff",
    }),

    de.substyle("*-cursor", {
        background_colour = "#000000",
        foreground_colour = "#e51717",
    }),
})


dopath("lookcommon_clean")


-- Refresh objects' brushes.
gr.refresh()
