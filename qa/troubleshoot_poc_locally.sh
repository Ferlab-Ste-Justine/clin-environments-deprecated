docker run -v $(pwd)/inventory:/opt/hosts \
           -v ~/.ssh:/.ssh \
           -v $(pwd)/poc:/opt/orchestration \
           chusj/ansible-playbooks:1.1.0 \
           -i /opt/hosts \
           -u ubuntu \
           --private-key=/.ssh/id_rsa \
           --become \
           /opt/playbooks/apply.yml \
           --extra-vars "deployment_dir=/opt/poc-deployment deployment_stack=poc-deployment"