- name: Play1 
  hosts: all 
  tasks:
    - name: Print Hello from task1 of play1 
      ansible.builtin.debug:
            msg: Hai from task1 of play1 

    - name: Print Hello from task2 of play1 
      ansible.builtin.debug:
            msg: Hai from task2 of play1 