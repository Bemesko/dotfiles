# from https://nixos.org/manual/nixpkgs/stable/#sec-declarative-package-management
{
  allowUnfree = true;
  packageOverrides = pkgs: with pkgs; {
    myPackages = pkgs.buildEnv {
      name = "my-packages";
      paths = [
        # azure-cli
        bash-completion
        blesh
        cargo
        chezmoi
        clippy
        # docker
        fd
        fzf
        jqp
        k9s
        krew
        kubectl
        kubectx
        kubelogin
        kubernetes-helm
        lazygit
        neovim
        nodejs_22
        oh-my-posh
        python312
        python312Packages.pip
        python312Packages.ansible-core
        ripgrep
        rustc
        terraform
        tmux
        wsl-open
        xsel
      ];
    };
  };
}
