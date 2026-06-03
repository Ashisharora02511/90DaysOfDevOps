# Day 33 – Docker Compose: Multi-Container Basics
## Task
Today's goal is to **run multi-container applications with a single command**.
Yesterday you manually created networks and volumes and ran containers one by one. Docker Compose does all of that in one YAML file.

## Challenge Tasks

### Task 1: Install & Verify
- Command to check: ```dockerfile  docker compose version ```
-  if not then install: ```dockerfile  sudo apt update sudo apt install docker-compose-plugin```
![alt text](ScreenShots/Task1/CheckVerisonDockerCompose.png)
### Task 2: First Compose File
- Step 1: create folder
- Step 2: Create file 
- Step 3: Start it with ```dockefile docker compose up -d ```
![alt text](ScreenShots/Task2/DockerComposeNginx.png)
- Step 4: Access it from browser
![alt text](ScreenShots/Task2/AccessFromBrowser.png)
- Step 5: Stop it with ```dockerfile docker compose down```
### Task 3: Two-Container Setup
-  Step 1: Write a compose file where we write mysql conatiner and wordpress container yml
![alt text](ScreenShots/Task3/DockerComposefile.png)
-  Step 2: Run the container using  docker compose file```dockerfile docker compose up -d ```
-  Step 3: Acces world press on the browser and create our account
![alt text](ScreenShots/Task3/AccessOnBrowser.png)
-  Step 4: Down our container by using ```dockerfile  docker compose down```
-  Step 5: Again up our container add verify that your data still there.
    -  yoour data is still there 
### Task 4: Compose Commands
- Detached Mode: container runs into background ```dockerfile  docker compose up -d ```
![alt text](ScreenShots/Task4/DockerComposeUp.png)
- Running Services: check how many services are running ```dockerfile docker compose ps```
![alt text](ScreenShots/Task4/DockerComposePs.png)
- LogsofAllServices: check logs of all service  ```dockerfile  docker compose logs```
![alt text](ScreenShots/Task4/DockerComposelogs.png)
- LOgsOfSpecificService:  if you want to check specific service logs ```dockerfile docker compose logs mysql ```
![alt text](ScreenShots/Task4/DockerComposelogsMysql.png)
- Stop Without Removing: want to stop container ```dockerfile docker compose stop```
![alt text](ScreenShots/Task4/DockerComposeStop.png)
- Start Again: again want start a container use this ```dockerfile docker compose start``` 
![alt text](ScreenShots/Task4/DockerComposeStart.png)
- RemoveEverything: its remove containers and networks keeps volume ```dockerfile docker compose down ```
![alt text](ScreenShots/Task4/DockerComposeDown.png)
- RemoveVolume: its remove volume also ```dockerfile docker compose down -v```
![alt text](ScreenShots/Task4/DockerComposeDownVolume.png)
- Rebuild: you chnaged docker file rebuild images using ```dockerfile  docker compose up --build```
### Task 5: Environment Variables
 - Create a .env file and reference variables from it in your compose file
 ![alt text](ScreenShots/Task5/DockerComposeUsingEnv.png)
