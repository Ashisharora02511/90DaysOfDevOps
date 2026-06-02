# Day 32 – Docker Volumes & Networking

## Challenge Tasks

### Task 1: The Problem(Without Volume)
 - Step 1: Run PostgreSQL
 ![alt text](ScreenShots/Task1/RunPostgresContainer.png)
 - Step 2: Enter Container
 ![alt text](ScreenShots/Task1/EnterIntoContainer.png)
 - Step 3: Create Table
 ![alt text](ScreenShots/Task1/CreateTable.png)
 - Step 4: Exit
 - Step 5: Remove Container
 ![alt text](ScreenShots/Task1/RemoveContainer.png)
 - Step 6: Start New Container
 ![alt text](ScreenShots/Task1/StartNewContainer.png)
 - Observation: What happened: our table disappeared.
 - Why: Container filesystem is stored inside the container.When container is removed data also.
### Task 2: Named Volumes
 - Step 1: Create Volume: ```dockerfile docker volume create postgres-data```
 ![alt text](ScreenShots/Task2/DockerVolume.png)
 - Step 2: Run PostgreSQL With Volume
 ![alt text](ScreenShots/Task2/RunContainerWithVolume.png)
 - Step 3: Create Data
 ![alt text](ScreenShots/Task2/CreateData.png)
 - Step 4: Remove Container
 ![alt text](ScreenShots/Task2/DockerStopAndRemove.png)
 - Step 5: Start New Container Using Same Volume
 ![alt text](ScreenShots/Task2/StartNewContainer.png)
 - Step 6: Verify Data
 ![alt text](ScreenShots/Task2/VerifyData.png)
### Task 3: Bind Mounts
- Step 1: Create a folder.
![alt text](ScreenShots/Task3/CreateFolder.png)
- Step 2: Run an Nginx container and bind mount your folder to the Nginx web directory.
![alt text](ScreenShots/Task3/RunContainer.png)
- Step 3: Access the page in your browser.
![alt text](ScreenShots/Task3/CheckOnBrowser.png)
- Step 4: Edit the index.html on your host — refresh the browser.
![alt text](ScreenShots/Task3/EditFileCheck.png)
### Task 4: Docker Networking Basics
- Step 1: List all Docker networks on your machine ```dockerfile docker network ls```
![alt text](ScreenShots/Task4/ListDockerNetwork.png)
- Step 2: Inspect the default bridge network
![alt text](ScreenShots/Task4/BridgeNetworkInspect.png)
- Step 3: Run two containers on the default bridge — can they ping each other by name?No
![alt text](ScreenShots/Task4/PingByName.png)
- Step 4: Run two containers on the default bridge — can they ping each other by IP?YES
![alt text](ScreenShots/Task4/PingByip.png)
### Task 5: Custom Networks
- Create a custom bridge network called my-app-net
![alt text](ScreenShots/Task5/CreateDockerNetwork.png)
- Run two containers on my-app-net
![alt text](ScreenShots/Task5/SameNetworkContainer.png)
- Ping by name : Why Does This Work?Custom bridge network creates:Docker DNS Servers Docker automatically maintain ip
![alt text](ScreenShots/Task5/PingByName.png)
### Task 6: Put It Together
 - Step 1: Create a custom network
 ![alt text](ScreenShots/Task6/CreateCustomNetwork.png)
 - Step 2: Run database container on that network with volume .
 ![alt text](ScreenShots/Task6/RunDbWithVolumeOnSameNetwork.png)
 - Step 3: Run app on that same network 
 - Step 4: Ping to check the database 
 ![alt text](ScreenShots/Task6/PingToCheckDataBase.png)

