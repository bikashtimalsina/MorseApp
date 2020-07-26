function morsepotential(handles)
%Varibale extraction from the GUI's
%syms x
delete potential.dat;
De_s=get(handles.dissenergyEditText,'String');
De=str2num(De_s);
xe_s=get(handles.eqposEditText,'String');
xe=str2num(xe_s);
a_s=get(handles.wellwidthEditText,'String');
a=str2num(a_s);
x_l_s=get(handles.xrangeEditText,'String');
x_l=str2num(x_l_s);
%% formula for the morse potential
x=linspace(0,x_l,200);
yrange=De+10;
morseplot=De*(1-exp(-a*(x-xe))).^2;
PotMat=[x;morseplot]';
save potential.dat PotMat -ascii;
%% handle axis for plot
hax=handles.morsePlotAxes;
hax=newplot;
p=line(hax,x,morseplot,'LineWidth',2);
newplot(p)
ylabel('\bf potential $V$($x$)','Interpreter','latex');
xlabel('\bf $x$','Interpreter','latex');
axis(hax,[0 x_l 0 yrange]);
%t=cputime;
end
