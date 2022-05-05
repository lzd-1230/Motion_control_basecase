%% 模型参数
Ra=1.5; % 电枢回路第阿奴在
Ce = 0.131;  % 反电动势系数
TL = 0.0144; %电磁时间常数
Tm = 0.18; %机电时间常数

%% 数据导出画图
data = out.ScopeData(1);
tar = data{1}.Values.Data;
f1 = data{2}.Values.Data;
f2 = data{3}.Values.Data;
res = [tar,f1,f2];
t = out.tout;
plot(t,res)
