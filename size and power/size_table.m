%% Size Table
% This code uses the sizes_mKLM_HFUL_CLR_MCLR_JAR and
% size_correct_mKLM_HFUL_CLR_MCLR_JAR functions to compare 5 tests based on 
% their empirical rejection frequencies.
% The output is  "size_table.tex", and is Table 2 in the paper.

% set seed
rng(1)

% true beta:
beta10=0;
beta1=0;

%initialise the table:
fid = fopen('size_table.tex', 'w'); 
fprintf(fid, '%s\n', '$\rho$ & $\delta^2$ & $k$  & mKLM & H-LIML & CLR & M-CLR & J-AR');
fprintf(fid, '%s\n', '\hline');
fclose(fid) ;

%% rho = 0.2 panel

rho=0.2;

[p_mKLM, p_thli, p_CLR, p_MCLR, p_JAK]=sizes_mKLM_HFUL_CLR_MCLR_JAR(100,5000,10000,5,rho,30,beta10,beta1);
[p_mKLM2, p_thli2, p_CLR2, p_MCLR2, p_JAK2]=sizes_mKLM_HFUL_CLR_MCLR_JAR(100,5000,10000,10,rho,30,beta10,beta1);
[p_mKLM3, p_thli3, p_CLR3, p_MCLR3, p_JAK3]=sizes_mKLM_HFUL_CLR_MCLR_JAR(100,5000,10000,30,rho,30,beta10,beta1);

[p_mKLM4, p_thli4, p_CLR4, p_MCLR4, p_JAK4]=sizes_mKLM_HFUL_CLR_MCLR_JAR(100,5000,10000,5,rho,10,beta10,beta1);
[p_mKLM5, p_thli5, p_CLR5, p_MCLR5, p_JAK5]=sizes_mKLM_HFUL_CLR_MCLR_JAR(100,5000,10000,10,rho,10,beta10,beta1);
[p_mKLM6, p_thli6, p_CLR6, p_MCLR6, p_JAK6]=sizes_mKLM_HFUL_CLR_MCLR_JAR(100,5000,10000,30,rho,10,beta10,beta1);

[p_mKLM7,p_thli7, p_CLR7, p_MCLR7, p_JAK7]=sizes_mKLM_HFUL_CLR_MCLR_JAR(100,5000,10000,5,rho,2,beta10,beta1);
[p_mKLM8,p_thli8, p_CLR8, p_MCLR8, p_JAK8]=sizes_mKLM_HFUL_CLR_MCLR_JAR(100,5000,10000,10,rho,2,beta10,beta1);
[p_mKLM9, p_thli9, p_CLR9, p_MCLR9, p_JAK9]=sizes_mKLM_HFUL_CLR_MCLR_JAR(100,5000,10000,30,rho,2,beta10,beta1);

fid = fopen('size_table.tex', 'a+'); 
fprintf(fid, ' %4.1f & %4.0f & %4.0f & %4.2f%s & %4.2f%s & %4.2f%s & %4.2f%s & %4.2f%s',...
    mean(rho),...
    30,...
    5,...
    mean(p_mKLM)*100,'\%',...
    mean(p_thli)*100,'\%',...
    mean(p_CLR)*100,'\%',...
    mean(p_MCLR)*100,'\%',...
    mean(p_JAK)*100,'\%');
fprintf(fid, '%s\n', '\\');
fprintf(fid, ' %4.1f & %4.0f & %4.0f & %4.2f%s & %4.2f%s & %4.2f%s & %4.2f%s & %4.2f%s',...
    mean(rho),...
    30,...
    10,...
    mean(p_mKLM2)*100,'\%',...
    mean(p_thli2)*100,'\%',...
    mean(p_CLR2)*100,'\%',...
    mean(p_MCLR2)*100,'\%',...
    mean(p_JAK2)*100,'\%');
fprintf(fid, '%s\n', '\\');
fprintf(fid, ' %4.1f & %4.0f & %4.0f & %4.2f%s & %4.2f%s & %4.2f%s & %4.2f%s & %4.2f%s',...
    mean(rho),...
    30,...
    30,...
    mean(p_mKLM3)*100,'\%',...
    mean(p_thli3)*100,'\%',...
    mean(p_CLR3)*100,'\%',...
    mean(p_MCLR3)*100,'\%',...
    mean(p_JAK3)*100,'\%');
fprintf(fid, '%s\n', '\\');
fprintf(fid, ' %4.1f & %4.0f & %4.0f & %4.2f%s & %4.2f%s & %4.2f%s & %4.2f%s & %4.2f%s',...
    mean(rho),...
    10,...
    5,...
    mean(p_mKLM4)*100,'\%',...
    mean(p_thli4)*100,'\%',...
    mean(p_CLR4)*100,'\%',...
    mean(p_MCLR4)*100,'\%',...
    mean(p_JAK4)*100,'\%');
fprintf(fid, '%s\n', '\\');
fprintf(fid, ' %4.1f & %4.0f & %4.0f & %4.2f%s & %4.2f%s & %4.2f%s & %4.2f%s & %4.2f%s',...
    mean(rho),...
    10,...
    10,...
    mean(p_mKLM5)*100,'\%',...
    mean(p_thli5)*100,'\%',...
    mean(p_CLR5)*100,'\%',...
    mean(p_MCLR5)*100,'\%',...
    mean(p_JAK5)*100,'\%');
fprintf(fid, '%s\n', '\\');
fprintf(fid, ' %4.1f & %4.0f & %4.0f & %4.2f%s & %4.2f%s & %4.2f%s & %4.2f%s & %4.2f%s',...
    mean(rho),...
    10,...
    30,...
    mean(p_mKLM6)*100,'\%',...
    mean(p_thli6)*100,'\%',...
    mean(p_CLR6)*100,'\%',...
    mean(p_MCLR6)*100,'\%',...
    mean(p_JAK6)*100,'\%');
fprintf(fid, '%s\n', '\\');
fprintf(fid, ' %4.1f & %4.0f & %4.0f & %4.2f%s & %4.2f%s & %4.2f%s & %4.2f%s & %4.2f%s',...
    mean(rho),...
    2,...
    5,...
    mean(p_mKLM7)*100,'\%',...
    mean(p_thli7)*100,'\%',...
    mean(p_CLR7)*100,'\%',...
    mean(p_MCLR7)*100,'\%',...
    mean(p_JAK7)*100,'\%');
fprintf(fid, '%s\n', '\\');
fprintf(fid, ' %4.1f & %4.0f & %4.0f & %4.2f%s & %4.2f%s & %4.2f%s & %4.2f%s & %4.2f%s',...
    mean(rho),...
    2,...
    10,...
    mean(p_mKLM8)*100,'\%',...
    mean(p_thli8)*100,'\%',...
    mean(p_CLR8)*100,'\%',...
    mean(p_MCLR8)*100,'\%',...
    mean(p_JAK8)*100,'\%');
fprintf(fid, '%s\n', '\\');
fprintf(fid, ' %4.1f & %4.0f & %4.0f & %4.2f%s & %4.2f%s & %4.2f%s & %4.2f%s & %4.2f%s',...
    mean(rho),...
    2,...
    30,...
    mean(p_mKLM9)*100,'\%',...
    mean(p_thli9)*100,'\%',...
    mean(p_CLR9)*100,'\%',...
    mean(p_MCLR9)*100,'\%',...
    mean(p_JAK9)*100,'\%');
fprintf(fid, '%s\n', '\\');
fclose(fid) ;

%% rho = 0.6 panel

rho=0.6;

[p_mKLM, p_thli, p_CLR, p_MCLR, p_JAK]=sizes_mKLM_HFUL_CLR_MCLR_JAR(100,5000,10000,5,rho,30,beta10,beta1);
[p_mKLM2, p_thli2, p_CLR2, p_MCLR2, p_JAK2]=sizes_mKLM_HFUL_CLR_MCLR_JAR(100,5000,10000,10,rho,30,beta10,beta1);
[p_mKLM3, p_thli3, p_CLR3, p_MCLR3, p_JAK3]=sizes_mKLM_HFUL_CLR_MCLR_JAR(100,5000,10000,30,rho,30,beta10,beta1);

[p_mKLM4, p_thli4, p_CLR4, p_MCLR4, p_JAK4]=sizes_mKLM_HFUL_CLR_MCLR_JAR(100,5000,10000,5,rho,10,beta10,beta1);
[p_mKLM5, p_thli5, p_CLR5, p_MCLR5, p_JAK5]=sizes_mKLM_HFUL_CLR_MCLR_JAR(100,5000,10000,10,rho,10,beta10,beta1);
[p_mKLM6, p_thli6, p_CLR6, p_MCLR6, p_JAK6]=sizes_mKLM_HFUL_CLR_MCLR_JAR(100,5000,10000,30,rho,10,beta10,beta1);

[p_mKLM7,p_thli7, p_CLR7, p_MCLR7, p_JAK7]=sizes_mKLM_HFUL_CLR_MCLR_JAR(100,5000,10000,5,rho,2,beta10,beta1);
[p_mKLM8,p_thli8, p_CLR8, p_MCLR8, p_JAK8]=sizes_mKLM_HFUL_CLR_MCLR_JAR(100,5000,10000,10,rho,2,beta10,beta1);
[p_mKLM9, p_thli9, p_CLR9, p_MCLR9, p_JAK9]=sizes_mKLM_HFUL_CLR_MCLR_JAR(100,5000,10000,30,rho,2,beta10,beta1);

fid = fopen('/Users/sreeayyar/Dropbox/Projects/CLR/Paper/MATLAB_size_power_comparisons/output/size_table.tex', 'a+'); 
fprintf(fid, ' %4.1f & %4.0f & %4.0f & %4.2f%s & %4.2f%s & %4.2f%s & %4.2f%s & %4.2f%s',...
    mean(rho),...
    30,...
    5,...
    mean(p_mKLM)*100,'\%',...
    mean(p_thli)*100,'\%',...
    mean(p_CLR)*100,'\%',...
    mean(p_MCLR)*100,'\%',...
    mean(p_JAK)*100,'\%');
fprintf(fid, '%s\n', '\\');
fprintf(fid, ' %4.1f & %4.0f & %4.0f & %4.2f%s & %4.2f%s & %4.2f%s & %4.2f%s & %4.2f%s',...
    mean(rho),...
    30,...
    10,...
    mean(p_mKLM2)*100,'\%',...
    mean(p_thli2)*100,'\%',...
    mean(p_CLR2)*100,'\%',...
    mean(p_MCLR2)*100,'\%',...
    mean(p_JAK2)*100,'\%');
fprintf(fid, '%s\n', '\\');
fprintf(fid, ' %4.1f & %4.0f & %4.0f & %4.2f%s & %4.2f%s & %4.2f%s & %4.2f%s & %4.2f%s',...
    mean(rho),...
    30,...
    30,...
    mean(p_mKLM3)*100,'\%',...
    mean(p_thli3)*100,'\%',...
    mean(p_CLR3)*100,'\%',...
    mean(p_MCLR3)*100,'\%',...
    mean(p_JAK3)*100,'\%');
fprintf(fid, '%s\n', '\\');
fprintf(fid, ' %4.1f & %4.0f & %4.0f & %4.2f%s & %4.2f%s & %4.2f%s & %4.2f%s & %4.2f%s',...
    mean(rho),...
    10,...
    5,...
    mean(p_mKLM4)*100,'\%',...
    mean(p_thli4)*100,'\%',...
    mean(p_CLR4)*100,'\%',...
    mean(p_MCLR4)*100,'\%',...
    mean(p_JAK4)*100,'\%');
fprintf(fid, '%s\n', '\\');
fprintf(fid, ' %4.1f & %4.0f & %4.0f & %4.2f%s & %4.2f%s & %4.2f%s & %4.2f%s & %4.2f%s',...
    mean(rho),...
    10,...
    10,...
    mean(p_mKLM5)*100,'\%',...
    mean(p_thli5)*100,'\%',...
    mean(p_CLR5)*100,'\%',...
    mean(p_MCLR5)*100,'\%',...
    mean(p_JAK5)*100,'\%');
fprintf(fid, '%s\n', '\\');
fprintf(fid, ' %4.1f & %4.0f & %4.0f & %4.2f%s & %4.2f%s & %4.2f%s & %4.2f%s & %4.2f%s',...
    mean(rho),...
    10,...
    30,...
    mean(p_mKLM6)*100,'\%',...
    mean(p_thli6)*100,'\%',...
    mean(p_CLR6)*100,'\%',...
    mean(p_MCLR6)*100,'\%',...
    mean(p_JAK6)*100,'\%');
fprintf(fid, '%s\n', '\\');
fprintf(fid, ' %4.1f & %4.0f & %4.0f & %4.2f%s & %4.2f%s & %4.2f%s & %4.2f%s & %4.2f%s',...
    mean(rho),...
    2,...
    5,...
    mean(p_mKLM7)*100,'\%',...
    mean(p_thli7)*100,'\%',...
    mean(p_CLR7)*100,'\%',...
    mean(p_MCLR7)*100,'\%',...
    mean(p_JAK7)*100,'\%');
fprintf(fid, '%s\n', '\\');
fprintf(fid, ' %4.1f & %4.0f & %4.0f & %4.2f%s & %4.2f%s & %4.2f%s & %4.2f%s & %4.2f%s',...
    mean(rho),...
    2,...
    10,...
    mean(p_mKLM8)*100,'\%',...
    mean(p_thli8)*100,'\%',...
    mean(p_CLR8)*100,'\%',...
    mean(p_MCLR8)*100,'\%',...
    mean(p_JAK8)*100,'\%');
fprintf(fid, '%s\n', '\\');
fprintf(fid, ' %4.1f & %4.0f & %4.0f & %4.2f%s & %4.2f%s & %4.2f%s & %4.2f%s & %4.2f%s',...
    mean(rho),...
    2,...
    30,...
    mean(p_mKLM9)*100,'\%',...
    mean(p_thli9)*100,'\%',...
    mean(p_CLR9)*100,'\%',...
    mean(p_MCLR9)*100,'\%',...
    mean(p_JAK9)*100,'\%');
fprintf(fid, '%s\n', '\\');
fclose(fid) ;

