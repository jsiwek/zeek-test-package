#
# This is loaded when a user activates the plugin. Include scripts here that should be
# loaded automatically at that point.
# 

# @load ./bar.bro 

@ifdef ( zeek_init )
event zeek_init()
@else
event bro_init()
@endif
    {
    print "loaded bro-test-package scripts";
    }
