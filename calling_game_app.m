function varargout = calling_game_app(varargin)
% calling_game_app MATLAB code for calling_game_app.fig
%      calling_game_app, by itself, creates a new calling_game_app or raises the existing
%      singleton*.
%
%      H = calling_game_app returns the handle to a new calling_game_app or the handle to
%      the existing singleton*.
%
%      calling_game_app('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in calling_game_app.M with the given input arguments.
%
%      calling_game_app('Property','Value',...) creates a new calling_game_app or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before calling_game_app_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to calling_game_app_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help calling_game_app

% Last Modified by GUIDE v2.5 04-Mar-2017 08:24:20

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @calling_game_app_OpeningFcn, ...
    'gui_OutputFcn',  @calling_game_app_OutputFcn, ...
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


% --- Executes just before calling_game_app is made visible.
function calling_game_app_OpeningFcn(hObject, ~, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to calling_game_app (see VARARGIN)
T = struct2table([dir('*.jpg'); dir('*.png')]); % convert the struct array to a table
sortedT = sortrows(T, 'name'); % sort the table by 'DOB'
sortedS = table2struct(sortedT);

handles.figs = sortedS;
handles.mp3s = dir('*.mp3');

% Choose default command line output for calling_game_app
handles.output = hObject;
handles.score = 0;
handles.i = 1;
handles.trial = 0;
handles.N = 0;
handles.success = 0;
handles.play =0;
file.mp3s = handles.mp3s;
len.mp3 = size(str2mat(file.mp3s.name),1);
rMp3 = 1:len.mp3;
handles.rMp3 = rMp3(randperm(len.mp3));
handles.lenMp3 = len.mp3;
% handles.text10 = "?";
str = pwd ;
idx = strfind(str,'\') ;
foldername = str(idx(end)+1:end) ;
set(handles.text10, 'String',strcat('Do you know the Language of ',{' '}, foldername,"?"));
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes calling_game_app wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = calling_game_app_OutputFcn(~, ~, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
% --- Executes during object creation, after setting all properties.
function text_a_CreateFcn(~, ~, handles)
% hObject    handle to text_a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

function text4_CreateFcn(~, ~, ~)
% hObject    handle to text4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
% --- Executes during object creation, after setting all properties.
function text5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function uibuttongroup4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uibuttongroup4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --------------------------------------------------------------------
function uibuttongroup4_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to uibuttongroup4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function radiobutton1_CreateFcn(~, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
% set(handles.radiobutton1,'String','a')


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(~, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
get(handles.radiobutton1, 'String');
% Hint: get(hObject,'Value') returns toggle state of radiobutton1


% --- Executes during object creation, after setting all properties.
function radiobutton2_CreateFcn(~, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(~, ~, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2


% --- Executes during object creation, after setting all properties.
function radiobutton3_CreateFcn(~, ~, ~)
% hObject    handle to radiobutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in radiobutton3.
function radiobutton3_Callback(~, ~, ~)
% hObject    handle to radiobutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton3


% --- Executes during object creation, after setting all properties.
function radiobutton4_CreateFcn(~, ~, ~)
% hObject    handle to radiobutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in radiobutton4.
function radiobutton4_Callback(~, ~, ~)
% hObject    handle to radiobutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton4



% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, ~, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.submit = 0;
handles.play = handles.play + 1;
disp(["Play" handles.play])
if (handles.play == 1)
    
    file.mp3s = handles.mp3s;
    % rMp3 = datasample(1:len.mp3,1,'Replace',false);
    rMp3 = handles.rMp3;
    k = handles.i;
    handles.k = k;
    set(handles.textN, 'String',strcat('# : ',num2str(k)));
    handles.i = handles.i + 1;
    irMp3 = rMp3(k);
    [y,Fs] = audioread(file.mp3s(irMp3).name);
    disp(file.mp3s(irMp3).name)
    %player = audioplayer(y,Fs);
    sound(y,Fs);
    
    
    file.jpgs = handles.figs;
    len = size(str2mat(file.jpgs.name),1);
    rImg = rMp3(rMp3~=irMp3);
    rImg = datasample(rImg,3,'Replace',false);
    rImg = [rImg irMp3];
    rImg = rImg(randperm(4));
    
    handles.rImg = rImg;
    ans = strsplit(file.mp3s(irMp3).name,'.');
    a = strsplit(file.jpgs(rImg(1)).name,'.');
    b = strsplit(file.jpgs(rImg(2)).name,'.');
    c = strsplit(file.jpgs(rImg(3)).name,'.');
    d = strsplit(file.jpgs(rImg(4)).name,'.');
    handles.ans = ans(1);
    handles.a = a(1);
    handles.b = b(1);
    handles.c = c(1);
    handles.d = d(1);
    set(handles.text5, 'String', strcat('Score : ',num2str(handles.score)));
    set(handles.text4, 'String', '');
    guidata(hObject,handles)
    
    axes(handles.axes1)
    set(handles.text_a, 'String', a(1));
    imshow(file.jpgs(rImg(1)).name);
    
    axes(handles.axes2)
    set(handles.text_b, 'String', b(1));
    imshow(file.jpgs(rImg(2)).name);
    
    axes(handles.axes3)
    set(handles.text_c, 'String', c(1));
    imshow(file.jpgs(rImg(3)).name);
    
    axes(handles.axes4)
    set(handles.text_d, 'String', d(1));
    imshow(file.jpgs(rImg(4)).name);
elseif (handles.play == 2)
    file.mp3s = handles.mp3s;
    rMp3 = handles.rMp3;
    irMp3 = rMp3(handles.k);
    [y,Fs] = audioread(file.mp3s(irMp3).name);
    player1 = audioplayer(y,Fs);
    clear sound;
    sound(y,Fs);
    %playblocking(player1);
    disp(["a" handles.play])
else
    set(handles.pushbutton2,'string','Eneough Playing!','enable','on');
    %pause(player);
end
% set(handels.radiobutton1,'String','a');


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.submit = handles.submit + 1;
if (handles.submit ==1)
    handles.trial = handles.trial +1;
    trial = handles.trial;
    set(handles.textTrial, 'String',strcat('Trials : ',num2str(trial)));
    clear sound;
    % handles.ans
    if (get(handles.radiobutton1,'Value')==1 )
        disp([handles.ans,handles.a])
        if (strcmp(handles.ans,handles.a) == 1 )
            set(handles.text4, 'String', 'Correct');
            handles.score = handles.score + 1;
            set(handles.text5, 'String', strcat('Score : ',num2str(handles.score)));
            set(handles.pushbutton2,'string','Play Next','enable','on');
            handles.play = 0;
        else
            set(handles.text4, 'String', 'Incorrect');
            handles.submit=0;
            set(handles.pushbutton2,'string','Replay','enable','on');
            %     set(handles.radiobutton1, 'String', 'a');
            %     handles.rImg
        end
    elseif (get(handles.radiobutton2,'Value')==1 )
        disp([handles.ans,handles.b])
        if (strcmp(handles.ans,handles.b) == 1 )
            set(handles.text4, 'String', 'Correct');
            handles.score = handles.score + 1;
            set(handles.text5, 'String', strcat('Score : ',num2str(handles.score)));
            handles.play = 0;
            set(handles.pushbutton2,'string','Play Next','enable','on');
        else
            set(handles.text4, 'String', 'Incorrect');
            handles.submit=0;
            set(handles.pushbutton2,'string','Replay','enable','on');
            %     set(handles.radiobutton1, 'String', 'a');
            %     handles.rImg
        end
    elseif (get(handles.radiobutton3,'Value')==1 )
        disp([handles.ans,handles.c])
        if (strcmp(handles.ans,handles.c) == 1 )
            set(handles.text4, 'String', 'Correct');
            handles.score = handles.score + 1;
            set(handles.text5, 'String', strcat('Score : ',num2str(handles.score)));
            handles.play = 0;
            set(handles.pushbutton2,'string','Play Next','enable','on');
        else
            set(handles.text4, 'String', 'Incorrect');
            handles.submit=0;
            set(handles.pushbutton2,'string','Replay','enable','on');
            %     set(handles.radiobutton1, 'String', 'a');
            %     handles.rImg
        end
    elseif (get(handles.radiobutton4,'Value')==1 )
        disp([handles.ans,handles.d])
        if (strcmp(handles.ans,handles.d) == 1 )
            set(handles.text4, 'String', 'Correct');
            handles.score = handles.score + 1;
            set(handles.text5, 'String', strcat('Score : ',num2str(handles.score)));
            handles.play = 0;
            set(handles.pushbutton2,'string','Play Next','enable','on');
        else
            set(handles.text4, 'String', 'Incorrect');
            handles.submit=0;
            set(handles.pushbutton2,'string','Replay','enable','on');
            %     set(handles.radiobutton1, 'String', 'a');
            %     handles.rImg
        end
        
    end
    set(handles.textSuccess, 'String', strcat('Success rate : ', num2str(round(handles.score*100/trial)),' %'));
end
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function textN_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function textTrial_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textTrial (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function textSuccess_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textSuccess (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
