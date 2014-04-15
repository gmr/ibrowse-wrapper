APP_NAME:=ibrowse

UPSTREAM_GIT:=https://github.com/cmullaparthi/ibrowse.git
UPSTREAM_REVISION:=v4.1.0
RETAIN_ORIGINAL_VERSION:=true

# Path include/http.hrl is needed during compilation
INCLUDE_DIRS+=$(CLONE_DIR)

ORIGINAL_APP_FILE:=$(CLONE_DIR)/src/$(APP_NAME).app.src
DO_NOT_GENERATE_APP_FILE=true

define construct_app_commands
	cp $(CLONE_DIR)/BSD_LICENSE $(APP_DIR)/LICENSE-BSD-ibrowse
endef
