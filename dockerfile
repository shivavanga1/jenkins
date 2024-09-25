# Use the official Jenkins LTS image
FROM jenkins/jenkins:lts

# Switch to root user to install additional packages
USER root

# Install any additional packages you need (e.g., Docker)
RUN apt-get update && apt-get install -y \
    docker.io \
    && apt-get clean

# Switch back to Jenkins user
USER jenkins

# Expose the Jenkins port
EXPOSE 8080

