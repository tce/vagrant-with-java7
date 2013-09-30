#file {'/tmp/hello':
#content => "hello world\n",
#}

include stdlib
include baseconfig
include apt
import "java7"
include java7
