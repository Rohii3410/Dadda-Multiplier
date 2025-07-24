
//input ports
add mapped point a[7] a[7] -type PI PI
add mapped point a[6] a[6] -type PI PI
add mapped point a[5] a[5] -type PI PI
add mapped point a[4] a[4] -type PI PI
add mapped point a[3] a[3] -type PI PI
add mapped point a[2] a[2] -type PI PI
add mapped point a[1] a[1] -type PI PI
add mapped point a[0] a[0] -type PI PI
add mapped point b[7] b[7] -type PI PI
add mapped point b[6] b[6] -type PI PI
add mapped point b[5] b[5] -type PI PI
add mapped point b[4] b[4] -type PI PI
add mapped point b[3] b[3] -type PI PI
add mapped point b[2] b[2] -type PI PI
add mapped point b[1] b[1] -type PI PI
add mapped point b[0] b[0] -type PI PI
add mapped point clk clk -type PI PI

//output ports
add mapped point p[15] p[15] -type PO PO
add mapped point p[14] p[14] -type PO PO
add mapped point p[13] p[13] -type PO PO
add mapped point p[12] p[12] -type PO PO
add mapped point p[11] p[11] -type PO PO
add mapped point p[10] p[10] -type PO PO
add mapped point p[9] p[9] -type PO PO
add mapped point p[8] p[8] -type PO PO
add mapped point p[7] p[7] -type PO PO
add mapped point p[6] p[6] -type PO PO
add mapped point p[5] p[5] -type PO PO
add mapped point p[4] p[4] -type PO PO
add mapped point p[3] p[3] -type PO PO
add mapped point p[2] p[2] -type PO PO
add mapped point p[1] p[1] -type PO PO
add mapped point p[0] p[0] -type PO PO

//inout ports




//Sequential Pins
add mapped point p[15]/q p_reg[15]/Q  -type DFF DFF
add mapped point p[15]/q p_reg[15]/QN  -type DFF DFF
add mapped point p[14]/q p_reg[14]/Q  -type DFF DFF
add mapped point p[14]/q p_reg[14]/QN  -type DFF DFF
add mapped point p[12]/q p_reg[12]/Q  -type DFF DFF
add mapped point p[13]/q p_reg[13]/Q  -type DFF DFF
add mapped point p[13]/q p_reg[13]/QN  -type DFF DFF
add mapped point p[11]/q p_reg[11]/Q  -type DFF DFF
add mapped point p[8]/q p_reg[8]/Q  -type DFF DFF
add mapped point p[8]/q p_reg[8]/QN  -type DFF DFF
add mapped point p[0]/q p_reg[0]/Q  -type DFF DFF
add mapped point p[7]/q p_reg[7]/Q  -type DFF DFF
add mapped point p[7]/q p_reg[7]/QN  -type DFF DFF
add mapped point p[6]/q p_reg[6]/Q  -type DFF DFF
add mapped point p[6]/q p_reg[6]/QN  -type DFF DFF
add mapped point p[5]/q p_reg[5]/Q  -type DFF DFF
add mapped point p[10]/q p_reg[10]/Q  -type DFF DFF
add mapped point p[10]/q p_reg[10]/QN  -type DFF DFF
add mapped point p[3]/q p_reg[3]/Q  -type DFF DFF
add mapped point p[9]/q p_reg[9]/Q  -type DFF DFF
add mapped point p[9]/q p_reg[9]/QN  -type DFF DFF
add mapped point p[2]/q p_reg[2]/Q  -type DFF DFF
add mapped point p[1]/q p_reg[1]/Q  -type DFF DFF
add mapped point p[4]/q p_reg[4]/Q  -type DFF DFF



//Black Boxes



//Empty Modules as Blackboxes
