function X = mydft(x)

N = length(x);
X = zeros(N,1);

for k = 0:N-1
          for n = 0:N-1
                    X(k+1) = X(k+1) + x(n+1)*exp(-j*2*n*k*pi/N);
          endfor
endfor

% Set-up plot domain
t = 0:N-1;

%subplot(212)
figure, stem(t,angle(X),'m--');
xlabel('Frequency');
ylabel('Phase');
title('Frequency domain - Phase response')
grid on;

%subplot(211)
figure, stem(t,abs(X),'r--');
set(gca,'yscale','log');
xlabel('Frequency');
ylabel('|X(k)|');
title('Frequency domain - Magnitude response')
grid on;

endfunction
