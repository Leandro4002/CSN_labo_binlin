--------------------------------------------------------------------------------
-- HEIG-VD, Haute Ecole d'Ingenierie et de Gestion du canton de Vaud
-- Institut REDS, Reconfigurable & Embedded Digital Systems
--
-- File         : bin_lin_2to4.vhd
--
-- Description  : decodeur 2 bits en lineaire
--                Description avec une table de verite (TDV)
--
-- Author       : Etienne Messerli
-- Date         : 15.02.2015
-- Version      : 0.0
--
-- Dependencies : 
--
--| Modifications |-------------------------------------------------------------
-- Version   Auteur      Date               Description
-- 0.0       EMI         15.02.2015         Initial version.
--------------------------------------------------------------------------------

--| Library |-------------------------------------------------------------------
library ieee;                    -- Librairie IEEE
    use ieee.std_logic_1164.all; -- Definition du type standard logic
--------------------------------------------------------------------------------

--| Entity |--------------------------------------------------------------------
entity bin_lin_2to4 is
    port(
        -- valeur binaire en entree
        bin_i : in  std_logic_vector(1 downto 0);
        -- valeur lineaire en sortie
        lin_o : out std_logic_vector(3 downto 0);  --erreur ; de trop !!!
    );
end bin_lin_2to4;
--------------------------------------------------------------------------------

--| Architecture |--------------------------------------------------------------
architecture tdv of bin_lin_2to4 is

begin

    with(bin_i) select
        lin_o <= "0001" when "00",
                 "0011" when "01",
                 "0111" when "10",
                 "1111" when "11",
                 "XXXX" when others; --simulation
end tdv;
--------------------------------------------------------------------------------