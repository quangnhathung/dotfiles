#!/usr/bin/env bash

# 1. Thêm Icon vào lựa chọn cho đẹp mắt (Đảm bảo máy bạn có cài Nerd Fonts)
options="󰊯 1. Main Account\n󰧔 2. Work Account\n󰆚 3. Sub Account\n󰗹 4. Anonymous Account"

# 2. Gọi Rofi và nạp file theme chrome-menu.rasi vừa tạo
chosen=$(echo -e "$options" | rofi -dmenu -i -p " Chrome:" -theme ~/.config/rofi/chrome-menu.rasi)

# 3. Logic xử lý (Phải copy đúng cả icon vào để so sánh)
case "$chosen" in
    "󰊯 1. Main Account")
        exec google-chrome-stable --profile-directory="Default" --new-window
        ;;
    "󰧔 2. Work Account")
        exec google-chrome-stable --profile-directory="Profile 1" --new-window
        ;;
    "󰆚 3. Sub Account")
        exec google-chrome-stable --profile-directory="Profile 2" --new-window
        ;;
    "󰗹 4. Anonymous Account")
        exec google-chrome-stable --incognito --new-window
        ;;
    *)
        exit 1
        ;;
esac