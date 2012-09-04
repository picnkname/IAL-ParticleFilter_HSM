function parkinglot()

G=[-8 10;
   -2 10;
    4 10;
    8 10;
   -2 16;
    4 16];

O=[ -6 5;
    -5 5;
    -4 5;
    -6 6;
    -6 7;
    -5 7;
    -4 7;
    -4 6;
    
     4 7;
     4 6;
     3 6;
     2 6;
     2 7;
     3 7;
     
    -8 14;
    -7 14;
    -6 14;
    -6 15;
    -6 16;
    
     7 14;
     8 14;
     9 14;
     7 15;
     7 16];
 
figure('Position',[400,100,800,800]); hold on;
hold on;
axis([-10 10 -2 18],'square');
plot(G(:,1),G(:,2),'xr');
plot(O(:,1),O(:,2),'ob');
plot(0,0,'.g');
b=3.45; kg=10; c1=1; c2=1;ko=300; c3=4.5; c4=0.6; V=3.1119437730616886;
park=4;
[t,y]=observer(G(park,1),G(park,2),O(:,1),O(:,2),V,[0 0 0 0],b,kg,c1,c2,ko,c3,c4);
plot(y(:,3),y(:,4));

