function varargout = most_EExh(varargin)
% MOST_EEXH MATLAB code for most_EExh.fig
%      MOST_EEXH, by itself, creates a new MOST_EEXH or raises the existing
%      singleton*.
%
%      H = MOST_EEXH returns the handle to a new MOST_EEXH or the handle to
%      the existing singleton*.
%
%      MOST_EEXH('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MOST_EEXH.M with the given input arguments.
%
%      MOST_EEXH('Property','Value',...) creates a new MOST_EEXH or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before most_EExh_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to most_EExh_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help most_EExh

% Last Modified by GUIDE v2.5 31-May-2021 23:51:59

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @most_EExh_OpeningFcn, ...
                   'gui_OutputFcn',  @most_EExh_OutputFcn, ...
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


% --- Executes just before most_EExh is made visible.
function most_EExh_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to most_EExh (see VARARGIN)

%Rescatamos la estructura handles de la interfaz principal y la almacenamos
%en una variable para luego recoger el dato que nos interesa.
mainHandles = guidata(main);
set(handles.text2, 'String', mainHandles.most);
% Choose default command line output for most_EExh
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes most_EExh wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = most_EExh_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
