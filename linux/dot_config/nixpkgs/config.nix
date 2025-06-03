# from https://nixos.org/manual/nixpkgs/stable/#sec-declarative-package-management
{
  allowUnfree = true;
  packageOverrides = pkgs: with pkgs; {
    myPackages = pkgs.buildEnv {
      name = "my-packages";
      paths = [
        argocd
        # azure-cli has some authentication issues
        awscli2
        aws-iam-authenticator
        bash-completion
        blesh
        cargo
        chezmoi
        clippy
        # docker is already installed on WSL
        delve
        dotnet-sdk_8
        fd
        fzf
        go
        gum
        helm-docs
        jqp
        k9s
        krew
        kubectl
        kubectx
        kubelogin
        kubelogin-oidc
        kubernetes-helm
        kubernetes-helmPlugins.helm-diff
        kubeseal
        lazygit
        neovim
        # nodejs_22
        oh-my-posh
        # podman
        python312
        python312Packages.pip
        python312Packages.pipx
        python312Packages.ansible-core
        ripgrep
        rustc
        terraform
        tmux
        wslu
        xsel
        # xdg-utils
      ];
    };
  };
}
