function varargout = MorseApp(varargin)
% MORSEAPP MATLAB code for MorseApp.fig
%      MORSEAPP, by itself, creates a new MORSEAPP or raises the existing
%      singleton*.
%
%      H = MORSEAPP returns the handle to a new MORSEAPP or the handle to
%      the existing singleton*.
%
%      MORSEAPP('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MORSEAPP.M with the given input arguments.
%
%      MORSEAPP('Property','Value',...) creates a new MORSEAPP or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before MorseApp_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to MorseApp_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help MorseApp

% Last Modified by GUIDE v2.5 07-Feb-2017 09:58:16

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @MorseApp_OpeningFcn, ...
                   'gui_OutputFcn',  @MorseApp_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before MorseApp is made visible.
function MorseApp_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to MorseApp (see VARARGIN)

% Choose default command line output for MorseApp
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes MorseApp wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = MorseApp_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function dissenergyEditText_Callback(hObject, eventdata, handles)
% hObject    handle to dissenergyEditText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of dissenergyEditText as text
%        str2double(get(hObject,'String')) returns contents of dissenergyEditText as a double


% --- Executes during object creation, after setting all properties.
function dissenergyEditText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to dissenergyEditText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function wellwidthEditText_Callback(hObject, eventdata, handles)
% hObject    handle to wellwidthEditText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of wellwidthEditText as text
%        str2double(get(hObject,'String')) returns contents of wellwidthEditText as a double


% --- Executes during object creation, after setting all properties.
function wellwidthEditText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to wellwidthEditText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function eqposEditText_Callback(hObject, eventdata, handles)
% hObject    handle to eqposEditText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of eqposEditText as text
%        str2double(get(hObject,'String')) returns contents of eqposEditText as a double


% --- Executes during object creation, after setting all properties.
function eqposEditText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to eqposEditText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function xrangeEditText_Callback(hObject, eventdata, handles)
% hObject    handle to xrangeEditText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of xrangeEditText as text
%        str2double(get(hObject,'String')) returns contents of xrangeEditText as a double


% --- Executes during object creation, after setting all properties.
function xrangeEditText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xrangeEditText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function englevelEditText_Callback(hObject, eventdata, handles)
% hObject    handle to englevelEditText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of englevelEditText as text
%        str2double(get(hObject,'String')) returns contents of englevelEditText as a double


% --- Executes during object creation, after setting all properties.
function englevelEditText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to englevelEditText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in potentialPlotButton.
function potentialPlotButton_Callback(hObject, eventdata, handles)
% hObject    handle to potentialPlotButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
De_potButton_s=get(handles.dissenergyEditText,'String');
De_potButton=str2num(De_potButton_s);
xe_potButton_s=get(handles.eqposEditText,'String');
xe_potButton=str2num(xe_potButton_s);
a_potButton_s=get(handles.wellwidthEditText,'String');
a_potButton=str2num(a_potButton_s);
x_l_potButton_s=get(handles.xrangeEditText,'String');
x_l_potButton=str2num(x_l_potButton_s);
if isequal(De_potButton,double(''))==1 || isequal(xe_potButton,double(''))==1 || isequal(a_potButton,double(''))==1 || isequal(x_l_potButton,double(''))==1
    errordlg('The range for dissociation energy must lie within 50 - 300, equilibirium position within 0.5 - 2.5, well width within 1 - 4 and x-range within 5 - 20','ValueError');
elseif De_potButton>=50 && De_potButton<=300 && xe_potButton>=0.5 && xe_potButton<=2.5 && a_potButton>=1 && a_potButton<=4 && x_l_potButton>=5 && x_l_potButton<=20
    hold off;
    morsepotential(handles);
else
    errordlg('The range for dissociation energy must lie within 50 - 300, equilibirium position within 0.5 - 2.5, well width within 1 - 4 and x-range within 5 - 20','ValueError');
end


% --- Executes on button press in energyPlotButton.
function energyPlotButton_Callback(hObject, eventdata, handles)
% hObject    handle to energyPlotButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
De_engButton_s=get(handles.dissenergyEditText,'String');
De_engButton=str2num(De_engButton_s);
xe_engButton_s=get(handles.eqposEditText,'String');
xe_engButton=str2num(xe_engButton_s);
a_engButton_s=get(handles.wellwidthEditText,'String'); % 
a_engButton=str2num(a_engButton_s);
x_l_engButton_s=get(handles.xrangeEditText,'String');
x_l_engButton=str2num(x_l_engButton_s);
n_engButton_s=get(handles.englevelEditText,'String');
n=str2num(n_engButton_s);
if isequal(De_engButton,double(''))==1 || isequal(xe_engButton,double(''))==1 || isequal(a_engButton,double(''))==1 || isequal(x_l_engButton,double(''))==1 || isequal(n,double(''))==1 
    errordlg('The range for dissociation energy must lie within 50 - 300, equilibirium position within 0.5 - 2.5, well width within 1 - 4 and x-range within 5 - 20 and energy must be positive integer from 0 - 9.','ValueError');
elseif x_l_engButton>=5 && x_l_engButton<=20 && De_engButton>=50 && De_engButton<=300 && xe_engButton>=0.5 && xe_engButton<=2.5 && a_engButton>=1 && a_engButton<=4 && (n==0 || n==1 || n==2 || n==2 || n==3 || n==4 || n==5 || n==6 || n==7 || n==8 || n==9)
    hold off;
    morsenergy(handles);
else
    errordlg('The range for dissociation energy must lie within 50 - 300, equilibirium position within 0.5 - 2.5, well width within 1 - 4 and x-range within 5 - 20 and energy must be positive integer from 0 - 9.','ValueError');
end



% --- Executes on button press in wavePlotButton.
function wavePlotButton_Callback(hObject, eventdata, handles)
% hObject    handle to wavePlotButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
De_potButton_s=get(handles.dissenergyEditText,'String');
De_potButton=str2num(De_potButton_s);
xe_potButton_s=get(handles.eqposEditText,'String');
xe_potButton=str2num(xe_potButton_s);
a_potButton_s=get(handles.wellwidthEditText,'String');
a_potButton=str2num(a_potButton_s);
x_l_potButton_s=get(handles.xrangeEditText,'String');
x_l_potButton=str2num(x_l_potButton_s);
n_engButton_s=get(handles.englevelEditText,'String');
n=str2num(n_engButton_s);
if isequal(De_potButton,double(''))==1 || isequal(xe_potButton,double(''))==1 || isequal(a_potButton,double(''))==1 || isequal(x_l_potButton,double(''))==1 || isequal(n,double(''))==1
    errordlg('The range for dissociation energy must lie within 50 - 300, equilibirium position within 0.5 - 2.5, well width within 1 - 4 and x-range within 5 - 20 and energy must be positive integer from 0 - 9.','ValueError');
elseif De_potButton>=50 && De_potButton<=300 && xe_potButton>=0.5 && xe_potButton<=2.5 && a_potButton>=1 && a_potButton<=4 && x_l_potButton>=5 && x_l_potButton<=20 && (n==0 || n==1 || n==2 || n==2 || n==3 || n==4 || n==5 || n==6 || n==7 || n==8 || n==9)
    hold off;
    schrodinger(handles);
else
    errordlg('The range for dissociation energy must lie within 50 - 300, equilibirium position within 0.5 - 2.5, well width within 1 - 4 and x-range within 5 - 20 and energy must be positive integer from 0 - 9.','ValueError');
end



% --- Executes on button press in allPlotButton.
function allPlotButton_Callback(hObject, eventdata, handles)
% hObject    handle to allPlotButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
De_potButton_s=get(handles.dissenergyEditText,'String');
De_potButton=str2num(De_potButton_s);
xe_potButton_s=get(handles.eqposEditText,'String');
xe_potButton=str2num(xe_potButton_s);
a_potButton_s=get(handles.wellwidthEditText,'String');
a_potButton=str2num(a_potButton_s);
x_l_potButton_s=get(handles.xrangeEditText,'String');
x_l_potButton=str2num(x_l_potButton_s);
n_engButton_s=get(handles.englevelEditText,'String');
n=str2num(n_engButton_s);
if isequal(De_potButton,double(''))==1 || isequal(xe_potButton,double(''))==1 || isequal(a_potButton,double(''))==1 || isequal(x_l_potButton,double(''))==1 || isequal(n,double(''))==1 && x_l_potButton==0
    errordlg('The range for dissociation energy must lie within 50 - 300, equilibirium position within 0.5 - 2.5, well width within 1 - 4 and x-range within 5 - 20 and energy must be positive integer from 0 - 9.','ValueError');
elseif De_potButton>=50 && De_potButton<=300 && xe_potButton>=0.5 && xe_potButton<=2.5 && a_potButton>=1 && a_potButton<=4 && x_l_potButton>=5 && x_l_potButton<=20 && (n==0 || n==1 || n==2 || n==2 || n==3 || n==4 || n==5 || n==6 || n==7 || n==8) || n==9
    hold off;
    morsepotential(handles);
    hold on;
    morsenergy(handles);
    hold on;
    schrodinger(handles);
    ylabel('\bf Plot of $\Psi_{n}$($x$), $Potential$ $V(x)$ and $Energy$ $E_{n}$($x$) -- (units arb)','Interpreter','latex'); 
else
    errordlg('The range for dissociation energy must lie within 50 - 300, equilibirium position within 0.5 - 2.5, well width within 1 - 4 and x-range within 5 - 20 and energy must be positive integer from 0 - 9.','ValueError');
end


% --------------------------------------------------------------------
function fileMenu_Callback(hObject, eventdata, handles)
% hObject    handle to fileMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in showData.
function showData_Callback(hObject, eventdata, handles)
% hObject    handle to showData (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
showdata(handles);