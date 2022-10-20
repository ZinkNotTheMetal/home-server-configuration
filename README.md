# Home Server Configuration

## Requirements

1. Setup Debian (with {user_name})

2. With root user add the user to the sudos group

   ```bash
   usermod -a -G sudo {{ user_name }}
   ```

3. Add SSH Key from Ansible server to configured server

   1. Generate a key if needed

       ```bash
       ssh-keygen -t rsa

   2. Copy public keys to managed node

      ```bash
      ssh-copy-id -i ~/.ssh/id_rsa.pub <user>@<ipaddr>
      ```

4. Run ansible command

   ```bash
   ansible-playbook -K -i production site.yml
   ```


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

4. SSH Copy `id_rsa.pub` to the NAS
   1. Copy RSA token for ssh

      ```bash
      ssh-copy-id -i ~/.ssh/id_rsa.pub <user>@<ipaddr> -p <nas_port>
      ```

5. Put your private ssh_key into Github - from step 3, publish your id_rsa.pub into Github

6. Generate a private access token for DockerHub and place in dockerhub

7. Run

   ```bash
   ansible-playbook site.yml
   ```

## NAS Configuration

[Enable shutdown](https://andreagx.blogspot.com/2017/11/poweroff-linux-based-nas-synology-ecc.html)