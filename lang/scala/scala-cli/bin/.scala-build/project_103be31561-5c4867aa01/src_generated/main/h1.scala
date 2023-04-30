



object h1 {
def args = h1_sc.args$
/*<script>*/
exec scala-cli shebang "$0" "$@"
!#
object Hello {
  def main(args: Array[String]): Unit =
  println("Hello from Scala" ) 
}
/*</script>*/ /*<generated>*/
/*</generated>*/
}

object h1_sc {
  private var args$opt0 = Option.empty[Array[String]]
  def args$set(args: Array[String]): Unit = {
    args$opt0 = Some(args)
  }
  def args$opt: Option[Array[String]] = args$opt0
  def args$: Array[String] = args$opt.getOrElse {
    sys.error("No arguments passed to this script")
  }
  def main(args: Array[String]): Unit = {
    args$set(args)
    h1.hashCode() // hasCode to clear scalac warning about pure expression in statement position
  }
}

