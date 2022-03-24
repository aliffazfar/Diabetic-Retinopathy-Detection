function varargout = prototype(varargin)
% PROTOTYPE MATLAB code for prototype.fig
%      PROTOTYPE, by itself, creates a new PROTOTYPE or raises the existing
%      singleton*.
%
%      H = PROTOTYPE returns the handle to a new PROTOTYPE or the handle to
%      the existing singleton*.
%
%      PROTOTYPE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROTOTYPE.M with the given input arguments.
%
%      PROTOTYPE('Property','Value',...) creates a new PROTOTYPE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before prototype_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to prototype_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help prototype

% Last Modified by GUIDE v2.5 30-Nov-2021 00:55:34

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @prototype_OpeningFcn, ...
                   'gui_OutputFcn',  @prototype_OutputFcn, ...
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


% --- Executes just before prototype is made visible.
function prototype_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to prototype (see VARARGIN)

% Choose default command line output for prototype
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

handles.axes1.YAxis.Visible = 'off'; % remove y-axis
handles.axes1.XAxis.Visible = 'off'; % remove x-axis
handles.axes2.YAxis.Visible = 'off'; % remove y-axis
handles.axes2.XAxis.Visible = 'off'; % remove x-axis
handles.axes3.YAxis.Visible = 'off'; % remove y-axis
handles.axes3.XAxis.Visible = 'off'; % remove x-axis
% UIWAIT makes prototype wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = prototype_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to txt_accuracy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt_accuracy as text
%        str2double(get(hObject,'String')) returns contents of txt_accuracy as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_accuracy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to txt_result (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt_result as text
%        str2double(get(hObject,'String')) returns contents of txt_result as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_result (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to txt_result (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt_result as text
%        str2double(get(hObject,'String')) returns contents of txt_result as a double




function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to txt_accuracy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt_accuracy as text
%        str2double(get(hObject,'String')) returns contents of txt_accuracy as a double


% --- Executes during object creation, after setting all properties.
function txt_accuracy_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_accuracy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to txt3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt3 as text
%        str2double(get(hObject,'String')) returns contents of txt3 as a double


% --- Executes during object creation, after setting all properties.
function txt3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to txt4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt4 as text
%        str2double(get(hObject,'String')) returns contents of txt4 as a double


% --- Executes during object creation, after setting all properties.
function txt4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to txt5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt5 as text
%        str2double(get(hObject,'String')) returns contents of txt5 as a double


% --- Executes during object creation, after setting all properties.
function txt5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes during object creation, after setting all properties.
function txt1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% --- Executes during object creation, after setting all properties.
function txt2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function txt_result_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_result (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% --- Executes on button press in resetbtn.
function resetbtn_Callback(hObject, eventdata, handles)
% hObject    handle to resetbtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



set(handles.inputbtn,'Enable','on');
set(handles.resetbtn,'Enable','off');
set(handles.greenbtn,'Enable','off');
set(handles.morpbtn,'Enable','off');
set(handles.febtn,'Enable','off');
set(handles.classbtn,'Enable','off');
drawnow;

cla(handles.axes1,'reset');
cla(handles.axes2,'reset');
cla(handles.axes3,'reset');
handles.axes1.YAxis.Visible = 'off'; % remove y-axis
handles.axes1.XAxis.Visible = 'off'; % remove x-axis
handles.axes2.YAxis.Visible = 'off'; % remove y-axis
handles.axes2.XAxis.Visible = 'off'; % remove x-axis
handles.axes3.YAxis.Visible = 'off'; % remove y-axis
handles.axes3.XAxis.Visible = 'off'; % remove x-axis
set(handles.txt_result, 'String', '');
set(handles.txt_accuracy, 'String', '');
set(handles.txt1, 'String', '');
set(handles.txt2, 'String', '');
set(handles.txt3, 'String', '');
set(handles.txt4, 'String', '');
set(handles.txt5, 'String', '');


% --- Executes on button press in exitbtn.
function exitbtn_Callback(hObject, eventdata, handles)
% hObject    handle to exitbtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
closereq(); 





% --- Executes on button press in inputbtn.
function inputbtn_Callback(hObject, eventdata, handles)

% hObject    handle to inputbtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Have user browse for a file, from a specified "starting folder."
% For convenience in browsing, set a starting folder from which to browse.
startingFolder = '/Users/aliffazfar/Desktop/testimages/';
if ~exist(startingFolder, 'dir')
  % If that folder doesn't exist, just start in the current folder.
  startingFolder = pwd;
end
% Get the name of the file that the user wants to use.
defaultFileName = fullfile(startingFolder, '*.*');
[baseFileName, folder] = uigetfile(defaultFileName, 'Select a file');
if baseFileName == 0
  % User clicked the Cancel button.
  return;
end

global imgrsz;
fullFileName = fullfile(folder, baseFileName)
myImage = imread(fullFileName);
imgrsz = imresize(myImage, [512 512]);
axes(handles.axes1);
imshow(imgrsz)
set(handles.resetbtn,'Enable','on');
set(handles.inputbtn,'Enable','off');
set(handles.greenbtn,'Enable','on');
drawnow;



% --- Executes on button press in greenbtn.
function greenbtn_Callback(hObject, eventdata, handles)
% hObject    handle to greenbtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Get the dimensions of the image.  
% numberOfColorBands should be = 1.
global imgrsz;
grayImage = imgrsz;
[rows, columns, numberOfColorBands] = size(grayImage);
if numberOfColorBands > 1
  % It's not really gray scale like we expected - it's color.
  % Convert it to gray scale by taking only the green channel.
  grayImage = grayImage(:, :, 2); % Take green channel.
end

mask = imread('fmask.tif'); 
mask = imresize(mask,[512 512]);

%Histogram Equalization
heImage = adapthisteq(grayImage,'clipLimit',0.02,'Distribution','rayleigh');
% Mask the image.
heImage = heImage .* uint8(mask);
med2 = medfilt2(heImage);
axes(handles.axes2);
imshow(med2);
imgrsz = med2;

set(handles.resetbtn,'Enable','on');
set(handles.inputbtn,'Enable','off');
set(handles.greenbtn,'Enable','off');
set(handles.morpbtn,'Enable','on');
drawnow;



% --- Executes on button press in morpbtn.
function morpbtn_Callback(hObject, eventdata, handles)
% hObject    handle to morpbtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global imgrsz;

global morphological

se=strel('disk',5);           
morphological=imbothat(imgrsz,se);
med2  = imadjust(morphological);

axes(handles.axes3);
imshow(med2);
imgrsz = med2;
set(handles.resetbtn,'Enable','on');
set(handles.inputbtn,'Enable','off');
set(handles.greenbtn,'Enable','off');
set(handles.morpbtn,'Enable','off');
set(handles.febtn,'Enable','on');
drawnow;


% --- Executes on button press in febtn.
function febtn_Callback(hObject, eventdata, handles)
% hObject    handle to febtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global imgrsz;

tmp = imgrsz;
% Create the Gray Level Cooccurance Matrices (GLCMs) 
glcms = graycomatrix(tmp,'Offset',[0 1], 'Symmetric', true);
% Derive Statistics from GLCM
stats = GLCMFeatures(glcms,0); 
contrast = stats.contr;
correlation = stats.corrm;
energy = stats.energ;
entropy = stats.entro;
homogeneity = stats.homom;
features = [contrast, correlation, energy, entropy, homogeneity]

T = array2table(features,....
    'VariableNames', {'VarName1', 'VarName2', 'VarName3', 'VarName4', 'VarName5'});

filename = 'NewData.xlsx';
writetable(T,filename)
setappdata(handles.figure1, 'glcm_output', features);


%disp(stats); 
set(handles.txt1, 'String', stats.contr); %Display the Contrast value.
set(handles.txt2, 'String', stats.corrm); %Display the Correlation value.
set(handles.txt3, 'String', stats.energ); %Display the Energy value.
set(handles.txt4, 'String', stats.entro); %Display the Entropy value.
set(handles.txt5, 'String', stats.homom); %Display the Homogeneity value.

set(handles.resetbtn,'Enable','on');
set(handles.inputbtn,'Enable','off');
set(handles.greenbtn,'Enable','off');
set(handles.morpbtn,'Enable','off');
set(handles.febtn,'Enable','off');
set(handles.classbtn,'Enable','on');
drawnow;

% --- Executes on button press in classbtn.
function classbtn_Callback(hObject, eventdata, handles)
% hObject    handle to classbtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

f = waitbar(0,'Please wait...');
pause(.5)

waitbar(.33,f,'Loading trained dataset');
pause(1.6)

load('cubic.mat', 'trainedModel');
%load ('matlab2.mat');
%load ('classifySVM.mat');

testdata=readtable("NewData.xlsx")

%yfit = trainedModel1.predictFcn(testdata);

waitbar(.33,f,'Predicting extracted features');
pause(1.6)

yfit = trainedModel.predictFcn(testdata);


waitbar(.67,f,'Compute cross-validation accuracy');
pause(1.6)

% Perform cross-validation
partitionedModel = crossval(trainedModel.ClassificationSVM, 'KFold', 5);

% Compute validation accuracy
validationAccuracy = 1 - kfoldLoss(partitionedModel, 'LossFun', 'ClassifError');

actual = validationAccuracy*100;


waitbar(1,f,'Generating accuracy and result');
pause(1)
set(handles.txt_accuracy,'String',actual);
set(handles.txt_result, 'String', char(yfit)); 

set(handles.resetbtn,'Enable','on');
set(handles.inputbtn,'Enable','off');
set(handles.greenbtn,'Enable','off');
set(handles.morpbtn,'Enable','off');
set(handles.febtn,'Enable','off');
set(handles.classbtn,'Enable','off');
drawnow;


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
