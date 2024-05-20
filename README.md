# CSE_BlockDiagramAlgebra_ME_4203_Group3_2024

**2. Block Diagram Algebra**

![Problem 2](https://github.com/Lenyilagan/CSE_BlockDiagramAlgebra_ME_4203_Group3_2024/assets/161393545/2e3feb06-e02a-4869-a55f-fc21e651fec6)


**Matlab Code**

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

**Step Response**

**Step Response From Step Function - Before Reduce Block Diagram**

![Before Reduce Block Diagram](https://github.com/Lenyilagan/CSE_BlockDiagramAlgebra_ME_4203_Group3_2024/assets/161393545/a460449a-5ba3-44f8-b864-d3b81dad4994)

**Step Response From Step Function - After Reduce Block Diagram**

![After Reduce Block Diagram](https://github.com/Lenyilagan/CSE_BlockDiagramAlgebra_ME_4203_Group3_2024/assets/161393545/aff13e3d-5874-4467-8341-ea3f3b1c7ee2)

**Step Response From Simulink - Before Reduce Block Diagram**


**Step Response From Simulink - After Reduce Block Diagram**





