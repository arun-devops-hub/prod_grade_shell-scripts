User Account Management Script:
#!/bin/bash
username="newuser"
# Check if user exists; if not, create new user
if id "$username" &>/dev/null; then
echo "User $username already exists."
else
useradd -m "$username"
echo "User $username created."
fi

# if id "$username" &>/dev/null; then: This line checks if the id command for $username succeeds without producing any visible output.


#Password Generator Script:
#!/bin/bash
length=12
# Generate a random password
password=$(openssl rand -base64 $length)
echo "Generated password: $password"
