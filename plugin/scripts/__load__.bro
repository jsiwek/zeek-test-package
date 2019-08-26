#
# This is loaded unconditionally at Bro startup. Include scripts here that should
# always be loaded.
# 
# Normally, that will be only code that initializes built-in elements. Load
# your standard scripts in
# scripts/<plugin-namespace>/<plugin-name>/__load__.bro instead.
#

@load ./init.bro

@ifdef ( zeek_init )
event zeek_init() &priority=10
@else
event bro_init() &priority=10
@endif
    {
    print "loaded bro-test-package plugin";
    }
