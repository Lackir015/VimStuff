# My Personal Vim Configuration

* Took Inspiration/Followed the youtube series from https://www.youtube.com/@typecraft_dev. Most of this configuration is based off of his series, but it was quite basic in terms of adding LSPs/Linters since he only really covered JavaScript, Lua, and Ruby. I added all the other linters for languages I most frequently use. 

* Essentially just need to create a folder in ~/.config named nvim. So the path would be ~/.config/nvim

* Typecraft didnt go over auto pairing when dealing with '{', '[' etc. So I chose to use 'nvim-autopairs' partially because it was written in lua which is what my config is in. If you use VimScript for your config I've heard 'lexima' is good. 

* Also decided the original error messages were crowding the screen so I made errors and warnings underlined. Added a keybind which shows the diagnostics in a little popup window.

* Will continue to update this as I add more configurations
