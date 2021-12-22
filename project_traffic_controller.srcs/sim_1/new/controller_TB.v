
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.10.2021 10:07:12
// Design Name: 
// Module Name: controller_TB
// Project Name: project_traffic_controller
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps
module controller_TB;


reg clk,rst;
wire [2:0]light_D0;
wire [2:0]light_D1;
wire [2:0]light_D2;
wire [2:0]light_D3;
wire [2:0]light_D4;
wire [2:0]light_D5;
wire [2:0]light_D6;
wire [2:0]light_D7;
wire [2:0]light_D8;
wire [2:0]light_D9;



traffic_controller dut(.clk(clk) , .rst(rst) ,.light_D0(light_D0), .light_D1(light_D1) , .light_D2(light_D2)  ,.light_D3(light_D3),.light_D4(light_D4),.light_D5(light_D5),
                        .light_D6(light_D6),.light_D7(light_D7),.light_D8(light_D8),.light_D9(light_D9)   );
initial
begin
    #(1000000000/2);
    clk=1'b0;
    forever #(1000000000/2) clk=~clk;
end
//    initial
//    $stop;//to add ps
initial
begin
    #(1000000000/2)
    rst=0;
    #(1000000000/2)
    rst=1;
    #1000000000;
    rst=0;
    #(1000000000*200);
    $finish;
    end
    
endmodule




