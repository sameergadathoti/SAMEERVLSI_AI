module half_adder(a,b,sum,carry);
    input[7:0]a,b;
	output[7:0]sum;
	output carry;
    assign sum = a^b;
    assign carry = a&b;
endmodule

module top;
   reg [7:0]a,b;
   wire [7:0]sum;
   wire carry;
  half_adder dut(a,b,sum,carry);
   initial begin
  /* a = 0;
   b = 0;
   $display("\t.. A:- %b B:- %b || sum :- %b caarry :- %b",a,b,sum,carry);
   a = 0;
   b = 1;
   $display("\t.. A:- %b B:- %b || sum :- %b caarry :- %b",a,b,sum,carry);
   a = 1 ;
   b = 0 ;
   $display("\t.. A:- %b B:- %b || sum :- %b caarry :- %b",a,b,sum,carry);
   a = 1;
   b = 1;
   $display("\t.. A:- %b B:- %b || sum :- %b caarry :- %b",a,b,sum,carry);*/
   repeat(10)begin
   {a,b} = $random();
   #1;
   $display("\t.. A:- %b B:- %b || sum :- %b carry :- %b",a,b,sum,carry);
   end
   end
endmodule  

