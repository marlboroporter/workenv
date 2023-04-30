#!/usr/bin/env -S scala-cli shebang -S 3
/* If explicit use shebang subcommand -- omitted before args
1.sh 1 2 3 4
*/
for ( v <- args) { println (v); }

