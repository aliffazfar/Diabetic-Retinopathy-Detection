function varargout = DiabeticR(varargin)
% DIABETICR MATLAB code for DiabeticR.fig
%      DIABETICR, by itself, creates a new DIABETICR or raises the existing
%      singleton*.
%
%      H = DIABETICR returns the handle to a new DIABETICR or the handle to
%      the existing singleton*.
%
%      DIABETICR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DIABETICR.M with the given input arguments.
%
%      DIABETICR('Property','Value',...) creates a new DIABETICR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before DiabeticR_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to DiabeticR_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help DiabeticR

% Last Modified by GUIDE v2.5 08-Oct-2019 21:05:43

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @DiabeticR_OpeningFcn, ...
                   'gui_OutputFcn',  @DiabeticR_OutputFcn, ...
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


% --- Executes just before DiabeticR is made visible.
function DiabeticR_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to DiabeticR (see VARARGIN)

% Choose default command line output for DiabeticR
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes DiabeticR wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = DiabeticR_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in insertImage.
function insertImage_Callback(hObject, eventdata, handles)
% hObject    handle to insertImage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Insert image into matlab
global image
[a,b] = uigetfile({'*.*';'*.bmp';'*.jpg';'*.gif'}); %all type of files
image = strcat(b,a);
image = imread(image);
axes(handles.axes1);
imshow(image);


% --- Executes on button press in greenchannel.
function greenchannel_Callback(~, eventdata, handles)
% hObject    handle to greenchannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Convert image to greenchannel using RGB
global R
global G
global B
global image
R=image(:,:,1);
G=image(:,:,2);
B=image(:,:,3);
axes(handles.axes2);
imshow(G);
figure,imshow(G);title('Green Channel');


% --- Executes on button press in tophatFiltering.
function tophatFiltering_Callback(hObject, eventdata, handles)
% hObject    handle to tophatFiltering (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global morphological
global G
se=strel('disk',5);           
morphological=imbothat(G,se);
axes(handles.axes3);
imshow(morphological);
figure,imshow(morphological,[]);title('Fundus Region after applying Morphological Bottom Hat');


% --- Executes on button press in exudates.
function exudates_Callback(hObject, eventdata, handles)
% hObject    handle to exudates (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% this is our threshold level

global G
global filterTophat
global morphological
se=strel('disk',30);           
filterTophat=imtophat(G,se);
figure,imshow(filterTophat,[]);title('Fundus Region after applying Morphological Top Hat');
tmp=im2bw(filterTophat-morphological,.2);
figure,imshow(tmp);hold on;title('Exudates Segmentation');
handles.ImgData3=tmp;
guidata(hObject,handles);
axes(handles.axes3);


% --- Executes on button press in extraction.
function extraction_Callback(hObject, eventdata, handles)
% hObject    handle to extraction (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%Features Extraction using GLCM

persistent var; %Position of the excel cell.
if isempty(var) %Checks if var is empty.
    var = 1;
end

tmp = handles.ImgData3;
GLCM2 = graycomatrix(tmp,'Offset',[0 1], 'Symmetric', true);
stats = GLCMFeatures(GLCM2,0); 
%disp(stats); 
set(handles.txt1, 'String', stats.contr); %Display the Contrast value.
%set(handles.txt2, 'String', stats.corrm); %Display the Correlation value.
set(handles.txt3, 'String', stats.energ); %Display the Energy value.
set(handles.txt4, 'String', stats.entro); %Display the Entropy value.
set(handles.txt5, 'String', stats.homom); %Display the Homogeneity value.
set(handles.txt6, 'String', stats.savgh); %Display the Sum Average value.
set(handles.txt7, 'String', stats.svarh); %Display the Sum Variance value.
set(handles.txt8, 'String', stats.dissi); %Display the Dissimilarity value.
%set(handles.edit6, 'String', stats.senth); %Display the Sum Entropy value.
%set(handles.edit9, 'String', stats.sosvh); %Display the Sum of Squares value.
%set(handles.edit10, 'String', stats.cprom); %Display the Cluster Prominence value.
%set(handles.edit11, 'String', stats.cshad); %Display the Cluster Shade value.
%set(handles.edit13, 'String', stats.maxpr); %Display the Maximum Probability value.
%set(handles.edit14, 'String', stats.dvarh); %Display the Difference Variance value.
%set(handles.edit15, 'String', stats.denth); %Display the Difference Entropy value.
contrast = stats.contr;
%correlation = stats.corrm;
energy = stats.energ;
entropy = stats.entro;
homogeneity = stats.homom;
average = stats.savgh;
variance = stats.svarh;
dissimilarity = stats.dissi;
%sumEntropy = stats.senth;
%sumOfSquares = stats.sosvh;
%clusterProm = stats.cprom;
%clusterShade = stats.cshad;
%maxProbability = stats.maxpr;
%differenceVar = stats.dvarh;
%differenceEntro = stats.denth;

%Insert the variables into a matrix.
matrix = [contrast energy entropy homogeneity average variance dissimilarity]; 
filename = 'NewData1.xlsx';
range = strcat('A',int2str(var));
xlswrite(filename, matrix, 1, range); %Export the values into the excel file.
var = var + 1;
setappdata(handles.figure1, 'glcm_output', matrix);


% --- Executes on button press in reset.
function reset_Callback(hObject, eventdata, handles)
% hObject    handle to reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%reset interface
%set( findall(0, 'type', 'uicontrol', 'style', 'text'), 'String', {''});
%delete( findall(0, 'type', 'image') );

%clear axes
cla(handles.axes1);
cla(handles.axes2);
cla(handles.axes3);

%clear string
set(handles.txt1, 'String', '');
%set(handles.txt2, 'String', '');
set(handles.txt3, 'String', '');
set(handles.txt4, 'String', '');
set(handles.txt5, 'String', '');
set(handles.txt6, 'String', '');
set(handles.txt7, 'String', '');
set(handles.txt8, 'String', '');
set(handles.txt_accuracy, 'String', '');
set(handles.txt_result, 'String', '');

% --- Executes on button press in classify.
function classify_Callback(hObject, eventdata, handles)
% hObject    handle to classify (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load LatestFeatures.mat %Load the table of values.
I12 = handles.ImgData3;
GLCM2 = graycomatrix(I12,'Offset',[0 1], 'Symmetric', true);
stats = GLCMFeatures(GLCM2,0); 

contrast = stats.contr;
%correlation = stats.corrm;
energy = stats.energ;
entropy = stats.entro;
homogeneity = stats.homom;
average = stats.savgh;
variance = stats.svarh;
dissimilarity = stats.dissi;

features = [contrast,energy,entropy,homogeneity,average,variance,dissimilarity];

T = array2table(features,....
    'VariableNames', {'VarName1', 'VarName2', 'VarName3', 'VarName4', 'VarName5', 'VarName6', 'VarName7'});

[trainedClassifier, validationAccuracy] = trainClassifierDR(NewData);
yfit = trainedClassifier.predictFcn(T);
set(handles.txt_result, 'String', char(yfit)); %Display type of disease

actual = validationAccuracy*100;
set(handles.txt_accuracy,'String',actual); %Display the accuracy

% --- Executes on button press in txt3.
function contrast_Callback(hObject, eventdata, handles)
% hObject    handle to txt3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in txt5.
function correlation_Callback(hObject, eventdata, handles)
% hObject    handle to txt5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in txt6.
function energy_Callback(hObject, eventdata, handles)
% hObject    handle to txt6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in txt4.
function homogeneity_Callback(hObject, eventdata, handles)
% hObject    handle to txt4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in txt1.
function meanval_Callback(hObject, eventdata, handles)
% hObject    handle to txt1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in txt2.
function stdval_Callback(hObject, eventdata, handles)
% hObject    handle to txt2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in exit.
function exit_Callback(hObject, eventdata, handles)
% hObject    handle to exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%to exit from the interface
close all;


% --- Executes on button press in excel.
function excel_Callback(hObject, eventdata, handles)
% hObject    handle to excel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function txt_result_Callback(hObject, eventdata, handles)
% hObject    handle to txt_result (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt_result as text
%        str2double(get(hObject,'String')) returns contents of txt_result as a double


% --- Executes during object creation, after setting all properties.
function txt_result_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_result (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function txt_accuracy_Callback(hObject, eventdata, handles)
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
