# Authenticate with Google Cloud

########################################
# Deploy the proxy to the bastion host #
########################################

# Install the proxy
sudo apt-get update 
sudo apt-get -y install tinyproxy

echo "Allow localhost" >> /etc/tinyproxy/tinyproxy.conf
