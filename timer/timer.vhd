LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY timer IS
PORT (
CLOCK_50 : IN STD_LOGIC;
KEY : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
DRAM_CLK, DRAM_CKE: out STD_LOGIC;
DRAM_ADDR : OUT std_logic_vector(11 downto 0);
DRAM_BA_0, DRAM_BA_1: BUFFER STD_LOGIC;
DRAM_CS_N, DRAM_CAS_N, DRAM_RAS_N, DRAM_WE_N: OUT STD_LOGIC;
DRAM_DQ: INOUT STD_logic_vector(15 downto 0);
DRAM_UDQM, DRAM_LDQM : BUFFER STD_LOGIC
);
END timer;

ARCHITECTURE Structure OF timer IS
	COMPONENT nios_system
		PORT(
				clk_clk : IN STD_LOGIC;
				reset_reset_n : IN STD_LOGIC;
				sdram_wire_addr : OUT STD_logic_vector(11 downto 0);
				sdram_wire_ba:BUFFER STD_logic_vector(1 downto 0);
				sdram_wire_cas_n : out STD_LOGIC;
				sdram_wire_cke : out STD_LOGIC;
				sdram_wire_cs_n : out STD_LOGIC;
				sdram_wire_dq : INOUT STD_logic_vector(15 downto 0);
				sdram_wire_dqm : BUFFER STD_logic_vector(1 downto 0);
				sdram_wire_ras_n : out STD_LOGIC;
				sdram_wire_we_n : out std_logic);
			end component;
			signal DQM : std_logic_vector( 1 downto 0);
			signal BA : std_logic_vector(1 downto 0);
			begin 
				DRAM_BA_0 <= BA(0);
				DRAM_BA_1 <= BA(1);
				DRAM_UDQM <= DQM(1);
				DRAM_LDQM <= DQM(0);
				
				NiosII : nios_system
					port map(
						clk_clk => cloCK_50,
						reset_reset_n => key(0),
						sdram_wire_addr => DRAM_ADDR,
						sdram_wire_ba => BA,
						sdram_wire_cas_n => draM_CAS_N,
						sdram_wire_cke => draM_CKE,
						sdram_wire_cs_n => draM_CS_N,
						sdram_wire_dq => draM_DQ,
						sdram_wire_ras_n=>draM_RAS_N,
						sdram_wire_we_n => draM_WE_N);
						
						draM_CLK <= cloCK_50;
					end structure;