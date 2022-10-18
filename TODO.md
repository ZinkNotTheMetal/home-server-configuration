# TODO

1. Change applications to roles (using docker) - https://github.com/davestephens/ansible-nas
2. Install oh-my-zsh
   - variable the theme
   - install debian & git plugin for o-m-z
   - configure the .config/zsh
3. Configure this for root user (remove the become:true)
4. Fix the stupid ass script problem
5. SSH?

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
