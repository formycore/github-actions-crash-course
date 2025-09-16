#!/bin/bash
git add .
commit = $1
if [ -z "$commit" ]
# why -z ?
# -z checks if the string is empty
then
    commit="update"
fi
git commit -m "$commit"
git push origin main


# 🔹 Why -z?

# -z "$commit" checks “is the string empty?”

# If you ran the script like this:

# ./myscript.sh "first commit"


# → $1 = "first commit", so -z "$commit" is false, and commit stays "first commit".

# If you ran the script with no argument:

# ./myscript.sh


# → $1 is empty, so -z "$commit" is true, and commit becomes "update".