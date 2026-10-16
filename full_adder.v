module full_adder(
    input A, B, C,
    output Y,
    output Cout
);

    assign Y = (~A & ~B & C) | (~A & B & ~C) | (A & ~B & ~C) | (A & B & C);
    assign Cout = (B & C) | (A & B) | (A & C);

endmodule