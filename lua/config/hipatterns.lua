local hipatterns = require("mini.hipatterns")
hipatterns.setup({
    highlighters = {
        hex_color = hipatterns.gen_highlighter.hex_color(),
    },
    delay = {
        text_change = 50,
        scroll = 50,
    },
})
