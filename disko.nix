{
  disko.devices = {
    nodev."/" = {
      fsType = "tmpfs";
      mountOptions = [
        "defaults"
        "size=2G"
        "mode=755"
      ];
    };

    disk.main = {
      device = "/dev/nvme0n1";
      type = "disk";

      content = {
        type = "gpt";
        partitions = {
          ESP = {
            type = "EF00";
            size = "1G";
            priority = 1;
            content = {
              type = "filesystem";
              format = "vfat";
              mountpoint = "/boot";
            };
          };
          root = {
            size = "100%";
            content = {
              type = "btrfs";
              extraArgs = ["-f"];

              subvolumes = {
                "/persist" = {
                  mountOptions = ["compress=zstd" "noatime"];
                  mountpoint = "/persist";
                };

                "/nix" = {
                  mountOptions = ["compress=zstd" "noatime"];
                  mountpoint = "/nix";
                };
              };
            };
          };
        };
      };
    };
  };
}