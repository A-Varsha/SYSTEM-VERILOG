interface intf #(parameter DATA_WIDTH=32)();
  logic clk;                 // Declare clock here
  logic reset_n;
  logic cs;
  logic wr_en;
  logic rd_en;
  logic [DATA_WIDTH-1:0] data_in;
  logic [DATA_WIDTH-1:0] data_out;
  logic empty;
  logic full;

  clocking cb @(posedge clk);
    output cs, wr_en, rd_en, data_in;
    input data_out, empty, full;
  endclocking

  modport tb (
    clocking cb,
    input data_out, empty, full,
    output cs, wr_en, rd_en, data_in
  );

  modport fifo (
    input clk, reset_n, cs, wr_en, rd_en, data_in,
    output data_out, empty, full
  );
endinterface
