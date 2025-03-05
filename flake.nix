{

  description = "my flake";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    # zen-browser.url = "github:0xc000022070/zen-browser-flake";
    # ghostty.url = "git+ssh://git@github.com/ghostty-org/ghostty";
  };

  outputs = { 
    self, 
    nixpkgs, 
    home-manager,
    # zen-browser,
    # ghostty, 
    ...  
    } @ inputs:
    let
      system = "x86_64-linux";
      lib = nixpkgs.lib;
      pkgs = nixpkgs.legacyPackages.${system};
    in {
    nixosConfigurations = {
      nixos = lib.nixosSystem {
        inherit system;
        # extraSpecialArgs = {inherit inputs;};
        modules = [ 
        ./configuration.nix
        # inputs.home-manager.nixosModules.default
        home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.ali = import ./home.nix;
          }
          # {        
          #   environment.systemPackages = [
          #     ghostty.packages.x86_64-linux.default
          #     inputs.zen-browser.packages."${system}".default
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
