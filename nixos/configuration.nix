{ config, pkgs, ... }: {
  imports = [
    # Include the results of the hardware scan.
    ./hardware-configuration.nix
  ];

  # boot.loader.grub.device = "/dev/sdb";   # (for BIOS systems only)
  boot.loader.systemd-boot.enable = true; # (for UEFI systems only)

  # Note: setting fileSystems is generally not
  # necessary, since nixos-generate-config figures them out
  # automatically in hardware-configuration.nix.
  # fileSystems."/".device = "/dev/disk/by-label/nixos";
  
  # GUI- XFCE
  services.xserver = {
    enable = true;
    desktopManager = {
      default = "xfce";
      xterm.enable = false;
      xfce.enable = true;
    };
  };

  
  # VIDEO DRIVERS
  # services.xserver.videoDrivers = [ "ati_unfree" ];
  # services.xserver.videoDrivers = [ "nvidia" ];
  
  # TOUCHPAD
  # services.xserver.libinput.enable = true;
  
  # SOFT
  environment.systemPackages =
  [ pkgs.thunderbird
    pkgs.firefox
	
  ];
  
  # NET WIFI SSH UPDATES
  # networking.networkmanager.enable = true;
  networking.wireless.enable = true;
  
  services.sshd.enable = true;
  system.autoUpgrade.enable = true;
  
}