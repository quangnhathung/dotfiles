# Dotfiles Arch Linux - Quang Nhật Hưng

> Personal Arch Linux dotfiles được xây dựng trên **bspwm**, **Polybar**, **Catppuccin Mocha** -- tinh gọn, hiện đại, điều khiển hoàn toàn bằng bàn phím.

<p align="center">
  <img src="https://img.shields.io/badge/OS-Arch_Linux-1793D1?style=flat-square&logo=arch-linux&logoColor=white" alt="Arch Linux"/>
  <img src="https://img.shields.io/badge/WM-bspwm-89B4FA?style=flat-square" alt="bspwm"/>
  <img src="https://img.shields.io/badge/Bar-Polybar-F38BA8?style=flat-square" alt="Polybar"/>
  <img src="https://img.shields.io/badge/Launcher-Rofi-A6E3A1?style=flat-square" alt="Rofi"/>
  <img src="https://img.shields.io/badge/Terminal-Alacritty-F9E2AF?style=flat-square" alt="Alacritty"/>
  <img src="https://img.shields.io/badge/Theme-Catppuccin_Mocha-89B4FA?style=flat-square" alt="Catppuccin Mocha"/>
  <img src="https://img.shields.io/github/license/quangnhathung/dotfiles?style=flat-square" alt="License"/>
</p>

---

## Tổng Quan

Đây là bộ cấu hình cá nhân của tôi trên **Arch Linux**, được xây dựng xoay quanh trình quản lý cửa sổ **bspwm** với phong cách **Catppuccin Mocha** nhất quán. Toàn bộ hệ thống được tối ưu để vận hành nhanh, nhẹ, và điều khiển hoàn toàn bằng bàn phím.

Các thành phần chính:

| Thành phần | Mô tả |
|-----------|-------|
| **bspwm** | Window manager dạng tát định, nhẹ, nhanh |
| **sxhkd** | Trình lắng nghe phím tắt, huy động lệnh |
| **Polybar** | Thanh trạng thái dạng "Dynamic Island" |
| **Rofi** | Trình khởi động ứng dụng, chuyển đổi cửa sổ, và menu nguồn |
| **Alacritty** | Trình giả lập terminal (GPU-accelerated) |
| **Picom** | Trình Composite (hỗ trợ animation) |
| **Dunst** | Hệ thống thông báo |
| **Fastfetch** | Công cụ hiển thị thông tin hệ thống |
| **btop** | Trình giám sát tài nguyên |
| **mpv** | Trình phát đa phương tiện |
| **tmux** | Terminal multiplexer |

---

## Ảnh Chụp

> TODO: Thêm ảnh chụp desktop, rofi, polybar, terminal.

```
[Desktop]   -> images/desktop.png
[Rofi]      -> images/rofi.png
[Polybar]   -> images/polybar.png
[Terminal]  -> images/terminal.png
[Powermenu] -> images/powermenu.png
```

---

## Tính Năng Nổi Bật

- **Polybar "Dynamic Island"** -- Thanh trạng thái nổi dạng floating, ẩn mặc định, chỉ hiển thị trong 8 giây khi được gọi (Super + Shift + b)
- **Catppuccin Mocha xuyên suốt** -- Màu sắc đồng bộ từ terminal, window manager đến tmux, rofi, polybar
- **Keyboard-driven** -- Toàn bộ thao tác cửa sổ, di chuyển, khởi động ứng dụng đều bằng phím tắt
- **GPU monitoring cả Intel lẫn NVIDIA** -- Hiển thị tần số iGPU và mức sử dụng NVIDIA trên Polybar
- **Bộ điều khiển âm lượng và độ sáng bằng bàn phím** -- Tích hợp thông báo Dunst
- **Trình chọn Chrome profile** -- Mở nhanh Main, Work, Sub, hoặc Incognito qua Rofi
- **Power menu dạng grid** -- 5 tùy chọn: tắt máy, khởi động lại, khóa, ngủ, đăng xuất
- **Zoom animation** -- Cửa sổ phóng to/thu nhỏ với hiệu ứng animation (picom-ftlabs-git)
- **Nerd Fonts icons** -- Toàn bộ icon trên thanh trạng thái, rofi, dunst đều từ Nerd Fonts
- **Music player tích hợp** -- Kew hiển thị bài hát đang phát ngay trên Polybar
- **Tmux session persistence** -- Tự động lưu và phục hồi session (tmux-resurrect + continuum)
- **Vietnamese input method** -- Fcitx5 + Unikey, chuyển đổi bằng Shift

---

## Cấu Trúc Thư Mục

```
.
+-- alacritty/          # Terminal emulator (GPU-accelerated)
+-- bash/               # Bash shell cấu hình (.bashrc)
+-- bspwm/              # Window manager (tát định, nhẹ, nhanh)
+-- btop/               # System monitor
+-- dunst/              # Notification daemon
+-- fastfetch/          # System info tool
+-- fcitx5/             # Vietnamese input method
+-- gthumb/             # Image viewer configuration
+-- kew/                # Terminal music player
+-- local/              # Custom scripts (~/.local/bin)
+-- mpv/                # Media player (video/audio)
+-- picom/              # Composite manager (animation, shadow, blur)
+-- polybar/            # Status bar ("Dynamic Island" style)
+-- rofi/               # App launcher / window switcher / powermenu
+-- sxhkd/              # Hotkey daemon (phím tắt)
+-- thunar/             # File manager (Xfce4)
+-- tmux/               # Terminal multiplexer
+-- xfce4/              # Xfce4 settings (Thunar)
+-- README.md
```

### Giải Thích Chi Tiết

| Thư mục | Nội dung |
|---------|----------|
| `alacritty/` | Cấu hình terminal: opacity 0.85, padding, bảng màu Catppuccin Mocha |
| `bash/` | `.bashrc` có alias, NVM, màu PS1 |
| `bspwm/` | `bspwmrc`: 9 workspace, gaps 3px, border 1px, autostart sxhkd/picom/polybar/dunst/feh |
| `btop/` | Cấu hình btop: màu truecolor, hiển thị CPU/Mem/Net/Proc |
| `dunst/` | Dunst: vị trí top-right, radius 12px, font JetBrainsMono Nerd Font 10 |
| `fastfetch/` | Hiển thị thông tin hệ thống với separator `>\` |
| `fcitx5/` | Bộ gõ tiếng Việt Unikey, trigger Shift/Ctrl+Shift |
| `kew/` | Music player: đường dẫn ~/Musics, visualizer, notifications |
| `local/` | 5 script: wallpaper.sh, chrome-picker.sh, volume.sh, brightness.sh, powermenu.sh |
| `mpv/` | mpv: HW decode vaapi, profile gpu-hq, OSD Catppuccin |
| `picom/` | Picom: backend glx, shadow, animation zoom, corner radius 13px |
| `polybar/` | Polybar: floating island, 78% width, rounded 20px, IPC enabled, 9 module files |
| `rofi/` | 3 cấu hình: app launcher (drun), powermenu (grid), chrome-menu |
| `sxhkd/` | Tất cả phím tắt: di chuyển cửa sổ, media keys, workspace |
| `thunar/` | Thunar: hiện hidden files, Icon View, custom action "Open Terminal Here" |
| `tmux/` | Tmux: prefix Ctrl+a, Catppuccin mocha theme, resurrect, continuum |

---

## Hướng Dẫn Cài Đặt

### Yêu Cầu

- Arch Linux (hoặc distro đã cài đặt những gói cần thiết)
- X11 (hiện chưa hỗ trợ Wayland)
- `stow` (hoặc tự động liên kết thủ công)

### Bước 1: Clone Repository

```bash
git clone https://github.com/quangnhathung/dotfiles.git ~/dotfiles
cd ~/dotfiles
```

### Bước 2: Cài Đặt Gói Cần Thiết

Xem danh sách gói ở phần dưới. Cài bằng pacman và yay/AUR:

```bash
# Core
sudo pacman -S bspwm sxhkd polybar rofi alacritty picom dunst feh flameshot

# Audio & Media
sudo pacman -S pipewire wireplumber pavucontrol playerctl mpv

# System
sudo pacman -S brightnessctl btop fastfetch tmux thunar gthumb xdotool

# AUR (cần yay hoặc paru)
yay -S picom-ftlabs-git kew betterlockscreen

# Fonts
yay -S nerd-fonts-jetbrains-mono

# Input method
sudo pacman -S fcitx5 fcitx5-unikey
```

### Bước 3: Liên Kết Cấu Hình

Sử dụng GNU Stow để tạo symlink:

```bash
stow -t ~ alacritty
stow -t ~ bash
stow -t ~ bspwm
stow -t ~ dunst
stow -t ~ fastfetch
stow -t ~ local
stow -t ~ picom
stow -t ~ polybar
stow -t ~ rofi
stow -t ~ sxhkd
stow -t ~ tmux
stow -t ~ fcitx5
stow -t ~ mpv
```

Hoặc liên kết thủ công:

```bash
# VD: Polybar
ln -sf ~/dotfiles/polybar/.config/polybar ~/.config/polybar

# VD: Bspwm
ln -sf ~/dotfiles/bspwm/.config/bspwm ~/.config/bspwm
```

### Bước 4: Khởi Động Lại

```bash
# Reload bspwm
bspc wm -r
# hoặc
pkill -x bspwm

# Reload sxhkd
pkill -USR1 -x sxhkd

# Khởi động lại Polybar
~/.config/polybar/launch.sh

# Reload tmux
tmux source-file ~/.tmux.conf
```

### Bước 5: Cài Đặt Tmux Plugin

Mở tmux và nhấn `Prefix + I` (Ctrl+a, sau đó Shift+i) để cài đặt plugins.

---

## Danh Sách Gói Cần Thiết

### Core

| Gói | Mục đích |
|-----|----------|
| `bspwm` | Window manager |
| `sxhkd` | Hotkey daemon |
| `polybar` | Status bar |
| `rofi` | App launcher / menu |
| `alacritty` | Terminal emulator |
| `picom` (picom-ftlabs-git) | Composite manager (animation) |
| `dunst` | Notification daemon |
| `feh` | Wallpaper setter |
| `flameshot` | Screenshot tool |

### Audio & Media

| Gói | Mục đích |
|-----|----------|
| `pipewire`, `wireplumber` | Audio system (wpctl) |
| `pavucontrol` | Audio settings GUI |
| `playerctl` | MPRIS media player control |
| `mpv` | Media player |
| `kew` | Terminal music player |

### System & Utilities

| Gói | Mục đích |
|-----|----------|
| `brightnessctl` | Backlight control |
| `nvidia-smi` | NVIDIA GPU monitoring |
| `btop` | System monitor |
| `fastfetch` | System info |
| `tmux` | Terminal multiplexer |
| `thunar` | File manager |
| `gthumb` | Image viewer |
| `xdotool` | X11 automation |
| `polkit-gnome` | Authentication agent |
| `betterlockscreen` / `slock` | Screen locker |
| `google-chrome-stable` | Web browser |
| `fcitx5`, `fcitx5-unikey` | Vietnamese input method |

### Fonts

| Font | Sử dụng |
|------|---------|
| `nerd-fonts-jetbrains-mono` | Polybar, Rofi, Dunst, mpv OSD, Tmux |

---

## Font Chữ

Font chữ chính được sử dụng xuyên suốt hệ thống:

- **JetBrainsMono Nerd Font** -- Font chính cho terminal, polybar, rofi, dunst, tmux, mpv OSD
  - Polybar: size 11 (text), 13 (icons)
  - Rofi: size 12
  - Dunst: size 10
  - mpv OSD: size 30

Nerd Fonts mở rộng các font chuẩn với icon glyphs (Material Design, FontAwesome, Devicons, Powerline...), đảm bảo hiển thị tốt các icon trên Polybar, Rofi, dunst.

> **Lưu ý:** Thiếu font sẽ gây ra lỗi icon dạng ô vuông / missing char. Cài `nerd-fonts-jetbrains-mono` từ AUR.

---

## Bảng Màu

Hệ thống sử dụng bảng màu **Catppuccin Mocha** chính, phối một phần **Nord** cho Dunst.

### Catppuccin Mocha (Alacritty, Tmux, Rofi, Polybar, mpv)

| Màu | Hex | Mô tả |
|-----|-----|-------|
| `#1e1e2e` | ![#1e1e2e](https://via.placeholder.com/15/1e1e2e/000000?text=+) | Nền (base) |
| `#cdd6f4` | ![#cdd6f4](https://via.placeholder.com/15/cdd6f4/000000?text=+) | Chữ (text) |
| `#89b4fa` | ![#89b4fa](https://via.placeholder.com/15/89b4fa/000000?text=+) | Xanh lam chính (accent) |
| `#f38ba8` | ![#f38ba8](https://via.placeholder.com/15/f38ba8/000000?text=+) | Hồng đỏ (urgent, power, error) |
| `#a6e3a1` | ![#a6e3a1](https://via.placeholder.com/15/a6e3a1/000000?text=+) | Xanh lá (tmux active, success) |
| `#f9e2af` | ![#f9e2af](https://via.placeholder.com/15/f9e2af/000000?text=+) | Vàng (tmux time) |
| `#f5c2e7` | ![#f5c2e7](https://via.placeholder.com/15/f5c2e7/000000?text=+) | Hồng (magenta) |
| `#94e2d5` | ![#94e2d5](https://via.placeholder.com/15/94e2d5/000000?text=+) | Xanh dương (cyan) |
| `#bac2de` | ![#bac2de](https://via.placeholder.com/15/bac2de/000000?text=+) | Trắng nhạt |
| `#45475a` | ![#45475a](https://via.placeholder.com/15/45475a/000000?text=+) | Xám (black normal, border inactive) |
| `#585b70` | ![#585b70](https://via.placeholder.com/15/585b70/000000?text=+) | Xám nhạt (bright black) |
| `#6c7086` | ![#6c7086](https://via.placeholder.com/15/6c7086/000000?text=+) | Xám nhạt (overlay, muted) |
| `#11111b` | ![#11111b](https://via.placeholder.com/15/11111b/000000?text=+) | Nền đậm nhất (crust) |
| `#121212` | ![#121212](https://via.placeholder.com/15/121212/000000?text=+) | Nền Alacritty |

### Bspwm Borders

| Trạng thái | Hex | Mô tả |
|-----------|-----|-------|
| Focused | `#89B4FA` | Cửa sổ đang được chọn |
| Normal | `#45475A` | Cửa sổ không được chọn |
| Urgent | `#F38BA8` | Cửa sổ cần chú ý |

### Dunst (Nord)

| Mức độ | Nền | Chữ | Khung |
|--------|-----|-----|-------|
| Low | `#2E3440` | `#ECEFF4` | `#81A1C1` |
| Normal | `#2E3440` | `#D8DEE9` | `#5E81AC` |
| Critical | `#2E3440` | `#BF616A` | `#BF616A` |

### Picom

- Shadow opacity: 0.18
- Active window opacity: 1.0
- Inactive window opacity: 0.9
- Corner radius: 13px

---

## Phím Tắt

### Di chuyển cửa sổ (bspwm)

| Phím | Chức năng |
|------|-----------|
| `Super + Enter` | Mở terminal (Alacritty) |
| `Super + Space` | Rofi app launcher |
| `Alt + Tab` | Chuyển đổi cửa sổ (Rofi) |
| `Super + q` | Đóng cửa sổ |
| `Super + Shift + q` | Kill cửa sổ |
| `Super + f` | Fullscreen |
| `Super + t` | Tile |
| `Super + s` | Float |
| `Super + Left/Down/Up/Right` | Focus hướng |
| `Super + Shift + Left/Down/Up/Right` | Di chuyển cửa sổ theo hướng |
| `Super + Ctrl + l` | Lock node |
| `Super + Ctrl + x` | Sticky node |
| `Super + Ctrl + p` | Private node |
| `Super + Grave` | Focus cửa sổ trước đó |

### Workspace

| Phím | Chức năng |
|------|-----------|
| `Super + 1-9` | Chuyển đến workspace 1-9 |
| `Super + 0` | Chuyển đến workspace 10 |
| `Super + Shift + 1-9` | Gửi cửa sổ đến workspace 1-9 |
| `Super + Shift + 0` | Gửi cửa sổ đến workspace 10 |
| `Super + [/]` | Workspace trước/sau |
| `Super + Tab` | Workspace gần nhất |

### Resize & Preselect

| Phím | Chức năng |
|------|-----------|
| `Super + Alt + Left/Down/Up/Right` | Mở rộng khung cửa sổ |
| `Super + Ctrl + Left/Down/Up/Right` | Thu hẹp khung cửa sổ |
| `Super + Shift + Left/Down/Up/Right` | Preselect hướng chia |
| `Super + Ctrl + 1-9` | Preselect tỉ lệ 0.1-0.9 |
| `Super + Ctrl + Space` | Hủy preselect (cửa sổ hiện tại) |
| `Super + Ctrl + Shift + Space` | Hủy tất cả preselect |

### Media & Hardware

| Phím | Chức năng |
|------|-----------|
| `Super + Prior` | Wallpaper trước |
| `Super + Next` | Wallpaper sau |
| `Super + Shift + Next` | Wallpaper random |
| `XF86MonBrightnessUp` | Tăng độ sáng |
| `XF86MonBrightnessDown` | Giảm độ sáng |
| `XF86AudioRaiseVolume` | Tăng âm lượng |
| `XF86AudioLowerVolume` | Giảm âm lượng |
| `XF86AudioMute` | Tắt âm |
| `XF86AudioMicMute` | Tắt mic |
| `Super + Print` | Flameshot GUI |
| `Print` | Chụp màn hình (auto-save) |

### Bspwm & Sxhkd

| Phím | Chức năng |
|------|-----------|
| `Super + Alt + q` | Thoát bspwm |
| `Super + Alt + r` | Restart bspwm |
| `Super + Escape` | Reload sxhkd config |
| `Super + Shift + b` | Hiển thị Polybar (8s) |

### Tmux

| Phím | Chức năng |
|------|-----------|
| `Ctrl + a` (Prefix) | Mặc định Prefix (thay vì Ctrl+b) |
| `Prefix + r` | Reload tmux config |

### mpv

| Phím | Chức năng |
|------|-----------|
| `WHEEL_UP` | Volume +2 |
| `WHEEL_DOWN` | Volume -2 |
| `f` | Fullscreen |
| `q` | Thoát |
| `Left/Right` | Rewind/Forward 5s |

### Khôi phục Mặc Định

Một số gợi ý nếu cần set lại toàn bộ:

```bash
rm -rf ~/.config/bspwm ~/.config/sxhkd ~/.config/polybar ~/.config/rofi ~/.config/picom ~/.config/dunst ~/.config/alacritty ~/.config/fastfetch
```

Sau đó chạy lại stow.

---

## Scripts Tự Động

### `~/.local/bin/wallpaper.sh`

Chức năng: Chuyển wallpaper theo thứ tự (next/prev/random) dùng `feh`.

- Thư mục ảnh: `~/images/Wallpapers/`
- Trạng thái: `~/.cache/wallpaper_index`

### `~/.local/bin/chrome-picker.sh`

Chức năng: Menu Rofi để mở Chrome với 4 profile:

| Lựa chọn | Profile |
|----------|---------|
| Main Account | Default |
| Work Account | Profile 1 |
| Sub Account | Profile 2 |
| Anonymous Account | --incognito |

### `~/.local/bin/volume.sh`

Chức năng: Điều khiển âm lượng qua `wpctl` (WirePlumber).

- `volume.sh up` -- Tăng 5%
- `volume.sh down` -- Giảm 5%
- `volume.sh mute` -- Tắt mở âm
- Hiển thị thông báo Dunst với icon tương ứng

### `~/.local/bin/brightness.sh`

Chức năng: Điều khiển độ sáng qua `brightnessctl`.

- `brightness.sh up` -- Tăng 5%
- `brightness.sh down` -- Giảm 5%
- Hiển thị thông báo Dunst

### `~/.local/bin/powermenu.sh`

Chức năng: Menu nguồn Rofi (grid layout, 5 tùy chọn).

| Tùy chọn | Hành động |
|----------|-----------|
| Tắt máy | `systemctl poweroff` |
| Khởi động lại | `systemctl reboot` |
| Khóa màn hình | `betterlockscreen -l dim \|\| slock` |
| Ngủ | `systemctl suspend` |
| Đăng xuất | `bspc quit` |

### `~/.config/polybar/launch.sh`

Chức năng: Khởi động Polybar island, ẩn mặc định, cho phép `peek.sh` show tạm thời.

### `~/.config/polybar/peek.sh`

Chức năng: Hiện Polybar trong 8 giây (Dynamic Island peek). Gọi bằng `Super + Shift + b`.

### `~/.config/polybar/scripts/gpu.sh`

Chức năng: Hiển thị tần số Intel iGPU và mức sử dụng NVIDIA GPU.

### `~/.config/polybar/scripts/mic.sh`

Chức năng: Hiển thị trạng thái thu âm (microphone) trên Polybar.

---

## Tùy Chỉnh

### Đổi Bảng Màu

Sửa trực tiếp trong từng file cấu hình:

- **Alacritty:** `alacritty/.config/alacritty/alacritty.toml` -- palette colors
- **Polybar:** `polybar/.config/polybar/config.ini` -- màu foreground/background/primary
- **Rofi:** `rofi/.config/rofi/config.rasi` -- màu chữ/nền/viền
- **Dunst:** `dunst/.config/dunst/dunstrc` -- urgency colors
- **Tmux:** `tmux/.tmux.conf` -- status bar colors

### Đổi Font

- **Alacritty:** Thêm dòng `font:` trong `alacritty.toml`
- **Polybar:** Đổi `font-N` trong `config.ini`
- **Rofi:** Đổi `font` trong `config.rasi`
- **Dunst:** Đổi `font` trong `dunstrc`

### Đổi Wallpaper

Sửa `~/.local/bin/wallpaper.sh` -> thay đổi biến `WALLPAPER_DIR`:

```bash
WALLPAPER_DIR="$HOME/images/Wallpapers"
```

Mặc định thư mục wallpaper là `~/images/Wallpapers/`.

### Đổi Keybindings

Sửa file `sxhkd/.config/sxhkd/sxhkdrc`. Cú pháp:

```bash
# Phím + Phối hợp
super + @space
    rofi -show drun -config ~/.config/rofi/config.rasi
```

Sau khi sửa, reload bằng `Super + Escape`.

### Theme Polybar

Sửa `polybar/.config/polybar/modules/*.ini` để thêm/xóa module trên thanh trạng thái.

Layout hiện tại:

```
[Left]  power | user | wifi | cpu | mic-status | kew
[Center] bspwm workspace dots
[Right] gpu | pulseaudio | battery | date
```

### Theme Rofi

3 file rofi có thể tùy chỉnh riêng:

- `config.rasi` -- App launcher (drun mode)
- `powermenu.rasi` -- Power menu (grid)
- `chrome-menu.rasi` -- Chrome profile picker

---

## Cập Nhật

Để cập nhật dotfiles mới nhất mà không làm mất tùy chỉnh:

```bash
cd ~/dotfiles
git pull
# Kiểm tra conflict
git status
# Nếu có file mới, chạy lại stow
stow -t ~ alacritty bspwm polybar rofi sxhkd ...
# Restart service
bspc wm -r
pkill -USR1 -x sxhkd
```

### Thay đổi ở local

Nếu bạn đã sửa đổi file trong `~/dotfiles/` và muốn tránh bị ghi đè khi pull:

```bash
git stash          # Tạm lưu thay đổi
git pull           # Kéo về
git stash pop      # Áp dụng lại thay đổi + giải quyết conflict nếu có
```

---

## Khắc Phục Sự Cố

### Thiếu Font / Icon Hiển Thị Sai

**Vấn đề:** Polybar, Rofi, hoặc terminal hiện ô vuông thay vì icon.

**Giải pháp:** Cài `nerd-fonts-jetbrains-mono` (AUR):

```bash
yay -S nerd-fonts-jetbrains-mono
fc-cache -fv
```

Sau đó khởi động lại ứng dụng.

### Polybar Không Khởi Động

**Vấn đề:** Polybar không hiển thị sau khi khởi động.

**Kiểm tra:**

```bash
# Xem lỗi trực tiếp
polybar island -c ~/.config/polybar/config.ini

# Kiểm tra log
journalctl -xe | grep polybar

# Đảm bảo font đã được cài
fc-list | grep -i "JetBrainsMono"

# Đảm bảo các module không bị thiếu dependency
# (ví dụ: kew cần playerctl)
```

### Picom Không Hoạt Động

**Vấn đề:** Thiếu animation hoặc composite.

**Yêu cầu:** Phải cài `picom-ftlabs-git` từ AUR (không phải `picom` từ pacman official repository).

```bash
yay -S picom-ftlabs-git
```

Kiểm tra:

```bash
picom --config ~/.config/picom/picom.conf --backend glx
```

### Rofi Không Hiển Thị Đúng Màu

**Vấn đề:** Rofi hiện màu mặc định thay vì Catppuccin.

**Kiểm tra:** Đảm bảo `bg-overlay` trong `config.rasi` trỏ đúng đường dẫn:

```rasi
* {
    bg-overlay: #11111b96;
}
```

Và background image tồn tại:

```bash
ls ~/images/Theme/rofi.jpeg
```

### Permission Errors

**Vấn đề:** Scripts không thể chạy.

**Giải quyết:** Cấp quyền thực thi:

```bash
chmod +x ~/.local/bin/*
chmod +x ~/.config/polybar/scripts/*
chmod +x ~/.config/polybar/launch.sh
chmod +x ~/.config/polybar/peek.sh
```

### Dunst Không Hiện Notification

**Vấn đề:** Không thấy thông báo âm lượng/độ sáng.

**Kiểm tra:**

```bash
# Khởi động dunst thủ công
dunst

# Kiểm tra dunst đang chạy
pgrep -x dunst

# Kiểm tra config
dunst -conf ~/.config/dunst/dunstrc
```

### Touchpad Không Hoạt Động

Bspwmrc tự động quét và bật tapping cho tất cả thiết bị touchpad. Kiểm tra:

```bash
xinput list | grep -i touchpad
```

---

## TODO

- [ ] Hỗ trợ Hyprland (Wayland)
- [ ] Trình cài đặt tự động (install.sh)
- [ ] Package Nix / Home Manager
- [ ] Theme switcher (Catppuccin flavors)
- [ ] Tài liệu bằng tiếng Anh
- [ ] Screenshots và GIF demo
- [ ] Cấu hình GTK, Icon, Cursor
- [ ] Cấu hình Zsh và oh-my-zsh
- [ ] Cấu hình Neovim / IDE
- [ ] Cấu hình Conky / Eww
- [ ] Wallpaper pack đi kèm
- [ ] CI/CD kiểm tra config syntax

---

## Ghi Công

Cảm ơn sự truyền cảm từ cộng đồng Linux ricing:

- **Catppuccin** -- Bảng màu tuyệt vời
- **bspwm Community** -- Window manager hiệu quả
- **Polybar Community** -- Thanh trạng thái linh hoạt
- **Arch Linux Community** -- Hệ điều hành cho người đam mê

---

## Giấy Phép

Được phân phối dưới giấy phép MIT.

```
MIT License

Copyright (c) 2026 Quang Nhat Hung

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
