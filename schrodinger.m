function schrodinger(handles)
delete WaveFunctionData.dat
%t=cputime;
m=1.0;
%syms x;
%% Variable Extraction from the GUI's
n_s=get(handles.englevelEditText,'String');
n=str2num(n_s);
De_s=get(handles.dissenergyEditText,'String');
De=str2num(De_s);
xe_s=get(handles.eqposEditText,'String');
xe=str2num(xe_s);
a_s=get(handles.wellwidthEditText,'String');
a=str2num(a_s);
x_l_s=get(handles.xrangeEditText,'String');
x_l=str2num(x_l_s);
%% Core calculation for schrodinger
hax=handles.morsePlotAxes;
hax=newplot;
yrange=De+10;
for i=0:n
x=linspace(0,x_l,200);
lambda=sqrt(2.0*m*De)/a;
alpha=2*lambda-2*i-1;
z=2*lambda*exp(-x+xe);
fn=factorial(i);
Nn=(fn*alpha/gamma(2*lambda-i))^(1/2);
powz=z.^(alpha/2);
powexpz=exp(-0.5*z);
lag_n_alpha_z=laguerreL(i,alpha,z);
wavefunction=Nn*powz.*powexpz.*lag_n_alpha_z;
WaveData(:,i+1)=wavefunction;
waveexag=5.*wavefunction+engvalue(De,a,i);
%plot(x,wavefunction,'LineWidth',2,'Marker','.','MarkerSize',2,'Color','red');
newl=line(hax,x,waveexag,'LineWidth',2,'Marker','.','MarkerSize',2,'Color','red');
axis([0 x_l 0 yrange]);
end
save WaveFunctionData.dat WaveData -ascii;
%% Labelling x and y axis.
ylabel('\bf $\Psi_{n}$($x$)--(units arb)','Interpreter','latex');
xlabel('\bf $x$ -- (units arb)','Interpreter','latex');
title('Plot of wavefunction Vs. distance');
%e=cputime-t;
end