clc,clear;
% Inventer parameters
Vdc = 200;
fsw = 1e3;
Tsw = 1/fsw;

% DC motor parameters
power_rated = 3336;
Va_rated = 140;  % 控制电压Uc额定值
Ia_rated = 25;  % 额定电枢电流
rpm_rated = 3000;
wm_rated = rpm_rated*2*pi/60;
Te_rated = power_rated/wm_rated; % 最大转矩限幅
Kt =Te_rated/Ia_rated; % 由电流得到转矩的系数!

La = 1.7e-3;
Ra = 0.26;

% Load parameters
TL = 1;
J = 0.0025;
B=0;

% ACR parameters
wcc = 0.0707*fsw*2*pi;
Kp_c = La*wcc; % 由一阶系统零极点对消来求得的结论
Ki_c = Ra*wcc;
Ka_c = 1/Kp_c; % 抗饱和参数!

% ASR parameters
wcs = 0.2*wcc; % 也是用的ACR求得后的工程经验结论
Kp_s = J*wcs/Kt;
Ki_s = Kp_s*wcs/5;
Ka_s = 1/Kp_s;



