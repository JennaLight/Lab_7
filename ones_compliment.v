module ones_compliment(
    input [3:0] A, B,
    output [3:0] Sum
);

    wire [3:0] carry1;
    wire [3:0] carry2;
    wire [3:0] AplusB;
    
    full_adder fa0(.A(A[0]), .B(B[0]), .C(1'b0), .Cout(carry1[0]), .Y(AplusB[0]));
    full_adder fa1(.A(A[1]), .B(B[1]), .C(carry1[0]), .Cout(carry1[1]), .Y(AplusB[1]));
    full_adder fa2(.A(A[2]), .B(B[2]), .C(carry1[1]), .Cout(carry1[2]), .Y(AplusB[2]));
    full_adder fa3(.A(A[3]), .B(B[3]), .C(carry1[2]), .Cout(carry1[3]), .Y(AplusB[3]));
    
    full_adder fb0(.A(AplusB[0]), .B(1'b0), .C(carry1[3]), .Cout(carry2[0]), .Y(Sum[0]));
    full_adder fb1(.A(AplusB[1]), .B(1'b0), .C(carry2[0]), .Cout(carry2[1]), .Y(Sum[1]));
    full_adder fb2(.A(AplusB[2]), .B(1'b0), .C(carry2[1]), .Cout(carry2[2]), .Y(Sum[2]));
    full_adder fb3(.A(AplusB[3]), .B(1'b0), .C(carry2[2]), .Y(Sum[3]));

endmodule