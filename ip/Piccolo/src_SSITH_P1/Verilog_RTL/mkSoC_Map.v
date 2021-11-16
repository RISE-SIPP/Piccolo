//
// Generated by Bluespec Compiler, version 2021.07-14-g5f987061 (build 5f987061)
//
// On Tue Nov 16 19:45:15 GMT 2021
//
//
// Ports:
// Name                         I/O  size props
// m_plic_addr_range              O   128 const
// m_near_mem_io_addr_range       O   128 const
// m_ethernet_0_addr_range        O   128 const
// m_dma_0_addr_range             O   128 const
// m_uart16550_0_addr_range       O   128 const
// m_uart16550_1_addr_range       O   128 const
// m_iic_0_addr_range             O   128 const
// m_axi_quad_spi_0_full_addr_range  O   128 const
// m_axi_quad_spi_0_lite_addr_range  O   128 const
// m_axi_quad_spi_1_addr_range    O   128 const
// m_gpio_0_addr_range            O   128 const
// m_gpio_1_addr_range            O   128 const
// m_boot_rom_addr_range          O   128 const
// m_ddr4_0_uncached_addr_range   O   128 const
// m_ddr4_0_cached_addr_range     O   128 const
// m_is_mem_addr                  O     1
// m_is_IO_addr                   O     1
// m_is_near_mem_IO_addr          O     1
// m_pc_reset_value               O    32 const
// m_pcc_reset_value              O    81 const
// m_ddc_reset_value              O    81 const
// m_mtcc_reset_value             O    81 const
// m_mepcc_reset_value            O    81 const
// m_mtvec_reset_value            O    32 const
// m_nmivec_reset_value           O    32
// CLK                            I     1 unused
// RST_N                          I     1 unused
// m_is_mem_addr_addr             I    64
// m_is_IO_addr_addr              I    64
// m_is_near_mem_IO_addr_addr     I    64
//
// Combinational paths from inputs to outputs:
//   m_is_mem_addr_addr -> m_is_mem_addr
//   m_is_IO_addr_addr -> m_is_IO_addr
//   m_is_near_mem_IO_addr_addr -> m_is_near_mem_IO_addr
//
//

`ifdef BSV_ASSIGNMENT_DELAY
`else
  `define BSV_ASSIGNMENT_DELAY
`endif

`ifdef BSV_POSITIVE_RESET
  `define BSV_RESET_VALUE 1'b1
  `define BSV_RESET_EDGE posedge
`else
  `define BSV_RESET_VALUE 1'b0
  `define BSV_RESET_EDGE negedge
`endif

module mkSoC_Map(CLK,
		 RST_N,

		 m_plic_addr_range,

		 m_near_mem_io_addr_range,

		 m_ethernet_0_addr_range,

		 m_dma_0_addr_range,

		 m_uart16550_0_addr_range,

		 m_uart16550_1_addr_range,

		 m_iic_0_addr_range,

		 m_axi_quad_spi_0_full_addr_range,

		 m_axi_quad_spi_0_lite_addr_range,

		 m_axi_quad_spi_1_addr_range,

		 m_gpio_0_addr_range,

		 m_gpio_1_addr_range,

		 m_boot_rom_addr_range,

		 m_ddr4_0_uncached_addr_range,

		 m_ddr4_0_cached_addr_range,

		 m_is_mem_addr_addr,
		 m_is_mem_addr,

		 m_is_IO_addr_addr,
		 m_is_IO_addr,

		 m_is_near_mem_IO_addr_addr,
		 m_is_near_mem_IO_addr,

		 m_pc_reset_value,

		 m_pcc_reset_value,

		 m_ddc_reset_value,

		 m_mtcc_reset_value,

		 m_mepcc_reset_value,

		 m_mtvec_reset_value,

		 m_nmivec_reset_value);
  input  CLK;
  input  RST_N;

  // value method m_plic_addr_range
  output [127 : 0] m_plic_addr_range;

  // value method m_near_mem_io_addr_range
  output [127 : 0] m_near_mem_io_addr_range;

  // value method m_ethernet_0_addr_range
  output [127 : 0] m_ethernet_0_addr_range;

  // value method m_dma_0_addr_range
  output [127 : 0] m_dma_0_addr_range;

  // value method m_uart16550_0_addr_range
  output [127 : 0] m_uart16550_0_addr_range;

  // value method m_uart16550_1_addr_range
  output [127 : 0] m_uart16550_1_addr_range;

  // value method m_iic_0_addr_range
  output [127 : 0] m_iic_0_addr_range;

  // value method m_axi_quad_spi_0_full_addr_range
  output [127 : 0] m_axi_quad_spi_0_full_addr_range;

  // value method m_axi_quad_spi_0_lite_addr_range
  output [127 : 0] m_axi_quad_spi_0_lite_addr_range;

  // value method m_axi_quad_spi_1_addr_range
  output [127 : 0] m_axi_quad_spi_1_addr_range;

  // value method m_gpio_0_addr_range
  output [127 : 0] m_gpio_0_addr_range;

  // value method m_gpio_1_addr_range
  output [127 : 0] m_gpio_1_addr_range;

  // value method m_boot_rom_addr_range
  output [127 : 0] m_boot_rom_addr_range;

  // value method m_ddr4_0_uncached_addr_range
  output [127 : 0] m_ddr4_0_uncached_addr_range;

  // value method m_ddr4_0_cached_addr_range
  output [127 : 0] m_ddr4_0_cached_addr_range;

  // value method m_is_mem_addr
  input  [63 : 0] m_is_mem_addr_addr;
  output m_is_mem_addr;

  // value method m_is_IO_addr
  input  [63 : 0] m_is_IO_addr_addr;
  output m_is_IO_addr;

  // value method m_is_near_mem_IO_addr
  input  [63 : 0] m_is_near_mem_IO_addr_addr;
  output m_is_near_mem_IO_addr;

  // value method m_pc_reset_value
  output [31 : 0] m_pc_reset_value;

  // value method m_pcc_reset_value
  output [80 : 0] m_pcc_reset_value;

  // value method m_ddc_reset_value
  output [80 : 0] m_ddc_reset_value;

  // value method m_mtcc_reset_value
  output [80 : 0] m_mtcc_reset_value;

  // value method m_mepcc_reset_value
  output [80 : 0] m_mepcc_reset_value;

  // value method m_mtvec_reset_value
  output [31 : 0] m_mtvec_reset_value;

  // value method m_nmivec_reset_value
  output [31 : 0] m_nmivec_reset_value;

  // signals for module outputs
  wire [127 : 0] m_axi_quad_spi_0_full_addr_range,
		 m_axi_quad_spi_0_lite_addr_range,
		 m_axi_quad_spi_1_addr_range,
		 m_boot_rom_addr_range,
		 m_ddr4_0_cached_addr_range,
		 m_ddr4_0_uncached_addr_range,
		 m_dma_0_addr_range,
		 m_ethernet_0_addr_range,
		 m_gpio_0_addr_range,
		 m_gpio_1_addr_range,
		 m_iic_0_addr_range,
		 m_near_mem_io_addr_range,
		 m_plic_addr_range,
		 m_uart16550_0_addr_range,
		 m_uart16550_1_addr_range;
  wire [80 : 0] m_ddc_reset_value,
		m_mepcc_reset_value,
		m_mtcc_reset_value,
		m_pcc_reset_value;
  wire [31 : 0] m_mtvec_reset_value, m_nmivec_reset_value, m_pc_reset_value;
  wire m_is_IO_addr, m_is_mem_addr, m_is_near_mem_IO_addr;

  // remaining internal signals
  wire [63 : 0] x__h243,
		x__h267,
		x__h291,
		x__h316,
		x__h341,
		x__h366,
		x__h391,
		x__h416,
		x__h441,
		x__h466,
		x__h491,
		x__h516,
		x__h541,
		x__h566,
		x__h591,
		x__h618;
  wire NOT_m_is_IO_addr_addr_ULT_0xC000000_AND_m_is_I_ETC___d21,
       NOT_m_is_IO_addr_addr_ULT_0xC000000_AND_m_is_I_ETC___d33,
       NOT_m_is_IO_addr_addr_ULT_0xC000000_AND_m_is_I_ETC___d45,
       NOT_m_is_IO_addr_addr_ULT_0xC000000_AND_m_is_I_ETC___d57,
       NOT_m_is_IO_addr_addr_ULT_0xC000000_AND_m_is_I_ETC___d69,
       NOT_m_is_IO_addr_addr_ULT_0xC000000_AND_m_is_I_ETC___d81;

  // value method m_plic_addr_range
  assign m_plic_addr_range = 128'h000000000C0000000000000000400000 ;

  // value method m_near_mem_io_addr_range
  assign m_near_mem_io_addr_range = 128'h00000000100000000000000000010000 ;

  // value method m_ethernet_0_addr_range
  assign m_ethernet_0_addr_range = 128'h00000000621000000000000000040000 ;

  // value method m_dma_0_addr_range
  assign m_dma_0_addr_range = 128'h00000000622000000000000000010000 ;

  // value method m_uart16550_0_addr_range
  assign m_uart16550_0_addr_range = 128'h00000000623000000000000000001000 ;

  // value method m_uart16550_1_addr_range
  assign m_uart16550_1_addr_range = 128'h00000000623400000000000000001000 ;

  // value method m_iic_0_addr_range
  assign m_iic_0_addr_range = 128'h00000000623100000000000000001000 ;

  // value method m_axi_quad_spi_0_full_addr_range
  assign m_axi_quad_spi_0_full_addr_range =
	     128'h00000000400000000000000010000000 ;

  // value method m_axi_quad_spi_0_lite_addr_range
  assign m_axi_quad_spi_0_lite_addr_range =
	     128'h00000000624000000000000000001000 ;

  // value method m_axi_quad_spi_1_addr_range
  assign m_axi_quad_spi_1_addr_range = 128'h00000000623200000000000000001000 ;

  // value method m_gpio_0_addr_range
  assign m_gpio_0_addr_range = 128'h000000006FFF00000000000000010000 ;

  // value method m_gpio_1_addr_range
  assign m_gpio_1_addr_range = 128'h00000000623300000000000000010000 ;

  // value method m_boot_rom_addr_range
  assign m_boot_rom_addr_range = 128'h00000000700000000000000000001000 ;

  // value method m_ddr4_0_uncached_addr_range
  assign m_ddr4_0_uncached_addr_range =
	     128'h00000000800000000000000040000000 ;

  // value method m_ddr4_0_cached_addr_range
  assign m_ddr4_0_cached_addr_range = 128'h00000000C00000000000000040000000 ;

  // value method m_is_mem_addr
  assign m_is_mem_addr =
	     m_is_mem_addr_addr >= 64'h00000000C0000000 &&
	     x__h243 < 64'h0000000040000000 ;

  // value method m_is_IO_addr
  assign m_is_IO_addr =
	     NOT_m_is_IO_addr_addr_ULT_0xC000000_AND_m_is_I_ETC___d81 ||
	     m_is_IO_addr_addr >= 64'h0000000080000000 &&
	     x__h591 < 64'h0000000040000000 ;

  // value method m_is_near_mem_IO_addr
  assign m_is_near_mem_IO_addr =
	     m_is_near_mem_IO_addr_addr >= 64'h0000000010000000 &&
	     x__h618 < 64'h0000000000010000 ;

  // value method m_pc_reset_value
  assign m_pc_reset_value = 32'h70000000 ;

  // value method m_pcc_reset_value
  assign m_pcc_reset_value = 81'h1700000001CFFF7DA4000 ;

  // value method m_ddc_reset_value
  assign m_ddc_reset_value = 81'h10000000000FFF7DA4000 ;

  // value method m_mtcc_reset_value
  assign m_mtcc_reset_value = 81'h10000100000FFF7DA4000 ;

  // value method m_mepcc_reset_value
  assign m_mepcc_reset_value = 81'h10000000000FFF7DA4000 ;

  // value method m_mtvec_reset_value
  assign m_mtvec_reset_value = 32'h00001000 ;

  // value method m_nmivec_reset_value
  assign m_nmivec_reset_value =
	     32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx /* unspecified value */  ;

  // remaining internal signals
  assign NOT_m_is_IO_addr_addr_ULT_0xC000000_AND_m_is_I_ETC___d21 =
	     m_is_IO_addr_addr >= 64'h000000000C000000 &&
	     x__h267 < 64'h0000000000400000 ||
	     m_is_IO_addr_addr >= 64'h0000000010000000 &&
	     x__h291 < 64'h0000000000010000 ||
	     m_is_IO_addr_addr >= 64'h0000000062100000 &&
	     x__h316 < 64'h0000000000040000 ;
  assign NOT_m_is_IO_addr_addr_ULT_0xC000000_AND_m_is_I_ETC___d33 =
	     NOT_m_is_IO_addr_addr_ULT_0xC000000_AND_m_is_I_ETC___d21 ||
	     m_is_IO_addr_addr >= 64'h0000000062200000 &&
	     x__h341 < 64'h0000000000010000 ||
	     m_is_IO_addr_addr >= 64'h0000000062300000 &&
	     x__h366 < 64'h0000000000001000 ;
  assign NOT_m_is_IO_addr_addr_ULT_0xC000000_AND_m_is_I_ETC___d45 =
	     NOT_m_is_IO_addr_addr_ULT_0xC000000_AND_m_is_I_ETC___d33 ||
	     m_is_IO_addr_addr >= 64'h0000000062340000 &&
	     x__h391 < 64'h0000000000001000 ||
	     m_is_IO_addr_addr >= 64'h0000000062310000 &&
	     x__h416 < 64'h0000000000001000 ;
  assign NOT_m_is_IO_addr_addr_ULT_0xC000000_AND_m_is_I_ETC___d57 =
	     NOT_m_is_IO_addr_addr_ULT_0xC000000_AND_m_is_I_ETC___d45 ||
	     m_is_IO_addr_addr >= 64'h0000000040000000 &&
	     x__h441 < 64'h0000000010000000 ||
	     m_is_IO_addr_addr >= 64'h0000000062400000 &&
	     x__h466 < 64'h0000000000001000 ;
  assign NOT_m_is_IO_addr_addr_ULT_0xC000000_AND_m_is_I_ETC___d69 =
	     NOT_m_is_IO_addr_addr_ULT_0xC000000_AND_m_is_I_ETC___d57 ||
	     m_is_IO_addr_addr >= 64'h0000000062320000 &&
	     x__h491 < 64'h0000000000001000 ||
	     m_is_IO_addr_addr >= 64'h000000006FFF0000 &&
	     x__h516 < 64'h0000000000010000 ;
  assign NOT_m_is_IO_addr_addr_ULT_0xC000000_AND_m_is_I_ETC___d81 =
	     NOT_m_is_IO_addr_addr_ULT_0xC000000_AND_m_is_I_ETC___d69 ||
	     m_is_IO_addr_addr >= 64'h0000000062330000 &&
	     x__h541 < 64'h0000000000010000 ||
	     m_is_IO_addr_addr >= 64'h0000000070000000 &&
	     x__h566 < 64'h0000000000001000 ;
  assign x__h243 = m_is_mem_addr_addr - 64'h00000000C0000000 ;
  assign x__h267 = m_is_IO_addr_addr - 64'h000000000C000000 ;
  assign x__h291 = m_is_IO_addr_addr - 64'h0000000010000000 ;
  assign x__h316 = m_is_IO_addr_addr - 64'h0000000062100000 ;
  assign x__h341 = m_is_IO_addr_addr - 64'h0000000062200000 ;
  assign x__h366 = m_is_IO_addr_addr - 64'h0000000062300000 ;
  assign x__h391 = m_is_IO_addr_addr - 64'h0000000062340000 ;
  assign x__h416 = m_is_IO_addr_addr - 64'h0000000062310000 ;
  assign x__h441 = m_is_IO_addr_addr - 64'h0000000040000000 ;
  assign x__h466 = m_is_IO_addr_addr - 64'h0000000062400000 ;
  assign x__h491 = m_is_IO_addr_addr - 64'h0000000062320000 ;
  assign x__h516 = m_is_IO_addr_addr - 64'h000000006FFF0000 ;
  assign x__h541 = m_is_IO_addr_addr - 64'h0000000062330000 ;
  assign x__h566 = m_is_IO_addr_addr - 64'h0000000070000000 ;
  assign x__h591 = m_is_IO_addr_addr - 64'h0000000080000000 ;
  assign x__h618 = m_is_near_mem_IO_addr_addr - 64'h0000000010000000 ;
endmodule  // mkSoC_Map

