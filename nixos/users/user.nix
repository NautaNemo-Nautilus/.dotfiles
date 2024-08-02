{...}: {
   users.users.user = {
     isNormalUser = true;
     description = "user";
     extraGroups = [ "networkmanager" "wheel"];
     shell = pkgs.zsh;
     packages = with pkgs; [];
   };
}
