function varargout = Fire(varargin)
global target
% FIRE MATLAB code for Fire.fig
%      FIRE, by itself, creates a new FIRE or raises the existing
%      singleton*.
%
%      H = FIRE returns the handle to a new FIRE or the handle to
%      the existing singleton*.
%
%      FIRE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FIRE.M with the given input arguments.
%
%      FIRE('Property','Value',...) creates a new FIRE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Fire_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Fire_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Fire

% Last Modified by GUIDE v2.5 29-Dec-2018 15:20:56

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Fire_OpeningFcn, ...
                   'gui_OutputFcn',  @Fire_OutputFcn, ...
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


% --- Executes just before Fire is made visible.
function Fire_OpeningFcn(hObject, eventdata, handles, varargin)
global target
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Fire (see VARARGIN)
target=100*rand();
hold on
 plot(target,0,'r*')
% Choose default command line output for Fire
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Fire wait for user response (see UIRESUME)
% uiwait(handles.aText);


% --- Outputs from this function are returned to the command line.
function varargout = Fire_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function angleText_Callback(hObject, eventdata, handles)
% hObject    handle to angleText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of angleText as text
%        str2double(get(hObject,'String')) returns contents of angleText as a double


% --- Executes during object creation, after setting all properties.
function angleText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to angleText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function velocityText_Callback(hObject, eventdata, handles)
% hObject    handle to velocityText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of velocityText as text
%        str2double(get(hObject,'String')) returns contents of velocityText as a double


% --- Executes during object creation, after setting all properties.
function velocityText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to velocityText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in fireButton.
function fireButton_Callback(hObject, eventdata, handles)
global target
% hObject    handle to fireButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
aobj=findobj('Tag','angleText');
angle=get(aobj,'String');
angle=str2double(angle);

vobj=findobj('Tag','velocityText');
velocity=get(vobj,'String');
velocity=str2double(velocity);

time=0:0.01:1000000;
x=0+velocity*cosd(angle)*time+1/2*0*time.^2;
y=0+velocity*sind(angle)*time+1/2*(-9.81)*time.^2;
goodvalues=find(y>=0);
goodys=y(goodvalues);
goodxs=x(goodvalues);
hold on
comet(goodxs,goodys)
tp=1:0.01:1000000;
yp=0+velocity*sind(angle)*tp+1/2*(-9.81)*tp.^2;
endpoint=find(yp==0);
rError=abs(endpoint-target)/target;
if rError==0
    msgbox('Reached Target');
else
    %msgbox(sprintf('Relative Error = %f',r))
    msgbox(sprintf('Relative Error = %f',rError))
end

