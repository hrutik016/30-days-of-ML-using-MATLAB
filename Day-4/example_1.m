function varargout = example_1(varargin)
% EXAMPLE_1 MATLAB code for example_1.fig
%      EXAMPLE_1, by itself, creates a new EXAMPLE_1 or raises the existing
%      singleton*.
%
%      H = EXAMPLE_1 returns the handle to a new EXAMPLE_1 or the handle to
%      the existing singleton*.
%
%      EXAMPLE_1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EXAMPLE_1.M with the given input arguments.
%
%      EXAMPLE_1('Property','Value',...) creates a new EXAMPLE_1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before example_1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to example_1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help example_1

% Last Modified by GUIDE v2.5 19-Sep-2021 01:02:51

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @example_1_OpeningFcn, ...
                   'gui_OutputFcn',  @example_1_OutputFcn, ...
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


% --- Executes just before example_1 is made visible.
function example_1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to example_1 (see VARARGIN)

% Choose default command line output for example_1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes example_1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = example_1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


%after making new push button in GUI, following function has been created.
%you should not delete any part of above code

% --- Executes on button press in chooseimage.
function chooseimage_Callback(hObject, eventdata, handles)
% hObject    handle to chooseimage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

[filename, pathname] = uigetfile('*.png', 'Pick a Image file');
    if isequal(filename,0) || isequal(pathname,0)
       disp('User pressed cancel');
       
       %to present it as a warning
       warndlg('User pressed cancel');
       
       %to present it as an error
       errordlg('User pressed cancel')
    else
       disp(['User selected ', fullfile(pathname, filename)])
       A = imread('cameraman.tif');
       
       %to choose image from any other folder, use this
       %A = imread(strcat(pathname,pathname);
       axes(handles.axes1);
       imshow(A); 
       
       %to let other function use his image
       handles.A = A
    end
    % Update handles structure
guidata(hObject, handles);


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
A = handles.A;

val = get(hObject,'Value');

B = imadd(A, val);
axes(handles.axes2);
imshow(B);
disp(val);



% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
