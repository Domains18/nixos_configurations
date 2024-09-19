{pkgs ...}: let 
    username = "kemboi";
    in {
        imports = [,.common];
        fonts.fontsconfig.enable = true;

        xdgg = {
            enable = true;
            userDirs = {
                enable = true;
                createDirectories = true;
            };
        };


        home
    }