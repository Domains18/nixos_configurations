# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, modulesPath, ... }:

{
  imports =
    [ (modulesPath + "/installer/scan/not-detected.nix")
    ];

  boot.initrd.availableKernelModules = [ "nvme" "xhci_pci" "ahci" "usbhid" "sd_mod" ];
  boot.initrd.kernelModules = [ "dm-snapshot" ];
  boot.kernelModules = [ "kvm-amd" ];
  boot.extraModulePackages = [ ];

  fileSystems."/" =
    { device = "/dev/disk/by-uuid/3085b41d-513d-4ce9-b772-2dcea985f376";
      fsType = "ext4";
    };

  fileSystems."/boot" =
    { device = "/dev/disk/by-uuid/1D53-E6DA";
      fsType = "vfat";
    };
fileSystems."/home" = {
	device = "/dev/disk/by-uuid/129cd488-5ae5-464c-a2d0-9f599bd42f44";
	fsType = "ext4";
  };

fileSystems."/media/images" = {
    device = "10.0.0.200:/volume2/Images";
    fsType = "nfs";
    options = [ "x-systemd.automount" "noauto" "x-systemd.after=network-online.target" "x-systemd.mount-timeout=90" ];
  };
fileSystems."/media/mainpool" = {
    device = "10.0.0.200:/volume2/MainPool";
    fsType = "nfs";
    options = [ "x-systemd.automount" "noauto" "x-systemd.after=network-online.target" "x-systemd.mount-timeout=90" ];
  };
fileSystems."/media/drive" = {
    device = "10.0.0.200:/volume2/homes/Kemboi/Drive";
    fsType = "nfs";
    options = [ "x-systemd.automount" "noauto" "x-systemd.after=network-online.target" "x-systemd.mount-timeout=90" ];
  };
fileSystems."/media/fcp" = {
    device = "10.0.0.200:/volume2/FCP";
    fsType = "nfs";
    options = [ "x-systemd.automount" "noauto" "x-systemd.after=network-online.target" "x-systemd.mount-timeout=90" ];
  };


  swapDevices = [ ];

  # Enables DHCP on each ethernet and wireless interface. In case of scripted networking
  # (the default) this is the recommended approach. When using systemd-networkd it's
  # still possible to use this option, but it's recommended to use it in conjunction
  # with explicit per-interface declarations with `networking.interfaces.<interface>.useDHCP`.
  networking.useDHCP = lib.mkDefault true;
  # networking.interfaces.enp5s0.useDHCP = lib.mkDefault true;
  # networking.interfaces.enp7s0.useDHCP = lib.mkDefault true;

  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
  hardware.cpu.amd.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
}