{
  inputs = {
    nixpkgs.url = "nixpkgs/nixpkgs-unstable"; # TODO are you an adventurous person too?
  };

  outputs = { self, nixpkgs }:
    let
      supportedSystems = nixpkgs.lib.genAttrs [
        "x86_64-linux"
        "aarch64-linux"
      ];
      pkgs = supportedSystems (system: import nixpkgs { inherit system; });
    in
    {
      devShells = supportedSystems (system: {
        default = pkgs.${system}.mkShellNoCC {
          buildInputs = with pkgs.${system}; [
            ansible
            ansible-lint
            bmake
            diffutils
            docker
            docker-compose_1 # TODO upgrade to version 2
            git
            go
            gotestsum
            iproute2
            jq
            k9s
            kube3d
            kubectl
            kubernetes-helm
            kustomize
            neovim
            openssh
            p7zip
            pre-commit
            python311
            python311Packages.jinja2
            python311Packages.kubernetes
            python311Packages.netaddr
            python311Packages.rich
            shellcheck
            terraform
            xorriso
            yamllint
          ];
        };
      });
    };
}
