export ARCH=arm64
export CONFIG_SECTION_MISMATCH_WARN_ONLY=y
export CROSS_COMPILE=aarch64-linux-gnu-
make vendor/alphalm_lao_com_defconfig
make prepare-compiler-check
