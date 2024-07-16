IFS=$'\n'  # Set the Internal Field Separator to newline to handle usernames with spaces correctly

# Iterate over users with /bin/bash shell
for user in $(cat /etc/passwd | grep "/bin/bash" | cut -d: -f1); do
    password_expires=$(chage -l "$user" | grep "Password expires")

    # Check if password expiration information is available
    if [ -n "$password_expires" ]; then
        echo "User: $user"
        echo "$password_expires"
    else
        echo "User: $user - No password expiration information found"
    fi
done

