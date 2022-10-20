# Home Server Configuration

## Requirements

1. Setup Debian (with {user_name})

2. Install sudo

   ```bash
   apt-get install sudo
   ```

3. With root user add the user to the sudos group

   ```bash
   usermod -a -G sudo {{ user_name }}
   ```

4. Add SSH Key from Ansible server to configured server

   1. Generate a key if needed

      ```bash
      ssh-keygen -t rsa
      ```

   2. Copy public keys to managed node

      ```bash
      ssh-copy-id -i ~/.ssh/id_rsa.pub <user>@<ipaddr>
      ```

5. Get ssh-key for git

   1. Generate a new key with above keygen command

   2. Put new key into GitHub (SSH Keys under settings)

6. Generate a PAT in dockerhub

   1. Go to account
   2. Then Security
   3. Generate a new PAT with the hostname of the machine
   4. Put into vars.yml

7. Pull any git repository down to verify token

   ```bash
   cd ~/git
   git clone git@github.com:zsh-users/zsh-syntax-highlighting.git
   ```

8. Ensure NAS has proper NFS Permissions

   1. Login to NAS
   2. Ensure NFS is enabled
   3. In Control Panel edit folder
   4. At the top tab go to NFS Permissions
   5. R/W / Hostname / no squash
   6. Save

9. Run ansible command

   ```bash
   ansible-playbook -K -i production site.yml
   ```

10. Ansible host server (currently in Synology)

    1. Install ansible
    2. Install sudo
    3. Add user to /etc/sudoers
    4. Add net-tools

11. Configuration server (staging is in Synology)

12. SSH Copy `id_rsa.pub` to Configuration server

    1. Generate rsa

       ```bash
       ssh-keygen -t rsa
       ```

    2. Copy public keys to managed node

       ```bash
       ssh-copy-id -i ~/.ssh/id_rsa.pub <user>@<ipaddr>
       ```

13. SSH Copy `id_rsa.pub` to the NAS

    1. Copy RSA token for ssh

       ```bash
       ssh-copy-id -i ~/.ssh/id_rsa.pub <user>@<ipaddr> -p <nas_port>
       ```

14. Put your private ssh_key into Github - from step 3, publish your id_rsa.pub into Github

15. Generate a private access token for DockerHub and place in dockerhub

16. Run

    ```bash
    ansible-playbook site.yml
    ```

## NAS Configuration

[Enable shutdown](https://andreagx.blogspot.com/2017/11/poweroff-linux-based-nas-synology-ecc.html)
