# from https://nixos.org/manual/nixpkgs/stable/#sec-declarative-package-management
{
  allowUnfree = true;
  packageOverrides = pkgs: with pkgs; {
    myPackages = pkgs.buildEnv {
      name = "my-packages";
      paths = [
        azure-cli
        bash-completion
        blesh
        chezmoi
        docker
        fzf
        jqp
        k9s
        krew
        kubectl
        kubectx
        kubernetes-helm
        neovim
        oh-my-posh
        python3
        terraform
        tmux
        xclip
      ];
    };
  };
}
