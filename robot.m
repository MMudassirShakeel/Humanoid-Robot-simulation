% Explanation about working of Code
% 1. banchan Function
% This function is responsible for creating a rectangular shape or limb by calling another function called vedt. It defines the position and size of the rectangle by specifying coordinates for its corners.
% 
% 2. eulerXYZ Function
% This function transforms Euler angles into a rotation matrix. Euler angles represent rotations around the X, Y, and Z axes. The eulerXYZ function combines these rotations to create a matrix that represents the orientation in 3D space.
% 
% 3. Than Function
% The purpose of this function is to contribute to the drawing of a 3D shape. It likely defines a specific part of the character or object being rendered.
% 
% 4. vedau Function
% This function is responsible for drawing a 3D shape resembling a rotated cylinder. It calculates the vertices and faces of the shape based on input parameters such as position, orientation, radius, and height.
% 
% 5. veline Function
% The veline function draws a straight line in 3D space between two given points. Additionally, it updates two variables (w and p) based on the length and squared length of the line, respectively.
% 
% 6. veTru Function
% This function draws a 3D shape resembling a truncated cone or frustum. It calculates the vertices and faces of the shape based on input parameters, including the position and orientation of the cone.
% 
% 7. Animation Loop(robot.m)
% The main section of the code is an animation loop that simulates the movement of a Humanoid robot. The character has moving legs, arms, neck, and head. The loop iterates over frames, updating the Humanoid robot's position and drawing the corresponding body parts. The Humanoid robot's movement includes both left and right motions.
% 
% Overall, the code is a modular system for rendering a dynamic 3D character or object with moving limbs, and it employs different functions to draw specific body parts and handle transformations. The animation loop orchestrates these functions to create a visually dynamic representation of the Humanoid robot's movement.
w=0;
p=0;
j=0;
t=0.5;
list=[];
xchp=-10;
xcht=10;
xtt=-10;
xtp=30;
dodaichan=22;
for i=0:1:300 
    hold off
    
    if mod(i,40)<20
        %LEFT MOVEMENT
        %leg drawing
        xchp=xchp+2;
        zchp=-0.04*mod(i+1,40)^2+20/25*mod(i+1,40);
        X=sqrt((i-xchp)^2+(-2+j)^2+(40-zchp)^2);
        alpha1=acos(X/50)-atan2(i-xchp,X);
        beta1=acos(40/(X*cos(atan2(i-xchp,X))));
        [w,p]=banchan(w,p,xchp,-3,zchp);
        plot3(xchp,-3,zchp,'o');
        [w,p]=veline(w,p,xchp,-3,zchp,25*sin(alpha1)+i,-5+j-25*cos(alpha1)*cos(beta1)/40*(-2+j),40-25*cos(alpha1)*cos(beta1));
        plot3(25*sin(alpha1)+i,-5+j-25*cos(alpha1)*cos(beta1)/40*(-2+j),40-25*cos(alpha1)*cos(beta1),'o');
        [w,p]=veline(w,p,25*sin(alpha1)+i,-5+j-25*cos(alpha1)*cos(beta1)/40*(-2+j),40-25*cos(alpha1)*cos(beta1),i,-5+j,40);
        %hand drawing
        plot3(i,-5+j,40,'o');
        [w,p]=veline(w,p,i,-5+j,80,i+20*sin(pi/12)*sin((mod(i,40)-20)*pi/60),-5+j-20*sin(pi/12)*cos((mod(i,40)-20)*pi/60),80-20*cos(pi/12));
        plot3(i,-5+j,80,'o');
        plot3(i+20*sin(pi/12)*sin((mod(i,20)-20)*pi/60),-5+j-20*sin(pi/12)*cos((mod(i,20)-20)*pi/60),80-20*cos(pi/12),'o');
        [w,p]=veline(w,p,i+20*sin(pi/12)*sin((mod(i,20)-20)*pi/60),-5+j-20*sin(pi/12)*cos((mod(i,20)-20)*pi/60),80-20*cos(pi/12),i+20*sin(pi/12)*sin((mod(i,20)-20)*pi/60)+20*sin(mod(i,20)/45*pi),-5+j-20*sin(pi/12)*cos((mod(i,20)-20)*pi/60)-20*cos(mod(i,20)/45*pi),80-20*cos(pi/12)-20*cos(mod(i,20)/45*pi));
        scatter3(i+20*sin(pi/12)*sin((mod(i,20)-20)*pi/60)+20*sin(mod(i,20)/45*pi),-5+j-20*sin(pi/12)*cos((mod(i,20)-20)*pi/60)-20*cos(mod(i,20)/45*pi),80-20*cos(pi/12)-20*cos(mod(i,20)/45*pi),50,'filled');
        %RIGHT MOVEMENT
        Y=sqrt((i-xcht)^2+(-2-j)^2+(40)^2);
        alpha2=acos(Y/50)-atan2(i-xcht,Y);
        beta2=acos(40/(Y*cos(atan2(i-xcht,Y))));
        [w,p]=banchan(w,p,xcht,3,0);
        plot3(xcht,3,0,'o');
        [w,p]=veline(w,p,xcht,3,0,25*sin(alpha2)+i,5+j-25*cos(alpha2)*cos(beta2)/40*(2+j),40-25*cos(alpha2)*cos(beta2));
        plot3(25*sin(alpha2)+i,5+j-25*cos(alpha2)*cos(beta2)/40*(2+j),40-25*cos(alpha2)*cos(beta2),'o');
        [w,p]=veline(w,p,25*sin(alpha2)+i,5+j-25*cos(alpha2)*cos(beta2)/40*(2+j),40-25*cos(alpha2)*cos(beta2),i,5+j,40);
        plot3(i,5+j,40,'o');
        [w,p]=veline(w,p,i,5+j,80,i+20*sin(pi/12)*sin(-mod(i,20)*pi/60),5+j+20*sin(pi/12)*cos(-(mod(i,20))*pi/60),80-20*cos(pi/12));
        plot3(i,5+j,80,'o');
        plot3(i+20*sin(pi/12)*sin(-mod(i,20)*pi/60),5+j+20*sin(pi/12)*cos(-(mod(i,20))*pi/60),80-20*cos(pi/12),'o');
        [w,p]=veline(w,p,i+20*sin(pi/12)*sin(-mod(i,20)*pi/60),5+j+20*sin(pi/12)*cos(-(mod(i,20))*pi/60),80-20*cos(pi/12),i+20*sin(pi/12)*sin(-mod(i,20)*pi/60)+20*sin(20-mod(i,20)/45*pi),5+j+20*sin(pi/12)*cos(-mod(i,20)*pi/60)+20*cos(20-mod(i,20)/45*pi),80-20*cos(pi/12)-20*cos((20-mod(i,20))/45*pi));
        scatter3(i+20*sin(pi/12)*sin(-mod(i,20)*pi/60)+20*sin(20-mod(i,20)/45*pi),5+j+20*sin(pi/12)*cos(-mod(i,20)*pi/60)+20*cos(20-mod(i,20)/45*pi),80-20*cos(pi/12)-20*cos((20-mod(i,20))/45*pi),50,'filled');
    end
    if mod(i,40)>=20
        %left movement
        xcht=xcht+2;
        zcht=-0.04*(mod(i,40)-19)^2+20/25*(mod(i,40)-19);
        X=sqrt((i-xcht)^2+(-2+j)^2+(40-zcht)^2);
        alpha1=acos(X/50)-atan2(i-xcht,X);
        beta1=acos(40/(X*cos(atan2(i-xcht,X))));
        [w,p]=banchan(w,p,xcht,3,zcht);
         plot3(xcht,3,zcht,'o');
        [w,p]=veline(w,p,xcht,3,zcht,25*sin(alpha1)+i,5+j-25*cos(alpha1)*cos(beta1)/40*(2+j),40-25*cos(alpha1)*cos(beta1));
        plot3(25*sin(alpha1)+i,5+j-25*cos(alpha1)*cos(beta1)/40*(2+j),40-25*cos(alpha1)*cos(beta1),'o');
        [w,p]=veline(w,p,25*sin(alpha1)+i,5+j-25*cos(alpha1)*cos(beta1)/40*(2+j),40-25*cos(alpha1)*cos(beta1),i,5+j,40);
        plot3(i,5+j,40,'o');
        [w,p]=veline(w,p,i,5+j,80,i+20*sin(pi/12)*sin((mod(i,20)-20)*pi/60),5+j+20*sin(pi/12)*cos((mod(i,20)-20)*pi/60),80-20*cos(pi/12));
        plot3(i,-5+j,80,'o');
        plot3(i+20*sin(pi/12)*sin((mod(i,20)-20)*pi/60),5+j+20*sin(pi/12)*cos((mod(i,20)-20)*pi/60),80-20*cos(pi/12),'o');
        [w,p]=veline(w,p,i+20*sin(pi/12)*sin((mod(i,20)-20)*pi/60),5+j+20*sin(pi/12)*cos((mod(i,20)-20)*pi/60),80-20*cos(pi/12),i+20*sin(pi/12)*sin((mod(i,20)-20)*pi/60)+20*sin(mod(i,20)/45*pi),5+j+20*sin(pi/12)*cos((mod(i,20)-20)*pi/60)+20*cos((mod(i,20))/45*pi),80-20*cos(pi/12)-20*cos((mod(i,20))/45*pi));
        scatter3(i+20*sin(pi/12)*sin((mod(i,20)-20)*pi/60)+20*sin(mod(i,20)/45*pi),5+j+20*sin(pi/12)*cos((mod(i,20)-20)*pi/60)+20*cos((mod(i,20)/45*pi)),80-20*cos(pi/12)-20*cos((mod(i,20))/45*pi),50,'filled');
        %right movement
        Y=sqrt((i-xchp)^2+(-2-j)^2+(40)^2);
        alpha2=acos(Y/50)-atan2(i-xchp,Y);
        beta2=acos(40/(Y*cos(atan2(i-xchp,Y))));
        [w,p]=banchan(w,p,xchp,-3,0);
        plot3(xchp,-3,0,'o');
        [w,p]=veline(w,p,xchp,-3,0,25*sin(alpha2)+i,-5+j-25*cos(alpha2)*cos(beta2)/40*(-2+j),40-25*cos(alpha2)*cos(beta2));
        plot3(25*sin(alpha2)+i,-5+j-25*cos(alpha2)*cos(beta2)/40*(-2+j),40-25*cos(alpha2)*cos(beta2),'o');
        [w,p]=veline(w,p,25*sin(alpha2)+i,-5+j-25*cos(alpha2)*cos(beta2)/40*(-2+j),40-25*cos(alpha2)*cos(beta2),i,-5+j,40);
        plot3(i,-5+j,40,'o');
        [w,p]=veline(w,p,i,-5+j,80,i+20*sin(pi/12)*sin(-mod(i,20)*pi/60),-5+j-20*sin(pi/12)*cos(-(mod(i,20))*pi/60),80-20*cos(pi/12));
        plot3(i,5+j,80,'o');
        plot3(i+20*sin(pi/12)*sin(-mod(i,20)*pi/60),-5+j-20*sin(pi/12)*cos(-(mod(i,20))*pi/60),80-20*cos(pi/12),'o');
        [w,p]=veline(w,p,i+20*sin(pi/12)*sin(-mod(i,20)*pi/60),-5+j-20*sin(pi/12)*cos(-(mod(i,20))*pi/60),80-20*cos(pi/12),i+20*sin(pi/12)*sin(-mod(i,20)*pi/60)+20*sin(20-mod(i,20)/45*pi),-5+j-20*sin(pi/12)*cos(-mod(i,20)*pi/60)-20*cos(20-mod(i,20)/45*pi),80-20*cos(pi/12)-20*cos((20-mod(i,20))/45*pi));
        scatter3(i+20*sin(pi/12)*sin(-mod(i,20)*pi/60)+20*sin(20-mod(i,20)/45*pi),-5+j-20*sin(pi/12)*cos(-mod(i,20)*pi/60)-20*cos(20-mod(i,20)/45*pi),80-20*cos(pi/12)-20*cos((20-mod(i,20))/45*pi),50,'filled');
    end
    [w,p]=Than(w,p,i,j);
    [w,p]=veline(w,p,0+i,j,80,0+i,0,sqrt(10^2-j^2)+80); % neck
    [w,p]=vedau(w,p,i,j,-pi/60*(mod(i,20)-9)); %head
    plot3(0+i,j,80,'o');
    plot3(0+i,0,100,'*');
    j=j+t;
    if j>=3 || j<=-3
        t=-t;
    end
    axis vis3d equal;
    axis([-10 400 -50 50 0 130])
    pause(0.05)
end
