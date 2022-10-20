# TODO

1. BIOS Power

    ```text
    Resolution
    To set the Intel® NUC to power on whenever a power source is connected:

    Press F2 during boot to enter BIOS Setup.
    Go to the Power > Secondary Power Settings menu.
    Set the option for After Power Failure to Power On.
    Press F10 save changes and exit BIOS.
    ```

2. Finalize - SSH Config
3. Manually move to all containers to bridge network
4. Research if there is a power on config for NAS
5. Reset dev device if not found?
6. Setup Google Wifi -> Private DNS
7. Setup Port fowarding for new Plex Google Wifi
8. Finalize SSH Configuration
9. Shutdown Ansible Host Synology


- name: Update sshd configuration safely, avoid locking yourself out
  ansible.builtin.template:
  src: etc/ssh/sshd_config.j2
  dest: /etc/ssh/sshd_config
  owner: root
  group: root
  mode: '0600'
  validate: /usr/sbin/sshd -t -f %s
  backup: yes

Incase labels get crazy...
https://stackoverflow.com/questions/62010666/ansible-how-to-set-docker-container-labels-with-dynamic-key-names


[Resources]

- [Home Server Ansible Setup](https://github.com/davestephens/ansible-nas)
