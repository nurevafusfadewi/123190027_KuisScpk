function varargout = fuzzy(varargin)
% FUZZY MATLAB code for fuzzy.fig
%      FUZZY, by itself, creates a new FUZZY or raises the existing
%      singleton*.
%
%      H = FUZZY returns the handle to a new FUZZY or the handle to
%      the existing singleton*.
%
%      FUZZY('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FUZZY.M with the given input arguments.
%
%      FUZZY('Property','Value',...) creates a new FUZZY or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before fuzzy_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to fuzzy_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help fuzzy

% Last Modified by GUIDE v2.5 21-Apr-2021 22:17:26

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @fuzzy_OpeningFcn, ...
                   'gui_OutputFcn',  @fuzzy_OutputFcn, ...
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


% --- Executes just before fuzzy is made visible.
function fuzzy_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to fuzzy (see VARARGIN)

% Choose default command line output for fuzzy
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes fuzzy wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = fuzzy_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function style_Callback(hObject, eventdata, handles)
% hObject    handle to style (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of style as text
%        str2double(get(hObject,'String')) returns contents of style as a double


% --- Executes during object creation, after setting all properties.
function style_CreateFcn(hObject, eventdata, handles)
% hObject    handle to style (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function mechanism_Callback(hObject, eventdata, handles)
% hObject    handle to mechanism (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of mechanism as text
%        str2double(get(hObject,'String')) returns contents of mechanism as a double


% --- Executes during object creation, after setting all properties.
function mechanism_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mechanism (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton.
function pushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

sstyle = get(handles.style,'string');
smechanism = get(handles.mechanism,'string');
dstyle = str2double(sstyle);
dmechanism = str2double(smechanism);
out = evalfis([dstyle dmechanism],readfis('Untitled'));
sout = num2str(out);
set(handles.hasel,'string',sout);



function hasel_Callback(hObject, eventdata, handles)
% hObject    handle to hasel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hasel as text
%        str2double(get(hObject,'String')) returns contents of hasel as a double


% --- Executes during object creation, after setting all properties.
function hasel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hasel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on key press with focus on pushbutton2 and none of its controls.
function pushbutton2_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object deletion, before destroying properties.
function pushbutton2_DeleteFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sstyle = get(handles.style,'string');
smechanism = get(handles.mechanism,'string');
dstyle = str2double(sstyle);
dmechanism = str2double(smechanism);
out = evalfis([dstyle dmechanism],readfis('Untitled'));
sout = num2str(out);
set(handles.hasel,'string',sout);
