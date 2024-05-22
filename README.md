# CSE_BlockDiagramAlgebra_ME_4203_Group3_2024

**1. Block Diagram Algebra**

![image](https://github.com/Lenyilagan/CSE_BlockDiagramAlgebra_ME_4203_Group3_2024/assets/159031775/24384bdd-711c-4de3-9789-af6ce3aa9a42)


**Matlab Code**

        % Clear
        clear
        clc
        close all
        syms t s
        
        %% Define G1, G2, G2, H1, H2, H3
        
        G1_num = [0 0 1];
        G1_den = [1 0 0];
        
        G2_num = [0 1];
        G2_den = [1 1];
        
        G3_num = [0 1];
        G3_den = [1 0];
        
        H1_num = [0 1];
        H1_den = [1 0];
        
        H2_num = [0 1];
        H2_den = [1 -1];
        
        H3_num = [0 1];
        H3_den = [1 -2];
        
        
        %% Reduce Block Diagram
        
        GH3_num = conv(G3_num,H3_num)
        GH3_den = conv(G3_den,H3_den)
        
        TF3_num = conv(GH3_den,GH3_num)
        TF3_add = [1 -2 1]
        TF3_den = conv(G3_den,TF3_add)
        
        G2_num_num = [1 2]
        G2_sum_num = conv(G2_num_num,G2_den)
        G2_sum_den = conv(G2_den, G2_num) 
        
        GH2_num = conv(G2_num,H2_num)
        GH2_den = conv(G2_den,H2_den)
        
        TF2_num = conv(GH2_den,GH2_num)
        TF2_add = [1 0 0]
        TF2_den = conv(G2_den,TF2_add)
        
        TF1_num = conv(G1_num,TF2_num)
        TF1_den = conv(G1_den,TF2_den)
        
        TF4_num = conv(TF3_num,G2_sum_num)
        TF4_den = conv(TF3_den,G2_sum_den)
        
        TF1H1_num = conv(TF1_num, H1_num)
        TF1H1_den = conv(TF1_den, H1_den)
        
        TF5_num = conv(TF1_num,TF1H1_den)
        TF5_add = [1 1 0 0 1 0 -1]
        TF5_den = conv(TF1_den,TF5_add)
        
        TF_num = conv(TF5_num, TF4_num)
        TF_den = conv(TF5_den,TF4_den)
        
        TF = tf(TF_num,TF_den)
        
        %Step Response
        step(TF,0:0.1:20)

        

**Step Response**
![image](https://github.com/Lenyilagan/CSE_BlockDiagramAlgebra_ME_4203_Group3_2024/assets/159031775/40d26f6d-0c90-4786-8efc-08281782e158)


**Block Reduction using Matlab Simulink**
![image](https://github.com/Lenyilagan/CSE_BlockDiagramAlgebra_ME_4203_Group3_2024/assets/159031775/8692f9e9-ab20-4a46-9fd2-08765aa7f65b)
![image](https://github.com/Lenyilagan/CSE_BlockDiagramAlgebra_ME_4203_Group3_2024/assets/159031775/202d547f-9417-4e7c-989e-87fa2de0243c)
![image](https://github.com/Lenyilagan/CSE_BlockDiagramAlgebra_ME_4203_Group3_2024/assets/159031775/87920924-9715-4d9e-bb73-f452fbbbea66)
![image](https://github.com/Lenyilagan/CSE_BlockDiagramAlgebra_ME_4203_Group3_2024/assets/159031775/e9b1e40d-84eb-4513-a945-f92f793964d6)
![image](https://github.com/Lenyilagan/CSE_BlockDiagramAlgebra_ME_4203_Group3_2024/assets/159031775/fe440c4e-4742-4c60-af46-8b107a4af340)
![image](https://github.com/Lenyilagan/CSE_BlockDiagramAlgebra_ME_4203_Group3_2024/assets/159031775/249e15e0-e8fb-45ec-9ccf-972592734a1d)



![image](https://github.com/Lenyilagan/CSE_BlockDiagramAlgebra_ME_4203_Group3_2024/assets/159031775/eedeb67e-a2de-42f5-b09e-e859dcb25000)


**Manual Reduction**
![image](https://github.com/Lenyilagan/CSE_BlockDiagramAlgebra_ME_4203_Group3_2024/assets/160560665/be832e96-7ee2-4798-82ab-6d1be352299a)
![image](https://github.com/Lenyilagan/CSE_BlockDiagramAlgebra_ME_4203_Group3_2024/assets/160560665/52ab720c-6bcf-4ecb-b61c-eb5f9a95a708)




--------------------------------------------------------

**2. Block Diagram Algebra**

![Problem 2](https://github.com/Lenyilagan/CSE_BlockDiagramAlgebra_ME_4203_Group3_2024/assets/161393545/2e3feb06-e02a-4869-a55f-fc21e651fec6)

**Matlab Code**


    %Clear
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
    %Step response
    step(G,0:0.1:20)


**Step Response**

**Step Response From Step Function - Before Reduce Block Diagram**

![Before Reduce Block Diagram](https://github.com/Lenyilagan/CSE_BlockDiagramAlgebra_ME_4203_Group3_2024/assets/161393545/a460449a-5ba3-44f8-b864-d3b81dad4994)


**Step Response From Step Function - After Reduce Block Diagram**

![After Reduce Block Diagram](https://github.com/Lenyilagan/CSE_BlockDiagramAlgebra_ME_4203_Group3_2024/assets/161393545/aff13e3d-5874-4467-8341-ea3f3b1c7ee2)


**Step Response From Simulink - Before Reduce Block Diagram**

![Before Reduce Block Diagram](https://github.com/Lenyilagan/CSE_BlockDiagramAlgebra_ME_4203_Group3_2024/assets/161393545/7eb6f828-8934-41f6-acf3-1e56004e6ea0)


**Step Response From Simulink - After Reduce Block Diagram**

![After Reduce Block Diagram](https://github.com/Lenyilagan/CSE_BlockDiagramAlgebra_ME_4203_Group3_2024/assets/161393545/31d7cc36-5875-4c22-b087-bb87dac4c81a)








