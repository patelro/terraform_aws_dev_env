# Update the system's package index
sudo apt-get update -y

# Install required dependencies for Docker
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common gnupg-agent

# Add Docker’s official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Verify the fingerprint for the GPG key
sudo apt-key fingerprint 0EBFCD88

# Add Docker repository to the package sources
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Update the package index again
sudo apt-get update -y

# Install Docker CE (Community Edition)
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

# Add the current user to the Docker group (to run Docker without sudo)
sudo usermod -aG docker ubuntu

# Log out and log back in (or restart SSH session) for group changes to take effect.
