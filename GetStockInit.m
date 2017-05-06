%% SinaYahooDataTest
% by LiYang
% Email:farutoliyang@gmail.com
% 2013/11/26
%% A Little Clean Work
tic;
clear;
clc;
close all;
format compact;
%% ????????

% ??????Yahoo???? ????????????????????
% Yahoo?????? ??? .ss ?? .sz),???????600036.ss
% url2Read=sprintf(...
%     'http://ichart.finance.yahoo.com/table.csv?s=%s&a=%s&b=%s&c=%s&d=%s&e=%s&f=%s&g=%s&ignore=.csv', 'C', '3', '23', '2017', '3', '23', '2017', '1');
% 
% StockName = '600036.ss';
% StartDate = today-200;
% EndDate = today;
% Freq = 'd';
% [DataYahoo, Date_datenum, Head]=YahooData(StockName, StartDate, EndDate, Freq);
% 
% % K???
% scrsz = get(0,'ScreenSize');
% figure('Position',[scrsz(3)*1/4 scrsz(4)*1/6 scrsz(3)*4/5 scrsz(4)]*3/4);


c = yahoo;
%d = fetch(c,'IBM')
DataYahoo = fetch(c,'WB','3/27/2015','3/27/2017')
close(c);

E = flipud(DataYahoo);
Open = E(:,2);
High = E(:,3);
Low = E(:,4);
Close = E(:,5);
candle(High,Low,Close,Open);
%candlesticks(Open,High,Low,Close);
xlim( [0 length(Open)+1] );
title('Weibo');
%% ????????
% Sina?????? ?sh. ?? sz.??),??????sh600036

StockCode='sh600036';
[DataSina, DataCell]=SinaData(StockCode);
DataCell
%% Record Time
toc;  