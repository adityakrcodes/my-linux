## MY NVIM configuration

To install

Create a repo directory in the home directory of your distro, or any other location but keep in mind to change accordingly in the upcomming steps.

```sh
mkdir ~/repos && cd ~/repos
```

Clone this repo to that folder

```sh
git clone https://github.com/adityakrcodes/my-linux.git
```

Create a symbolic link of the git nvim config to your .config in the ~/.config/nvim folder

```sh
ln -s $HOME/repos/my-linux/config/nvim $HOME/.config/nvim
```

### Migration from Packer to Lazy.nvim

## TO-DOs

- [ ] Install Plugins
    - [ ] m4xshen/autoclose.nvim
    - [ ] mistricky/codesnap.nvim
    - [ ] numToStr/Comment.nvim
    - [ ] windwp/nvim-autopairs
    - [ ] VonHeikemen/lsp-zero.nvim
    - [ ] nvim-treesitter/nvim-treesitter
    - [x] a good theme (Installed AYU)
    - [ ] akinsho/nvim-toggleterm.lua
