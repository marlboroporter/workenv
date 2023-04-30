#! /bin/sh
exec scala-cli "$0" "$@"
!#
object Hello {
  def main(args: Array[String]): Unit =
  println("Hello from Scala" ) 
}
