export ARCH=arm64
export CONFIG_SECTION_MISMATCH_WARN_ONLY=y
export CROSS_COMPILE=aarch64-linux-gnu-
make vendor/alphalm_lao_com_defconfig
make prepare-compiler-check


export CROSS_COMPILE=aarch64-linux-gnu-


HOSTCFLAGS_lib-fdt_ro.stub.o+= -O
HOSTCFLAGS_lib-fdt_ro.o+= -O
HOSTCFLAGS_lib-fdt.o+= -O
CFLAGS_lib-fdt_ro.stub.o+= -O
CFLAGS_lib-fdt_ro.o+= -O
CFLAGS_lib-fdt.o+= -O


WARNING: vmlinux.o(.text+0x549df4): Section mismatch in reference from the function spcom_probe() to the function .init.text:spcom_register_chardev()
The function spcom_probe() references
the function __init spcom_register_chardev().
This is often because spcom_probe lacks a __init 
annotation or the annotation of spcom_register_chardev is wrong.

aarch64-linux-gnu-ld: drivers/firmware/efi/libstub/lib-fdt_ro.stub.o: in function `fdt_get_name':
/home/android/android_kernel_lge_sm8150/lib/../scripts/dtc/libfdt/fdt_ro.c:253: undefined reference to `__efistub_strrchr'
Makefile:1185: recipe for target 'vmlinux' failed
make: *** [vmlinux] Error 1


drivers/firmware/efi/libstub
firmware


Using built-in specs.
COLLECT_GCC=aarch64-linux-gnu-gcc
COLLECT_LTO_WRAPPER=/usr/lib/gcc-cross/aarch64-linux-gnu/11/lto-wrapper
Target: aarch64-linux-gnu
Configured with: ../src/configure -v --with-pkgversion='Debian 11.2.0-16' --with-bugurl=file:///usr/share/doc/gcc-11/README.Bugs --enable-languages=c,ada,c++,go,d,fortran,objc,obj-c++,m2 --prefix=/usr --with-gcc-major-version-only --program-suffix=-11 --enable-shared --enable-linker-build-id --libexecdir=/usr/lib --without-included-gettext --enable-threads=posix --libdir=/usr/lib --enable-nls --with-sysroot=/ --enable-clocale=gnu --enable-libstdcxx-debug --enable-libstdcxx-time=yes --with-default-libstdcxx-abi=new --enable-gnu-unique-object --disable-libquadmath --disable-libquadmath-support --enable-plugin --enable-default-pie --with-system-zlib --enable-libphobos-checking=release --without-target-system-zlib --enable-multiarch --enable-fix-cortex-a53-843419 --disable-werror --enable-checking=release --build=x86_64-linux-gnu --host=x86_64-linux-gnu --target=aarch64-linux-gnu --program-prefix=aarch64-linux-gnu- --includedir=/usr/aarch64-linux-gnu/include --with-build-config=bootstrap-lto-lean --enable-link-serialization=2
Thread model: posix
Supported LTO compression algorithms: zlib zstd
gcc version 11.2.0 (Debian 11.2.0-16) 
