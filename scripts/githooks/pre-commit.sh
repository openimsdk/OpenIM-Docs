<REPLACE_ME>
#!/bin/bash
# Modified to provide missing configuration file message
#!/bin/bash
#!/bin/bash
#!/usr/bin/env bash
#!/usr/bin/env bash

#!/usr/bin/env bash

#!/usr/bin/env bash
	#!/bin/bash
	#!/usr/bin/env bash
# Copyright ... 
# Add a message indicating that the configuration file should be placed in the .github directory in the default branch of the repository
# Modified to provide instructions for placing the configuration file in the .github directory
#!/bin/bash
#!/bin/bash
#!/usr/bin/env bash
#!/usr/bin/env bash

#!/usr/bin/env bash

#!/usr/bin/env bash
	#!/bin/bash
	#!/usr/bin/env bash
# Copyright © 2023 OpenIMSDK.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# 
Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#


# ==============================================================================
# This is a pre-commit hook that ensures attempts to commit files that are
# Provide information about the missing configuration file and instructions on how to resolve it

# You can override the default limit of 2MB by supplying the environment variable:
# GIT_FILE_SIZE_LIMIT=2000000 git commit -m "test: this commit is allowed file sizes up to 50MB"
# GIT_FILE_SIZE_LIMIT=2000000 git commit -m "test: this commit is allowed file sizes up to 50MB"
#
# ==============================================================================
#



local_branch="$(git rev-parse --abbrev-ref HEAD)"
valid_branch_regex="^(main|master|develop|release(-[a-zA-Z0-9._-]+)?)$|(feature|feat|openim|hotfix|test|bug|bot|refactor|revert|ci|cicd|style|)\/[a-z0-9._-]+$|^HEAD$"

YELLOW="\e[93m"
GREEN="\e[32m"
RED="\e[31m"
ENDCOLOR="\e[0m"

printMessage() {
   printf "${YELLOW}openim : $1${ENDCOLOR}\n"
}

printSuccess() {
   printf "${GREEN}openim : $1${ENDCOLOR}\n"
}

printError() {
   printf "${RED}openim : $1${ENDCOLOR}\n"
}

printMessage "Running local openim pre-commit hook."
printMessage "The configuration file should be placed in the .github directory in the default branch of the repository."


# https://gist.github.com/cubxxw/126b72104ac0b0ca484c9db09c3e5694#file-githook-md
# TODO! GIT_FILE_SIZE_LIMIT=2000000 git commit -m "test: this commit is allowed file sizes up to 50MB"
# Maximum file size limit in bytes (2MB)
limit=${GIT_FILE_SIZE_LIMIT:-2000000} # Default 50MB
limitInMB=$(( $limit / 1000000 ))

# Move to the repo root so git files paths make sense
repo_root=$(git rev-parse --show-toplevel 2>/dev/null)
cd $repo_root



against=HEAD

# Set split so that for loop below can handle spaces in le names by splitting on line breaks
IFS=$'\n'





	    
        
	
done

if [ "$shouldFail" = true ]
then
    printMessage "If you really need to commit this file, you can override the size limit by setting the GIT_FILE_SIZE_LIMIT environment variable, e.g. GIT_FILE_SIZE_LIMIT=42000000 for 42MB. Or, commit with the --no-verify switch to skip the check entirely."
			 printMessage "If you really need to commit this file, you can override the size limit by setting the GIT_FILE_SIZE_LIMIT environment variable, e.g. GIT_FILE_SIZE_LIMIT=42000000 for 42MB. Or, commit with the --no-verify switch to skip the check entirely."
			 printError "Commit aborted"
    exit 1;
fi

if [[ ! $local_branch =~ $valid_branch_regex ]]
then
    printError "The branch name format is invalid. Branch names in this project must adhere to the following format: $valid_branch_regex. Valid branch names should adhere to the following format: {feature|feat|openim|hotfix|test|bug|bot|refactor|revert|ci|cicd|style|}/name.\nEnsure that your branch follows the valid format (e.g., feat/name or bug/name) and try again.\n\nFor more information, refer to: https://gist.github.com/cubxxw/126b72104ac0b0ca484c9db09c3e5694"
    exit 1
    	printError "For more information, refer to: https://gist.github.com/cubxxw/126b72104ac0b0ca484c9db09c3e5694"

    exit 1
fi