# walltheme.nvim 🌈

`walltheme.nvim` is a [Neovim](https://neovim.io/) plugin that dynamically loads a colorscheme based on the colors generated by your [Walltheme](https://github.com/JoseMM2002/walltheme) tool.

The colorscheme is derived from a file generated by `walltheme` (`~/.cache/walltheme/colors.lua`), making it easy to sync your Neovim theme with the colors of your wallpaper.

## Features ✨

- Automatically loads a colorscheme generated from your wallpaper.
- Provides a `:LoadWallTheme` command to reload the colorscheme without restarting Neovim.
- Simple configuration and seamless workflow.

## Installation 🚀

Install the plugin using your favorite plugin manager. Here are some examples:

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "JoseMM2002/walltheme.nvim",
  config = function()
    require('walltheme').setup()
  end
}
```

### [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
  "JoseMM2002/walltheme.nvim",
  config = function()
    require('walltheme').setup()
  end
}
```

### [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'JoseMM2002/walltheme.nvim'
```

## Configuration 🛠️

By default, `walltheme.nvim` loads colors from the `~/.cache/walltheme/colors.lua` file. If the file doesn't exist, the plugin will display a warning.

```lua
require('walltheme').setup()
```

## Usage 📚

### Available Commands

- **`:LoadWallTheme`**  
  Reloads the colorscheme from the file specified in `colors_file`.

## Integrating with `walltheme`

1. Use your `walltheme` tool to generate colors based on your image.
2. Ensure the file `~/.cache/walltheme/colors.lua` contains the generated colors.
3. Use `:LoadWallTheme` to reload the colorscheme in Neovim.

### Example `colors.lua` File

The `colors.lua` file should export a table of colors. For example:

```lua
return {
  bg = "#1E1E2E",
  fg = "#CDD6F4",
  red = "#F38BA8",
  green = "#A6E3A1",
  blue = "#89B4FA",
  yellow = "#F9E2AF",
  -- more colors...
}
```

## Contributing 🖌️

Contributions are welcome! Feel free to open an [issue](https://github.com/your-username/walltheme.nvim/issues) or submit a pull request.

## License 📄

This project is licensed under the [MIT License](./LICENSE).

---

Let me know if you need further adjustments or enhancements. 🚀