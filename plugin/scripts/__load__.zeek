#
# This is loaded unconditionally at Bro startup. Include scripts here that should
# always be loaded.
# 
# Normally, that will be only code that initializes built-in elements. Load
# your standard scripts in
# scripts/<plugin-namespace>/<plugin-name>/__load__.zeek instead.
#

@load ./init.zeek

event zeek_init() &priority=10
    {
    print "loaded zeek-test-package plugin";
    }
