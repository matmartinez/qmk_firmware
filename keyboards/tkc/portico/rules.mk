# MCU name
MCU = atmega32u4

# Bootloader selection
BOOTLOADER = atmel-dfu

# Build Options
#   change yes to no to disable
#
BOOTMAGIC_ENABLE = lite        # Virtual DIP switch configuration
MOUSEKEY_ENABLE = yes          # Mouse keys
EXTRAKEY_ENABLE = yes          # Audio control and System control
CONSOLE_ENABLE = no            # Console for debug
COMMAND_ENABLE = yes           # Commands for debug and configuration
# Do not enable SLEEP_LED_ENABLE. it uses the same timer as BACKLIGHT_ENABLE
SLEEP_LED_ENABLE = no          # Breathing sleep LED during USB suspend
# if this doesn't work, see here: https://github.com/tmk/tmk_keyboard/wiki/FAQ#nkro-doesnt-work
NKRO_ENABLE = yes              # USB Nkey Rollover
BACKLIGHT_ENABLE = no          # Enable keyboard backlight functionality
RGBLIGHT_ENABLE = no           # Enable keyboard RGB underglow
BLUETOOTH_ENABLE = no          # Enable Bluetooth
AUDIO_ENABLE = no              # Audio output
RGB_MATRIX_ENABLE = no
RGB_MATRIX_DRIVER = IS31FL3731
CIE1931_CURVE = yes

# project specific files
SRC += keyboards/wilba_tech/wt_main.c \
       keyboards/wilba_tech/wt_rgb_backlight.c \
       quantum/color.c \
       drivers/led/issi/is31fl3731.c

QUANTUM_LIB_SRC += i2c_master.c

LAYOUTS = 65_ansi_blocker
