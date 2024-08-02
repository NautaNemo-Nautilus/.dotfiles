{
  programs.starship = {
    enable = true;
    settings = {
      # Nerd Font Symbols

      aws.symbol = "  ";
      buf.symbol = " ";
      c.symbol = " ";
      conda.symbol = " ";
      dart.symbol = " ";
      directory.read_only = " ";
      docker_context.symbol = " ";
      elixir.symbol = " ";
      elm.symbol = " ";

      git_branch.symbol = " ";
      git_branch.style = "bg:#394260";
      git_branch.format = "[[ $symbol $branch ](fg:#769ff0 bg:#394260)]($style)";
      git_status.style = "bg:#394260";
      git_status.format = "[[($all_status$ahead_behind )](fg:#769ff0 bg:#394260)]($style)";
      
      golang.symbol = " ";
      golang.style = "bg:#212736";
      golang.format = "[[ $symbol ($version) ](fg:#769ff0 bg:#212736)]($style)";
      
      guix_shell.symbol = " ";
      haskell.symbol = " ";
      haxe.symbol = "⌘ ";
      hg_branch.symbol = " ";
      java.symbol = " ";
      julia.symbol = " ";
      lua.symbol = " ";
      memory_usage.symbol = " ";
      meson.symbol = "喝 ";
      nim.symbol = " ";
      nix_shell.symbol = "";
      nodejs.symbol = " ";
      nodejs.style = "bg:#212736";
      nodejs.format = "[[ $symbol ($version) ](fg:#769ff0 bg:#212736)]($style)";
      
      os.symbols = {
        Alpine = " ";
        Amazon = " ";
        Android = " ";
        Arch = " ";
        CentOS = " ";
        Debian = " ";
        DragonFly = " ";
        Emscripten = " ";
        EndeavourOS = " ";
        Fedora = " ";
        FreeBSD = " ";
        Garuda = "﯑ ";
        Gentoo = " ";
        HardenedBSD = "ﲊ ";
        Illumos = " ";
        Linux = " ";
        Macos = " ";
        Manjaro = " ";
        Mariner = " ";
        MidnightBSD = " ";
        Mint = " ";
        NetBSD = " ";
        NixOS = " ";
        OpenBSD = " ";
        openSUSE = " ";
        OracleLinux = " ";
        Pop = " ";
        Raspbian = " ";
        Redhat = " ";
        RedHatEnterprise = " ";
        Redox = " ";
        Solus = "ﴱ ";
        SUSE = " ";
        Ubuntu = " ";
        Unknown = " ";
        Windows = " ";
      };
      os.format = "[$symbol]($style)";
      os.style = "bg:#a3aed2 fg:#090c0c";
      os.disabled = false;

      package.symbol = " ";
      python.symbol = " ";
      rlang.symbol = "ﳒ ";
      ruby.symbol = " ";
      
      rust.symbol = " ";
      rust.style = "bg:#212736";
      rust.format = "[[ $symbol ($version) ](fg:#769ff0 bg:#212736)]($style)";
      
      scala.symbol = " ";
      spack.symbol = "🅢 ";
      
      directory.style = "fg:#e3e5e5 bg:#769ff0";
      directory.format = "[ $path ]($style)";
      directory.truncation_length = 3;
      directory.truncation_symbol = "…/";
      
      directory.substitutions.Documents = "󰈙 ";
      directory.substitutions.Downloads = " ";
      directory.substitutions.Music = " ";
      directory.substitutions.Pictures = " ";

      php.symbol = "";
      php.style = "bg:#212736";
      php.format = "[[ $symbol ($version) ](fg:#769ff0 bg:#212736)]($style)";

      time.disabled = false;
      time.time_format = "%R"; # Hour:Minute Format
      time.style = "bg:#1d2230";
      time.format = "[[  $time ](fg:#a0a9cb bg:#1d2230)]($style)";

      format = "[░▒▓](#a3aed2)[ ](bg:#a3aed2)$os[ ](bg:#a3aed2)[](bg:#769ff0 fg:#a3aed2)$directory[](fg:#769ff0 bg:#394260)$git_branch$git_status[](fg:#394260 bg:#212736)$nodejs$rust$golang$php[](fg:#212736 bg:#1d2230)$time[ ](fg:#1d2230)$character";
    };
  };
}
