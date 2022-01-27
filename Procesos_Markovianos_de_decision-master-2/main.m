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

% Last Modified by GUIDE v2.5 16-Jun-2021 00:59:24

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

% global es de trans  costos estados_validos_2 desc ite;
% es=4;
% trans=[0 7/8 1/16 1/16;0 3/4 1/8 1/8;0 0 1/2 1/2;0 0 0 0];
% trans(:,:,2)=[0 0 0 0;0 0 0 0;0 1 0 0;0 0 0 0];
% trans(:,:,3)=[0 0 0 0;1 0 0 0;1 0 0 0;1 0 0 0];
% costos=[0 NaN NaN;1000 NaN 6000;3000 4000 6000;NaN NaN 6000];
% estados_validos_2=[1,1,1,3;1,3,1,3;1,1,2,3;1,3,2,3;1,1,3,3;1,3,3,3];
% desc=0.9;
% ite=2;
% [nstr,vtr,strpol,pol]=aprox_sucesivas();



set(handles.uitable3,'Visible','off');
set(handles.uitable2,'Visible','off');
set(handles.text1,'Visible','off');
set(handles.text4,'Visible','off');
set(handles.uitable4,'Visible','off');
set(handles.pushbutton3,'Visible','off');
set(handles.pushbutton2,'Visible','off');
set(handles.popupmenu,'Visible','off');
set(handles.pushbutton4,'Visible','off');
set(handles.text9,'Visible','off');
set(handles.edit4,'Visible','off');
set(handles.text10,'Visible','off');
set(handles.edit5,'Visible','off');

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


%enumeracion exhaustiva de politicas
function [cost_minstr, pistr,coststr,polstr,pol]=enu_ex_ep()
global es de trans  costos estados_validos_2;
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
pol=estados_validos_2(ind,:);
%convertir a str
cost_minstr=num2str(resul);
polstr=['P=' pol_str(pol)];
pistr=['Pi=' pol_str(pi)];
coststr='';
for i=1:length(cost)
    coststr=[coststr strcat('P',num2str(i),'=',num2str(cost(i)),',') ' '];
end


% funcion para combinar un vector de numeros con un vector de caracteres
% separados por un caracter
function res=peg_num_str(nume,stre,car)
n=length(nume);
res=[];
bol=false;
if car=='+'
    bol=true;
end
for i=1:n
    if i==1
        if nume(i)==1
            res=strcat(res,stre(i,:));
        else
            res=strcat(res,num2str(nume(i)),stre(i,:));
        end
    else
        if nume(i)>0
            if nume(i)==1
                res=strcat(res,car,stre(i,:));
            else
                res=strcat(res,car,num2str(nume(i)),stre(i,:));
            end
        elseif nume(i)<0
            if bol
                if nume(i)==-1
                    res=strcat(res,'-',stre(i,:));
                else
                    res=strcat(res,num2str(nume(i)),stre(i,:));
                end
            else
                if nume(i)==-1
                    res=strcat(res,car,'-',stre(i,:));
                else
                    res=strcat(res,car,num2str(nume(i)),stre(i,:));
                end
            end
        end
    end
end
%funcion para convertir las politicas u otros vectores a el formato
%(n1,n2,...,nn)
function res=pol_str(pol)
n=length(pol);
res='(';
for i=1:n
    if i==1
        res=[res num2str(pol(i))];
    else
        res=[res ',' num2str(pol(i))];
    end
end
res=[res ')'];

% convertir las politicas a formato amigable
function str_sol=text_pol(pol)
global es estados decisiones
str_sol='';
for j=1:es
    if j~=es
        str_sol=strcat(str_sol,' para el estado',{' '},estados(j,:),...
            ' tomar la decision',{' '},decisiones(pol(j),:),',');
    else
        str_sol=strcat(str_sol,' para el estado',{' '},estados(j,:),...
            ' tomar la decision',{' '},decisiones(pol(j),:),'.');
    end
end


%programacion lineal
function [fstr,ystr,dstr,polstr,pol]=prog_lin()

global es de trans  costos ;
f=[];
fstr='min E(c)=';
varstr=[];
dvar=[];
Aeq=[];
indc=[];
indd=[];
dstr=[];
%obtener la funcion objetivo
for j=1:de
    for i=1:es
        if ~isnan(costos(i,j))
            varstr=[varstr;strcat('Y',mat2str(i-1),mat2str(j))];
            dvar=[dvar;strcat('D',mat2str(i-1),mat2str(j))];
            f=[f,costos(i,j)];
            indc=[indc,i];
            indd=[indd,j];
        end
    end
end
Aeq=[ones([1 length(f)])];
ni=length(indc);
%obtener las restricciones
for j=1:es-1
    pri=zeros([1 length(f)]);
    pri(find(indc==j))=1;
    sec=zeros([1 length(f)]);
    for i=1:ni
        sec(i)= trans(indc(i),j,indd(i));
    end
    Aeq=[Aeq;pri - sec];
end
beq=[1 zeros([1 es-1])];

%resolver el sistema
ys = linprog(f,[],[],Aeq,beq,zeros([1 length(f)]));
%encontrar las Ds
ds=zeros([1 length(indc)]);
ystr=[];
for i=1:ni
    den=sum(ys(find(indc==indc(i))));
    ds(i)=ys(i)/den;
    ystr=[ystr strcat(varstr(i,:),'=',num2str(ys(i)),',') ' '];
    dstr=[dstr strcat(dvar(i,:),'=',num2str(ds(i)),',') ' '];
end
%politica optima
pol=indd(find(ds==1));
polstr=['P=' pol_str(pol)];

%transformacion de el sistema a char
fstr=[fstr peg_num_str(f,varstr,'+') newline];
for i=1:size(Aeq,1)
    if i==1
        fstr=[fstr peg_num_str(Aeq(i,:),varstr,'+') '=1' newline];
    else
        fstr=[fstr peg_num_str(Aeq(i,:),varstr,'+') '=0' newline];
    end
end
fstr=[fstr peg_num_str(ones([1 ni]),varstr,',') '>=0' newline];



%mejoramiento de politicas
function [nstr,vstr,strpol,pol]=mejoramiento_pol()
global es de trans  costos estados_validos_2;
pol_ant=estados_validos_2(1,:);
pol=[];
sol=[];
n=0;
while 1
    n=n+1;
    A=[];
    b=[];
    %obtner el sistema para encontrar las respectivas v's
    for i=1:es
        temp=[];
        for j=1:es-1
            temp=[temp,-trans(i,j,pol_ant(i))];
        end
        A=[A;temp];
        b=[b;costos(i,pol_ant(i))];
    end
    di=diag([ones([1,es-1]) 0]);
    di(:,es)=[];
    A=[ones([es 1]),A+di];
    %resolver el sistema
    sol=mldivide(A,b);
    sol=[sol;0];
    
    for i=1:es
        grs=[];
        un=unique(estados_validos_2(:,i));
        %calcular los costos
        for u=1:length(un)
            j=un(u);
            cos=costos(i,j);
            for k=1:es-1
                cos=cos+trans(i,k,j)*sol(k+1);
            end
            cos=cos-sol(i+1);
            grs=[grs,[cos;j]];
        end
        %costo minimo y cambio de decision
        [val,in]=min(grs(1,:));
        pol=[pol,grs(2,in)];
    end
    if pol==pol_ant
        break;
    end
    pol_ant=pol;
    pol=[];
    sol=[];
end
%convertir todo a char
vstr='';
for i=1:length(sol)
    if i==1
        vstr=['g(R)=' num2str(sol(i))];
    else
        vstr=[vstr ', V' num2str(i-2) '=' num2str(sol(i))];
    end
end
strpol=['P=' pol_str(pol)];
nstr=num2str(n);


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


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




%mejoramiento de políticas con descuento
function [nstr,vstr,strpol,pol]=mejoramiento_desc()
global es de trans  desc  costos estados_validos_2;
pol_ant=estados_validos_2(1,:);
pol=[];
sol=[];
n=0;
while 1
    n=n+1;
    R=[];
    b=[];
    %Encontrar los valores 
    for i=1:es
        temp=[];
        for j=1:es
            temp=[temp,-desc*trans(i,j,pol_ant(i))];
        end
        R=[R;temp];
        b=[b;costos(i,pol_ant(i))];
    end
    di=diag(ones([1,es]));
    R=R+di;
    %Sistema de las V
    sol=mldivide(R,b);
    sol=[sol];
  
    for i=1:es
        V=[];
        un=unique(estados_validos_2(:,i));
        for u=1:length(un)
            j=un(u);
            cos=costos(i,j);
            for k=1:es
                cos=cos+desc*(trans(i,k,j)*sol(k)); %costos
            end
            V=[V,[cos;j]];
        end
        % mejoramiento
        [val,in]=min(V(1,:));
        pol=[pol,V(2,in)];
        
    end
    if pol==pol_ant
        break;
    end
    pol_ant=pol;
    pol=[];
    sol=[];
end
%convertir todo 
vstr='';
for i=1:length(sol)
    if i==1
        vstr=['V' num2str(i-1) '=' num2str(sol(i))];
    else
        vstr=[vstr ', V' num2str(i-1) '=' num2str(sol(i))];
    end
end
strpol=['P=' pol_str(pol)];
nstr=num2str(n);

function [nstr,vstr,strpol,pol]=aprox_sucesivas()
global es de trans ite desc  costos estados_validos_2;

pol=[];
sol=[];
V=[];

n=1;
[V,I]=min(costos,[],2)
while n < ite
    Vant=V;
    V=[];
    pol=[];
    n=n+1;
      for i=1:es
        mini=[];
        un=unique(estados_validos_2(:,i));
        for u=1:length(un)
            j=un(u);
            cos=costos(i,j);
            for k=1:es
                cos=cos+desc*(trans(i,k,j)*Vant(k)); %costo
            end      
            mini=[mini,[cos;j]];
        end
        %costo minimo y cambio de decision
        [val,I]=min(mini(1,:));
        V=[V,mini(1,I)];
        pol=[pol,mini(2,I)];
      end
      pol
end
pol
%convertir todo a char
vstr='';
for i=1:length(V)
    if i==1
        vstr=['V' num2str(i) '=' num2str(V(i))];
    else
        vstr=[vstr ', V' num2str(i) '=' num2str(V(i))];
    end
end
strpol=['P=' pol_str(pol)];
nstr=num2str(n);




% --- Executes on selection change in popupmenu.
function popupmenu_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global pop;
pop=get(hObject,'Value');

if pop==5 | pop==6
    set(handles.text9,'Visible','On');
    set(handles.edit4,'Visible','On');

else
    set(handles.text9,'Visible','off');
    set(handles.edit4,'Visible','off');
end   
    
  if pop==6
      set(handles.text10,'Visible','On');
      set(handles.edit5,'Visible','On');

   else
    set(handles.text10,'Visible','off');
    set(handles.edit5,'Visible','off');
  end
     


    

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
global estados_validos_2 estados_validos pop  desc ite es estados decisiones trans;
cel=get(handles.uitable4,'Data');
%se queda solo con las politicas escogidas
eli=find(~cell2mat(cel(:,2)'));
estados_validos_2=estados_validos;
estados_validos_2(eli,:)=[];
desc=str2num(get(handles.edit4,'String'));
ite=str2num(get(handles.edit5,'String'));
trans 


if pop==2
    [cost_minstr, pistr,coststr,polstr,pol]=enu_ex_ep();
    n=size(estados_validos_2,1);
    imp_res=strcat('Los costos resultantes para las posibles politicas',...
        ' P1...P',mat2str(n),' son',{char(10)},coststr,{char(10)},...
        'Así que el costo minimo es de ',{' '},cost_minstr,', los',...
        ' valores obtenidos de pi son',{' '},pistr,' y corresponden',...
        ' a la política',{' '},polstr,', es decir',...
        ' la solucion optima es: ',text_pol(pol));
    %agregamos el texto a la estructura handles de la interfaz principal
    handles.most=imp_res;
    guidata(hObject,handles);
    
    %Mandamos a llamar a la interfaz secundaria
    most_EExh
    
    set(handles.uitable4,'Visible','On');
    set(handles.popupmenu,'Visible','On');
    set(handles.pushbutton3,'Visible','On');
    set(handles.pushbutton4,'Visible','On');
elseif pop==3
    [fstr,ystr,dstr,polstr,pol]=prog_lin();
    imp_res=strcat('El modelo de programacion lineal a resolver es:',{char(10)},...
        {char(10)},fstr,{char(10)},'la solucion a el modelo de programacion',...
        ' lineal es:',{char(10)},ystr,{char(10)},'así mismo los valores de',...
        ' las Ds son',{char(10)},dstr,{char(10)},'y nuestra politica optima es',...
        {' '},polstr,', o bien,',{' '},text_pol(pol));
    
    handles.most=imp_res;
    
    guidata(hObject,handles);
    
    %Mandamos a llamar a la interfaz secundaria
    most_EExh
    
    set(handles.uitable4,'Visible','On');
    set(handles.popupmenu,'Visible','On');
    set(handles.pushbutton3,'Visible','On');
    set(handles.pushbutton4,'Visible','On');
elseif pop==4
    [nstr,vstr,strpol,pol]=mejoramiento_pol();
    imp_res=strcat('La solucion se obtuvo en',{' '}, nstr,{' '},'iteraciones,',...
        'los ultimos valores de g y vs encontrados son',{char(10)}, vstr,...
        {char(10)},'y la politca optima es',{' '},strpol,', o bien',{' '},text_pol(pol));
    handles.most=imp_res;
    
    guidata(hObject,handles);
    
    %Mandamos a llamar a la interfaz secundaria
    most_EExh
    
    set(handles.uitable4,'Visible','On');
    set(handles.popupmenu,'Visible','On');
    set(handles.pushbutton3,'Visible','On');
    set(handles.pushbutton4,'Visible','On');
    
    
elseif pop==5
  [nstr,vstr,strpol,pol]=mejoramiento_desc();
    imp_res=strcat('La política óptima se obtuvo en un número finito de ',{' '}, nstr,{' '},'iteraciones,',...
        'los Vi calculados  son',{char(10)}, vstr,... 
        {char(10)},'la politca optima es',{' '},strpol,', o bien',{' '},text_pol(pol));
    
    
    handles.most=imp_res;
    guidata(hObject,handles);
    
    %Mandamos a llamar a la interfaz secundaria
    most_EExh
    
    set(handles.uitable4,'Visible','On');
    set(handles.popupmenu,'Visible','On');
    set(handles.pushbutton3,'Visible','On');
    set(handles.pushbutton4,'Visible','On');
   
    

    
elseif pop==6
    [nstr,vstr,strpol,pol]=aprox_sucesivas();
    imp_res=strcat('La aproximación a la política óptima se obtuvo con las ',...
        {' '},num2str(ite),' iteraciones dadas por el usuario,',...
        'los Vi (costo descontado total)  son',{char(10)}, vstr,...     
        'Y la aproximación a  la politca optima es',{' '},strpol,', o bien',{' '},text_pol(pol));
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



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
