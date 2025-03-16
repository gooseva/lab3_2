LIBRARY ieee;
USE ieee.std_logic_1164.all;

-- D latch

ENTITY lab3_2 IS
PORT ( Clk, D : IN STD_LOGIC;
            Q : OUT STD_LOGIC);
END lab3_2;

ARCHITECTURE Structural OF lab3_2 IS
SIGNAL R, S, R_g, S_g, Qa, Qb : STD_LOGIC ;
ATTRIBUTE KEEP : BOOLEAN;
ATTRIBUTE KEEP OF R, S, R_g, S_g, Qa, Qb : SIGNAL IS TRUE;

BEGIN
    R <= ((not D) and Clk);
    S <= (D and Clk);
    R_g <= R AND Clk;
    S_g <= S AND Clk;
    Qa <= NOT (R_g OR Qb);
    Qb <= NOT (S_g OR Qa);
    Q <= Qa;
END Structural;