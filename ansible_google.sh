# grep -o "^\([0-9]*\.\)\{3\}[0-9]*" hosts_google | while read -r line ; do 
#     ssh-keygen -f "/home/luciano/.ssh/known_hosts" -R $line
#     ssh-keyscan -H $line  >> ~/.ssh/known_hosts
# done

ansible-playbook playbook.yml -i hosts_google  -b
