#! /bin/sh

# <codex>
# <abstract>Script to remove everything installed by the sample.</abstract>
# </codex>

# This uninstalls everything installed by the sample.  It's useful when testing to ensure that 
# you start from scratch.

sudo launchctl unload /Library/LaunchDaemons/com.kitplugins.InstallManager.HelperTool.plist
sudo rm /Library/LaunchDaemons/com.kitplugins.InstallManager.HelperTool.plist
sudo rm /Library/PrivilegedHelperTools/com.kitplugins.InstallManager.HelperTool

sudo security -q authorizationdb remove "com.kitplugins.InstallManager.readLicenseKey"
sudo security -q authorizationdb remove "com.kitplugins.InstallManager.writeLicenseKey"
sudo security -q authorizationdb remove "com.kitplugins.InstallManager.startWebService"

sudo defaults delete com.kitplugins.InstallManager.HelperTool licenseKey
