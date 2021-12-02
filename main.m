clear;clc;
Fs=120;% Frecuencia de muestreo (Hz)
Fmin=8; Fmax=31;
E=['\MP\';'\ML\';'\MR\';'\MU\';'\MD\';'\CN\'];

 % carga cada evento E# de todos los sujetos -------------------------------
 figure;
 Adata=[];%All data
for ee=1:6 % para 6 tareas
        %ee=1;
        Edata=[];
        k=1;
        ID2=E(ee,:);%(E1 E2 E3 E4)
        filename = strcat('D:\ESPOL\..\DataSet',strcat(ID2,'records.txt'));%archivo con todos los nombres de datasets
        A=importdata(filename);
        for j=1:length(A)
            NameFile=string(A(j));
            Edata(:,:,k)=csvread(strcat('D:\ESPOL\...\DataSet',strcat(ID2,NameFile)));
            %for x=1:2 % se conoce que son dos electrodos
                Adata=[Adata;Edata(:,1,k)' Edata(:,2,k)' ee]; %concatenando sensor 1 y sensor 2
            %end
            k=k+1;
        end
        
        Rdata=[];
        for m=1:size(Edata,1)
            for n=1:size(Edata,2)
                Rdata(m,n)=rms(Edata(m,n,:));
            end
        end
        subplot(2,3,ee)
        plot(Rdata);title(ID2(2:3));legend('Horizontal','Vertical');
        ylim([100 900])
end
%% datos para la red neuronal
inNN=Adata(:,1:size(Adata,2)-1);
outNN=[];
for i=1:size(Adata,1)
    if Adata(i,size(Adata,2))==1
        outNN=[outNN;0 0 0 0 0 1];
    elseif Adata(i,size(Adata,2))==2
        outNN=[outNN;0 0 0 0 1 0];
    elseif Adata(i,size(Adata,2))==3
        outNN=[outNN;0 0 0 1 0 0];
    elseif Adata(i,size(Adata,2))==4
        outNN=[outNN;0 0 1 0 0 0];
    elseif Adata(i,size(Adata,2))==5
        outNN=[outNN;0 1 0 0 0 0];
    else
        outNN=[outNN;1 0 0 0 0 0];
    end
end