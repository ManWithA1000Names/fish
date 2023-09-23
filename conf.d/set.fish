set -x EDITOR "vix"
set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"
set -gx PNPM_HOME "/home/quri/.local/share/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
