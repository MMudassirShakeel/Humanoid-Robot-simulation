# Humanoid-Robot-simulation

This repository has been submitted as a solution to the [Simulation-Based Design of Humanoid Robots project](https://github.com/mathworks/MATLAB-Simulink-Challenge-Project-Hub/tree/main/projects/Simulation-Based%20Design%20of%20Humanoid%20Robots), part of the [MATLAB and Simulink Challenge Project Hub](https://github.com/mathworks/MATLAB-Simulink-Challenge-Project-Hub).

CHAPTER 1: INTRODUCTION

This project is about programming a humanoid robot with 6 degrees of freedom (DOF) in the arm, 6 DOF in the leg, and 2 DOF in the neck, utilizing the MATLAB platform. The study encompasses various aspects including kinematics (forward and inverse), gait generation, velocity control, path planning, and trajectory generation. Throughout the project, different algorithms and techniques are implemented and evaluated to achieve precise and efficient movements of the robot. The outcomes of this research contribute to the progress of humanoid robot programming and support the development of intelligent and capable humanoid robots for diverse applications.

  1.1.	Aim of Research

The primary objective of this project is to examine the movement of human joints and understand their correlation with the body during motion. From this understanding, the project aims to derive displacement matrices that can be used to simulate human movement in MATLAB.

  1.2. 	Research Methods

This project is conducted through the following methods:

  Researching academic equations for forward kinematics and inverse kinematics.

  Performing simulations using MATLAB software.

2. Environment setting
   
    2.1. Hardware: All results are run in core i5 10th Gen.
   
    2.2. Software: Matlab R2021a

3. Steps to run the code

    3.1. make sure all the files should be in same directory
   
    3.2. run robot.m file to animate the humanoid robot

4. Explanation about working of Code
   
4.1. 'banchan' Function
   
This function is responsible for creating a rectangular shape or limb by calling another function called vedt. It defines the position and size of the rectangle by specifying coordinates for its corners.

   4.2. 'eulerXYZ' Function"
   
This function transforms Euler angles into a rotation matrix. Euler angles represent rotations around the X, Y, and Z axes. The eulerXYZ function combines these rotations to create a matrix that represents the orientation in 3D space.

   4.3. 'Than' Function
   
The purpose of this function is to contribute to the drawing of a 3D shape. It likely defines a specific part of the character or object being rendered.

   4.4. 'vedau' Function
   
This function is responsible for drawing a 3D shape resembling a rotated cylinder. It calculates the vertices and faces of the shape based on input parameters such as position, orientation, radius, and height.

   4.5. 'veline' Function
   
The veline function draws a straight line in 3D space between two given points. Additionally, it updates two variables (w and p) based on the length and squared length of the line, respectively.

   4.6. 'veTru' Function
   
This function draws a 3D shape resembling a truncated cone or frustum. It calculates the vertices and faces of the shape based on input parameters, including the position and orientation of the cone.

   4.7. Animation Loop (Humanoid_robot.m)
   
The main section of the code is an animation loop that simulates the movement of a Humanoid robot. The character has moving legs, arms, neck, and head. The loop iterates over frames, updating the Humanoid robot's position and drawing the corresponding body parts. The Humanoid robot's movement includes both left and right motions.

Overall, the code is a modular system for rendering a dynamic 3D character or object with moving limbs, and it employs different functions to draw specific body parts and handle transformations. The animation loop orchestrates these functions to create a visually dynamic representation of the Humanoid robot's movement.

5. Kinematics and Dynamics of system

 5.1. Kinematics:
 
Kinematics is the branch of mechanics that describes the motion of objects without considering the forces causing the motion. In this humanoid simulation, kinematics is reflected in the smooth and controlled movement of the articulated limbs and torso. Each limb segment is carefully positioned and oriented using geometric transformations, particularly rotations represented by Euler angles. The eulerXYZ function plays a key role in converting these angles into rotation matrices, determining the spatial orientation of the limbs. The veline, vedau, Than, and veTru functions contribute to the kinematic representation by visualizing trajectories and shapes in 3D space. The coordinated movement of these segments creates a lifelike simulation of the humanoid figure.

 5.2. Dynamics:
 
Dynamics, on the other hand, considers the forces and torques that cause motion. In this simulation, dynamics is indirectly represented through the updating of displacement (w) and potential energy (p). The veline, vedau, Than, and veTru functions contribute to the dynamic aspect by not only visualizing the structure but also updating these physical parameters based on the simulated movements. The dynamic nature of the system becomes apparent as the humanoid undergoes changes in position and orientation. These dynamic updates provide a quantitative understanding of the energy changes and displacements occurring within the simulated mechanical structure.

In summary, the provided code encapsulates both kinematics and dynamics by visually representing the orchestrated movements of a humanoid figure and simultaneously updating displacement and potential energy. The intricate interplay between these aspects results in a comprehensive simulation of a dynamic mechanical system.


![Humanoid robot matlab](https://github.com/MMudassirShakeel/Humanoid-Robot-simulation/assets/112872954/e18b6e9b-467f-4cf3-88e2-76fe48b0ae3f)


6. Result:
   
I have the capability to create a simulation of a basic walking humanoid robot that can accurately replicate the subtle and stealthy movements of sneaking.
   
Read more about this project at 
https://engrprogrammer.com/humanoid-robots-unleashing-rofl-bots-with-matlab-magic/


Note: For Further details about this project you can check the pdf file attached in this repository
