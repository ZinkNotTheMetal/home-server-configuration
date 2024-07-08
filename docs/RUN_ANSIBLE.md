# How to run Ansible with NAS

1. Login to Synology NAS
2. Ensure 'ansible-host' is running
3. Connect to ansible host via the browser
    - Username: william
    - Password: default
4. Navigate to ~/home-server-configuration
5. Switch to whichever branch you are working / needing to run (main is fine)
6. Navigate to the src/ directory
7. Run the following command for the [app-server] configuration (this can be changed if needed)

    ```bash
    ansible-playbook -K -i production app-server.yml
    ```

8. You will need to type the BECOME password - which is the root password of the machine you are running against
9. If you added a container with an IP, ensure you add the needed records to the following
    1. PiHole (for DNS configuration)
    2. Unifi (for network jumping)