# Use a lightweight base image
FROM alpine:latest

# Set the environment variable for the string
ENV MESSAGE="Hell     o,!"

# Create a script that prints the message
RUN echo '#!/bin/sh' > /usr/local/bin/show-message && \
    echo 'echo "$MESSAGE"' >> /usr/local/bin/show-message && \
    chmod +x /usr/local/bin/show-message

# Set the default command to run the script
CMD ["/usr/local/bin/show-message"]
