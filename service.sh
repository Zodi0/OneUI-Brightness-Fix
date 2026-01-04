#!/system/bin/sh

# 1. Wait until the boot process is completely finished
while [ "$(getprop sys.boot_completed)" != "1" ]; do
  sleep 1
done

# 2. Safety Delay: Wait an extra 10 seconds to ensure the display driver is fully initialized
sleep 10

# 3. Variable for the target file
TARGET="/sys/class/lcd/panel/custom_brightness_lvl_enable"

# 4. Check if the file actually exists before trying to write to it
if [ -f "$TARGET" ]; then
  echo 0 > "$TARGET"
fi
