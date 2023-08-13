class test;
  solution sol; 
  
  function void run();
    string act;
    string exp;
    bit fail; 
  
    sol = new();

    for(int i = 0; i < 10; i += 1) begin
      sol.your_solution(act);
      ref_model(exp);
      fail = compare(act, exp);
      if(fail) begin 
        $display("Expected output :%0s", exp);
        $display("Actual   output :%0s", act);
        break;
      end
    end
  
    if(fail) begin
      $display("FAILURE");
    end else begin
      $display("SUCCESS");
    end
  endfunction: run
     

  function bit compare(
    input string act,
    input string exp
  );
    if(act == exp) begin
      compare = 0;
    end else begin
      compare = 1;
    end
  endfunction: compare
 























  function void test::ref_model(
    output string s
  );
    s = "hello world";
  endfunction: ref_model
endclass: test 