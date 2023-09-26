# Firejail profile for corepack
# Description: Part of the Node.js stack
quiet
# This file is overwritten after every install/update
# Persistent local customizations
include corepack.local
# Persistent global definitions
include globals.local

# Redirect
include nodejs-common.profile
