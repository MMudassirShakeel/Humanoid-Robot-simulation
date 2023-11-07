function [w,p]=banchan(w,p,xOc,yOc,zOc)
     [w,p]=vedt(w,p,xOc-5,yOc-3,zOc,xOc+5,yOc-3,zOc);
     [w,p]=vedt(w,p,xOc-5,yOc+3,zOc,xOc+5,yOc+3,zOc);
     [w,p]=vedt(w,p,xOc-5,yOc-3,zOc,xOc-5,yOc+3,zOc);
     [w,p]=vedt(w,p,xOc+5,yOc-3,zOc,xOc+5,yOc+3,zOc);
end
