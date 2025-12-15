{pkgs, ...}:
with pkgs; [
  _1password-cli
  awscli2
  bat
  direnv
  gnupg
# go packages {
  go
  gofumpt
  gopls
#go
  gofumpt
  gopls
# }
# rust packages {
  rustc
  cargo
# }
  git-lfs
  jump
  lazygit
  nixfmt-classic
  nix-search-cli
  ripgrep
  sops
  unzip
  uv
  watch
]
