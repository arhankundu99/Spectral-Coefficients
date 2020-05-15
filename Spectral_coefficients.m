N = input("Enter period of input signal: ");
input_signal = [];
for x = 1:N
    signal_value = input("Enter value of input signal at n = "+(x-1)+": ");
    input_signal = [input_signal ; signal_value];
end
M = [];
for row = 1:N
    row_vector = [];
    for col = 1:N
        value = [cos((2*pi)/N)+(i*sin((2*pi)/N))].^((row-1)*(col-1));
        row_vector = [row_vector value];
    end
    M = [M ; row_vector];
end
spectral_coeff = inv(M)*(input_signal);
magnitude_matrix = abs(spectral_coeff);
phase_matrix = angle(spectral_coeff);  % The angles in phase matrix are in radians

figure
stem(0:N-1, magnitude_matrix, 'filled')
grid
xlabel('K')
ylabel('Magnitude')
hold on
figure
stem(0:N-1, phase_matrix, 'filled')
grid
xlabel('K')
ylabel('Phase')



        
