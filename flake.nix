{

  description = "my flake";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager/master";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    # ghostty.url = "git+ssh://git@github.com/ghostty-org/ghostty";
  };

  outputs = { 
    self, 
    nixpkgs, 
    home-manager, 
    # ghostty, 
    ...  
    }:
    let
      system = "x86_64-linux";
      lib = nixpkgs.lib;
      pkgs = nixpkgs.legacyPackages.${system};
    in {
    nixosConfigurations = {
      nixos = lib.nixosSystem {
        inherit system;
        modules = [ 
        ./configuration.nix
          # {        
          #   environment.systemPackages = [
          #     ghostty.packages.x86_64-linux.default
          #   ];
          # }
        ];
      };		
    };
    homeConfigurations = {
      ali = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        modules = [ 
          ./home.nix 
        ];
      };
    };
  };
}
