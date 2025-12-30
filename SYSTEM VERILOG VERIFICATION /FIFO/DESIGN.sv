// Code your design here
module fifo
#( parameter FIFO_DEPTH = 8,
   parameter DATA_WIDTH = 32 )
(
   input  wire clk,
   input  wire reset_n,
   input  wire cs, wr_en, rd_en,
   input  wire [DATA_WIDTH-1:0] data_in,
   output wire [DATA_WIDTH-1:0] data_out,
   output wire empty, full
);

localparam FIFO_DEPTH_LOG = $clog2(FIFO_DEPTH);

reg [DATA_WIDTH-1:0] FIFO [0:FIFO_DEPTH-1];
reg [FIFO_DEPTH_LOG:0] write_pointer;
reg [FIFO_DEPTH_LOG:0] read_pointer;

// WRITE
always @(posedge clk or negedge reset_n) begin
    if (!reset_n)
        write_pointer <= 0;
    else if (cs && wr_en && !full) begin
        FIFO[write_pointer[FIFO_DEPTH_LOG-1:0]] <= data_in;
        write_pointer <= write_pointer + 1'b1;
    end
end

// READ
always @(posedge clk or negedge reset_n) begin
    if (!reset_n)
        read_pointer <= 0;
    else if (cs && rd_en && !empty) begin
        read_pointer <= read_pointer + 1'b1;
    end
end

assign data_out = FIFO[read_pointer[FIFO_DEPTH_LOG-1:0]];
assign empty    = (read_pointer == write_pointer);
assign full     = (read_pointer == {~write_pointer[FIFO_DEPTH_LOG],
                                    write_pointer[FIFO_DEPTH_LOG-1:0]});

endmodule
