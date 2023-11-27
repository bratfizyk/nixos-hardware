{ lib, config, ... }:

{
  imports = [
    ../../../../common/cpu/amd
    ../../../../common/cpu/amd/pstate.nix
    ../../../../common/gpu/amd
    ../../../../common/gpu/nvidia/prime.nix
    ../../../../common/pc/laptop
    ../../../../common/pc/laptop/ssd
  ];

  hardware = {
    nvidia = {
      modesetting.enable = lib.mkDefault true;
      powerManagement.enable = lib.mkDefault true;

      prime = {
        amdgpuBusId = "PCI:5:0:0";
        nvidiaBusId = "PCI:1:0:0";
      };
    };
  };
}