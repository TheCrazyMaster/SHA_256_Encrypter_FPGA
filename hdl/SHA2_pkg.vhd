library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

package SHA2_pkg is
    subtype word is std_logic_vector(31 downto 0);

    function shr (val_in : word; shift_value : integer) return word;

end package SHA2_pkg;

package body SHA2_pkg is

    function shr (val_in : word; shift_value : integer) return word is
    begin
        return (31 downto (32 - shift_value) => '0') & val_in(31 downto shift_value);
    end function shr;

end package body SHA2_pkg;
