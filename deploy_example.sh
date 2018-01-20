# Sample script for deploying in the 10.0.0.0/24 network

for i in {1..3}
  do 
    ssh-keygen -R 10.0.0.10$i
    ssh-keyscan -H 10.0.0.10$i >> ~/.ssh/known_hosts
  done

ansible-playbook playbook.yml -i vm_hosts -b
