% Original data: Rakić et al. 1998, https://doi.org/10.1364/AO.37.005271

% Brendel-Bormann (BB) model parameters

omega_p = 14.98; % eV. Plasma frequency of Al
f_0     = 0.526;
gamma_0 = 0.047; % eV

f_1     = 0.213;
gamma_1 = 0.312; % eV
omega_1 = 0.163; % eV
sigma_1 = 0.013; % eV

f_2     = 0.060; 
gamma_2 = 0.315; % eV
omega_2 = 1.561; % eV
sigma_2 = 0.042; % eV

f_3     = 0.182; 
gamma_3 = 1.587; % eV
omega_3 = 1.827; % eV
sigma_3 = 0.256; % eV

f_4     = 0.014;
gamma_4 = 2.145; % eV
omega_4 = 4.495; % eV
sigma_4 = 1.735; % eV

big_omega_p = (f_0*0.5)*omega_p;


% function geteps = BB(big_omega_p, omega, gamma_0, gamma_1, omega_1, sigma_1, f_1)
%                     
%                     epsilon1 = (1 - (big_omega_p^2)) / (omega*(omega + 1i*gamma_0));
%                             
%                     alpha = ((omega^2)+1i*omega*gamma_1)^0.5;
%                     za    = (alpha - omega_1) / ((2^0.5)*sigma_1);
%                     zb    = (alpha + omega_1) / ((2^0.5)*sigma_1);
%                     epsilon2 = epsilon1 + (((1i*pi^0.5)*f_1*omega_p^2) / (2^1.5*alpha*sigma_1)*(w(za)+(w(zb))));
% end

function geteps = Rakic1998_function(omega)
                    
                    epsilon1 = (1 - (big_omega_p^2)) / (omega*(omega + 1i*gamma_0));
                            
                    alpha = ((omega^2)+1i*omega*gamma_1)^0.5;
                    za    = (alpha - omega_1) / ((2^0.5)*sigma_1);
                    zb    = (alpha + omega_1) / ((2^0.5)*sigma_1);
                    epsilon2 = epsilon1 + (((1i*pi^0.5)*f_1*omega_p^2) / (2^1.5*alpha*sigma_1)*(w(za)+(w(zb))));
end

