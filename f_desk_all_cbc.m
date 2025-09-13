desk_original=imread('desk.bmp');
b=desk_original;
desk_m = imread("c:\Users\issa_\OneDrive\PPU University\Semester 8\MatLab\Desk\All\With CBC\m_encrypted.bmp");
desk_mc = imread("c:\Users\issa_\OneDrive\PPU University\Semester 8\MatLab\Desk\All\With CBC\mc_encrypted.bmp");
desk_mcp = imread("c:\Users\issa_\OneDrive\PPU University\Semester 8\MatLab\Desk\All\With CBC\mcp_encrypted.bmp");
desk_mcpb = imread("c:\Users\issa_\OneDrive\PPU University\Semester 8\MatLab\Desk\All\With CBC\mcpb_encrypted.bmp");

barbara_mcpb = imread("desk.bmp");
NPCR_and_UACI(desk_mcpb,barbara_mcpb);

desk_original_r = desk_original(:,:,1);
original_r_ir = entropy(desk_original_r);
desk_original_g = desk_original(:,:,2);
original_g_ir = entropy(desk_original_g);
desk_original_b = desk_original(:,:,3);
original_b_ir = entropy(desk_original_b);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%   Coofficient Coorelation  %%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%        desk_original_r     %%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
IA=im2double(desk_original_r);
desk_original_r_cc_d = corrcoef(IA(1:end-1, 1:end-1), IA(2:end, 2:end));
desk_original_r_cc_d =desk_original_r_cc_d(1,2)
desk_original_r_cc_v = corrcoef(IA(1:end-1, :), IA(2:end, :));
desk_original_r_cc_v = desk_original_r_cc_v(1,2);
desk_original_r_cc_h = corrcoef(IA(:, 1:end-1, :), IA(:, 2:end));
desk_original_r_cc_h = desk_original_r_cc_h(1,2);

figure('visible','off');
subplot(1,1,1)
plot(IA(1:end-1, 1:end-1), IA(2:end, 2:end),'r'),title(sprintf('%s Horizontal Orginal image',b));
saveas(gcf,sprintf('CC/desk/Original/r_h.png',i));
figure('visible','off');
subplot(1,1,1)
plot(IA(1:end-1, :), IA(2:end, :),'r'),title(sprintf('%s Vertical Orginal image',b));
saveas(gcf,sprintf('CC/desk/Original/r_v.png',i));
figure('visible','off');
subplot(1,1,1)
plot(IA(:, 1:end-1, :), IA(:, 2:end),'r'),title(sprintf('%s Diagonal Orginal image',b));
saveas(gcf,sprintf('CC/desk/Original/r_d.png',i));
%pause(10);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%        desk_original_g     %%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
IA=im2double(desk_original_g);
desk_original_g_c_d = corrcoef(IA(1:end-1, 1:end-1), IA(2:end, 2:end));
desk_original_g_c_d = desk_original_g_c_d(1,2);
desk_original_g_c_v = corrcoef(IA(1:end-1, :), IA(2:end, :));
desk_original_g_c_v = desk_original_g_c_v(1,2);
desk_original_g_c_h = corrcoef(IA(:, 1:end-1, :), IA(:, 2:end));
desk_original_g_c_h = desk_original_g_c_h(1,2);
figure('visible','off');
subplot(1,1,1)
plot(IA(1:end-1, 1:end-1), IA(2:end, 2:end),'g'),title(sprintf('%s Horizontal Orginal image',b));
saveas(gcf,sprintf('CC/desk/Original/g_h.png',i));
figure('visible','off');
subplot(1,1,1)
plot(IA(1:end-1, :), IA(2:end, :),'g'),title(sprintf('%s Vertical Orginal image',b));
saveas(gcf,sprintf('CC/desk/Original/g_v.png',i));
figure('visible','off');
subplot(1,1,1)
plot(IA(:, 1:end-1, :), IA(:, 2:end),'g'),title(sprintf('%s Diagonal Orginal image',b));
saveas(gcf,sprintf('CC/desk/Original/g_d.png',i));
%pause(10);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%        desk_original_b     %%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
IA=im2double(desk_original_b);
desk_original_b_c_d = corrcoef(IA(1:end-1, 1:end-1), IA(2:end, 2:end));
desk_original_b_c_d =desk_original_b_c_d(1,2);
desk_original_b_c_v = corrcoef(IA(1:end-1, :), IA(2:end, :));
desk_original_b_c_v = desk_original_b_c_v(1,2);
desk_original_b_c_h = corrcoef(IA(:, 1:end-1, :), IA(:, 2:end));
desk_original_b_c_h = desk_original_b_c_h(1,2);
figure('visible','off');
subplot(1,1,1)
plot(IA(1:end-1, 1:end-1), IA(2:end, 2:end),'b'),title(sprintf('%s Horizontal Orginal image',b));
saveas(gcf,sprintf('CC/desk/Original/b_h.png',i));
figure('visible','off');
subplot(1,1,1)
plot(IA(1:end-1, :), IA(2:end, :),'b'),title(sprintf('%s Vertical Orginal image',b));
saveas(gcf,sprintf('CC/desk/Original/b_v.png',i));
figure('visible','off');
subplot(1,1,1)
plot(IA(:, 1:end-1, :), IA(:, 2:end),'b'),title(sprintf('%s Diagonal Orginal image',b));
saveas(gcf,sprintf('CC/desk/Original/b_d.png',i));
%pause(10);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%       Original Histogram   %%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
original_histogram_r = histogram(desk_original_r);
saveas(gcf,sprintf('desk_original_histogram_r.png',i));
original_histogram_g = histogram(desk_original_g);
saveas(gcf,sprintf('desk_original_histogram_g.png',i));
original_histogram_b = histogram(desk_original_b);
saveas(gcf,sprintf('desk_original_histogram_b.png',i));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%          M           %%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%          R           %%%%%%%%%%%%
desk_m_r = desk_m(:,:,1);
m_r_ie = entropy(desk_m_r);
m_r_cc = corr2(desk_m_r,desk_original_r);
m_r_mse = immse(desk_m_r,desk_original_r);
m_r_psnr = psnr(desk_m_r,desk_original_r);
m_r_histogram = histogram(desk_m_r);
saveas(gcf,sprintf('desk_all_cbc_m_r_histogram.png',i));
%%%%%%%%%%          G           %%%%%%%%%%%%
desk_m_g = desk_m(:,:,2);
m_g_ie = entropy(desk_m_g);
m_g_cc = corr2(desk_m_g,desk_original_g);
m_g_mse = immse(desk_m_g,desk_original_g);
m_g_psnr = psnr(desk_m_g,desk_original_g);
m_g_histogram = histogram(desk_m_g);
saveas(gcf,sprintf('desk_all_cbc_m_g_histogram.png',i));
%%%%%%%%%%          B           %%%%%%%%%%%%
desk_m_b = desk_m(:,:,3);
m_b_ie = entropy(desk_m_b);
m_b_cc = corr2(desk_m_b,desk_original_b);
m_b_mse = immse(desk_m_b,desk_original_b);
m_b_psnr = psnr(desk_m_b,desk_original_b);
m_b_histogram = histogram(desk_m_b);
saveas(gcf,sprintf('desk_all_cbc_m_b_histogram.png',i));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%            desk_m_r         %%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
IA=im2double(desk_m_r);
m_r_c_d = corrcoef(IA(1:end-1, 1:end-1), IA(2:end, 2:end));
m_r_c_d = m_r_c_d(1,2);
m_r_c_v = corrcoef(IA(1:end-1, :), IA(2:end, :));
m_r_c_v = m_r_c_v(1,2);
m_r_c_h = corrcoef(IA(:, 1:end-1, :), IA(:, 2:end));
m_r_c_h = m_r_c_h(1,2);
figure('visible','off');
subplot(1,1,1)
plot(IA(1:end-1, 1:end-1), IA(2:end, 2:end),'r'),title(sprintf('%s Horizontal Orginal image',b));
saveas(gcf,sprintf('CC/desk/CBC/All/M/r_h.png',i));

figure('visible','off');
subplot(1,1,1)
plot(IA(1:end-1, :), IA(2:end, :),'r'),title(sprintf('%s Vertical Orginal image',b));
saveas(gcf,sprintf('CC/desk/CBC/All/M/r_v.png',i));

figure('visible','off');
subplot(1,1,1)
plot(IA(:, 1:end-1, :), IA(:, 2:end),'r'),title(sprintf('%s Diagonal Orginal image',b));
saveas(gcf,sprintf('CC/desk/CBC/All/M/r_d.png',i));
%pause(10);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%        desk_m_g             %%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
IA=im2double(desk_m_g);
m_g_c_d = corrcoef(IA(1:end-1, 1:end-1), IA(2:end, 2:end));
m_g_c_d = m_g_c_d(1,2);
m_g_c_v = corrcoef(IA(1:end-1, :), IA(2:end, :));
m_g_c_v = m_g_c_v(1,2);
m_g_c_h = corrcoef(IA(:, 1:end-1, :), IA(:, 2:end));
m_g_c_h = m_g_c_h(1,2);
figure('visible','off');
subplot(1,1,1)
plot(IA(1:end-1, 1:end-1), IA(2:end, 2:end),'g'),title(sprintf('%s Horizontal Orginal image',b));
saveas(gcf,sprintf('CC/desk/CBC/All/M/g_h.png',i));

figure('visible','off');
subplot(1,1,1)
plot(IA(1:end-1, :), IA(2:end, :),'g'),title(sprintf('%s Vertical Orginal image',b));
saveas(gcf,sprintf('CC/desk/CBC/All/M/g_v.png',i));

figure('visible','off');
subplot(1,1,1)
plot(IA(:, 1:end-1, :), IA(:, 2:end),'g'),title(sprintf('%s Diagonal Orginal image',b));
saveas(gcf,sprintf('CC/desk/CBC/All/M/g_d.png',i));
%pause(10);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%        desk_m_b             %%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
IA=im2double(desk_m_b);
m_b_c_d = (corrcoef(IA(1:end-1, 1:end-1), IA(2:end, 2:end)));
m_b_c_d = m_b_c_d(1,2); 
m_b_c_v = corrcoef(IA(1:end-1, :), IA(2:end, :));
m_b_c_v = m_b_c_v(1,2) ;
m_b_c_h = corrcoef(IA(:, 1:end-1, :), IA(:, 2:end));
m_b_c_h = m_b_c_h(1,2);
figure('visible','off');
subplot(1,1,1)
plot(IA(1:end-1, 1:end-1), IA(2:end, 2:end),'b'),title(sprintf('%s Horizontal Orginal image',b));
saveas(gcf,sprintf('CC/desk/CBC/All/M/b_h.png',i));

figure('visible','off');
subplot(1,1,1)
plot(IA(1:end-1, :), IA(2:end, :),'b'),title(sprintf('%s Vertical Orginal image',b));
saveas(gcf,sprintf('CC/desk/CBC/All/M/b_v.png',i));

figure('visible','off');
subplot(1,1,1)
plot(IA(:, 1:end-1, :), IA(:, 2:end),'b'),title(sprintf('%s Diagonal Orginal image',b));
saveas(gcf,sprintf('CC/desk/CBC/All/M/b_d.png',i));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
m_mse = immse(desk_m,desk_original);
m_psnr = psnr(desk_m,desk_original);
m_ie= entropy(desk_m);
m_mssim = multissim(desk_m,desk_original);
m_r_ssim = m_mssim(:,:,1);
m_g_ssim = m_mssim(:,:,2);
m_b_ssim = m_mssim(:,:,3);
m_histogram = histogram(desk_m);
saveas(gcf,sprintf('desk_all_cbc_m_histogram.png',i));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%











%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%      MC     %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%      R      %%%%%%%%%%
desk_mc_r = desk_mc(:,:,1);
mc_r_ie = entropy(desk_mc_r);
mc_r_cc = corr2(desk_mc_r,desk_original_r);
mc_r_mse = immse(desk_mc_r,desk_original_r);
mc_r_psnr = psnr(desk_mc_r,desk_original_r);
 mc_r_histogram = histogram(desk_mc_r);
saveas(gcf,sprintf('desk_all_cbc_mc_r_histogram.png',i));
%%%%%%%%%%      G      %%%%%%%%%%
desk_mc_g = desk_mc(:,:,2);
mc_g_ie = entropy(desk_mc_g);
mc_g_cc = corr2(desk_mc_g,desk_original_g);
mc_g_mse = immse(desk_mc_g,desk_original_g);
mc_g_psnr = psnr(desk_mc_g,desk_original_g);
mc_g_histogram = histogram(desk_mc_g);
saveas(gcf,sprintf('desk_all_cbc_mc_g_histogram.png',i));
%%%%%%%%%%      B      %%%%%%%%%%
desk_mc_b = desk_mc(:,:,3);
mc_b_ie = entropy(desk_mc_b);
mc_b_cc = corr2(desk_mc_b,desk_original_b);
mc_b_mse = immse(desk_mc_b,desk_original_b);
mc_b_psnr = psnr(desk_mc_b,desk_original_b);
mc_b_histogram = histogram(desk_mc_b);
saveas(gcf,sprintf('desk_all_cbc_mc_b_histogram.png',i));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
mc_mse = immse(desk_mc,desk_original);
mc_psnr = psnr(desk_mc,desk_original);
mc_ie= entropy(desk_mc);
mc_mssim = multissim(desk_mc,desk_original);
mc_r_ssim = mc_mssim(:,:,1);
mc_g_ssim = mc_mssim(:,:,2);
mc_b_ssim = mc_mssim(:,:,3);
mc_histogram = histogram(desk_mc);
saveas(gcf,sprintf('desk_all_cbc_mc_histogram.png',i));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%            desk_mc_r         %%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
IA=im2double(desk_mc_r);
mc_r_c_d = corrcoef(IA(1:end-1, 1:end-1), IA(2:end, 2:end));
mc_r_c_d = mc_r_c_d(1,2);
mc_r_c_v = corrcoef(IA(1:end-1, :), IA(2:end, :));
mc_r_c_v = mc_r_c_v(1,2);
mc_r_c_h = corrcoef(IA(:, 1:end-1, :), IA(:, 2:end));
mc_r_c_h = mc_r_c_h(1,2);
figure('visible','off');
subplot(1,1,1)
plot(IA(1:end-1, 1:end-1), IA(2:end, 2:end),'r'),title(sprintf('%s Horizontal Orginal image',b));
saveas(gcf,sprintf('CC/desk/CBC/All/MC/r_h.png',i));

figure('visible','off');
subplot(1,1,1)
plot(IA(1:end-1, :), IA(2:end, :),'r'),title(sprintf('%s Vertical Orginal image',b));
saveas(gcf,sprintf('CC/desk/CBC/All/MC/r_v.png',i));

figure('visible','off');
subplot(1,1,1)
plot(IA(:, 1:end-1, :), IA(:, 2:end),'r'),title(sprintf('%s Diagonal Orginal image',b));
saveas(gcf,sprintf('CC/desk/CBC/All/MC/r_d.png',i));
%pause(10);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%        desk_mc_g             %%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
IA=im2double(desk_mc_g);
mc_g_c_d = corrcoef(IA(1:end-1, 1:end-1), IA(2:end, 2:end));
mc_g_c_d = mc_g_c_d(1,2);
mc_g_c_v = corrcoef(IA(1:end-1, :), IA(2:end, :));
mc_g_c_v = mc_g_c_v(1,2);
mc_g_c_h = corrcoef(IA(:, 1:end-1, :), IA(:, 2:end));
mc_g_c_h = mc_g_c_h(1,2);
figure('visible','off');
subplot(1,1,1)
plot(IA(1:end-1, 1:end-1), IA(2:end, 2:end),'g'),title(sprintf('%s Horizontal Orginal image',b));
saveas(gcf,sprintf('CC/desk/CBC/All/MC/g_h.png',i));

figure('visible','off');
subplot(1,1,1)
plot(IA(1:end-1, :), IA(2:end, :),'g'),title(sprintf('%s Vertical Orginal image',b));
saveas(gcf,sprintf('CC/desk/CBC/All/MC/g_v.png',i));

figure('visible','off');
subplot(1,1,1)
plot(IA(:, 1:end-1, :), IA(:, 2:end),'g'),title(sprintf('%s Diagonal Orginal image',b));
saveas(gcf,sprintf('CC/desk/CBC/All/MC/g_d.png',i));
%pause(10);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%        desk_mc_b             %%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
IA=im2double(desk_mc_b);
mc_b_c_d = corrcoef(IA(1:end-1, 1:end-1), IA(2:end, 2:end));
mc_b_c_d = mc_b_c_d(1,2);
mc_b_c_v = corrcoef(IA(1:end-1, :), IA(2:end, :));
mc_b_c_v = mc_b_c_v(1,2);
mc_b_c_h = corrcoef(IA(:, 1:end-1, :), IA(:, 2:end));
mc_b_c_h = mc_b_c_h(1,2);
figure('visible','off');
subplot(1,1,1)
plot(IA(1:end-1, 1:end-1), IA(2:end, 2:end),'b'),title(sprintf('%s Horizontal Orginal image',b));
saveas(gcf,sprintf('CC/desk/CBC/All/MC/b_h.png',i));

figure('visible','off');
subplot(1,1,1)
plot(IA(1:end-1, :), IA(2:end, :),'b'),title(sprintf('%s Vertical Orginal image',b));
saveas(gcf,sprintf('CC/desk/CBC/All/MC/b_v.png',i));

figure('visible','off');
subplot(1,1,1)
plot(IA(:, 1:end-1, :), IA(:, 2:end),'b'),title(sprintf('%s Diagonal Orginal image',b));
saveas(gcf,sprintf('CC/desk/CBC/All/MC/b_d.png',i));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%      MCP    %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%      R      %%%%%%%%%%
desk_mcp_r = desk_mcp(:,:,1);
mcp_r_ie = entropy(desk_mcp_r);
mcp_r_cc = corr2(desk_mcp_r,desk_original_r);
mcp_r_mse = immse(desk_mcp_r,desk_original_r);
mcp_r_psnr = psnr(desk_mcp_r,desk_original_r);
mcp_r_histogram = histogram(desk_mcp_r);
saveas(gcf,sprintf('desk_all_cbc_mcp_r_histogram.png',i));
%%%%%%%%%%      G      %%%%%%%%%%
desk_mcp_g = desk_mcp(:,:,2);
mcp_g_ie = entropy(desk_mcp_g);
mcp_g_cc = corr2(desk_mcp_g,desk_original_g);
mcp_g_mse = immse(desk_mcp_g,desk_original_g);
mcp_g_psnr = psnr(desk_mcp_g,desk_original_g);
mcp_g_histogram = histogram(desk_mcp_g);
saveas(gcf,sprintf('desk_all_cbc_mcp_g_histogram.png',i));
%%%%%%%%%%      B      %%%%%%%%%%
desk_mcp_b = desk_mcp(:,:,3);
mcp_b_ie = entropy(desk_mcp_b);
mcp_b_cc = corr2(desk_mcp_b,desk_original_b);
mcp_b_mse = immse(desk_mcp_b,desk_original_b);
mcp_b_psnr = psnr(desk_mcp_b,desk_original_b);
mcp_b_histogram = histogram(desk_mcp_b);
saveas(gcf,sprintf('desk_all_cbc_mcp_b_histogram.png',i));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
mcp_mse = immse(desk_mcp,desk_original);
mcp_psnr = psnr(desk_mcp,desk_original);
mcp_ie= entropy(desk_mcp);
mcp_mssim = multissim(desk_mcp,desk_original);
mcp_r_ssim = mcp_mssim(:,:,1);
mcp_g_ssim = mcp_mssim(:,:,2);
mcp_b_ssim = mcp_mssim(:,:,3);
mcp_histogram = histogram(desk_mcp);
saveas(gcf,sprintf('desk_all_cbc_mcp_histogram.png',i));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%            desk_mcp_r         %%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
IA=im2double(desk_mcp_r);
mcp_r_c_d = corrcoef(IA(1:end-1, 1:end-1), IA(2:end, 2:end));
mcp_r_c_d = mcp_r_c_d(1,2);
mcp_r_c_v = corrcoef(IA(1:end-1, :), IA(2:end, :));
mcp_r_c_v = mcp_r_c_v(1,2);
mcp_r_c_h = corrcoef(IA(:, 1:end-1, :), IA(:, 2:end));
mcp_r_c_h = mcp_r_c_h(1,2);
figure('visible','off');
subplot(1,1,1)
plot(IA(1:end-1, 1:end-1), IA(2:end, 2:end),'r'),title(sprintf('%s Horizontal Orginal image',b));
saveas(gcf,sprintf('CC/desk/CBC/All/MCP/r_h.png',i));

figure('visible','off');
subplot(1,1,1)
plot(IA(1:end-1, :), IA(2:end, :),'r'),title(sprintf('%s Vertical Orginal image',b));
saveas(gcf,sprintf('CC/desk/CBC/All/MCP/r_v.png',i));

figure('visible','off');
subplot(1,1,1)
plot(IA(:, 1:end-1, :), IA(:, 2:end),'r'),title(sprintf('%s Diagonal Orginal image',b));
saveas(gcf,sprintf('CC/desk/CBC/All/MCP/r_d.png',i));
%pause(10);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%        desk_mcp_g             %%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
IA=im2double(desk_mcp_g);
mcp_g_c_d = corrcoef(IA(1:end-1, 1:end-1), IA(2:end, 2:end));
mcp_g_c_d = mcp_g_c_d(1,2);
mcp_g_c_v = corrcoef(IA(1:end-1, :), IA(2:end, :));
mcp_g_c_v = mcp_g_c_v(1,2);
mcp_g_c_h = corrcoef(IA(:, 1:end-1, :), IA(:, 2:end));
mcp_g_c_h = mcp_g_c_h(1,2);
figure('visible','off');
subplot(1,1,1)
plot(IA(1:end-1, 1:end-1), IA(2:end, 2:end),'g'),title(sprintf('%s Horizontal Orginal image',b));
saveas(gcf,sprintf('CC/desk/CBC/All/MCP/g_h.png',i));

figure('visible','off');
subplot(1,1,1)
plot(IA(1:end-1, :), IA(2:end, :),'g'),title(sprintf('%s Vertical Orginal image',b));
saveas(gcf,sprintf('CC/desk/CBC/All/MCP/g_v.png',i));

figure('visible','off');
subplot(1,1,1)
plot(IA(:, 1:end-1, :), IA(:, 2:end),'g'),title(sprintf('%s Diagonal Orginal image',b));
saveas(gcf,sprintf('CC/desk/CBC/All/MCP/g_d.png',i));
%pause(10);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%        desk_mcp_b             %%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
IA=im2double(desk_mcp_b);
mcp_b_c_d = corrcoef(IA(1:end-1, 1:end-1), IA(2:end, 2:end));
mcp_b_c_d = mcp_b_c_d(1,2);
mcp_b_c_v = corrcoef(IA(1:end-1, :), IA(2:end, :));
mcp_b_c_v = mcp_b_c_v(1,2);
mcp_b_c_h = corrcoef(IA(:, 1:end-1, :), IA(:, 2:end));
mcp_b_c_h = mcp_b_c_h(1,2);
figure('visible','off');
subplot(1,1,1)
plot(IA(1:end-1, 1:end-1), IA(2:end, 2:end),'b'),title(sprintf('%s Horizontal Orginal image',b));
saveas(gcf,sprintf('CC/desk/CBC/All/MCP/b_h.png',i));

figure('visible','off');
subplot(1,1,1)
plot(IA(1:end-1, :), IA(2:end, :),'b'),title(sprintf('%s Vertical Orginal image',b));
saveas(gcf,sprintf('CC/desk/CBC/All/MCP/b_v.png',i));

figure('visible','off');
subplot(1,1,1)
plot(IA(:, 1:end-1, :), IA(:, 2:end),'b'),title(sprintf('%s Diagonal Orginal image',b));
saveas(gcf,sprintf('CC/desk/CBC/All/MCP/b_d.png',i));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%    MCPB     %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%      R      %%%%%%%%%%
desk_mcpb_r = desk_mcpb(:,:,1);
mcpb_r_ie = entropy(desk_mcpb_r);
mcpb_r_cc = corr2(desk_mcpb_r,desk_original_r);
mcpb_r_mse = immse(desk_mcpb_r,desk_original_r);
mcpb_r_psnr = psnr(desk_mcpb_r,desk_original_r);
mcpb_r_histogram = histogram(desk_mcpb_r);
saveas(gcf,sprintf('desk_all_cbc_mcpb_r_histogram.png',i));
%%%%%%%%%%      G      %%%%%%%%%%
desk_mcpb_g = desk_mcpb(:,:,2); 
mcpb_g_ie = entropy(desk_mcpb_g);
mcpb_g_cc = corr2(desk_mcpb_g,desk_original_g);
mcpb_g_mse = immse(desk_mcpb_g,desk_original_g);
mcpb_g_psnr = psnr(desk_mcpb_g,desk_original_g);
mcpb_g_histogram = histogram(desk_mcpb_g);
saveas(gcf,sprintf('desk_all_cbc_mcpb_g_histogram.png',i));
%%%%%%%%%%      B      %%%%%%%%%%
desk_mcpb_b = desk_mcpb(:,:,3);
mcpb_b_ie = entropy(desk_mcpb_b);
mcpb_b_cc = corr2(desk_mcpb_b,desk_original_b);
mcpb_b_mse = immse(desk_mcpb_b,desk_original_b);
mcpb_b_psnr = psnr(desk_mcpb_b,desk_original_b);
mcpb_b_histogram = histogram(desk_mcpb_b);
saveas(gcf,sprintf('desk_all_cbc_mcpb_b_histogram.png',i));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
mcpb_mse = immse(desk_mcpb,desk_original);
mcpb_psnr = psnr(desk_mcpb,desk_original);
mcpb_ie= entropy(desk_mcpb);
mcpb_mssim = multissim(desk_mcpb,desk_original);
mcpb_r_ssim = mcpb_mssim(:,:,1);
mcpb_g_ssim = mcpb_mssim(:,:,2);
mcpb_b_ssim = mcpb_mssim(:,:,3);
mcpb_histogram = histogram(desk_mcpb);
saveas(gcf,sprintf('desk_all_cbc_mcpb_histogram.png',i));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%            desk_mcpb_r         %%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
IA=im2double(desk_mcpb_r);
mcpb_r_c_d = corrcoef(IA(1:end-1, 1:end-1), IA(2:end, 2:end));
mcpb_r_c_d = mcpb_r_c_d(1,2);
mcpb_r_c_v = corrcoef(IA(1:end-1, :), IA(2:end, :));
mcpb_r_c_v = mcpb_r_c_v(1,2);
mcpb_r_c_h = corrcoef(IA(:, 1:end-1, :), IA(:, 2:end));
mcpb_r_c_h = mcpb_r_c_h(1,2);
figure('visible','off');
subplot(1,1,1)
plot(IA(1:end-1, 1:end-1), IA(2:end, 2:end),'r'),title(sprintf('%s Horizontal Orginal image',b));
saveas(gcf,sprintf('CC/desk/CBC/All/MCPB/r_h.png',i));

figure('visible','off');
subplot(1,1,1)
plot(IA(1:end-1, :), IA(2:end, :),'r'),title(sprintf('%s Vertical Orginal image',b));
saveas(gcf,sprintf('CC/desk/CBC/All/MCPB/r_v.png',i));

figure('visible','off');
subplot(1,1,1)
plot(IA(:, 1:end-1, :), IA(:, 2:end),'r'),title(sprintf('%s Diagonal Orginal image',b));
saveas(gcf,sprintf('CC/desk/CBC/All/MCPB/r_d.png',i));
%pause(10);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%        desk_mcpb_g             %%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
IA=im2double(desk_mcpb_g);
mcpb_g_c_d = corrcoef(IA(1:end-1, 1:end-1), IA(2:end, 2:end));
mcpb_g_c_d = mcpb_g_c_d(1,2);
mcpb_g_c_v = corrcoef(IA(1:end-1, :), IA(2:end, :));
mcpb_g_c_v = mcpb_g_c_v(1,2);
mcpb_g_c_h = corrcoef(IA(:, 1:end-1, :), IA(:, 2:end));
mcpb_g_c_h = mcpb_g_c_h(1,2);
figure('visible','off');
subplot(1,1,1)
plot(IA(1:end-1, 1:end-1), IA(2:end, 2:end),'g'),title(sprintf('%s Horizontal Orginal image',b));
saveas(gcf,sprintf('CC/desk/CBC/All/MCPB/g_h.png',i));

figure('visible','off');
subplot(1,1,1)
plot(IA(1:end-1, :), IA(2:end, :),'g'),title(sprintf('%s Vertical Orginal image',b));
saveas(gcf,sprintf('CC/desk/CBC/All/MCPB/g_v.png',i));

figure('visible','off');
subplot(1,1,1)
plot(IA(:, 1:end-1, :), IA(:, 2:end),'g'),title(sprintf('%s Diagonal Orginal image',b));
saveas(gcf,sprintf('CC/desk/CBC/All/MCPB/g_d.png',i));
%pause(10);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%        desk_mcpb_b             %%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
IA=im2double(desk_mcpb_b);
mcpb_b_c_d = corrcoef(IA(1:end-1, 1:end-1), IA(2:end, 2:end));
mcpb_b_c_d = mcpb_b_c_d(1,2);
mcpb_b_c_v = corrcoef(IA(1:end-1, :), IA(2:end, :));
mcpb_b_c_v = mcpb_b_c_v(1,2);
mcpb_b_c_h = corrcoef(IA(:, 1:end-1, :), IA(:, 2:end));
mcpb_b_c_h = mcpb_b_c_h(1,2);
figure('visible','off');
subplot(1,1,1)
plot(IA(1:end-1, 1:end-1), IA(2:end, 2:end),'b'),title(sprintf('%s Horizontal Orginal image',b));
saveas(gcf,sprintf('CC/desk/CBC/All/MCPB/b_h.png',i));

figure('visible','off');
subplot(1,1,1)
plot(IA(1:end-1, :), IA(2:end, :),'b'),title(sprintf('%s Vertical Orginal image',b));
saveas(gcf,sprintf('CC/desk/CBC/All/MCPB/b_v.png',i));

figure('visible','off');
subplot(1,1,1)
plot(IA(:, 1:end-1, :), IA(:, 2:end),'b'),title(sprintf('%s Diagonal Orginal image',b));
saveas(gcf,sprintf('CC/desk/CBC/All/MCPB/b_d.png',i));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

arr = {'Process','CC_r_d', 'CC_g_d','CC_b_d'; 
    'M',m_r_c_d, m_g_c_d, m_b_c_d; 
    'MC',mc_r_c_d, mc_g_c_d, mc_b_c_d;
    'MCP',mcp_r_c_d, mcp_g_c_d, mcp_b_c_d;
    'MCPB',mcpb_r_c_d, mcpb_g_c_d, mcpb_b_c_d
    };
writecell(arr,'desk_cbc_all.xls','Sheet',1,'Range','B3:E7');


arr = {'Process','CC_r_h', 'CC_g_h','CC_b_h'; 
    'M',m_r_c_h, m_g_c_h, m_b_c_h; 
    'MC',mc_r_c_h, mc_g_c_h, mc_b_c_h;
    'MCP',mcp_r_c_h, mcp_g_c_h, mcp_b_c_h;
    'MCPB',mcpb_r_c_h, mcpb_g_c_h, mcpb_b_c_d
    };
writecell(arr,'desk_cbc_all.xls','Sheet',1,'Range','B10:E14');


arr = {'Process','CC_r_v', 'CC_g_v','CC_b_v'; 
    'M',m_r_c_v, m_g_c_v, m_b_c_v; 
    'MC',mc_r_c_v, mc_g_c_v, mc_b_c_v;
    'MCP',mcp_r_c_v, mcp_g_c_v, mcp_b_c_v;
    'MCPB',mcpb_r_c_v, mcpb_g_c_v, mcpb_b_c_v
    };
writecell(arr,'desk_cbc_all.xls','Sheet',1,'Range','B16:E20');




arr = {'Process','CC_R', 'CC_G','CC_B'; 
    'M',m_r_cc, m_g_cc, m_b_cc; 
    'MC',mc_r_cc, mc_g_cc, mc_b_cc;
    'MCP',mcp_r_cc, mcp_g_cc, mcp_b_cc;
    'MCPB',mcpb_r_cc, mcpb_g_cc, mcpb_b_cc
    };
writecell(arr,'desk_cbc_all.xls','Sheet',1,'Range','B22:E26');


arr = {'Process','IE_R', 'IE_G','IE_B'; 
    'M',m_r_ie, m_g_ie, m_b_ie; 
    'MC',mc_r_ie, mc_g_ie, mc_b_ie;
    'MCP',mcp_r_ie, mcp_g_ie, mcp_b_ie;
    'MCPB',mcpb_r_ie, mcpb_g_ie, mcpb_b_ie
    };
writecell(arr,'desk_cbc_all.xls','Sheet',1,'Range','B28:E32');



arr = {'Process','MSE_R', 'MSE_G','MSE_B'; 
    'M',m_r_mse, m_g_mse, m_b_mse; 
    'MC',mc_r_mse, mc_g_mse, mc_b_mse;
    'MCP',mcp_r_mse, mcp_g_mse, mcp_b_mse;
    'MCPB',mcpb_r_mse, mcpb_g_mse, mcpb_b_mse
    };
writecell(arr,'desk_cbc_all.xls','Sheet',1,'Range','B34:E36');



arr = {'Process','PSNR_R', 'PSNR_G','PSNR_B'; 
    'M',m_r_psnr, m_g_psnr, m_b_psnr; 
    'MC',mc_r_psnr, mc_g_psnr, mc_b_psnr;
    'MCP',mcp_r_psnr, mcp_g_psnr, mcp_b_psnr;
    'MCPB',mcpb_r_psnr, mcpb_g_psnr, mcpb_b_psnr
    };
writecell(arr,'desk_cbc_all.xls','Sheet',1,'Range','B34:E36');

arr = {'Process','SSIM_R', 'SSIM_G','SSIM_B'; 
    'M',m_r_ssim, m_g_ssim, m_b_ssim; 
    'MC',mc_r_ssim, mc_g_ssim, mc_b_ssim;
    'MCP',mcp_r_ssim, mcp_g_ssim, mcp_b_ssim;
    'MCPB',mcpb_r_ssim, mcpb_g_ssim, mcpb_b_ssim
    };
writecell(arr,'desk_cbc_all.xls','Sheet',1,'Range','B34:E38');




arr = {'Process','original_r_cc', 'original_g_cc','original_b_cc'; 
    'diagonal',desk_original_r_cc_d, desk_original_g_c_d, desk_original_b_c_d;
    'vertical',desk_original_r_cc_v, desk_original_g_c_v, desk_original_b_c_v;
    'horizantal',desk_original_r_cc_h, desk_original_g_c_h, desk_original_b_c_h
    };
writecell(arr,'desk_cbc_all.xls','Sheet',1,'Range','B40:E44');



arr = {'Process','original_r_ie', 'original_g_ie','original_b_ie'; 
    'desk',original_r_ir, original_g_ir, original_b_ir
    };
writecell(arr,'desk_cbc_all.xls','Sheet',1,'Range','B46:E50');


arr = {'Process','original_r_ie', 'original_g_ie','original_b_ie'; 
    'desk',original_r_ir, original_g_ir, original_b_ir
    };
writecell(arr,'desk_cbc_all.xls','Sheet',1,'Range','B52:E56');


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
arr = {'Process','MSE_R', 'MSE_G','MSE_B'; 
    'M',m_r_mse, m_g_mse, m_b_mse; 
    'MC',mc_r_mse, mc_g_mse, mc_b_mse;
    'MCP',mcp_r_mse, mcp_g_mse, mcp_b_mse;
    'MCPB',mcpb_r_mse, mcpb_g_mse, mcpb_b_mse
    };
writecell(arr,'desk_cbc_all.xls','Sheet',1,'Range','B58:E62');


arr = {'Process','PSNR_R', 'PSNR_G','PSNR_B'; 
    'M',m_r_psnr, m_g_psnr, m_b_psnr; 
    'MC',mc_r_psnr, mc_g_psnr, mc_b_psnr;
    'MCP',mcp_r_psnr, mcp_g_psnr, mcp_b_psnr;
    'MCPB',mcpb_r_psnr, mcpb_g_psnr, mcpb_b_psnr
    };
writecell(arr,'desk_cbc_all.xls','Sheet',1,'Range','B64:E68');


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

arr = {'Original','CC_r_d', 'CC_g_d','CC_b_d'; 
    'desk',desk_original_r_cc_d , desk_original_g_c_d , desk_original_b_c_d 
    };
writecell(arr,'desk_cbc_all.xls','Sheet',1,'Range','B70:E72');


arr = {'Original','CC_r_h', 'CC_g_h','CC_b_h'; 
    'desk',desk_original_r_cc_h , desk_original_g_c_h , desk_original_b_c_h 
    };
writecell(arr,'desk_cbc_all.xls','Sheet',1,'Range','B74:E76');


arr = {'Original','CC_r_v', 'CC_g_v','CC_b_v'; 
    'desk',desk_original_r_cc_v , desk_original_g_c_v , desk_original_b_c_v 
    };
writecell(arr,'desk_cbc_all.xls','Sheet',1,'Range','B78:E80');

