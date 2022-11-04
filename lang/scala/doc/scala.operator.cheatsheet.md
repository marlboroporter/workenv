# Operator Precedence
* Precedence high to low by **first** character
    ```bash
        (characters not shown below)
        * / %
        + -
        :
        ! =(ends with = except comparator (<=, =>, ==, !=))
        < >
        &
        ^
        |
        (all letters, $, _)
    ```
* Left association except that ends with `:`
- example
```bash
    *    a + b ^? c ?^ d less a ==> b | c
    *    ((a + b) ^? (c ?^ d)) less ((a ==> b) | c) 

    scala> val a = List(1)
    val a: List[Int] = List(1)

    scala> val b = 5 +: a :+ 2 :++ a ++: a :+ 3
    val b: List[Int] = List(5, 1, 2, 1, 1, 3)

    scala> 10 :: List(1,2) :+ List(4,5)
    -- Error:
    1 |10 :: List(1,2) :+ List(4,5)
      |      ^
      |:: (which is right-associative) and :+ (which is left-associative) have same precedence and may not be mixed

scala>

```



