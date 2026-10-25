$(call inherit-product, device/qcom/msm8909-common/msm8909.mk)

$(call inherit-product-if-exists, vendor/htc/a13/a13-vendor.mk)

TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540

$(call inherit-product-if-exists, frameworks/native/build/phone-hdpi-1024-dalvik-heap.mk)

PRODUCT_PACKAGES += \
    A13OverlayFrameworksRes \
    A13OverlaySystemUI

PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-impl \
    android.hardware.keymaster@3.0-impl \
    android.hardware.keymaster@3.0-service \
    keystore.msm8909

PRODUCT_PACKAGES += \
    liblog_htc_shim

PRODUCT_COPY_FILES += \
    device/htc/a13/rootdir/etc/fstab.qcom:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.qcom \
    device/htc/a13/rootdir/etc/fstab.htc_a13:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.htc_a13 \
    device/htc/a13/rootdir/etc/init.device.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.device.rc \
    device/htc/a13/rootdir/bin/htc-fw-link.sh:$(TARGET_COPY_OUT_VENDOR)/bin/htc-fw-link.sh

PRODUCT_COPY_FILES += \
    device/htc/a13/rootdir/usr/keylayout/gpio-keys.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/gpio-keys.kl \
    device/htc/a13/rootdir/usr/keylayout/himax-touchscreen.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/himax-touchscreen.kl

PRODUCT_PACKAGES += \
    libwcnss_qmi

PRODUCT_COPY_FILES += \
    device/htc/a13/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml
