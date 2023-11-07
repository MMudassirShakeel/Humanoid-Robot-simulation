function [w,p]=veline(w,p,x1,y1,z1,x2,y2,z2)
    i=linspace(0,100,101);
    plot3(x1+i/100*(x2-x1),y1+i/100*(y2-y1),z1+i/100*(z2-z1),'LineWidth',5);
    hold on
    grid on
    w=w+sqrt((x2-x1)^2+(y2-y1)^2+(z2-z1)^2);
    p=p+((x2-x1)^2+(y2-y1)^2+(z2-z1)^2)/2;
end