clear;
clear all;
load current1.dat;
load current2.dat;
load current3.dat;
load current4.dat;

L=0.98;
R=14.2;
t1=75*10^-3;
t2=50*10^-3;
t3=25*10^-3;
t4=10*10^-3;
...for current1...
...(a)Forward-difference formula
for i=1:8
f=(current1(i+1,2)-current1(i,2))/t1;
gf1(i)=f;
Ef1(i)=L*f+R*current1(i,2);
end

...(b)Backward difference formula
for i=2:9
f=(current1(i,2)-current1(i-1,2))/t1;
gb1(i-1)=f;
Eb1(i-1)=L*f+R*current1(i,2);

end

...(c)Midpoint formula
for i=2:8
f=(current1(i+1,2)-current1(i-1,2))/(2*t1);
gm1(i)=f;
Em1(i)=L*f+R*current1(i,2);

end

...for current2...
...(a)Forward-difference formula
for i=1:12
f=(current2(i+1,2)-current2(i,2))/t2;
Ef2(i)=L*f+R*current2(i,2);
gf2(i)=f;
end

...(b)Backward difference formula
for i=2:12
f=(current2(i,2)-current2(i-1,2))/t2;
Eb2(i-1)=L*f+R*current2(i,2);
gb2(i-1)=f;

end


...(c)Midpoint formula
for i=2:12
f=(current2(i+1,2)-current2(i-1,2))/(2*t2);
Em2(i)=L*f+R*current2(i,2);
gm2(i)=f;

end

...for current3...
...(a)Forward-difference formula
for i=1:24
f=(current3(i+1,2)-current3(i,2))/t3;
Ef3(i)=L*f+R*current3(i,2);
gf3(i)=f;
end

...(b)Backward difference formula
for i=2:24
f=(current3(i,2)-current3(i-1,2))/t3;
Eb3(i-1)=L*f+R*current3(i,2);
gb3(i-1)=f;

end


...(c)Midpoint formula
for i=2:24
f=(current3(i+1,2)-current3(i-1,2))/(2*t3);
Em3(i)=L*f+R*current3(i,2);
gm3(i)=f;

end

...for current4...
...(a)Forward-difference formula
for i=1:60
f=(current4(i+1,2)-current4(i,2))/t4;
Ef4(i)=L*f+R*current4(i,2);
gf4(i)=f;
end

...(b)Backward difference formula
for i=2:61
f=(current4(i,2)-current4(i-1,2))/t4;
Eb4(i-1)=L*f+R*current4(i,2);
gb4(i-1)=f;
end

...(c)Midpoint formula
for i=2:60
f=(current4(i+1,2)-current4(i-1,2))/(2*t4);
Em4(i)=L*f+R*current4(i,2);
gm4(i)=0;
end


 time1=0:0.075:0.525;
 time2=0:0.050:0.55;
 time3=0:0.025:0.575;
 time4=0:0.01:0.59;
 ...ÇİZDİRMEK İSTEDİĞİNİZ GRAFİĞİN YORUMUNU KALDIRIN
     
%  ...FORWARD
%  
%  semilogy(time1,gf1,time2,gf2,time3,gf3,time4,gf4);
%  xlabel('Time(s)')
%  ylabel('current(t)')
%  legend('CURRENT 1','CURRENT 2','CURRENT 3','CURRENT 4')
%  grid on
%  
% ...BACKWARD
%  semilogy(time1,gm1,time2,gm2,time3,gm3,time4,gm4);
%  xlabel('Time(s)')
%  ylabel('current(t)')
%  legend('CURRENT 1','CURRENT 2','CURRENT 3','CURRENT 4')
%  grid on
%  
%  ...MIDPOINT
%  semilogy(time1,gm1,time2,gm2,time3,gm3,time4,gm4);
%  xlabel('Time(s)')
%  ylabel('current(t)')
%  legend('CURRENT 1','CURRENT 2','CURRENT 3','CURRENT 4')
%  grid on
%  
%  ...E İÇİN GRAFİKLER
%  ...FORWARD
%  
%  semilogy(time1,Ef1,time2,Ef2,time3,Ef3,time4,Ef4);
%  xlabel('Time(s)')
%  ylabel('E')
%  legend('CURRENT 1','CURRENT 2','CURRENT 3','CURRENT 4')
%  grid on
% 
% ...BACKWARD
%  semilogy(time1,Eb1,time2,Eb2,time3,Eb3,time4,Eb4);
%  xlabel('E)')
%  ylabel('current(t)')
%  legend('CURRENT 1','CURRENT 2','CURRENT 3','CURRENT 4')
%  grid on
%  
%  ...MIDPOINT
%  semilogy(time1,Em1,time2,Em2,time3,Em3,time4,Em4);
%  xlabel('E')
%  ylabel('current(t)')
%  legend('CURRENT 1','CURRENT 2','CURRENT 3','CURRENT 4')
%  grid on
%  
%  
 semilogy(time4,Ef4,time4,Eb4,time4,Em4);
 xlabel('E')
 ylabel('current(t)')
 legend('FORWARD','BACKWARD','MIDPOINT')
 grid on

%  semilogy(time1,Ef1,time1,Eb1,time1,Em1);
%  xlabel('E')
%  ylabel('current(t)')
%  legend('FORWARD','BACKWARD','MIDPOINT')
%  grid on

