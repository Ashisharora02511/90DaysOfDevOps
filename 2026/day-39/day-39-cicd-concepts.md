# Day 39 – What is CI/CD?

## Task
Before writing a single pipeline, understand **why CI/CD exists** and what it actually does.
Today is a research and diagram day — no pipelines yet. Get the concepts right first.
## Objective
The goal of Day 39 was to understand why CI/CD exists, the problems it solves, and the basic concepts behind modern software delivery pipelines.

### Task 1: The Problem
- What can go wrong?
  - Merge conflicts between developers
  - Human deployment mistakes
  - Missing dependencies or configuration
  - Failed deployments
  - Application downtime
  - Inconsistent environments
- What does "It Works On My Machine" mean?
  - This means the application works correctly on a developer's local machine but fails in another environment such as testing, staging, or production.
- How many times a day can a team safely deploy manually?
 - Usually only a few times because every deployment requires manual verification and introduces human error.As the team grows, manual deployments become  slower and riskier.
### Task 2:  CI vs CD
 - Continuous Integration (CI)
   - Continuous Integration is the practice of frequently merging code into a shared repository and automatically validating it through builds and tests.
 - Continuous Delivery (CD)
   - Continuous Delivery extends CI by automatically preparing a deployable package after successful builds and tests.
   - The deployment itself is still a manual decision.
 - Continuous Deployment (CD)
   - Continuous Deployment goes one step further and automatically deploys changes after all validations succeed.
   - No human intervention is required.
### Task 3: Pipeline Anatomy
  - Trigger : An event that starts a pipeline.e.g git push,pull request.
  - Stage: A logical phase of the pipeline. e.g build,test,deploy.
  - Job: A specific unit of work inside a stage.
  - Step: A single command or action within a job.e.g mvn clean install
  - Runner: The machine that executes pipeline jobs.
  - Artifact: An output produced by the pipeline.
### Task 4: Pipeline Diagram
     Developer 
          |
          |Git Push 
          v 
          +-------------------+ 
          | Trigger           | 
          +-------------------+ 
                   |
                   v
          +-------------------+
          | Build Stage       | 
          | Compile Code      | 
          +-------------------+
                    | 
                    v

          +-------------------+  
          | Test Stage        | 
          | Run Unit Tests    | 
          +-------------------+ 
                   | 
                   v
          +-------------------+ 
          | Docker Stage      | 
          | Build Image       | 
          +-------------------+ 
                   | 
                   v
          +-------------------+ 
          | Deploy Stage      | 
          | Deploy to Staging | 
          +-------------------+
### Task 5 : 
# This workflow will build a Java project with Maven, and cache/restore any dependencies to improve the workflow execution time
# For more information see: https://docs.github.com/en/actions/automating-builds-and-tests/building-and-testing-java-with-maven

```

 name: Java CI with Maven

on:
  push:
    branches: [ $default-branch ]
  pull_request:
    branches: [ $default-branch ]

jobs:
  build:

    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v4
    - name: Set up JDK 17
      uses: actions/setup-java@v4
      with:
        java-version: '17'
        distribution: 'temurin'
        cache: maven
    - name: Build with Maven
      run: mvn -B package --file pom.xml

    # Optional: Uploads the full dependency graph to GitHub to improve the quality of Dependabot alerts this repository can receive
    - name: Update dependency graph
      uses: advanced-security/maven-dependency-submission-action@571e99aab1055c2e71a1e2309b9691de18d6b7d6

 ```    
- Repository Chosen
GitHub Actions Starter Workflows    
-  What Triggers It?
- Push to the default branch
- Pull Request to the default branch  
- How Many Jobs Does It Have?
- 1 
- Which Runner Does It Use?
- ubuntu-latest
- What Does It Do?
  1. Checks out the repository code
  2. Installs Java 17
  3. Builds the Maven project
  4. Updates the dependency graph for GitHub security features
- My Understanding

Whenever code is pushed or a pull request is created, GitHub automatically creates an Ubuntu machine, checks out the source code, installs Java, builds the application using Maven, and updates dependency information for security analysis.

           
          
          