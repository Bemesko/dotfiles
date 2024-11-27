# from https://nixos.org/manual/nixpkgs/stable/#sec-declarative-package-management
{
  allowUnfree = true;
  packageOverrides = pkgs: with pkgs; {
    myPackages = pkgs.buildEnv {
      name = "my-packages";
      paths = [
        # azure-cli has some authentication issues
        awscli2
        aws-iam-authenticator
        bash-completion
        blesh
        cargo
        chezmoi
        clippy
        # docker is already installed on WSL
        fd
        fzf
        jqp
        k9s
        krew
        kubectl
        kubectx
        kubelogin
        kubernetes-helm
        kubernetes-helmPlugins.helm-diff
        lazygit
        neovim
        nodejs_22
        oh-my-posh
        # podman
        python312
        python312Packages.pip
        # python312Packages.ansible-core gives issues
        ripgrep
        rustc
        terraform
        tmux
        unzipNLS
        wslu
        xsel
        xdg-utils
        zk

        (import (builtins.fetchTarball {
          url = "https://github.com/NixOS/nixpkgs/archive/refs/heads/nixpkgs-unstable.tar.gz";
        }) {}).harlequin
        (import (builtins.fetchTarball {
          url = "https://github.com/NixOS/nixpkgs/archive/refs/heads/nixpkgs-unstable.tar.gz";
        }) {}).python312Packages.harlequin-postgres
      ];
    };
  };
}
