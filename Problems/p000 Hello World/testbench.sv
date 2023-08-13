`include "solution.sv"
`include "test.sv"
module top;
  test 	test_h;
  initial begin
    test_h = new();
    $display("----------> Start <-----------");
    test_h.run(); 
    $display("----------> End   <-----------");
  end
endmodule