class test;
  solution sol; 
  typedef bit [63:0] T;
  
  function void run();
    T act[$];
    T exp[$];
    bit fail; 
    T n;  
    
    sol = new();
    for(int i = 0; i < 100; i += 1) begin
      case(i)
        0 : n = 3;
        default :  n = $urandom_range(1, 10**6);
      endcase
      sol.your_solution(n, act);
      ref_model(n, exp);
      fail = compare(act, exp);
      if(fail) begin 
        $display("Input    n      :%0d", n);
        $display("Expected output :%p", exp);
        $display("Actual   output :%p", act);
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
    ref T act[$],
    ref T exp[$]
  );
    if(act.size() != exp.size()) return 1;
    
    foreach(exp[i]) begin
      if(exp[i] != act[i]) return 1;
    end
    return 0;
  endfunction: compare
     
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 
  
  function void ref_model(
    input T n,
    ref T q[$]
  );
    while(n > 1) begin
      q.push_back(n);
      if(n&1) begin
        //odd
        n = n * 3 + 1;
      end else begin
        //even
        n = n >> 1;
      end
    end
    q.push_back(1);
    
  endfunction: ref_model
  
endclass: test