function morsenergy(handles)
m=1;
%% value extraction from the GUI's
n_s=get(handles.englevelEditText,'String');
n=str2num(n_s);
De_s=get(handles.dissenergyEditText,'String');
De=str2num(De_s);
a_s=get(handles.wellwidthEditText,'String');
a=str2num(a_s);
x_l_s=get(handles.xrangeEditText,'String');
x_l=str2num(x_l_s);
De_s=get(handles.dissenergyEditText,'String');
De=str2num(De_s);
hax=handles.morsePlotAxes;
hax=newplot;
%% Starting a calculation
yrange=De+10;
lambda=sqrt(2.0*m*De)/a;
w0=sqrt(2*a^2*De/m);
for i=0:n
en=i+0.5-0.5*(i+0.5)^2/lambda;
energy=w0*en;
eng=line(hax,linspace(0,x_l,200),linspace(energy,energy,200));
axis([0 x_l 0 yrange]);
xlabel('\bf $x$','Interpreter','latex');
ylabel('\bf Energy $E_{n}$ for different $n$','Interpreter','latex');
end
end