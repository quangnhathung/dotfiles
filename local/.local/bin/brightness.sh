#!/bin/bash

# Thiết bị điều khiển độ sáng đặc thù trên máy của bạn
DEVICE="nvidia_wmi_ec_backlight"

# Nhận hành động từ sxhkd
ACTION=$1

# 1. Thay đổi độ sáng (tăng/giảm 5%)
case $ACTION in
    up)
        brightnessctl --device="$DEVICE" set +5%
        ;;
    down)
        brightnessctl --device="$DEVICE" set 5%-
        ;;
esac

# 2. Tính toán chính xác phần trăm độ sáng
VAL=$(brightnessctl --device="$DEVICE" get)
MAX=$(brightnessctl --device="$DEVICE" max)
PERC=$(( VAL * 100 / MAX ))

# 3. Logic hiển thị Icon Typography
if [ "$PERC" -lt 30 ]; then
    ICON="󰃞"  # Độ sáng yếu
elif [ "$PERC" -lt 70 ]; then
    ICON="󰃝"  # Độ sáng vừa
else
    ICON="󰃠"  # Độ sáng mạnh
fi

# 4. Gửi thông báo kèm thanh Progress Bar căng viền
notify-send -a "Brightness" -u low -h string:x-dunst-stack-tag:brightness_notif -h int:value:"$PERC" "$ICON   Độ sáng: ${PERC}%"