# Exercise 1

Adder: up needs 10ns (clk-to-q) + 60ns (multiplication), down needs 10ns (clk-to-q), so output needs 70+45=115ns.
Also 10ns setup time, so in all 125ns.

The maximum clock rate is 1/125ns = 8MHz.

# Exercise 2

For reg1: 10ns (clk-to-q) + 60ns (multiplication) + 10ns (setup time) = 80ns

For reg2: 10ns (clk-to-q) + 45ns (multiplication) + 10ns (setup time) = 65ns

The maximum clock rate is 1/80ns = 12.5MHz.

We do not need the bubble because the output is luckily used just one stage eailier -- the adder. If we need the output in the first stage -- the multiplication, then we have to add the bubble since we need the output for next multiplication.