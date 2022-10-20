# TODO

3. SSH?
4. OpenVPN not working on test env

## TODO

4. Figure out nginx and reverse proxy swag

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

Figure out forwarding IPVLAN on Google-Wifi

[Resources]

- [Home Server Ansible Setup](https://github.com/davestephens/ansible-nas)
