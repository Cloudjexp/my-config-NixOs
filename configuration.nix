# Edit this configuration file to define what should be installed on
# your system. Help is available in the configuration.nix(5) man page, on
# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "nixos"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.
  networking.extraHosts = ''
    192.168.1.15 homepage.home
    '';
  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "America/Managua";

  # Select internationalisation properties.
  i18n.defaultLocale = "es_MX.UTF-8";

  # Enable the GNOME Desktop Environment.
  services.displayManager.gdm.enable = true;
  services.desktopManager.gnome.enable = true;

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Enable sound with pipewire.
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    #jack.enable = true;

    # Use the WirePlumber session manager
    #wireplumber.enable = true;
  };

  # Enable touchpad support (enabled default in most desktopManager).
  # services.libinput.enable = true;
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users."lesther" = {
    isNormalUser = true;
    description = "Lesther";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.zsh;
    packages = with pkgs; [
    #  thunderbird
       fastfetch
	eza
	bat
	zoxide
	librewolf
	brave
	btop
	kitty
    ];
  };

  # Install firefox.
  programs.firefox.enable = true;
  
  # Mis Programas
  # starship
programs.starship = {
  enable = true;
  settings = builtins.fromTOML(builtins.readFile ./starship.toml);
};

    # Segmentos entre co
  # ZSH
programs.zsh = {
  enable = true;

  enableCompletion = true;
  autosuggestions.enable = true;
  syntaxHighlighting.enable = true;

    interactiveShellInit = ''
    eval "$(starship init zsh)"
    eval "$(zoxide init zsh)"
    fastfetch
  '';


  shellAliases = {
    ls = "eza --icons";
    ll = "eza -la --icons";
    lt = "eza -la --icons --sort=modified";
    tree = "eza --tree --icons";
    off = "shutdown now";
    cat = "bat";
    cls = "clear";

    ".." = "cd ..";
    "..." = "cd ../..";

    rebuild = "sudo nixos-rebuild switch";
    update = "sudo nix-channel --update && sudo nixos-rebuild switch";
  };

  histSize = 10000;
  histFile = "$HOME/.zsh_history";

  setOptions = [
    "HIST_IGNORE_DUPS"
    "HIST_IGNORE_ALL_DUPS"
    "HIST_FIND_NO_DUPS"
    "SHARE_HISTORY"
    "APPEND_HISTORY"
  ];
};
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile.
  # You can use https://search.nixos.org/ to find more packages (and options).
   environment.systemPackages = with pkgs; [
     vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
     gnome-tweaks
     gnome-extension-manager
     colloid-icon-theme
     bibata-cursors
     papirus-icon-theme
     alacritty
     git
     python3
     nerd-fonts.jetbrains-mono
     starship
     neovim
     gh
     rustc
     cargo
     kora-icon-theme
     candy-icons
     vscodium
     obsidian
     lazygit
 

    # LSP
     lua-language-server
     basedpyright
     rust-analyzer
     jdt-language-server
     typescript-language-server
     nil

     gcc
     tree-sitter

     # formateadores
     black
     rustfmt
     prettier
     stylua
     nixfmt
     google-java-format
];


     # Limpiar generaciones antiguas automaticas
      nix.gc = {
	automatic = true;
	dates = "weekly";
	options = "--delete-older-than 14d";
      };

     # Maximo de generaciones en el menu de arranque
       boot.loader.systemd-boot.configurationLimit = 5;
  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };
  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # Copy the NixOS configuration file and link it from the resulting system
  # (/run/current-system/configuration.nix). This is useful in case you
  # accidentally delete configuration.nix.
  # system.copySystemConfiguration = true;

  # This option defines the first version of NixOS you have installed on this particular machine,
  # and is used to maintain compatibility with application data (e.g. databases) created on older NixOS versions.
  #
  # Most users should NEVER change this value after the initial install, for any reason,
  # even if you've upgraded your system to a new NixOS release.
  #
  # This value does NOT affect the Nixpkgs version your packages and OS are pulled from,
  # so changing it will NOT upgrade your system - see https://nixos.org/manual/nixos/stable/#sec-upgrading for how
  # to actually do that.
  #
  # This value being lower than the current NixOS release does NOT mean your system is
  # out of date, out of support, or vulnerable.
  #
  # Do NOT change this value unless you have manually inspected all the changes it would make to your configuration,
  # and migrated your data accordingly.
  #
  # For more information, see `man configuration.nix` or https://nixos.org/manual/nixos/stable/options#opt-system.stateVersion .
  system.stateVersion = "26.05"; # Did you read the comment?

}
