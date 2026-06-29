#!/usr/bin/env bash

output=""

# 1. Tự động dò tìm card Intel (0x8086) bất kể nó là card0 hay card1
for dir in /sys/class/drm/card*; do
    if [ -f "$dir/device/vendor" ]; then
        vendor=$(cat "$dir/device/vendor")
        if [ "$vendor" == "0x8086" ]; then
            # Đọc xung nhịp hiện tại (MHz) của iGPU Intel
            if [ -f "$dir/gt_cur_freq_mhz" ]; then
                freq=$(cat "$dir/gt_cur_freq_mhz")
                output+="%{F#89B4FA}Intel:%{F-} ${freq}MHz"
            else
                output+="%{F#89B4FA}Intel:%{F-} On"
            fi
            break
        fi
    fi
done

# 2. Lấy thông số NVIDIA bằng nvidia-smi
if command -v nvidia-smi &> /dev/null; then
    # Ép nvidia-smi chỉ trả về đúng con số % để không bị lỗi khoảng trắng
    nvidia_load=$(nvidia-smi --query-gpu=utilization.gpu --format=csv,noheader,nounits | tr -d ' ')
    if [ -n "$nvidia_load" ]; then
        # Thêm dải phân cách nếu Intel đã xuất hiện trước đó
        [ -n "$output" ] && output+="  |  "
        output+="%{F#A6E3A1}NVIDIA:%{F-} ${nvidia_load}%"
    fi
fi

# 3. Trả kết quả ra Polybar
if [ -z "$output" ]; then
    echo "GPU: N/A"
else
    echo "$output"
fi