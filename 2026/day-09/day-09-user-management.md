#  Day 09 Linux user & Group Mangement

 ## Users and Groups created
  **Users** tokyo,berlin,professor,nariboi,
  **Groups** developers,project-team,admins
 ## Group Assigements
  - tokyo : developers,project-team
  - berlin :developers,admins
  - professor: admins
  - nariboi : project-team

  Verify by:
    groups <username>

 ## Directories Created:
   - dev-project :drwxrwxr-x 2 root developers   4096 Mar  1 14:00 dev-project
   - team-workspace: drwxrwxr-x 2 root project-team 4096 Mar  1 14:17 team-worksapce
  ## User-Management
   - useradd -m <user>
   - passwd <user>
   - cat /etc/passwd
  ## Group- Mangement
    - groupadd <group>
    - usermod -aG <group> <user>
    - groups <user>
  ## Permisson and testing
  - mkdir /opt/<dir>
   - chgrp <group> <dir>
   - chmod 775 <dir>
   - sudo -u <user> touch <file>
 ## What I Learned
- Linux user and group management is critical for access control
- Shared directories require correct group ownership and permissions
- `usermod -aG` is essential to avoid overwriting group memberships
- Group-based permissions simplify team collaboration in production
