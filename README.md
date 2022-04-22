# spaceship-prompt-customization

```zsh
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
git clone https://github.com/vjm/spaceship-prompt-customization.git "$ZSH_CUSTOM/themes/spaceship-prompt-customization"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
```

Set `ZSH_THEME="spaceship"` in your `.zshrc`.

Add `source "${ZSH}/custom/themes/spaceship-prompt-customization/zshrc.sh"` in your `.zshrc`.

Add `source "${ZSH}/custom/themes/spaceship-prompt-customization/vjm-section.sh"` in your `.zshrc`.

Add `source "${ZSH}/custom/themes/spaceship-prompt-customization/aliases.sh"` in your `.zshrc`.

Update to latest: `cd $ZSH_CUSTOM/themes/spaceship-prompt-customization && git pull && cd -`