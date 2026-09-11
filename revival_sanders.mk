#
# Compatibility backports from Sanders-Revived for Moto Z2 Play (albus)
#
# Keep this file limited to revival changes that are valid on the current
# LineageOS 18.1 / legacy msm8953 userspace. Android 15-only migrations are
# tracked separately and must not be enabled here without the matching stack.
#

# LMKD/PSI
# Kill the heaviest eligible process first under memory pressure.
PRODUCT_PRODUCT_PROPERTIES += \
    ro.lmk.kill_heaviest_task=true

# Radio
# Let the legacy QCRIL stack process START_NETWORK_SCAN instead of returning
# REQUEST_NOT_SUPPORTED. This is the same behavior enabled by Sanders-Revived.
PRODUCT_VENDOR_PROPERTIES += \
    persist.vendor.radio.enableadvancedscan=true
