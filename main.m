clc;clear;clf

% Liuzheng 
% Copyright (c) 2012

% If you have some advises or problems , please mail to me
% Gmail:liuzheng712
% Thank you !

heditA = uicontrol(gcf,'style','edit','string','','position',[20 300 100 20]);
htextA = uicontrol(gcf,'style','text','string','Please choose the file list','position',[5 322 130 20]);

% get list
button1 = uicontrol('style','pushbutton',...
    'string','ok',...
    'position',[20 280 100 20],...
    'callback',[...
    '[filename,filepath]=uigetfile({''*.txt'',''(*.txt)'';''*.*'',''All Files (*.*)''});',...
    'a=cat(2,filepath,filename);',...
    'heditA = uicontrol(gcf,''style'',''edit'',''string'',a,''position'',[20 300 100 20]);',...
    'aa=textread(a,''%s'');']);


heditB = uicontrol(gcf,'style','edit','string','','position',[20 240 100 20]);
htextB = uicontrol(gcf,'style','text','string','Please choose the file list you want to delete','position',[5 260 130 16]);
% get list
button2 = uicontrol('style','pushbutton',...
    'string','ok',...
    'position',[20 220 100 20],...
    'callback',[...
    '[filename,filepath]=uigetfile({''*.txt'',''(*.txt)'';''*.*'',''All Files (*.*)''});',...
    'b=cat(2,filepath,filename);',...
    'heditB = uicontrol(gcf,''style'',''edit'',''string'',b,''position'',[20 240 100 20]);',...
    'bb=textread(b,''%s'');']);
c = 1;
d = 1;
heditC = uicontrol(gcf,'style','edit','string',c,'position',[20 200 100 20]);
heditD = uicontrol(gcf,'style','edit','string',d,'position',[20 180 100 20]);
c = str2num(get(heditC,'string'));
d = str2num(get(heditD,'string'));



button3 = uicontrol('style','pushbutton',...
    'string','run',...
    'position',[20 160 100 20],...
    'callback',['r=do(aa,bb,c,d);',...
    '[filename ,filepath]=uiputfile({''*.txt'',''(*.txt)''},''����'');',...
    'e=cat(2,filepath,filename);',...
    'savetxt(e,r);'
    ]);
