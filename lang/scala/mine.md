# Scala

## Passing argument to Kotlin nullable function parameter with Option

```scala
//Kotlin function f(x: Double?)
val x = Option[Double]
f(x.map(d => d: java.lang.Double).orNull)
f(x.map(Double.box).orNull)
```
