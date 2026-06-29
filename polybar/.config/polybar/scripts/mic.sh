#!/usr/bin/env bash

# Đếm số lượng Source Output (các app đang dùng mic)
is_recording=$(pactl list source-outputs | grep -c 'Source Output #')

if [ "$is_recording" -gt 0 ]; then
    # Hiện icon Mic màu đỏ nếu có app đang dùng
    echo "%{F#F38BA8}󰍬 %{F-}On"
else
    # Output rỗng -> Module sẽ tự động ẩn đi
    echo ""
fi