#!/usr/bin/expect -f

set timeout -1
spawn ./setup.sh

# Skip the endless "Press [Enter] to continue:"
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

# Accept the license
expect "Do you accept this license?"
send -- "y\n"

# Accept default install directory
expect "Installation directory"
send -- "\n"

# Install Quartus?
send -- "y\n"

# Install Help?
send -- "y\n"

# Install Devices?
send -- "y\n"

# Arria II
send -- "n\n"

# Cyclone IV
send -- "n\n"

# Cyclone 10 LP
send -- "n\n"

# Cyclone V
send -- "y\n"

# MAX II/V
send -- "n\n"

# MAX 10
send -- "n\n"

# Intel FPGA Starter Edition (A zero cost license required)
send -- "n\n"

# Questa - Intel FPGA Edition
send -- "n\n"

# Confirm
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
