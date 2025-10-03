module FlipFlop(D, Clock, Q, Qbar);

    input D, Clock;
    output Q, Qbar;
    
    wire D_bar, S, R;

    
    not not1(D_bar, D);

    and Set(S, D, Clock);
    and Reset(R, D_bar, Clock);

    nor (Q, R, Qbar);
    nor (Qbar, S, Q);

endmodule
