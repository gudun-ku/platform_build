# BoardConfigEmuCommon.mk
#
# Common compile-time definitions for emulator
#

HAVE_HTC_AUDIO_DRIVER := true
BOARD_USES_GENERIC_AUDIO := true
TARGET_BOOTLOADER_BOARD_NAME := goldfish_$(TARGET_ARCH)

# no hardware camera
USE_CAMERA_STUB := true

NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3

# Build OpenGLES emulation guest and host libraries
BUILD_EMULATOR_OPENGL := true
BUILD_QEMU_IMAGES := true

# Build and enable the OpenGL ES View renderer. When running on the emulator,
# the GLES renderer disables itself if host GL acceleration isn't available.
USE_OPENGL_RENDERER := true

# ~140 MB vendor image. Please adjust system image / vendor image sizes
# when finalizing them. The partition size needs to be a multiple of image
# block size: 4096.
BOARD_VENDORIMAGE_PARTITION_SIZE := 140963840
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 512
DEVICE_MATRIX_FILE   := device/generic/goldfish/compatibility_matrix.xml

BOARD_SEPOLICY_DIRS += device/generic/goldfish/sepolicy/common

