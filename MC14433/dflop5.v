module d_flop5(data,R,clk,q,qb);
input data,clk,R;
output q,qb;
tri a,b,c,q;
wire clkb;
supply1 vdd; 

not(pull0,pull1)  m1(b,a),
   		  m2(a,b);
not(weak0,weak1)  m3(q,c),
		  m4(c,q);
not		  m5(qb,q);
		  //m7(q,qb);
not 		  m6(clkb,clk);
 
cmos  n1(a,data,clkb,clk),
      n2(c,b,clk,clkb) ;

pmos  nn1(c,vdd,R);      
     
endmodule