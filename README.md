# oscpu-chisel-framework

这是一个提供给一生一芯项目的，基于 `Verilator` 仿真器和 `Chisel` 语言的 `RISC-V` CPU开发仿真框架。

## 开发环境

参考 [oscpu-framework](https://github.com/OSCPU/oscpu-framework) 的开发环境配置。

## 获取代码

```
git clone --recursive <本代码仓库地址> oscpu-chisel
```

如果子仓库克隆失败，可以在 `oscpu-chisel` 目录下使用下面的命令重新克隆子仓库。

```
git submodule update --init --recursive
```

## 配置 NEMU

子仓库克隆完成后，进入NEMU文件夹进行配置。

```
cd NEMU
make menuconfig
```

在配置页面中，进行如下配置。

1. `Base ISA` 切换为 `riscv64`

1. `Processor difftest reference config` 中勾选上 `Build shared library as processor difftest reference`

配置完成后，保存并退出配置页面，编译NEMU。

```
make
```

## 接入 Difftest

详细过程见 [Difftest.md](./Difftest.md)

## 如何使用

生成Verilog

```
make verilog
```

通过 `Verilator` 生成可执行文件用于仿真

```
make emu
```

运行仿真（如需关闭difftest功能只需要在最后加上 `--no-diff` 即可）

```
./build/emu -i <RISC-V程序(.bin文件)的路径>
```
