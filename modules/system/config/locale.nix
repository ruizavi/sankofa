{lib, ...}: {
  time = {
    timeZone = lib.mkDefault "America/New_Yor";
    hardwareClockInLocalTime = lib.mkDefault false;
  };
}
