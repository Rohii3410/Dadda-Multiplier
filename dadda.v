
module hag(output s,c,input a,b);
assign s=a^b;
assign c=a&b;
endmodule

module fag(output s,c,input a,b,cin);
assign s=a^b^cin;
assign c=(a&b) | ((a^b)&cin);
endmodule


module right_da(output [10:0]p,input [7:0]a,b);
wire [56:1]d; 
//wire [21:16]d; wire [28:24]d; wire [35:32]d; wire d56;  
wire [7:0]l;
wire [22:0]c; wire [22:0]s;

assign p[0]=b[0] & a[0];

assign d[1]=b[0] & a[1]; //p1 stage
assign d[8]=b[1] & a[0];
hag r1(p[1],l[0],d[1],d[8]);

assign d[2]=b[0] & a[2]; //p2 stage
assign d[9]=b[1] & a[1];
assign d[16]=b[2] & a[0];
hag r2(s[16],c[16],d[2],d[9]);
fag r3(p[2],l[1],s[16],d[16],l[0]);

assign d[3]=b[0] & a[3]; //p3 stage
assign d[10]=b[1] & a[2];
assign d[17]=b[2] & a[1];
assign d[24]=b[3] & a[0];
hag r4(s[10],c[10],d[3],d[10]);
fag r5(s[17],c[17],d[17],d[24],s[10]);
fag r6(p[3],l[2],s[17],c[16],l[1]);

assign d[4]=b[0] & a[4]; //p4 stage
assign d[11]=b[1] & a[3];
assign d[18]=b[2] & a[2];
assign d[25]=b[3] & a[1];
assign d[32]=b[4] & a[0];
hag r7(s[3],c[3],d[4],d[11]);
fag r8(s[11],c[11],s[3],d[18],d[25]);
fag r9(s[18],c[18],s[11],d[32],c[10]);
fag r10(p[4],l[3],s[18],c[17],l[2]);

assign d[5]=b[0] & a[5]; //p5 stage
assign d[12]=b[1] & a[4];
assign d[19]=b[2] & a[3];
assign d[26]=b[3] & a[2];
assign d[33]=b[4] & a[1];
assign d[40]=b[5] & a[0];
fag r11(s[4],c[4],d[5],d[12],d[19]);
hag r13(s[7],c[7],d[26],d[33]);
fag r12(s[12],c[12],s[4],c[3],s[7]);
fag r14(s[19],c[19],s[12],c[11],d[40]);
fag r15(p[5],l[4],s[19],c[18],l[3]);

assign d[6]=b[0] & a[6]; //p6 stage
assign d[13]=b[1] & a[5];
assign d[20]=b[2] & a[4];
assign d[27]=b[3] & a[3];
assign d[34]=b[4] & a[2];
assign d[41]=b[5] & a[1];
assign d[48]=b[6] & a[0];
hag r16(s[0],c[0],d[6],d[13]);
fag r17(s[5],c[5],d[20],d[27],s[0]);
fag r18(s[8],c[8],d[34],d[41],d[48]);
fag r19(s[13],c[13],s[8],s[5],c[4]);
fag r20(s[20],c[20],s[13],c[12],c[7]);
fag r21(p[6],l[5],s[20],c[19],l[4]);

assign d[7]=b[0] & a[7]; //p7 stage
assign d[14]=b[1] & a[6];
assign d[21]=b[2] & a[5];
assign d[28]=b[3] & a[4];
assign d[35]=b[4] & a[3];
assign d[42]=b[5] & a[2];
assign d[49]=b[6] & a[1];
assign d[56]=b[7] & a[0];
fag r22(s[1],c[1],d[7],d[14],d[21]);
hag r23(s[2],c[2],d[28],d[35]);
fag r24(s[9],c[9],d[42],d[49],d[56]);
fag r25(s[6],c[6],s[1],s[2],c[0]);
fag r26(s[15],c[15],c[1],c[2],c[6]);
fag r27(s[14],c[14],s[6],c[5],s[9]);
fag r28(s[21],c[21],s[14],c[13],c[8]);
fag r29(p[7],l[6],s[21],c[20],l[5]);
fag r30(s[22],c[22],s[15],c[14],c[9]);
fag r31(p[8],l[7],s[22],c[21],l[6]);
fag r32(p[9],p[10],c[15],c[22],l[7]);
endmodule

module left(output [15:8]p1,input [7:0]a,b);
wire z15,z22,z29,z36,z43,z50,z57,z58,z51,z44,z37,z30,z23;
wire z31,z38,z45,z52,z59,z39,z46,z53,z60,z47,z54,z61,z55,z62,z63;
wire [5:0]n;
wire [41:23]s,c;
assign z15=b[1] & a[7]; //1 
assign z22=b[2] & a[6];
assign z29=b[3] & a[5];
assign z36=b[4] & a[4];
assign z43=b[5] & a[3];
assign z50=b[6] & a[2];
assign z57=b[7] & a[1];
hag m1(s[23],c[23],z15,z22);
fag m2(s[25],c[25],s[23],z36,z29);
hag m3(s[31],c[31],s[25],z43);
hag m4(s[36],c[36],s[31],z50);
hag m5(p1[8],n[0],s[36],z57);
assign z23=b[2] & a[7];//2
assign z30=b[3] & a[6];
assign z37=b[4] & a[5];
assign z44=b[5] & a[4];
assign z51=b[6] & a[3];
assign z58=b[7] & a[2];
hag m6(s[24],c[24],z23,z30);
fag m7(s[26],c[26],s[24],c[23],z37);
hag m8(s[29],c[29],z44,z51);
fag m9(s[32],c[32],s[29],s[26],c[25]);
fag m10(s[37],c[37],s[32],c[31],z58);
fag m11(p1[9],n[1],s[37],c[36],n[0]);
assign z31=b[3] & a[7]; //3
assign z38=b[4] & a[6];
assign z45=b[5] & a[5];
assign z52=b[6] & a[4];
assign z59=b[7] & a[3];
fag m12(s[27],c[27],z38,z31,c[24]);
fag m13(s[30],c[30],z45,z52,z59);
fag m14(s[33],c[33],s[30],s[27],c[26]);
fag m15(s[38],c[38],s[33],c[29],c[32]);
fag m16(p1[10],n[2],s[38],c[37],n[1]);
assign z39=b[4] & a[7];//4
assign z46=b[5] & a[6];
assign z53=b[6] & a[5];
assign z60=b[7] & a[4];
fag m17(s[28],c[28],z39,z46,z53);
fag m18(s[34],c[34],s[28],c[27],z60);
fag m19(s[39],c[39],s[34],c[30],c[33]);
fag m20(p1[11],n[3],n[2],s[39],c[38]);
assign z47=b[5] & a[7];//5
assign z54=b[6] & a[6];
assign z61=b[7] & a[5];
fag m21(s[35],c[35],z47,z54,c[28]);
fag m22(s[40],c[40],s[35],c[34],z61);
fag m23(p1[12],n[4],s[40],c[39],n[3]);
assign z55=b[6] & a[7];//6
assign z62=b[7] & a[6];
fag m24(s[41],c[41],z55,z62,c[35]);
fag m25(p1[13],n[5],s[41],c[40],n[4]);
assign z63=b[7] & a[7];//7
fag m26(p1[14],p1[15],c[41],z63,n[5]);
endmodule


module rca3bit(output [2:0]s,output c,input [2:0]a,b);
wire c0,c1;
hag a1(s[0],c0,a[0],b[0]);
fag a2(s[1],c1,a[1],b[1],c0);
fag a3(s[2],c,a[2],b[2],c1);
endmodule

//bec5
module bec5bit(output [4:0]s,input a,b,c,d,e);
wire c0,c1,c2;
assign s[0]= ~a;
assign s[1]=a ^ b;
assign c0= b& a;
assign s[2]= c ^ c0;
assign c1=c & c0;
assign s[3]=d ^ c1;
assign c2= d & c1;
assign s[4]=e ^ c2;
endmodule


module dadda(output reg [15:0] p,input [7:0] a,b,input clk);
wire w1;
wire [10:0]w112;
wire [15:8]w113;
wire [15:11]w2;
wire [15:0]z;
right_da a1(w112[10:0],a[7:0],b[7:0]);
left a2(w113[15:8],a[7:0],b[7:0]);
assign z[7:0]=w112[7:0];
rca3bit x1(z[10:8],w1,w113[10:8],w112[10:8]);

bec5bit x2(w2[15:11],w113[11],w113[12],w113[13],w113[14],w113[15]);
assign z[15:11]= w1 ? w2[15:11] : w113[15:11] ;
always@ (posedge clk)
begin
p<=z;
end
endmodule



module dadaa_tb;
wire [15:0]p;
reg [7:0]a,b;
reg clk;
dadda uut(p,a,b,clk);
initial
repeat(100)
begin
$monitor ("a=%d , b= %d , p=%d",a ,b,p);
end
initial
repeat(100)
begin
a=$random;
b=$random;
clk=$random;
#10;
end
endmodule














