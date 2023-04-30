



object `with_scala-cli_shebang` {
def args = `with_scala-cli_shebang_sc`.args$
/*<script>*/
/* If explicit use shebang subcommand -- omitted before args
1.sh 1 2 3 4
*/
for ( v <- args) { println (v); }

/*</script>*/ /*<generated>*/
/*</generated>*/
}

object `with_scala-cli_shebang_sc` {
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
    `with_scala-cli_shebang`.hashCode() // hasCode to clear scalac warning about pure expression in statement position
  }
}

