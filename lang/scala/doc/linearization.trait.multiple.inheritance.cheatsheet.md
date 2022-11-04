#linearization
```bash
scala> trait Base { override def toString = "Base" }
     | class A extends Base { override def toString = "A->" + super.toString }
     | trait B extends Base { override def toString = "B->" + super.toString }
     | trait C extends Base { override def toString = "C->" + super.toString }
     | trait D extends Base { override def toString = "D->" + super.toString }
     | trait E extends Base { override def toString = "E->" + super.toString }
     | trait F extends Base { override def toString = "F->" + super.toString }
     | trait G extends Base { override def toString = "G->" + super.toString }
     | trait H extends Base { override def toString = "H->" + super.toString }
     | class I extends A with B with C with D with E with F with G with H { override def toString = "I->" + super.toString }
     | class II extends A with B with C with H with G with F with E with D { override def toString = "II->" + super.toString}
// defined trait Base
// defined class A
// defined trait B
// defined trait C
// defined trait D
// defined trait E
// defined trait F
// defined trait G
// defined trait H
// defined class I
// defined class II

scala> new I()
val res2: I = I->H->G->F->E->D->C->B->A->Base

scala> new II()
val res3: II = II->D->E->F->G->H->C->B->A->Base
```
*  Linerization = the actual inheritance heriachy virtual call or super.f call will follow. It is also the reverse order of constructor instantiation
*  Scala mixin looks like multiple inheritance but through linerization, it behave like single inheritance
*  How to linerization: 
   - Current class, extended class/trait, reverse order of mixin
   - Expand each class/trait recursively  
   - Ignore any duplicate class/trait appear later when working left to right 
