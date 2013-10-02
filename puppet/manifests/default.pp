#file {'/tmp/hello':
#content => "hello world\n",
#}


# create a new run stage to ensure certain modules are included first
stage { 'pre':
  before => Stage['main']
}

# add the baseconfig module to the new 'pre' run stage
class { 'baseconfig':
  stage => 'pre'
}
#dependncies

include stdlib
include baseconfig
include wget
include apt
import "concat"

#programs

include ant
import "ant"

import "java7"
include java7

include maven
import "maven"

include apache
#import "apache"

