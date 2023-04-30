#!/bin/sh 
scala "$0" "$@"
!#
object script {
//This is from alvin alexander
//not working properly any more
//using scala-cli now much better
  def main(args:Array[String]) = {
    for ( v <- args) { println(v)}
  }
}
