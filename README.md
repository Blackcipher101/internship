# Docking

To run the bot start up with 
```
roslaunch turtlebot3_gazebo turtlebot3_empty_world.launch
```
This lauches the robot in the map now to run the docking system
```
roslaunch turtlebot3_automatic_parking_vision turtlebot3_automatic_parking_vision.launch
rosrun turtlebot3_automatic_parking_vision automatic_parking_vision 
```
In two different terminals


------
## Apporach
 I started out actually first getting the simulataion ready as I already had spawned the turtlebot I had changed the model sdf in the empty world to create the world the marker files and now after this I added static brodcasters to the lauunch file after certain amount of googling I found a package that does what the problem statment asks . I tried using it but it was not avaialbe to the current ROS distro so I had to make some changes and after the changes it worked seenlessly
 🥳
