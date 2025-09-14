`timescale 1ns/1ps

module gates_tb;

reg a, b; // reg is used because it is initialised inside initial begin
wire out_and, out_or, out_not_a, out_not_b; // because it is continuously driven inside the module


// instantiating modules
and_gate mod_and(.a(a), .b(b), .c(out_and));
or_gate mod_or(.a(a), .b(b), .c(out_or));
not_gate mod_not1(.a(a), .not_a(out_not_a));
not_gate mod_not2(.a(b), .not_a(out_not_b));

// print values
initial begin
$monitor("t=%0t a=%b b=%b | AND=%b OR=%b NOT(a)=%b NOT(b)=%b", $time, a, b, out_and, out_or, out_not_a, out_not_b);
end

// dump signals into file for gtkwave
initial begin
$dumpfile("dump.vcd"); // creating a file to record signal activity
$dumpvars(0, gates_tb); // record all signals
// the first argument explains the depth of signals
// In this case all signals will be dumped
// Both these statements should be executed only once so inside initial begin
end

// Apply test inputs
initial begin
a=0;b=0;#10;
a=0;b=1;#10;
a=1;b=0;#10;
a=1;b=1;#10;
$finish;
end
endmodule

