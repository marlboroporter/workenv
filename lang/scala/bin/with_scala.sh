#! /usr/bin/env  scala 

 
//Alvin Alexander used  

//!#/bin/sh 
//scala "$0" "$@"
//!#
// 
//This does not work on mac
//but this works
//#!/usr/bin/env  scala 
//
//So /usr/bin/env is a better solution for shebang
//
//So scala-cli is not necessarily needed
//guess here scala repl used directly
//which is now use ammonite's repl behind scene probably
//
//but scala-cli probalby offer much  more feature 
//

object script {
  def main(args:Array[String]) = {
    for ( v <- args) { println(v)}
  }
}
