{ pkgs, ... }:

{
  services = {
    xserver = {
      enable = true;
      desktopManager.mate.enable = true;
      displayManager.lightdm.enable = true;
    };
  };

  systemd.user.services.mate-dconf = {
    enable = true;
    description = "Apply MATE dconf settings at login";
    after = [ "graphical.target" ];
    wantedBy = [ "default.target" ];
    path = [ pkgs.dconf ];
    script = ''
      dconf write /org/mate/terminal/profiles/default/use-theme-colors false

      dconf write /org/mate/terminal/profiles/default/background-color "'#000000000000'"
      dconf write /org/mate/terminal/profiles/default/foreground-color "'#FFFFFFFFFFFF'"

      dconf write /org/mate/terminal/profiles/default/scrollbar-position "'hidden'"

      dconf write /org/mate/marco/general/theme "'BlueMenta'"

      dconf write /org/mate/desktop/interface/gtk-theme "'BlueMenta'"
      dconf write /org/mate/desktop/interface/icon-theme "'mate'"
      dconf write /org/mate/desktop/peripherals/mouse/cursor-theme "'mate-black'"

      dconf write /org/mate/desktop/background/color-shading-type "'solid'"
      dconf write /org/mate/desktop/background/picture-options "'wallpaper'"
      dconf write /org/mate/desktop/background/primary-color "'rgb(88,145,188)'"
      dconf write /org/mate/desktop/background/secondary-color "'rgb(60,143,37)'"

      dconf write /org/mate/panel/toplevels/bottom/y 1055

      dconf write /org/mate/caja/window-state/start-with-toolbar false
      dconf write /org/mate/caja/window-state/start-with-status-bar false
      dconf write /org/mate/caja/window-state/sidebar-width 174
    '';
    serviceConfig.Type = "oneshot";
  };
}
