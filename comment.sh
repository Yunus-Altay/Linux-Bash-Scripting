#!/bin/bash

echo "Hello"
# date
pwd # This is an inline comment
# ls

# Here it is a HereDoc and its syntax
cat << EOF
Welcome to the Linux lessons.
This lesson is about the shell scripting
EOF

# If the HereDoc block is not redirected to a command, it can serve as a multiline comments placeholder

<< multiline-comment
pwd
ls
Everything inside the
HereDoc body is
a multiline comment
multiline-comment
