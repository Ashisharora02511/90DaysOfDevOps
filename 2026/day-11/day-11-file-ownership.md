# Day 11 Challenge

## Files & Directories Created
 - devops-file.txt
 - team-notes.txt
 - project-config.yml
 - app-logs/
 - heist-project/
 - bank-heist/

## Ownership Changes
 ### devops.txt
 - Change owner to ubuntu -> tokyo -> berlin
 ### team-notes.txt
  - Group changed to heist-team
### project-config.yaml
 - Change owner to `professor` AND group to `heist-team`
### app-logs/
 - Change its owner to `berlin` and group to `heist-team`
### heist-project/ (recursive)
 - Change ownership of entire `heist-project/` directory:
   - Owner: `professor`
   - Group: `planners`
   - Use recursive flag (`-R`)
### bank-heist files
- access-codes.txt → tokyo:vault-team
- blueprints.pdf → berlin:tech-team
- escape-plan.txt → nairobi:vault-team
 


