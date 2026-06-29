#!/usr/bin/env bash

# Sử dụng mã HTML &#x0a; để đẩy chữ xuống dưới Icon
# Sử dụng thẻ span để tăng kích thước Icon lên 30
power="<span font='JetBrainsMono Nerd Font 30'></span>&#x0a;Power"
reboot="<span font='JetBrainsMono Nerd Font 30'></span>&#x0a;Reboot"
lock="<span font='JetBrainsMono Nerd Font 30'></span>&#x0a;Lock"
sleep="<span font='JetBrainsMono Nerd Font 30'></span>&#x0a;Sleep"
logout="<span font='JetBrainsMono Nerd Font 30'></span>&#x0a;Logout"

# Gom nhóm các tùy chọn lại, tách nhau bằng \n (chuẩn mặc định của Rofi)
options="$power\n$reboot\n$lock\n$sleep\n$logout"

# Gọi Rofi (Bỏ cờ -sep đi để tránh lỗi)
chosen=$(echo -e "$options" | rofi -dmenu -markup-rows -format 'i' -theme ~/.config/rofi/powermenu.rasi)

# Xử lý lệnh theo số thứ tự (index từ 0 đến 4)
case $chosen in
    0) systemctl poweroff ;;
    1) systemctl reboot ;;
    2) betterlockscreen -l dim || slock ;;
    3) systemctl suspend ;;
    4) bspc quit ;;
esac