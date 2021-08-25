# Difftest 使用指南

## 编写顶层模块 `TopMain.scala`

`TopMain` 是Scala程序的入口，类似于C/C++中的main函数，可以直接参考本框架中的代码，不需要做任何修改。

```scala
object TopMain extends App {
  (new chisel3.stage.ChiselStage).execute(args, Seq(chisel3.stage.ChiselGeneratorAnnotation(() => new SimTop())))
}
```

## 修改 `SimTop.scala`

按照Difftest框架的要求，CPU的顶层模块必须命名为 `SimTop`。在这一模块中，添加上Difftest需要的IO接口，如下所示。

```scala

```

## 修改 `Core.scala`


