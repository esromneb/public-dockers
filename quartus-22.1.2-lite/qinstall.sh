#!/usr/bin/expect -f

set timeout -1
spawn ./setup.sh

expect "to continue"
send -- "\n"

expect "to continue"
send -- "\n"

expect "to continue"
send -- "\n"

expect "to continue"
send -- "\n"
expect "to continue"
send -- "\n"
expect "to continue"
send -- "\n"
expect "to continue"
send -- "\n"
expect "to continue"
send -- "\n"
expect "to continue"
send -- "\n"
expect "to continue"
send -- "\n"
expect "to continue"
send -- "\n"
expect "to continue"
send -- "\n"
expect "to continue"
send -- "\n"
expect "to continue"
send -- "\n"
expect "to continue"
send -- "\n"
expect "to continue"
send -- "\n"
expect "to continue"
send -- "\n"
expect "to continue"
send -- "\n"
expect "to continue"
send -- "\n"
expect "to continue"
send -- "\n"
expect "to continue"
send -- "\n"
expect "to continue"
send -- "\n"
expect "to continue"
send -- "\n"
expect "to continue"
send -- "\n"
expect "to continue"
send -- "\n"
expect "to continue"
send -- "\n"
expect "to continue"
send -- "\n"
expect "to continue"
send -- "\n"
expect "to continue"
send -- "\n"
expect "to continue"
send -- "\n"
expect "to continue"
send -- "\n"
expect "to continue"
send -- "\n"
expect "to continue"
send -- "\n"
expect "to continue"
send -- "\n"
expect "to continue"
send -- "\n"
expect "to continue"
send -- "\n"
expect "to continue"
send -- "\n"
expect "to continue"
send -- "\n"
expect "to continue"
send -- "\n"
expect "to continue"
send -- "\n"
expect "to continue"
send -- "\n"
expect "to continue"
send -- "\n"
expect "to continue"
send -- "\n"
expect "to continue"
send -- "\n"
expect "to continue"
send -- "\n"
expect "to continue"
send -- "\n"
expect "to continue"
send -- "\n"
expect "to continue"
send -- "\n"
expect "to continue"
send -- "\n"

expect "Do you accept this license?"
send -- "y\n"

expect "Installation directory"
send -- "\n"
send -- "y\n"
send -- "n\n"
send -- "y\n"
send -- "n\n"
send -- "n\n"
send -- "n\n"
send -- "y\n"
send -- "n\n"
send -- "n\n"
send -- "n\n"
send -- "n\n"
send -- "y\n"

expect "shortcuts on Desktop"
send -- "n\n"

expect "Launch Quartus Prime Lite Edition"
send -- "n\n"

expect "Provide your feedback"
send -- "n\n"

# expect "What is your favorite programming language?\r
# Your answer: "
# send -- "Java\r"

expect eof
