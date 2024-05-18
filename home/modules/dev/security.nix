{pkgs, ...}: {
  home = {
    packages = with pkgs; [
      aircrack-ng
      rustscan
      whatweb
      chisel
      socat
      burpsuite
      hashcat
      hashcat-utils
      john
      gobuster
      wfuzz
    ];
  };
}
