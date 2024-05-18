{
  programs.wlogout = {
    enable = true;
    layout = [
      {
        "label" = "shutdown";
        "action" = "systemctl poweroff";
        "text" = "Shutdown";
        "keybind" = "s";
      }
      {
        "label" = "reboot";
        "action" = "systemctl reboot";
        "text" = "Reboot";
        "keybind" = "r";
      }
      {
        "label" = "logout";
        "action" = "loginctl kill-session $XDG_SESSION_ID";
        "text" = "Logout";
        "keybind" = "e";
      }
      {
        "label" = "hibernate";
        "action" = "swaylock -f && systemctl hibernate";
        "text" = "Hibernate";
        "keybind" = "h";
      }
      {
        "label" = "lock";
        "action" = "hyprlock";
        "text" = "Lock";
        "keybind" = "l";
      }
    ];
    style = ''
      /* ----------- 💫 https://github.com/JaKooLit 💫 -------- */
      /* pywal-wlogout */

      /* Importing pywal colors */

      window {
          font-family: Fira Code Medium;
          font-size: 16pt;
          color:  #cdd6f4; /* text */
          background-color: rgba(24, 27, 32, 0.2);

      }

      button {
          background-repeat: no-repeat;
          background-position: center;
          background-size: 20%;
          background-color: transparent;
          animation: gradient_f 20s ease-in infinite;
          transition: all 0.3s ease-in;
          box-shadow: 0 0 10px 2px transparent;
          border-radius: 36px;
          margin: 10px;
      }

      button:focus {
          box-shadow: none;
          background-size : 20%;
      }

      button:hover {
          background-size: 50%;
          box-shadow: 0 0 10px 3px rgba(0,0,0,.4);
          background-color: #a6e3a1;
          color: transparent;
          transition: all 0.3s cubic-bezier(.55, 0.0, .28, 1.682), box-shadow 0.5s ease-in;
      }

      #shutdown {
          background-image: image(url("${./icons/power.png}"));
      }
      #shutdown:hover {
        background-image: image(url("${./icons/power-hover.png}"));
      }

      #logout {
          background-image: image(url("${./icons/logout.png}"));

      }
      #logout:hover {
        background-image: image(url("${./icons/logout-hover.png}"));
      }

      #reboot {
          background-image: image(url("${./icons/restart.png}"));
      }
      #reboot:hover {
        background-image: image(url("${./icons/restart-hover.png}"));
      }

      #lock {
          background-image: image(url("${./icons/lock.png}"));
      }
      #lock:hover {
        background-image: image(url("${./icons/lock-hover.png}"));
      }

      #hibernate {
          background-image: image(url("${./icons/hibernate.png}"));
      }
      #hibernate:hover {
        background-image: image(url("${./icons/hibernate-hover.png}"));
      }
    '';
  };
}