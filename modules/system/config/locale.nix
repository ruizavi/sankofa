{lib, ...}: {
  time = {
    timeZone = lib.mkDefault "America/Monterrey";
    hardwareClockInLocalTime = lib.mkDefault true;
  };
}
