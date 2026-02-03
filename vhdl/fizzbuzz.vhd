library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity FizzBuzz is
    Port (
        clk      : in  STD_LOGIC;
        reset    : in  STD_LOGIC;
        enable   : in  STD_LOGIC;
        fizz_out : out STD_LOGIC;
        buzz_out : out STD_LOGIC;
        number   : out STD_LOGIC_VECTOR(6 downto 0)
    );
end FizzBuzz;

architecture Behavioral of FizzBuzz is
    signal counter   : STD_LOGIC_VECTOR(6 downto 0) := (others => '0');
    signal mod3     : STD_LOGIC;
    signal mod5     : STD_LOGIC;
    signal mod15    : STD_LOGIC;
begin
    process(clk, reset)
    begin
        if reset = '1' then
            counter <= (others => '0');
        elsif rising_edge(clk) then
            if enable = '1' then
                counter <= STD_LOGIC_VECTOR(unsigned(counter) + 1);
            end if;
        end if;
    end process;

    -- Modulo operations
    mod3  <= '1' when unsigned(counter) mod 3 = 0 else '0';
    mod5  <= '1' when unsigned(counter) mod 5 = 0 else '0';
    mod15 <= '1' when unsigned(counter) mod 15 = 0 else '0';

    -- Outputs
    fizz_out <= mod3;
    buzz_out <= mod5;
    number   <= counter when (mod15 = '0' and mod3 = '0' and mod5 = '0') else (others => 'Z');

end Behavioral;
