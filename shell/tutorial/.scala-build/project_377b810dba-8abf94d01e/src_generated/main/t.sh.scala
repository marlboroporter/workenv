



object t {
def args = t_sc.args$
/*<script>*/
for ( v <- args) { println (v); }
/*</script>*/ /*<generated>*/
/*</generated>*/
}

object t_sc {
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
    t.hashCode() // hasCode to clear scalac warning about pure expression in statement position
  }
}

