{ ... }:

{
  programs.starship = {
    enable = true;
    # Configuration written to ~/.config/starship.toml
    settings = {
      # add_newline = false;
      # package.disabled = true;
      
        format = "[](#458588)\$os\$username\[](bg:#83a598 fg:#458588)\$directory\[](fg:#83a598 bg:#458588)\$git_branch\$git_status\[](fg:#458588 bg:#665c54)\$c\$rust\$golang\$nodejs\$deno\$lua\$java\$python\$zig\$nix_shell\$direnv\[](fg:#665c54 bg:#3c3836)\$cmd_duration\[](fg:#3c3836)\$line_break$character";

        os = {
          disabled = false;
          style    = "bg:#458588 fg:#282828";
          symbols.NixOS = "❄";
        };

        username = {
          show_always = true;
          style_user  = "bg:#458588 fg:#282828";
          style_root  = "bg:#458588 fg:#cc241a";
          format      = "[ $user ]($style)";
        };

        directory = {
          style             = "fg:#282828 bg:#83a598";
          format            = "[ $path ]($style)";
          truncation_length = 3;
          truncation_symbol = "…/";
          substitutions = {
            "Documents"  = "󱔗";
            "Downloads"  = "";
            "media"      = "";
            "hyprland"   = "";
            "Games"      = "󰊖";
            "PortProton" = "";
          };
        };

        git_branch = {
          symbol = "";
          style  = "bg:#458588";
          format = "[[ $symbol $branch ](fg:#fbf1c7 bg:#458588)]($style)";
        };
        git_status = {
          style  = "bg:#458588";
          format = "[[($all_status$ahead_behind )](fg:#fbf1c7 bg:#458588)]($style)";
        };

        cmd_duration = {
          disabled    = false;
          style       = "bg:#3c3836";
          format      = "[[  $duration ](fg:#fbf1c7 bg:#3c3836)]($style)";
        };

        line_break = {
          disabled = false;
        };

        character = {
          disabled = false;
          success_symbol            = "[ ](bold fg:#98971a)";
          error_symbol              = "[ ](bold fg:#cc241a)";
        };

        nodejs = {
          symbol = " ";
          style  = "bg:#665c54";
          format = ''[[ $symbol( $version) ](fg:#fbf1c7 bg:#665c54)]($style)'';
        };
        java = {
          symbol = " ";
          style  = "bg:#665c54";
          format = ''[[ $symbol( $version) ](fg:#fbf1c7 bg:#665c54)]($style)'';
        };
        deno = {
          symbol = "🦕";
          style  = "bg:#665c54";
          format = ''[[ $symbol( $version) ](fg:#fbf1c7 bg:#665c54)]($style)'';
        };
        lua = {
          symbol = "🌙";
          style  = "bg:#665c54";
          format = ''[[ $symbol( $version) ](fg:#fbf1c7 bg:#665c54)]($style)'';
        };
        python = {
          symbol = "🐍";
          style  = "bg:#665c54";
          format = ''[[ $symbol( $version) ](fg:#fbf1c7 bg:#665c54)]($style)'';
        };
        zig = {
          symbol = "↯";
          style  = "bg:#665c54";
          format = ''[[ $symbol( $version) ](fg:#fbf1c7 bg:#665c54)]($style)'';
        };
        nix_shell = {
          symbol = "❄️";
          style  = "bg:#665c54";
          format = ''[[ $symbol$state( \\($name\\)) ](fg:#fbf1c7 bg:#665c54)]($style)'';
        };
        direnv = {
          symbol = "direnv ";
          style  = "bg:#665c54";
          format = ''[[ $symbol$loaded/$allowed ](fg:#fbf1c7 bg:#665c54)]($style)'';
         };
        
       };
    };
  
}
