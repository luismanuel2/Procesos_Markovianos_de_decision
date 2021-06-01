function varargout = main(varargin)
% MAIN MATLAB code for main.fig
%      MAIN, by itself, creates a new MAIN or raises the existing
%      singleton*.
%
%      H = MAIN returns the handle to a new MAIN or the handle to
%      the existing singleton*.
%
%      MAIN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MAIN.M with the given input arguments.
%
%      MAIN('Property','Value',...) creates a new MAIN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before main_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to main_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help main

% Last Modified by GUIDE v2.5 01-Jun-2021 15:45:41

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @main_OpeningFcn, ...
                   'gui_OutputFcn',  @main_OutputFcn, ...
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


% --- Executes just before main is made visible.
function main_OpeningFcn(hObject, eventdata, handles, varargin)

set(handles.uitable3,'Visible','off');
set(handles.uitable2,'Visible','off');
set(handles.text1,'Visible','off');
set(handles.text4,'Visible','off');
set(handles.uitable4,'Visible','off');
set(handles.pushbutton3,'Visible','off');
set(handles.pushbutton2,'Visible','off');
set(handles.popupmenu,'Visible','off');
set(handles.pushbutton4,'Visible','off');
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to main (see VARARGIN)

% Choose default command line output for main
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes main wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = main_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
global es de estados decisiones trans k estados_validos costos pop validos...
    estados_validos_2;
es=str2num(get(handles.edit1,'String'));
set(handles.uitable3,'Data',cell(es,1),'ColumnEditable',true,'RowName',...
    {0:es-1},'ColumnName',{"Nombre de Estados"},'Visible','On');
de=str2num(get(handles.edit2,'String'));
set(handles.uitable2,'Data',cell(de,1 ),'ColumnEditable',true,'ColumnName',...
    {"Nombre de Decisiones"},'Visible','On');
set(handles.pushbutton2,'Visible','On');
set(handles.pushbutton4,'Visible','On');
set(handles.edit1,'Visible','off');
set(handles.edit2,'Visible','off');
set(handles.text2,'Visible','off');
set(handles.text3,'Visible','off');
set(handles.pushbutton1,'Visible','off');
 estados =[];
 decisiones=[];
costos=[];
estados_validos=[];
trans=[];validos=[];
k=0;pop=0;
estados_validos_2=[];

% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
  


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
global es de trans k estados_validos costos validos estados decisiones; 
k=k+1;
if k==1 
    estados=char(get(handles.uitable3,'Data'));
    decisiones=char(get(handles.uitable2,'Data'));
elseif k<=de+1
    ban=char(get(handles.uitable4,'Data'));
    %estado i ,estado j,decision k 
    trans(:,:,k-1)=reshape(str2num(ban),es,es); 
end

if k<=de
    set(handles.uitable3,'Visible','off');
    set(handles.uitable2,'Visible','off');
    set(handles.text2,'Visible','off');
    set(handles.edit1,'Visible','off');
    set(handles.text3,'Visible','off');
    set(handles.edit2,'Visible','off');
    set(handles.uitable2,'Visible','off');
    set(handles.pushbutton1,'Visible','of');
    set(handles.text1,'Visible','on');
    te="Decision k="+k;
    set(handles.text4,'Visible','on','String',te);
    L=num2cell(50*ones(1,es));
    set(handles.uitable4,'Data',cell(es,es),'ColumnEditable',true,'ColumnName',...
        {0:es-1},'Visible','On','RowName',{0:es-1},'ColumnWidth',L);
elseif k== de+1
    %estados validos para cada decision 
    validos=zeros([es de]);
    for i=1:de
        for j=1:es
            validos(j,i)=~isequal(trans(j,:,i),zeros([1 es]));
        end 
    end
    set(handles.text4,'Visible','off');
    set(handles.text1,'Visible','on','String','Matriz de costos');
    
    


    L=num2cell(50*ones(1,es));
    set(handles.uitable4,'Data',cell(es,de),'ColumnEditable',true,...
        'ColumnName',{1:de},'Visible','On','RowName',{0:es-1},'ColumnWidth',L);   
else 
    %costos de el estado i en la decision j 
    ban=char(get(handles.uitable4,'Data'));
    costos=reshape(str2num(ban),es,de); 
    costos(validos == 0) = NaN;
    tde=1:de;
    disp(validos);
    vec_estados_validos=mat2cell(validos.*tde,ones(es,1)')';
    %proceso para hacer las posibles combinaciones
     N = numel(vec_estados_validos);
     v = cell(N,1);
     [v{:}] = ndgrid(vec_estados_validos{:});
     res = reshape(cat(N+1,v{:}),[],N);
    
    %verificacion de las combinaciones validas
    eli=[];
    for i=1:size(res,1)
        if sum(ismember(res(i,:),0))~=0
           eli=[eli i]; 
        end 
    end 
    res(eli,:)=[];
    estados_validos=res;
    %mostrar los datos y opciones para calcular el resultado 
    es_validos=[];
    n=size(res,1);
    for i=1:n
        a='(';
        for j=1:es
            if j~=es
                a=strcat(a,num2str(res(i,j)),',');
            else 
                a=strcat(a,num2str(res(i,j)),')');
            end       
        end 
         es_validos=[es_validos;a];
    end 
    dat=[mat2cell(es_validos,ones(n,1)) mat2cell(true([n 1]),ones(n,1))]
    set(handles.uitable4,'Data',dat,'ColumnEditable',[false true],...
        'ColumnName',{'politicas','incluir'},'Visible','On','RowName',{1:n});  
    set(handles.text1,'Visible','on','String','Politicas validas');
    set(handles.pushbutton3,'Visible','on');
    set(handles.popupmenu,'Visible','on');
    set(handles.pushbutton2,'Visible','off');
    
end

% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handl
% es and user data (see GUIDATA)
  
function [resul, pi,cost,ind]=enu_ex_ep()
    global es de trans estados_validos costos estados_validos_2;
    cost=[];
    pis=[];
    n=size(estados_validos_2,1);
    
    for i=1:n
       p=[];
       co=[];
       for j=1:es
           p=[p;trans(j,:,estados_validos_2(i,j))];
           co=[co costos(j,estados_validos_2(i,j))];
       end 
       p=p';
       p=p-diag(ones([1 es]));
       p(es,:)=[];
       p=[p;ones([1 es])];
       b=[zeros([es-1,1]);1];
       sol=mldivide(p,b);
       pis=[pis;sol'];
       cost=[cost co*sol];
    end 
    [resul, ind]=min(cost);
    pi=pis(ind,:);
    
    


    
    

% --- Executes on selection change in popupmenu.
function popupmenu_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global pop;
pop=get(hObject,'Value');

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu


% --- Executes during object creation, after setting all properties.
function popupmenu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global estados_validos_2 estados_validos pop es estados decisiones;
cel=get(handles.uitable4,'Data');
%se queda solo con las politicas escogidas
eli=find(~cell2mat(cel(:,2)'));
estados_validos_2=estados_validos;
estados_validos_2(eli,:)=[];

if pop==2
    [resul, pi,cost,ind]=enu_ex_ep();
    str_pol='';
    n=size(cost,2);
    for i=1:n
        if i~=n
            str_pol=strcat(str_pol,{' '},num2str(cost(i)),',');
        else 
            str_pol=strcat(str_pol,{' '},num2str(cost(i)));
        end 
        
         
    end 
    a=' P=(';
    pis=' pi=(';
    str_sol='';
    for j=1:es
         if j~=es
             a=strcat(a,num2str(estados_validos_2(ind,j)),',');
             pis=strcat(pis,num2str(pi(j)),',');
             str_sol=strcat(str_sol,' para el estado',{' '},estados(j,:),...
                 ' tomar la decision',{' '},decisiones(estados_validos_2(ind,j),:),',');
         else 
             a=strcat(a,num2str(estados_validos_2(ind,j)),')');
             pis=strcat(pis,num2str(pi(j)),')');
             str_sol=strcat(str_sol,' para el estado',{' '},estados(j,:),...
                 ' tomar la decision',{' '},decisiones(estados_validos_2(ind,j),:),'.');
         end       
    end 
     
    imp_res=strcat('Los costos resultantes para las posibles politicas',...
        ' P1...P',{' '},mat2str(n),' son',' ',str_pol,' así que el costo minimo es de ',...
        {' '}, mat2str(resul),', los valores obtenidos de pi son ',pis,...
        ' y corresponden a la política ',a,', es decir la solucion optima es:',...
        str_sol);
    %agregamos el texto a la estructura handles de la interfaz principal 
    handles.most=imp_res;
    guidata(hObject,handles);
    
    %Mandamos a llamar a la interfaz secundaria
    most_EExh
    
    set(handles.uitable4,'Visible','On');
    set(handles.popupmenu,'Visible','On');
    set(handles.pushbutton3,'Visible','On');
    set(handles.pushbutton4,'Visible','On');
    
    
end 

%;


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.uitable3,'Visible','off');
set(handles.uitable2,'Visible','off');
set(handles.text1,'Visible','off');
set(handles.text4,'Visible','off');
set(handles.uitable4,'Visible','off');
set(handles.pushbutton3,'Visible','off');
set(handles.pushbutton2,'Visible','off');
set(handles.popupmenu,'Visible','off');
set(handles.pushbutton4,'Visible','off');
set(handles.edit1,'Visible','On','String','');
set(handles.edit2,'Visible','On','String','');
set(handles.text2,'Visible','On');
set(handles.text3,'Visible','On');
set(handles.pushbutton1,'Visible','On');