- **DSP** not setup properly
- **harpoon** and **barbar** cant be used simulatenously because of clashing keybindings, they were coded to be an alternative and not to work together because of there similar use cases.
To use one simply comment out the other from **./config/init** (Ex. *require("config.xxxxx")* ) and **./plugins/core** ( *{ "<Git_id>/<xxxxx.nvim" },* )
- **LSPs Linters DAPs and Formatters** after being installed via *:Mason* need to be setup in their respective files. ( *./plugins/lsp.lua* and *./plugins/dlf.lua* )  
- **Telescope** requires ripgrep to be installed externally for the file_grep to work.
