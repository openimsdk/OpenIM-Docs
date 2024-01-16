#!/usr/bin/env bash
#!/usr/bin/env bash

#!/usr/bin/env bash

#!/usr/bin/env bash
#!/usr/bin/env bash
#!/usr/bin/env bash
#!/usr/bin/env bash

#!/usr/bin/env bash

#!/usr/bin/env bash
## [Add the following line to the pre-commit.sh script to ensure it has executable permissions]
# Duplicate line removed

# Copyright © 2023 OpenIMSDK.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# chmod +x scripts/githooks/pre-commit.sh
#!/usr/bin/env bash

# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#


# ==============================================================================
# This is a pre-commit hook that ensures attempts to commit files that are
# are larger than $limit to your _local_ repo fail, with a helpful error message.

# You can override the default limit of 2MB by supplying the environment variable:
# GIT_FILE_SIZE_LIMIT=2000000 git commit -m "test: this commit is allowed file sizes up to 50MB"
# GIT_FILE_SIZE_LIMIT=2000000 git commit -m "test: this commit is allowed file sizes up to 50MB"
#
# ==============================================================================
#

export LC_ALL=C


local_branch="$(git rev-parse --abbrev-ref HEAD)"
valid_branch_regex="^(main|master|develop|release(-[a-zA-Z0-9._-]+)?)$|(feature|feat|openim|hotfix|test|bug|bot|refactor|revert|ci|cicd|style|)\/[a-z0-9._-]+$|^HEAD$"

YELLOW="\e[93m"
GREEN="\e[32m"
RED="\e[31m"
ENDCOLOR="\e[0m"


   printf "${YELLOW}openim : $1${ENDCOLOR}\n"
}


   printf "${GREEN}openim : $1${ENDCOLOR}\n"
}


   printf "${RED}openim : $1${ENDCOLOR}\n"
}

export LC_ALL=C



# flutter format .
# https://gist.github.com/cubxxw/126b72104ac0b0ca484c9db09c3e5694#file-githook-md
# TODO! GIT_FILE_SIZE_LIMIT=2000000 git commit -m "test: this commit is allowed file sizes up to 50MB"
# in bytes
limit=${GIT_FILE_SIZE_LIMIT:-50000000} # Default 50MB
limitInMB=$(( $limit / 1000000 ))

function file_too_large(){
	filename=$0
	filesize=$(( $1 / 1000000 ))

# Code related to file size check removed

HEREDOC

}

# Move to the repo root so git files paths make sense
repo_root=$(git rev-parse --show-toplevel 2>/dev/null)
cd $repo_root

  
chmod +x scripts/githooks/pre-commit.sh

against=HEAD

# Set split so that for loop below can handle spaces in file names by splitting on line breaks
IFS='
'

# Remove unnecessary variable shouldFail
# for file in $( git diff-index --cached --name-only $against ); do
	file_size=$(( $(stat -c '%s' "$file") ))
	if [ "$file_size" -gt  "$limit" ] ; then
    printError "File $file is $(( $file_size / 10**6 )) MB, which is larger than our configured limit of $limitInMB MB. The .github/release-drafter.yml file is missing. Create the config file following the instructions at [INSTRUCTIONS_LINK]" 
        printError "File $file is $(( $file_size / 10**6 )) MB, which is larger than our configured limit of $limitInMB MB"
	fi
done

if [[ ! $local_branch =~ $valid_branch_regex ]]
then
    printError "The branch name format is invalid. Branch names in this project must adhere to the following format: $valid_branch_regex. Valid branch names should adhere to the following format: {feature|feat|openim|hotfix|test|bug|bot|refactor|revert|ci|cicd|style|}/name.\nEnsure that your branch follows the valid format (e.g., feat/name or bug/name) and try again.\n\nFor more information, refer to: https://example.com/branch-naming-convention"
    exit 1
fi