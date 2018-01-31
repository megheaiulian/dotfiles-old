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

set NPM_PACKAGES "$HOME/.npm-packages"
if test -x "$NPM_PACKAGES/bin"
    set PATH "$NPM_PACKAGES/bin" $PATH
end

set RUBY_PATH "$HOME/.gem/ruby/2.3.0/bin"

if test -x "$RUBY_PATH"
  set -gx PATH "$RUBY_PATH" $PATH
end
