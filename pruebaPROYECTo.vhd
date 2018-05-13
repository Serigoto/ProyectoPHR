library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity prueba is
    port (entrada: in std_logic_vector(7 downto 0);
            salida: out std_logic );
end prueba;

architecture palabraEntity of prueba is

    component memCompare
    port (
        charInput : in std_logic_vector(7 downto 0);
        address   : in integer range 0 to 25 ;
        isCorrect : out std_logic
      ) ;
    end component;

    signal letra: std_logic;
    signal entrada: std_logic_vector(7 downto 0);

begin
    entrada<=01100101;
    i0: memCompare port map (entrada,4,salida);
    if(salida) then
        entrada<=01100101;
        i1: memCompare port map (entrada,13,salida);
        if(salida) then
            entrada<=01100101;
            i2: memCompare port map (entrada,19,salida);
            if(salida) then 
                entrada<=01100101;
                i3: memCompare port map (entrada,8,salida);
                if(salida) then 
                    entrada<=01100101;
                    i4: memCompare port map (entrada,19,salida);
                    if(salida) then 
                        entrada<=01100101;
                        i5: memCompare port map (entrada,24,salida);
                    end if;
                end if;
            end if;
        end if;
    end if;
end palabraEntity ; -- palabraEntity