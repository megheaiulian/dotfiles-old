if not test -e ~/.config/fish/functions/fisher.fish
  echo "Installing fisher"
  curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher
  echo "Installing fisher plugins"
  fisher
end
set -g theme_nerd_fonts yes
set -g theme_color_scheme solarized-dark

function _dircolors_set_256_color
    if command -s dircolors > /dev/null; and test -e ~/.dircolors.256
        eval (dircolors -c ~/.dircolors.256 | sed 's/>&\/dev\/null$//')
    end
end

_dircolors_set_256_color
