{ pkgs, ... }:
{
  i18n.inputMethod = {
    enabled = "fcitx5";
    fcitx5.addons = with pkgs; [
        fcitx5-mozc
        fcitx5-gtk
        libsForQt5.fcitx5-configtool
        libsForQt5.fcitx5-qt
        catppuccin-fcitx5
    ];
  };

  fonts = {

    packages = with pkgs; [
      noto-fonts-cjk-serif
      noto-fonts-cjk-sans
      noto-fonts-emoji
      "${pkgs.fetchzip {
        url　=　"https://github.com/yuru7/HackGen/releases/download/v2.9.0/HackGen_NF_v2.9.0.zip";
        hash = "sha256-Lh4WQJjeP4JuR8jSXpRNSrjRsNPmNXSx5AItNYMJL2A=";
      }}"
    ];

    fontDir.enable = true;
    enableGhostscriptFonts = true;
    fontconfig = {
      defaultFonts = {
        serif = ["Noto Serif CJK JP" "Noto Color Emoji"];
        sansSerif = ["Noto Sans CJK JP" "Noto Color Emoji"];
        monospace = ["HackGen NF"];
        emoji = ["Noto Color Emoji"];
      };
    };

  };
}
