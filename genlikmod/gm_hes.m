function varargout = gm_hes(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gm_hes_OpeningFcn, ...
                   'gui_OutputFcn',  @gm_hes_OutputFcn, ...
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

function gm_hes_OpeningFcn(hObject, eventdata, handles, varargin)

handles.output = hObject;
guidata(hObject, handles);

function varargout = gm_hes_OutputFcn(hObject, eventdata, handles) 

varargout{1} = handles.output;

function pushbutton1_Callback(hObject, eventdata, handles)

a=get(handles.edit1,'string');
m=str2double(a);
t=0:0.001:0.5;
mt=cos(2*pi*m.*t);
axes(handles.axes1);
plot(t,mt)
xlabel('time')
ylabel('amplitude')
title('Message Signal')
b=get(handles.edit2,'string');
c=str2double(b);
tx=0:0.001:0.5;
ct=cos(2*pi*c.*tx);
axes(handles.axes2);
plot(tx,ct)
xlabel('time')
ylabel('amplitude')
title('Carrier Signal')
m=get(handles.edit3,'string');
ma=str2double(m);
ts=0:0.001:0.5;
st=ct.*(1+(ma*mt));
axes(handles.axes3);
plot(ts,st)
xlabel('time')
ylabel('amplitude')
title('Amplitude Modulation')

function edit1_Callback(hObject, eventdata, handles)

function edit1_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)

function edit2_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit3_Callback(hObject, eventdata, handles)

function edit3_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
    
end
