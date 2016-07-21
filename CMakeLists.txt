
cmake_minimum_required(VERSION 2.8)

project(Plugin)

find_package(OpenSSL)
include_directories(${OPENSSL_INCLUDE_DIR})

include(BroPlugin)

bro_plugin_begin(Demo Rot13)
bro_plugin_cc(src/Plugin.cc)
bro_plugin_bif(src/rot13.bif)
bro_plugin_dist_files(README CHANGES COPYING VERSION broctl/test-package.py)
bro_plugin_end()
