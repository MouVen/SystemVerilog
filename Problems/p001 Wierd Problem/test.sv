class test;
  solution sol; 
  
  function void run();
    int act[$];
    int exp[$];
    bit fail; 
    int n;  
    
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
    input int act[$],
    input int exp[$]
  );
    if(act.size() != exp.size()) return 1;
    
    foreach(exp[i]) begin
      if(exp[i] != act[i]) return 1;
    end
    return 0;
  endfunction: compare
     
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 
  
  function void ref_model(
    input int n,
    output int q[$]
  );
    
    while(n!=1) begin
      q.push_back(n);
      if(n%2==0) begin
        n = n/2;
      end else begin
        n = n*3 + 1;
      end
    end
    q.push_back(n);
    
  endfunction: ref_model
  
endclass: test