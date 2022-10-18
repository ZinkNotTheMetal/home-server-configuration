# Home Server Configuration

## Requirements

1. Ansible host server (currently in Synology)
    1. Install ansible
    2. Install sudo
    3. Add user to /etc/sudoers
    4. Add net-tools

2. Configuration server (staging is in Synology)

3. SSH Copy `id_rsa.pub` to Configuration server
   1. Generate rsa

      ```bash
      ssh-keygen -t rsa
      ```

   2. Copy public keys to managed node

      ```bash
      ssh-copy-id -i ~/.ssh/id_rsa.pub <user>@<ipaddr>
      ```

4. Put your private ssh_key into Github - from step 3, publish your id_rsa.pub into Github

5. Generate a private access token for DockerHub and place in dockerhub