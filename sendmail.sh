#!/bin/bash

# Set the recipient email address
recipient="recipient@example.com"

# Set the subject of the email
subject="Test Email"

# Set the body of the email
body="This is a test email sent from a bash script."

# Send the email using the mail command
echo "$body" | mail -s "$subject" "$recipient"
