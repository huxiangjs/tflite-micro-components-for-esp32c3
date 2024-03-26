# TensorFlow Lite for Microcontrollers Components For ESP32C3

See: [tflite-micro-for-esp32c3](https://github.com/huxiangjs/tflite-micro-for-esp32c3)

# How to rebuild?

## Prepare environment

1. Ubuntu (22.04)
```shell
$ cat /proc/version
Linux version 5.19.0-32-generic (buildd@lcy02-amd64-026) (x86_64-linux-gnu-gcc (Ubuntu 11.3.0-1ubuntu1~22.04) 11.3.0, GNU ld (GNU Binutils for Ubuntu) 2.38) #33~22.04.1-Ubuntu SMP PREEMPT_DYNAMIC Mon Jan 30 17:03:34 UTC 2
```

2. Python (on Ubuntu, 3.10.12)
```shell
$ python3 --version
Python 3.10.12
```

3. Cygwin (on Windwos10, 11.3.0)
```shell
$ cat /proc/version
CYGWIN_NT-10.0-18362 version 3.4.6-1.x86_64 (corinna@calimero) (gcc version 11.3.0 20220421 (Fedora Cygwin 11.3.0-1) (GCC) ) 2023-02-14 13:23 UTC
```

4. Cross Tool (8.4.0 or 13.2.0)
```shell
$ riscv32-esp-elf-gcc --version
riscv32-esp-elf-gcc.exe (crosstool-NG esp-2021r2-patch5) 8.4.0
Copyright (C) 2018 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
```
or
```shell
$ riscv32-esp-elf-gcc --version
riscv32-esp-elf-gcc.exe (crosstool-NG esp-13.2.0_20230928) 13.2.0
Copyright (C) 2023 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
```


## Build

1. Generate source code directory and download dependencies (Running on Ubuntu)
```shell
./generate_project.sh
```

2. Build static library (Running on Cygwin)
```shell
./build_project.sh /<your patch>/.espressif/tools/riscv32-esp-elf/<your tool>/riscv32-esp-elf/bin/  -j4
```

Output: project/gen/libtflm.a
