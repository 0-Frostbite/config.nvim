### Commands

- **Leet**  : Open Leetcode
- **Themery** : Open Theme selector
- **TransparentToggle** : Toggle background transparency
- **lua theme(name, transparency)** : Change theme and transparency
- **IBLToggle** - Toggle indentation lines
- **LiveServerStart** : Start live server
- **LiveServerStop** : Stop live server

### KeyMappings

##### NeoVim Builtin

- **"<C-a>"** : Increase a number by one
- **"<C-x>"** : Decrease a number by one
- **"<C-s>v"** : Vertical split
- **"<C-s>s"** : Horizontal split
- **"di [bracket]** : Delete content inside the given bracket type
- **"da [bracket]** : Delete bracket along with the content
- **"{" "}"**   : Jump blank line
- **"]" "["**   : Jump code block
- **"(" ")"**   : Jump code block
- **q [register]<action>q** : Record macor into register (a-z/A-Z)
- **[count] @ [register]** : Execute macro at given register count times

##### BarBar

- **"<A-,>"** : Enter previous buffer
- **"<A-.>"** : Enter next buffer
- **"<A-[count]>"** : Enter buffer at position[count] 
- **"<A-0>"** : Enter Last buffer
- **"<A-c>"** : Close Current buffer

##### Comment

- **"<gcc>"** : Comment current line
- **"<gcb>"** : Comment current block
- **"<gc [count motion]>"**

##### Flash

- **"s"** : Flash
- **"S"** : Flash Treesitter
- **"r"** : Remote Flash
- **"R"** : Treesitter search
- **"<C-s>"** : Toggle Flash search

##### Harpoon

- **"<leader>a"** : Add Buffer to Harpoon list
- **"<A-q>"** : Load previous buffer
- **"<A-e>"** : Load next buffer
- **"<A-a>"** : Toggle HarpoonUI
- **"<A-[count]>"** : Load Buffer at Position[{count}]
- **"<A-z>"** : Remove Buffer from Harpoon list

##### Inc-Rename

- **"<leader>rn"** : Increamental rename

##### LSP

- **<gd>** : Goto definition
- **<K>**  : Show documentation
- **<S-K>**  : Show documentation in new page
- **<gd>** : Show reference
- **<C-j/k>** : Select item
- **<M-j/k>** : Scroll documentation
- **<Tab>** : Confirm

##### Refactoring

- **"<leader>re"** : Extract
- **"<leader>rf"** : Extract to file
- **"<leader>rv"** : Extract variable
- **"<leader>ri"** : Inline variable
- **"<leader>rI"** : Inline funciton
- **"<leader>rb"** : Extract block
- **"<leader>rbf"** : Extract block to file

##### Resize

- **"<M-j>"** : resize +2
- **"<M-k>"** : resize -2
- **"<M-h>"** : vertical resize -2
- **"<M-l>"** : vertical resize +2

##### Telescope

- **"<leader>ff"** : Find file
- **"<leader>fs"** : Find in file
- **"<leader>fg"** : Folder grep
- **"<leader>fb"** : Find buffer 
- **"<C-s>s"** : Open file in horizontal split
- **"<C-s>v"** : Open file in vertical split
- **"<C-t>"** : Open file in new tab
- **"<M-k>"** : Scroll up in preview window
- **"<M-j>"** : Scroll down in preview window
- **"<M-h>"** : Scroll left in preview window
- **"<M-l>"** : Scroll right in preview window
- **"<C-j>"** : Move to next item
- **"<C-k>"** : Move to prev item

##### Tree

- **"<leader><leader>"** : Toggle Tree
- **"<Tab>"** : Preview file
- **"<C-]>"** : Change root node
- **"<C-t>"** : Open file in new tab
- **"<C-v>"** : Open file in vertical split
- **"<C-x>"** : Open file in horizontal split
- **"<C-r>"** : Rename file completely
- **"a"** : Create file/folder
- **"c"** : Copy
- **"d"** : Delete
- **"e"** : Rename (base name)
- **"p"** : Paste
- **"r"** : Rename completely
- **"R"** : Refresh
- **"x"** : Cut
- **"y"** : Copy file name
- **"Y"** : Copy relative path

##### UFO

- **"zo"** : open all folds
- **"zc"** : close all folds

##### Miscellaneous 

- **"<leader>t"**  : Open terminal     **ToggleTerm**
- **"<C-b>"**      : Toggle debugger   **DAP**
- **"<leader>fw"** : Format and write  **Formatter**
- **"]m" "[m"**    : Jump method       **Treesitter**
