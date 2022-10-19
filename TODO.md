# TODO

2. Install oh-my-zsh
   - variable the theme
   - install debian & git plugin for o-m-z
   - configure the .config/zsh
3. Configure this for root user (remove the become:true)
4. Fix the stupid ass script problem
5. SSH?
6. OpenVPN not working on test env

## TODO:
1. Figure out how to shut off synology with NUT
2. startup / mount configurations
3. Remove # from home assistant
4. Figure out nginx and reverse proxy

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

## github

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

Figure out forwarding IPVLAN on Google-Wifi


[Resources]
* [Home Server Ansible Setup](https://github.com/davestephens/ansible-nas)