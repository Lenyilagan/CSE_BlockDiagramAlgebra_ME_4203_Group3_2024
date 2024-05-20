% Clear
clear
clc
close all

%Before Reduce Block Diagram
%%Define G1, G2, G3,G4, H1, H2, and H3

G1_num = [0 1]
G1_den = [1 0 0]

G2_num = [0 1]
G2_den = [1 1]

G3_num = [0 1]
G3_den = [1 0]

G4_num = [0 1]
G4_den = [2 0]

H1_num = [0 1]
H1_den = [1 0]

H2_num = [0 1]
H2_den = [1 -1]

H3_num = [0 1]
H3_den = [1 -2]

%AfterReduce Block Diagram

%Block Diagram Algebra
%G_1 = 1/s^2
%G_2 = 1/(s + 1)
%G_3 = 1/s
%H_1 = 1/s
%H_2 = 1/(s - 1)
%H_3 = 1/(s - 2)

G_num = [2 -6 4 0 0 0 0 0]
G_den = [4 -8 -4 14 -8 -2 2 6 4 0 0 0 0]

G = tf(G_num,G_den)

% step response
step(G,0:0.1:20)
