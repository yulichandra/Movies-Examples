RED=\033[1;31m
GREEN=\033[1;32m
CYAN=\033[1;36m
NC=\033[0m

generate-xcodeproj:
	@echo "$(RED)>>> $(GREEN)Generate xcodeproj$(NC)"
ifeq ($(module),)
	@xcodegen generate
else
	@xcodegen generate --spec ./DevPods/$(module)/Example/project.yml
endif
	@echo "$(RED)<<< $(GREEN)Generate xcodeproj$(NC)\n"

generate-xcworkspace:
	@echo "$(RED)>>> $(GREEN)Generate xcworkspace$(NC)"
ifeq ($(module),)
	@pod install
else
	@pod install --project-directory=./DevPods/$(module)/Example
endif
	@echo "$(RED)<<< $(GREEN)Generate xcworkspace$(NC)\n"

open-project:
	@echo "$(RED)--- $(GREEN)Open Project$(NC)"
ifeq ($(module),)
	@open "Movies.xcworkspace"
else
	@open "DevPods/$(module)/Example/$(module).xcworkspace"
endif

close-xcode:
	@echo "$(RED)--- $(GREEN)Close Xcode$(NC)\n"
	@$$(killall Xcode)

clean:
	@echo "$(RED)--- $(GREEN)Cleaning$(NC)"
ifeq ($(module),)
	@rm -rf Podfile.lock
	@rm -rf *.xcodeproj
	@rm -rf *.xcworkspace
	@rm -rf Pods
else
	@rm -rf ./DevPods/$(module)/Example/Podfile.lock
	@rm -rf ./DevPods/$(module)/Example/*.xcodeproj
	@rm -rf ./DevPods/$(module)/Example/*.xcworkspace
	@rm -rf ./DevPods/$(module)/Example/Pods
endif

project: 
ifeq ($(strip $(module)),)
	@make close-xcode 
endif
	@make generate-xcodeproj module=$(module)
	@make generate-xcworkspace module=$(module)
	@make open-project module=$(module)

.PHONY: generate-xcodeproj generate-xcworkspace open-project close-xcode clean project