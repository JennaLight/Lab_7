module half_sub(
    input A, B,
    output Y,
    output C
);

    assign Y = A ^ B;
    assign C = ~A & B;

endmodule