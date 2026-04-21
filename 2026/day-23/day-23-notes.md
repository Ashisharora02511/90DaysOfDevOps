# Day 23 – Git Branching & Working with GitHub

### Task 1: Understanding Branches
1. What is a branch in Git?
- A Git branch is seprate line of devlopment in your project.
- It's copy of code you can work on new features.
2. Why we do branches instead of committing everything on `main`
- we uses branches to isolate develoment work.
- branches lets us work on new features or fixed safely.
- main branch is mainly for production-ready.
3. What is `HEAD` in Git?
- Head is pointer that tells Git which commit you are currently working.
- Head points latest commit of the current branch.
4. 
- Git stores snapshots per branch
- When you switch old files replaced,new files removed,modified files reset.
### Task 2: Branching Commands — Hands-On
 1. List all git branches 
 - `git branch`
 2. Create a new branch
 - `git branch feature-1`
 3. Switch to branch
 - ` git switch feature-1`
 4. create a new branch and switch to it by using single command
 - `git checkout -b feature-2`
 5. Try using `git switch` to move between branches — how is it different from `git checkout`?
 - git checkout is an older, multi-purpose command used for   switching branches, restoring files, and checking out commits.
- git switch is a newer command introduced to only switch branches, making it safer and more user-friendly.
6. Make a commit on feature-1 that does not exist on main
- `"git commit -m "Added: commands added git md file"`
7. Switch back to main — verify that the commit from feature-1 is not there
- `git checkout Main`
-  `git log --oneline`
8. Delete a branch you no longer need
- `git branch -d feature-2`
### Task 3: Push to GitHub 
1. Create a new repository on GitHub (do NOT initialize it with a README)
2. Connect your local devops-git-practice repo to the GitHub remote
3. Push your main branch to GitHub
### Commands:
- `git remote add origin <>`
- `git push origin Main`
4. Push feature-1 branch to GitHub
5. Verify both branches are visible on GitHub
### Task 4: Pull from GitHub
- Make a change to a file directly on GitHub (use the GitHub editor)
- What is the difference between git fetch and git pull?

- git fetch: Downloads changes from remote only; does not change your branch,just updates remote info.
- git pull : Downloads changes from remote and merges them into your current branch, updating your local branch immediately.
