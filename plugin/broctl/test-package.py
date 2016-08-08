import BroControl.plugin
from BroControl import config

class TestPackage(BroControl.plugin.Plugin):
    def __init__(self):
        super(TestPackage, self).__init__(apiversion=1)

    def name(self):
        return "test-package"

    def pluginVersion(self):
        return 1

    def init(self):
        self.message("Test package: initialized")
        return True
