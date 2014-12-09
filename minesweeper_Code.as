import flash.events.MouseEvent;

stop();

var bombs:Number = 10;
var totalBombs:Number = 10;

var hitArray:Array = [a1a1, b1a2, c1a3, d1a4, e1a5, f1a6, g1a7, h1a8, i1a9, j1a10, k1a11, l1a12, m1a13, n1a14, o1a15, p1a16, q1a17, r1a18,
					  a2b1, b2b2, c2b3, d2b4, e2b5, f2b6, g2b7, h2b8, i2b9, j2b10, k2b11, l2b12, m2b13, n2b14, o2b15, p2b16, q2b17, r2b18,
					  a3c1, b3c2, c3c3, d3c4, e3c5, f3c6, g3c7, h3c8, i3c9, j3c10, k3c11, l3c12, m3c13, n3c14, o3c15, p3c16, q3c17, r3c18,
					  a4d1, b4d2, c4d3, d4d4, e4d5, f4d6, g4d7, h4d8, i4d9, j4d10, k4d11, l4d12, m4d13, n4d14, o4d15, p4d16, q4d17, r4d18,
					  a5e1, b5e2, c5e3, d5e4, e5e5, f5e6, g5e7, h5e8, i5e9, j5e10, k5e11, l5e12, m5e13, n5e14, o5e15, p5e16, q5e17, r5e18,
					  a6f1, b6f2, c6f3, d6f4, e6f5, f6f6, g6f7, h6f8, i6f9, j6f10, k6f11, l6f12, m6f13, n6f14, o6f15, p6f16, q6f17, r6f18,
					  a7g1, b7g2, c7g3, d7g4, e7g5, f7g6, g7g7, h7g8, i7g9, j7g10, k7g11, l7g12, m7g13, n7g14, o7g15, p7g16, q7g17, r7g18,
					  a8h1, b8h2, c8h3, d8h4, e8h5, f8h6, g8h7, h8h8, i8h9, j8h10, k8h11, l8h12, m8h13, n8h14, o8h15, p8h16, q8h17, r8h18,
					  a9i1, b9i2, c9i3, d9i4, e9i5, f9i6, g9i7, h9i8, i9i9, j9i10, k9i11, l9i12, m9i13, n9i14, o9i15, p9i16, q9i17, r9i18,
					  a10j1, b10j2, c10j3, d10j4, e10j5, f10j6, g10j7, h10j8, i10j9, j10j10, k10j11, l10j12, m10j13, n10j14, o10j15, p10j16, q10j17, r10j18,
					  a11k1, b11k2, c11k3, d11k4, e11k5, f11k6, g11k7, h11k8, i11k9, j11k10, k11k11, l11k12, m11k13, n11k14, o11k15, p11k16, q11k17, r11k18,
					  a12l1, b12l2, c12l3, d12l4, e12l5, f12l6, g12l7, h12l8, i12l9, j12l10, k12l11, l12l12, m12l13, n12l14, o12l15, p12l16, q12l17, r12l18,
					  a13m1, b13m2, c13m3, d13m4, e13m5, f13m6, g13m7, h13m8, i13m9, j13m10, k13m11, l13m12, m13m13, n13m14, o13m15, p13m16, q13m17, r13m18,
					  a14n1, b14n2, c14n3, d14n4, e14n5, f14n6, g14n7, h14n8, i14n9, j14n10, k14n11, l14n12, m14n13, n14n14, o14n15, p14n16, q14n17, r14n18,
					  a15o1, b15o2, c15o3, d15o4, e15o5, f15o6, g15o7, h15o8, i15o9, j15o10, k15o11, l15o12, m15o13, n15o14, o15o15, p15o16, q15o17, r15o18,
					  a16p1, b16p2, c16p3, d16p4, e16p5, f16p6, g16p7, h16p8, i16p9, j16p10, k16p11, l16p12, m16p13, n16p14, o16p15, p16p16, q16p17, r16p18,
					  a17q1, b17q2, c17q3, d17q4, e17q5, f17q6, g17q7, h17q8, i17q9, j17q10, k17q11, l17q12, m17q13, n17q14, o17q15, p17q16, q17q17, r17q18,
					  a18r1, b18r2, c18r3, d18r4, e18r5, f18r6, g18r7, h18r8, i18r9, j18r10, k18r11, l18r12, m18r13, n18r14, o18r15, p18r16, q18r17, r18r18]

var buttonArray:Array = [a1a1Btn, b1a2Btn, c1a3Btn, d1a4Btn, e1a5Btn, f1a6Btn, g1a7Btn, h1a8Btn, i1a9Btn, j1a10Btn, k1a11Btn, l1a12Btn, m1a13Btn, n1a14Btn, o1a15Btn, p1a16Btn, q1a17Btn, r1a18Btn,
					  a2b1Btn, b2b2Btn, c2b3Btn, d2b4Btn, e2b5Btn, f2b6Btn, g2b7Btn, h2b8Btn, i2b9Btn, j2b10Btn, k2b11Btn, l2b12Btn, m2b13Btn, n2b14Btn, o2b15Btn, p2b16Btn, q2b17Btn, r2b18Btn,
					  a3c1Btn, b3c2Btn, c3c3Btn, d3c4Btn, e3c5Btn, f3c6Btn, g3c7Btn, h3c8Btn, i3c9Btn, j3c10Btn, k3c11Btn, l3c12Btn, m3c13Btn, n3c14Btn, o3c15Btn, p3c16Btn, q3c17Btn, r3c18Btn,
					  a4d1Btn, b4d2Btn, c4d3Btn, d4d4Btn, e4d5Btn, f4d6Btn, g4d7Btn, h4d8Btn, i4d9Btn, j4d10Btn, k4d11Btn, l4d12Btn, m4d13Btn, n4d14Btn, o4d15Btn, p4d16Btn, q4d17Btn, r4d18Btn,
					  a5e1Btn, b5e2Btn, c5e3Btn, d5e4Btn, e5e5Btn, f5e6Btn, g5e7Btn, h5e8Btn, i5e9Btn, j5e10Btn, k5e11Btn, l5e12Btn, m5e13Btn, n5e14Btn, o5e15Btn, p5e16Btn, q5e17Btn, r5e18Btn,
					  a6f1Btn, b6f2Btn, c6f3Btn, d6f4Btn, e6f5Btn, f6f6Btn, g6f7Btn, h6f8Btn, i6f9Btn, j6f10Btn, k6f11Btn, l6f12Btn, m6f13Btn, n6f14Btn, o6f15Btn, p6f16Btn, q6f17Btn, r6f18Btn,
					  a7g1Btn, b7g2Btn, c7g3Btn, d7g4Btn, e7g5Btn, f7g6Btn, g7g7Btn, h7g8Btn, i7g9Btn, j7g10Btn, k7g11Btn, l7g12Btn, m7g13Btn, n7g14Btn, o7g15Btn, p7g16Btn, q7g17Btn, r7g18Btn,
					  a8h1Btn, b8h2Btn, c8h3Btn, d8h4Btn, e8h5Btn, f8h6Btn, g8h7Btn, h8h8Btn, i8h9Btn, j8h10Btn, k8h11Btn, l8h12Btn, m8h13Btn, n8h14Btn, o8h15Btn, p8h16Btn, q8h17Btn, r8h18Btn,
					  a9i1Btn, b9i2Btn, c9i3Btn, d9i4Btn, e9i5Btn, f9i6Btn, g9i7Btn, h9i8Btn, i9i9Btn, j9i10Btn, k9i11Btn, l9i12Btn, m9i13Btn, n9i14Btn, o9i15Btn, p9i16Btn, q9i17Btn, r9i18Btn,
					  a10j1Btn, b10j2Btn, c10j3Btn, d10j4Btn, e10j5Btn, f10j6Btn, g10j7Btn, h10j8Btn, i10j9Btn, j10j10Btn, k10j11Btn, l10j12Btn, m10j13Btn, n10j14Btn, o10j15Btn, p10j16Btn, q10j17Btn, r10j18Btn,
					  a11k1Btn, b11k2Btn, c11k3Btn, d11k4Btn, e11k5Btn, f11k6Btn, g11k7Btn, h11k8Btn, i11k9Btn, j11k10Btn, k11k11Btn, l11k12Btn, m11k13Btn, n11k14Btn, o11k15Btn, p11k16Btn, q11k17Btn, r11k18Btn,
					  a12l1Btn, b12l2Btn, c12l3Btn, d12l4Btn, e12l5Btn, f12l6Btn, g12l7Btn, h12l8Btn, i12l9Btn, j12l10Btn, k12l11Btn, l12l12Btn, m12l13Btn, n12l14Btn, o12l15Btn, p12l16Btn, q12l17Btn, r12l18Btn,
					  a13m1Btn, b13m2Btn, c13m3Btn, d13m4Btn, e13m5Btn, f13m6Btn, g13m7Btn, h13m8Btn, i13m9Btn, j13m10Btn, k13m11Btn, l13m12Btn, m13m13Btn, n13m14Btn, o13m15Btn, p13m16Btn, q13m17Btn, r13m18Btn,
					  a14n1Btn, b14n2Btn, c14n3Btn, d14n4Btn, e14n5Btn, f14n6Btn, g14n7Btn, h14n8Btn, i14n9Btn, j14n10Btn, k14n11Btn, l14n12Btn, m14n13Btn, n14n14Btn, o14n15Btn, p14n16Btn, q14n17Btn, r14n18Btn,
					  a15o1Btn, b15o2Btn, c15o3Btn, d15o4Btn, e15o5Btn, f15o6Btn, g15o7Btn, h15o8Btn, i15o9Btn, j15o10Btn, k15o11Btn, l15o12Btn, m15o13Btn, n15o14Btn, o15o15Btn, p15o16Btn, q15o17Btn, r15o18Btn,
					  a16p1Btn, b16p2Btn, c16p3Btn, d16p4Btn, e16p5Btn, f16p6Btn, g16p7Btn, h16p8Btn, i16p9Btn, j16p10Btn, k16p11Btn, l16p12Btn, m16p13Btn, n16p14Btn, o16p15Btn, p16p16Btn, q16p17Btn, r16p18Btn,
					  a17q1Btn, b17q2Btn, c17q3Btn, d17q4Btn, e17q5Btn, f17q6Btn, g17q7Btn, h17q8Btn, i17q9Btn, j17q10Btn, k17q11Btn, l17q12Btn, m17q13Btn, n17q14Btn, o17q15Btn, p17q16Btn, q17q17Btn, r17q18Btn,
					  a18r1Btn, b18r2Btn, c18r3Btn, d18r4Btn, e18r5Btn, f18r6Btn, g18r7Btn, h18r8Btn, i18r9Btn, j18r10Btn, k18r11Btn, l18r12Btn, m18r13Btn, n18r14Btn, o18r15Btn, p18r16Btn, q18r17Btn, r18r18Btn]

var flagArray:Array = [a1a1Flag, b1a2Flag, c1a3Flag, d1a4Flag, e1a5Flag, f1a6Flag, g1a7Flag, h1a8Flag, i1a9Flag, j1a10Flag, k1a11Flag, l1a12Flag, m1a13Flag, n1a14Flag, o1a15Flag, p1a16Flag, q1a17Flag, r1a18Flag,
					  a2b1Flag, b2b2Flag, c2b3Flag, d2b4Flag, e2b5Flag, f2b6Flag, g2b7Flag, h2b8Flag, i2b9Flag, j2b10Flag, k2b11Flag, l2b12Flag, m2b13Flag, n2b14Flag, o2b15Flag, p2b16Flag, q2b17Flag, r2b18Flag,
					  a3c1Flag, b3c2Flag, c3c3Flag, d3c4Flag, e3c5Flag, f3c6Flag, g3c7Flag, h3c8Flag, i3c9Flag, j3c10Flag, k3c11Flag, l3c12Flag, m3c13Flag, n3c14Flag, o3c15Flag, p3c16Flag, q3c17Flag, r3c18Flag,
					  a4d1Flag, b4d2Flag, c4d3Flag, d4d4Flag, e4d5Flag, f4d6Flag, g4d7Flag, h4d8Flag, i4d9Flag, j4d10Flag, k4d11Flag, l4d12Flag, m4d13Flag, n4d14Flag, o4d15Flag, p4d16Flag, q4d17Flag, r4d18Flag,
					  a5e1Flag, b5e2Flag, c5e3Flag, d5e4Flag, e5e5Flag, f5e6Flag, g5e7Flag, h5e8Flag, i5e9Flag, j5e10Flag, k5e11Flag, l5e12Flag, m5e13Flag, n5e14Flag, o5e15Flag, p5e16Flag, q5e17Flag, r5e18Flag,
					  a6f1Flag, b6f2Flag, c6f3Flag, d6f4Flag, e6f5Flag, f6f6Flag, g6f7Flag, h6f8Flag, i6f9Flag, j6f10Flag, k6f11Flag, l6f12Flag, m6f13Flag, n6f14Flag, o6f15Flag, p6f16Flag, q6f17Flag, r6f18Flag,
					  a7g1Flag, b7g2Flag, c7g3Flag, d7g4Flag, e7g5Flag, f7g6Flag, g7g7Flag, h7g8Flag, i7g9Flag, j7g10Flag, k7g11Flag, l7g12Flag, m7g13Flag, n7g14Flag, o7g15Flag, p7g16Flag, q7g17Flag, r7g18Flag,
					  a8h1Flag, b8h2Flag, c8h3Flag, d8h4Flag, e8h5Flag, f8h6Flag, g8h7Flag, h8h8Flag, i8h9Flag, j8h10Flag, k8h11Flag, l8h12Flag, m8h13Flag, n8h14Flag, o8h15Flag, p8h16Flag, q8h17Flag, r8h18Flag,
					  a9i1Flag, b9i2Flag, c9i3Flag, d9i4Flag, e9i5Flag, f9i6Flag, g9i7Flag, h9i8Flag, i9i9Flag, j9i10Flag, k9i11Flag, l9i12Flag, m9i13Flag, n9i14Flag, o9i15Flag, p9i16Flag, q9i17Flag, r9i18Flag,
					  a10j1Flag, b10j2Flag, c10j3Flag, d10j4Flag, e10j5Flag, f10j6Flag, g10j7Flag, h10j8Flag, i10j9Flag, j10j10Flag, k10j11Flag, l10j12Flag, m10j13Flag, n10j14Flag, o10j15Flag, p10j16Flag, q10j17Flag, r10j18Flag,
					  a11k1Flag, b11k2Flag, c11k3Flag, d11k4Flag, e11k5Flag, f11k6Flag, g11k7Flag, h11k8Flag, i11k9Flag, j11k10Flag, k11k11Flag, l11k12Flag, m11k13Flag, n11k14Flag, o11k15Flag, p11k16Flag, q11k17Flag, r11k18Flag,
					  a12l1Flag, b12l2Flag, c12l3Flag, d12l4Flag, e12l5Flag, f12l6Flag, g12l7Flag, h12l8Flag, i12l9Flag, j12l10Flag, k12l11Flag, l12l12Flag, m12l13Flag, n12l14Flag, o12l15Flag, p12l16Flag, q12l17Flag, r12l18Flag,
					  a13m1Flag, b13m2Flag, c13m3Flag, d13m4Flag, e13m5Flag, f13m6Flag, g13m7Flag, h13m8Flag, i13m9Flag, j13m10Flag, k13m11Flag, l13m12Flag, m13m13Flag, n13m14Flag, o13m15Flag, p13m16Flag, q13m17Flag, r13m18Flag,
					  a14n1Flag, b14n2Flag, c14n3Flag, d14n4Flag, e14n5Flag, f14n6Flag, g14n7Flag, h14n8Flag, i14n9Flag, j14n10Flag, k14n11Flag, l14n12Flag, m14n13Flag, n14n14Flag, o14n15Flag, p14n16Flag, q14n17Flag, r14n18Flag,
					  a15o1Flag, b15o2Flag, c15o3Flag, d15o4Flag, e15o5Flag, f15o6Flag, g15o7Flag, h15o8Flag, i15o9Flag, j15o10Flag, k15o11Flag, l15o12Flag, m15o13Flag, n15o14Flag, o15o15Flag, p15o16Flag, q15o17Flag, r15o18Flag,
					  a16p1Flag, b16p2Flag, c16p3Flag, d16p4Flag, e16p5Flag, f16p6Flag, g16p7Flag, h16p8Flag, i16p9Flag, j16p10Flag, k16p11Flag, l16p12Flag, m16p13Flag, n16p14Flag, o16p15Flag, p16p16Flag, q16p17Flag, r16p18Flag,
					  a17q1Flag, b17q2Flag, c17q3Flag, d17q4Flag, e17q5Flag, f17q6Flag, g17q7Flag, h17q8Flag, i17q9Flag, j17q10Flag, k17q11Flag, l17q12Flag, m17q13Flag, n17q14Flag, o17q15Flag, p17q16Flag, q17q17Flag, r17q18Flag,
					  a18r1Flag, b18r2Flag, c18r3Flag, d18r4Flag, e18r5Flag, f18r6Flag, g18r7Flag, h18r8Flag, i18r9Flag, j18r10Flag, k18r11Flag, l18r12Flag, m18r13Flag, n18r14Flag, o18r15Flag, p18r16Flag, q18r17Flag, r18r18Flag]


var bombsPushed:Array = [];
var placeBomb:MovieClip;

var attemptedClip:MovieClip;
restart.visible = false;

//row 1 Booleans
var checka1a1:Boolean = false;
var checkb1a2:Boolean = false;
var checkc1a3:Boolean = false;
var checkd1a4:Boolean = false;
var checke1a5:Boolean = false;
var checkf1a6:Boolean = false;
var checkg1a7:Boolean = false;
var checkh1a8:Boolean = false;
var checki1a9:Boolean = false;
var checkj1a10:Boolean = false;
var checkk1a11:Boolean = false;
var checkl1a12:Boolean = false;
var checkm1a13:Boolean = false;
var checkn1a14:Boolean = false;
var checko1a15:Boolean = false;
var checkp1a16:Boolean = false;
var checkq1a17:Boolean = false;
var checkr1a18:Boolean = false;

//row 2 Booleans
var checka2b1:Boolean = false;
var checkb2b2:Boolean = false;
var checkc2b3:Boolean = false;
var checkd2b4:Boolean = false;
var checke2b5:Boolean = false;
var checkf2b6:Boolean = false;
var checkg2b7:Boolean = false;
var checkh2b8:Boolean = false;
var checki2b9:Boolean = false;
var checkj2b10:Boolean = false;
var checkk2b11:Boolean = false;
var checkl2b12:Boolean = false;
var checkm2b13:Boolean = false;
var checkn2b14:Boolean = false;
var checko2b15:Boolean = false;
var checkp2b16:Boolean = false;
var checkq2b17:Boolean = false;
var checkr2b18:Boolean = false;

//row 3 Booleans
var checka3c1:Boolean = false;
var checkb3c2:Boolean = false;
var checkc3c3:Boolean = false;
var checkd3c4:Boolean = false;
var checke3c5:Boolean = false;
var checkf3c6:Boolean = false;
var checkg3c7:Boolean = false;
var checkh3c8:Boolean = false;
var checki3c9:Boolean = false;
var checkj3c10:Boolean = false;
var checkk3c11:Boolean = false;
var checkl3c12:Boolean = false;
var checkm3c13:Boolean = false;
var checkn3c14:Boolean = false;
var checko3c15:Boolean = false;
var checkp3c16:Boolean = false;
var checkq3c17:Boolean = false;
var checkr3c18:Boolean = false;

//row 4 Booleans
var checka4d1:Boolean = false;
var checkb4d2:Boolean = false;
var checkc4d3:Boolean = false;
var checkd4d4:Boolean = false;
var checke4d5:Boolean = false;
var checkf4d6:Boolean = false;
var checkg4d7:Boolean = false;
var checkh4d8:Boolean = false;
var checki4d9:Boolean = false;
var checkj4d10:Boolean = false;
var checkk4d11:Boolean = false;
var checkl4d12:Boolean = false;
var checkm4d13:Boolean = false;
var checkn4d14:Boolean = false;
var checko4d15:Boolean = false;
var checkp4d16:Boolean = false;
var checkq4d17:Boolean = false;
var checkr4d18:Boolean = false;

//row 5 Booleans
var checka5e1:Boolean = false;
var checkb5e2:Boolean = false;
var checkc5e3:Boolean = false;
var checkd5e4:Boolean = false;
var checke5e5:Boolean = false;
var checkf5e6:Boolean = false;
var checkg5e7:Boolean = false;
var checkh5e8:Boolean = false;
var checki5e9:Boolean = false;
var checkj5e10:Boolean = false;
var checkk5e11:Boolean = false;
var checkl5e12:Boolean = false;
var checkm5e13:Boolean = false;
var checkn5e14:Boolean = false;
var checko5e15:Boolean = false;
var checkp5e16:Boolean = false;
var checkq5e17:Boolean = false;
var checkr5e18:Boolean = false;

//row 6 Booleans
var checka6f1:Boolean = false;
var checkb6f2:Boolean = false;
var checkc6f3:Boolean = false;
var checkd6f4:Boolean = false;
var checke6f5:Boolean = false;
var checkf6f6:Boolean = false;
var checkg6f7:Boolean = false;
var checkh6f8:Boolean = false;
var checki6f9:Boolean = false;
var checkj6f10:Boolean = false;
var checkk6f11:Boolean = false;
var checkl6f12:Boolean = false;
var checkm6f13:Boolean = false;
var checkn6f14:Boolean = false;
var checko6f15:Boolean = false;
var checkp6f16:Boolean = false;
var checkq6f17:Boolean = false;
var checkr6f18:Boolean = false;

//row 7 Booleans
var checka7g1:Boolean = false;
var checkb7g2:Boolean = false;
var checkc7g3:Boolean = false;
var checkd7g4:Boolean = false;
var checke7g5:Boolean = false;
var checkf7g6:Boolean = false;
var checkg7g7:Boolean = false;
var checkh7g8:Boolean = false;
var checki7g9:Boolean = false;
var checkj7g10:Boolean = false;
var checkk7g11:Boolean = false;
var checkl7g12:Boolean = false;
var checkm7g13:Boolean = false;
var checkn7g14:Boolean = false;
var checko7g15:Boolean = false;
var checkp7g16:Boolean = false;
var checkq7g17:Boolean = false;
var checkr7g18:Boolean = false;

//row 8 Booleans
var checka8h1:Boolean = false;
var checkb8h2:Boolean = false;
var checkc8h3:Boolean = false;
var checkd8h4:Boolean = false;
var checke8h5:Boolean = false;
var checkf8h6:Boolean = false;
var checkg8h7:Boolean = false;
var checkh8h8:Boolean = false;
var checki8h9:Boolean = false;
var checkj8h10:Boolean = false;
var checkk8h11:Boolean = false;
var checkl8h12:Boolean = false;
var checkm8h13:Boolean = false;
var checkn8h14:Boolean = false;
var checko8h15:Boolean = false;
var checkp8h16:Boolean = false;
var checkq8h17:Boolean = false;
var checkr8h18:Boolean = false;

//row 9 Booleans
var checka9i1:Boolean = false;
var checkb9i2:Boolean = false;
var checkc9i3:Boolean = false;
var checkd9i4:Boolean = false;
var checke9i5:Boolean = false;
var checkf9i6:Boolean = false;
var checkg9i7:Boolean = false;
var checkh9i8:Boolean = false;
var checki9i9:Boolean = false;
var checkj9i10:Boolean = false;
var checkk9i11:Boolean = false;
var checkl9i12:Boolean = false;
var checkm9i13:Boolean = false;
var checkn9i14:Boolean = false;
var checko9i15:Boolean = false;
var checkp9i16:Boolean = false;
var checkq9i17:Boolean = false;
var checkr9i18:Boolean = false;

//row 10 Booleans
var checka10j1:Boolean = false;
var checkb10j2:Boolean = false;
var checkc10j3:Boolean = false;
var checkd10j4:Boolean = false;
var checke10j5:Boolean = false;
var checkf10j6:Boolean = false;
var checkg10j7:Boolean = false;
var checkh10j8:Boolean = false;
var checki10j9:Boolean = false;
var checkj10j10:Boolean = false;
var checkk10j11:Boolean = false;
var checkl10j12:Boolean = false;
var checkm10j13:Boolean = false;
var checkn10j14:Boolean = false;
var checko10j15:Boolean = false;
var checkp10j16:Boolean = false;
var checkq10j17:Boolean = false;
var checkr10j18:Boolean = false;

//row 11 Booleans
var checka11k1:Boolean = false;
var checkb11k2:Boolean = false;
var checkc11k3:Boolean = false;
var checkd11k4:Boolean = false;
var checke11k5:Boolean = false;
var checkf11k6:Boolean = false;
var checkg11k7:Boolean = false;
var checkh11k8:Boolean = false;
var checki11k9:Boolean = false;
var checkj11k10:Boolean = false;
var checkk11k11:Boolean = false;
var checkl11k12:Boolean = false;
var checkm11k13:Boolean = false;
var checkn11k14:Boolean = false;
var checko11k15:Boolean = false;
var checkp11k16:Boolean = false;
var checkq11k17:Boolean = false;
var checkr11k18:Boolean = false;

//row 12 Booleans
var checka12l1:Boolean = false;
var checkb12l2:Boolean = false;
var checkc12l3:Boolean = false;
var checkd12l4:Boolean = false;
var checke12l5:Boolean = false;
var checkf12l6:Boolean = false;
var checkg12l7:Boolean = false;
var checkh12l8:Boolean = false;
var checki12l9:Boolean = false;
var checkj12l10:Boolean = false;
var checkk12l11:Boolean = false;
var checkl12l12:Boolean = false;
var checkm12l13:Boolean = false;
var checkn12l14:Boolean = false;
var checko12l15:Boolean = false;
var checkp12l16:Boolean = false;
var checkq12l17:Boolean = false;
var checkr12l18:Boolean = false;

//row 13 Booleans
var checka13m1:Boolean = false;
var checkb13m2:Boolean = false;
var checkc13m3:Boolean = false;
var checkd13m4:Boolean = false;
var checke13m5:Boolean = false;
var checkf13m6:Boolean = false;
var checkg13m7:Boolean = false;
var checkh13m8:Boolean = false;
var checki13m9:Boolean = false;
var checkj13m10:Boolean = false;
var checkk13m11:Boolean = false;
var checkl13m12:Boolean = false;
var checkm13m13:Boolean = false;
var checkn13m14:Boolean = false;
var checko13m15:Boolean = false;
var checkp13m16:Boolean = false;
var checkq13m17:Boolean = false;
var checkr13m18:Boolean = false;

//row 14 Booleans
var checka14n1:Boolean = false;
var checkb14n2:Boolean = false;
var checkc14n3:Boolean = false;
var checkd14n4:Boolean = false;
var checke14n5:Boolean = false;
var checkf14n6:Boolean = false;
var checkg14n7:Boolean = false;
var checkh14n8:Boolean = false;
var checki14n9:Boolean = false;
var checkj14n10:Boolean = false;
var checkk14n11:Boolean = false;
var checkl14n12:Boolean = false;
var checkm14n13:Boolean = false;
var checkn14n14:Boolean = false;
var checko14n15:Boolean = false;
var checkp14n16:Boolean = false;
var checkq14n17:Boolean = false;
var checkr14n18:Boolean = false;

//row 15 Booleans
var checka15o1:Boolean = false;
var checkb15o2:Boolean = false;
var checkc15o3:Boolean = false;
var checkd15o4:Boolean = false;
var checke15o5:Boolean = false;
var checkf15o6:Boolean = false;
var checkg15o7:Boolean = false;
var checkh15o8:Boolean = false;
var checki15o9:Boolean = false;
var checkj15o10:Boolean = false;
var checkk15o11:Boolean = false;
var checkl15o12:Boolean = false;
var checkm15o13:Boolean = false;
var checkn15o14:Boolean = false;
var checko15o15:Boolean = false;
var checkp15o16:Boolean = false;
var checkq15o17:Boolean = false;
var checkr15o18:Boolean = false;

//row 16 Booleans
var checka16p1:Boolean = false;
var checkb16p2:Boolean = false;
var checkc16p3:Boolean = false;
var checkd16p4:Boolean = false;
var checke16p5:Boolean = false;
var checkf16p6:Boolean = false;
var checkg16p7:Boolean = false;
var checkh16p8:Boolean = false;
var checki16p9:Boolean = false;
var checkj16p10:Boolean = false;
var checkk16p11:Boolean = false;
var checkl16p12:Boolean = false;
var checkm16p13:Boolean = false;
var checkn16p14:Boolean = false;
var checko16p15:Boolean = false;
var checkp16p16:Boolean = false;
var checkq16p17:Boolean = false;
var checkr16p18:Boolean = false;

//row 17 Booleans
var checka17q1:Boolean = false;
var checkb17q2:Boolean = false;
var checkc17q3:Boolean = false;
var checkd17q4:Boolean = false;
var checke17q5:Boolean = false;
var checkf17q6:Boolean = false;
var checkg17q7:Boolean = false;
var checkh17q8:Boolean = false;
var checki17q9:Boolean = false;
var checkj17q10:Boolean = false;
var checkk17q11:Boolean = false;
var checkl17q12:Boolean = false;
var checkm17q13:Boolean = false;
var checkn17q14:Boolean = false;
var checko17q15:Boolean = false;
var checkp17q16:Boolean = false;
var checkq17q17:Boolean = false;
var checkr17q18:Boolean = false;

//row 18 Booleans
var checka18r1:Boolean = false;
var checkb18r2:Boolean = false;
var checkc18r3:Boolean = false;
var checkd18r4:Boolean = false;
var checke18r5:Boolean = false;
var checkf18r6:Boolean = false;
var checkg18r7:Boolean = false;
var checkh18r8:Boolean = false;
var checki18r9:Boolean = false;
var checkj18r10:Boolean = false;
var checkk18r11:Boolean = false;
var checkl18r12:Boolean = false;
var checkm18r13:Boolean = false;
var checkn18r14:Boolean = false;
var checko18r15:Boolean = false;
var checkp18r16:Boolean = false;
var checkq18r17:Boolean = false;
var checkr18r18:Boolean = false;



//row 1 Booleans
var invisiblea1a1:Boolean = false;
var invisibleb1a2:Boolean = false;
var invisiblec1a3:Boolean = false;
var invisibled1a4:Boolean = false;
var invisiblee1a5:Boolean = false;
var invisiblef1a6:Boolean = false;
var invisibleg1a7:Boolean = false;
var invisibleh1a8:Boolean = false;
var invisiblei1a9:Boolean = false;
var invisiblej1a10:Boolean = false;
var invisiblek1a11:Boolean = false;
var invisiblel1a12:Boolean = false;
var invisiblem1a13:Boolean = false;
var invisiblen1a14:Boolean = false;
var invisibleo1a15:Boolean = false;
var invisiblep1a16:Boolean = false;
var invisibleq1a17:Boolean = false;
var invisibler1a18:Boolean = false;

//row 2 Booleans
var invisiblea2b1:Boolean = false;
var invisibleb2b2:Boolean = false;
var invisiblec2b3:Boolean = false;
var invisibled2b4:Boolean = false;
var invisiblee2b5:Boolean = false;
var invisiblef2b6:Boolean = false;
var invisibleg2b7:Boolean = false;
var invisibleh2b8:Boolean = false;
var invisiblei2b9:Boolean = false;
var invisiblej2b10:Boolean = false;
var invisiblek2b11:Boolean = false;
var invisiblel2b12:Boolean = false;
var invisiblem2b13:Boolean = false;
var invisiblen2b14:Boolean = false;
var invisibleo2b15:Boolean = false;
var invisiblep2b16:Boolean = false;
var invisibleq2b17:Boolean = false;
var invisibler2b18:Boolean = false;

//row 3 Booleans
var invisiblea3c1:Boolean = false;
var invisibleb3c2:Boolean = false;
var invisiblec3c3:Boolean = false;
var invisibled3c4:Boolean = false;
var invisiblee3c5:Boolean = false;
var invisiblef3c6:Boolean = false;
var invisibleg3c7:Boolean = false;
var invisibleh3c8:Boolean = false;
var invisiblei3c9:Boolean = false;
var invisiblej3c10:Boolean = false;
var invisiblek3c11:Boolean = false;
var invisiblel3c12:Boolean = false;
var invisiblem3c13:Boolean = false;
var invisiblen3c14:Boolean = false;
var invisibleo3c15:Boolean = false;
var invisiblep3c16:Boolean = false;
var invisibleq3c17:Boolean = false;
var invisibler3c18:Boolean = false;

//row 4 Booleans
var invisiblea4d1:Boolean = false;
var invisibleb4d2:Boolean = false;
var invisiblec4d3:Boolean = false;
var invisibled4d4:Boolean = false;
var invisiblee4d5:Boolean = false;
var invisiblef4d6:Boolean = false;
var invisibleg4d7:Boolean = false;
var invisibleh4d8:Boolean = false;
var invisiblei4d9:Boolean = false;
var invisiblej4d10:Boolean = false;
var invisiblek4d11:Boolean = false;
var invisiblel4d12:Boolean = false;
var invisiblem4d13:Boolean = false;
var invisiblen4d14:Boolean = false;
var invisibleo4d15:Boolean = false;
var invisiblep4d16:Boolean = false;
var invisibleq4d17:Boolean = false;
var invisibler4d18:Boolean = false;

//row 5 Booleans
var invisiblea5e1:Boolean = false;
var invisibleb5e2:Boolean = false;
var invisiblec5e3:Boolean = false;
var invisibled5e4:Boolean = false;
var invisiblee5e5:Boolean = false;
var invisiblef5e6:Boolean = false;
var invisibleg5e7:Boolean = false;
var invisibleh5e8:Boolean = false;
var invisiblei5e9:Boolean = false;
var invisiblej5e10:Boolean = false;
var invisiblek5e11:Boolean = false;
var invisiblel5e12:Boolean = false;
var invisiblem5e13:Boolean = false;
var invisiblen5e14:Boolean = false;
var invisibleo5e15:Boolean = false;
var invisiblep5e16:Boolean = false;
var invisibleq5e17:Boolean = false;
var invisibler5e18:Boolean = false;

//row 6 Booleans
var invisiblea6f1:Boolean = false;
var invisibleb6f2:Boolean = false;
var invisiblec6f3:Boolean = false;
var invisibled6f4:Boolean = false;
var invisiblee6f5:Boolean = false;
var invisiblef6f6:Boolean = false;
var invisibleg6f7:Boolean = false;
var invisibleh6f8:Boolean = false;
var invisiblei6f9:Boolean = false;
var invisiblej6f10:Boolean = false;
var invisiblek6f11:Boolean = false;
var invisiblel6f12:Boolean = false;
var invisiblem6f13:Boolean = false;
var invisiblen6f14:Boolean = false;
var invisibleo6f15:Boolean = false;
var invisiblep6f16:Boolean = false;
var invisibleq6f17:Boolean = false;
var invisibler6f18:Boolean = false;

//row 7 Booleans
var invisiblea7g1:Boolean = false;
var invisibleb7g2:Boolean = false;
var invisiblec7g3:Boolean = false;
var invisibled7g4:Boolean = false;
var invisiblee7g5:Boolean = false;
var invisiblef7g6:Boolean = false;
var invisibleg7g7:Boolean = false;
var invisibleh7g8:Boolean = false;
var invisiblei7g9:Boolean = false;
var invisiblej7g10:Boolean = false;
var invisiblek7g11:Boolean = false;
var invisiblel7g12:Boolean = false;
var invisiblem7g13:Boolean = false;
var invisiblen7g14:Boolean = false;
var invisibleo7g15:Boolean = false;
var invisiblep7g16:Boolean = false;
var invisibleq7g17:Boolean = false;
var invisibler7g18:Boolean = false;

//row 8 Booleans
var invisiblea8h1:Boolean = false;
var invisibleb8h2:Boolean = false;
var invisiblec8h3:Boolean = false;
var invisibled8h4:Boolean = false;
var invisiblee8h5:Boolean = false;
var invisiblef8h6:Boolean = false;
var invisibleg8h7:Boolean = false;
var invisibleh8h8:Boolean = false;
var invisiblei8h9:Boolean = false;
var invisiblej8h10:Boolean = false;
var invisiblek8h11:Boolean = false;
var invisiblel8h12:Boolean = false;
var invisiblem8h13:Boolean = false;
var invisiblen8h14:Boolean = false;
var invisibleo8h15:Boolean = false;
var invisiblep8h16:Boolean = false;
var invisibleq8h17:Boolean = false;
var invisibler8h18:Boolean = false;

//row 9 Booleans
var invisiblea9i1:Boolean = false;
var invisibleb9i2:Boolean = false;
var invisiblec9i3:Boolean = false;
var invisibled9i4:Boolean = false;
var invisiblee9i5:Boolean = false;
var invisiblef9i6:Boolean = false;
var invisibleg9i7:Boolean = false;
var invisibleh9i8:Boolean = false;
var invisiblei9i9:Boolean = false;
var invisiblej9i10:Boolean = false;
var invisiblek9i11:Boolean = false;
var invisiblel9i12:Boolean = false;
var invisiblem9i13:Boolean = false;
var invisiblen9i14:Boolean = false;
var invisibleo9i15:Boolean = false;
var invisiblep9i16:Boolean = false;
var invisibleq9i17:Boolean = false;
var invisibler9i18:Boolean = false;

//row 10 Booleans
var invisiblea10j1:Boolean = false;
var invisibleb10j2:Boolean = false;
var invisiblec10j3:Boolean = false;
var invisibled10j4:Boolean = false;
var invisiblee10j5:Boolean = false;
var invisiblef10j6:Boolean = false;
var invisibleg10j7:Boolean = false;
var invisibleh10j8:Boolean = false;
var invisiblei10j9:Boolean = false;
var invisiblej10j10:Boolean = false;
var invisiblek10j11:Boolean = false;
var invisiblel10j12:Boolean = false;
var invisiblem10j13:Boolean = false;
var invisiblen10j14:Boolean = false;
var invisibleo10j15:Boolean = false;
var invisiblep10j16:Boolean = false;
var invisibleq10j17:Boolean = false;
var invisibler10j18:Boolean = false;

//row 11 Booleans
var invisiblea11k1:Boolean = false;
var invisibleb11k2:Boolean = false;
var invisiblec11k3:Boolean = false;
var invisibled11k4:Boolean = false;
var invisiblee11k5:Boolean = false;
var invisiblef11k6:Boolean = false;
var invisibleg11k7:Boolean = false;
var invisibleh11k8:Boolean = false;
var invisiblei11k9:Boolean = false;
var invisiblej11k10:Boolean = false;
var invisiblek11k11:Boolean = false;
var invisiblel11k12:Boolean = false;
var invisiblem11k13:Boolean = false;
var invisiblen11k14:Boolean = false;
var invisibleo11k15:Boolean = false;
var invisiblep11k16:Boolean = false;
var invisibleq11k17:Boolean = false;
var invisibler11k18:Boolean = false;

//row 12 Booleans
var invisiblea12l1:Boolean = false;
var invisibleb12l2:Boolean = false;
var invisiblec12l3:Boolean = false;
var invisibled12l4:Boolean = false;
var invisiblee12l5:Boolean = false;
var invisiblef12l6:Boolean = false;
var invisibleg12l7:Boolean = false;
var invisibleh12l8:Boolean = false;
var invisiblei12l9:Boolean = false;
var invisiblej12l10:Boolean = false;
var invisiblek12l11:Boolean = false;
var invisiblel12l12:Boolean = false;
var invisiblem12l13:Boolean = false;
var invisiblen12l14:Boolean = false;
var invisibleo12l15:Boolean = false;
var invisiblep12l16:Boolean = false;
var invisibleq12l17:Boolean = false;
var invisibler12l18:Boolean = false;

//row 13 Booleans
var invisiblea13m1:Boolean = false;
var invisibleb13m2:Boolean = false;
var invisiblec13m3:Boolean = false;
var invisibled13m4:Boolean = false;
var invisiblee13m5:Boolean = false;
var invisiblef13m6:Boolean = false;
var invisibleg13m7:Boolean = false;
var invisibleh13m8:Boolean = false;
var invisiblei13m9:Boolean = false;
var invisiblej13m10:Boolean = false;
var invisiblek13m11:Boolean = false;
var invisiblel13m12:Boolean = false;
var invisiblem13m13:Boolean = false;
var invisiblen13m14:Boolean = false;
var invisibleo13m15:Boolean = false;
var invisiblep13m16:Boolean = false;
var invisibleq13m17:Boolean = false;
var invisibler13m18:Boolean = false;

//row 14 Booleans
var invisiblea14n1:Boolean = false;
var invisibleb14n2:Boolean = false;
var invisiblec14n3:Boolean = false;
var invisibled14n4:Boolean = false;
var invisiblee14n5:Boolean = false;
var invisiblef14n6:Boolean = false;
var invisibleg14n7:Boolean = false;
var invisibleh14n8:Boolean = false;
var invisiblei14n9:Boolean = false;
var invisiblej14n10:Boolean = false;
var invisiblek14n11:Boolean = false;
var invisiblel14n12:Boolean = false;
var invisiblem14n13:Boolean = false;
var invisiblen14n14:Boolean = false;
var invisibleo14n15:Boolean = false;
var invisiblep14n16:Boolean = false;
var invisibleq14n17:Boolean = false;
var invisibler14n18:Boolean = false;

//row 15 Booleans
var invisiblea15o1:Boolean = false;
var invisibleb15o2:Boolean = false;
var invisiblec15o3:Boolean = false;
var invisibled15o4:Boolean = false;
var invisiblee15o5:Boolean = false;
var invisiblef15o6:Boolean = false;
var invisibleg15o7:Boolean = false;
var invisibleh15o8:Boolean = false;
var invisiblei15o9:Boolean = false;
var invisiblej15o10:Boolean = false;
var invisiblek15o11:Boolean = false;
var invisiblel15o12:Boolean = false;
var invisiblem15o13:Boolean = false;
var invisiblen15o14:Boolean = false;
var invisibleo15o15:Boolean = false;
var invisiblep15o16:Boolean = false;
var invisibleq15o17:Boolean = false;
var invisibler15o18:Boolean = false;

//row 16 Booleans
var invisiblea16p1:Boolean = false;
var invisibleb16p2:Boolean = false;
var invisiblec16p3:Boolean = false;
var invisibled16p4:Boolean = false;
var invisiblee16p5:Boolean = false;
var invisiblef16p6:Boolean = false;
var invisibleg16p7:Boolean = false;
var invisibleh16p8:Boolean = false;
var invisiblei16p9:Boolean = false;
var invisiblej16p10:Boolean = false;
var invisiblek16p11:Boolean = false;
var invisiblel16p12:Boolean = false;
var invisiblem16p13:Boolean = false;
var invisiblen16p14:Boolean = false;
var invisibleo16p15:Boolean = false;
var invisiblep16p16:Boolean = false;
var invisibleq16p17:Boolean = false;
var invisibler16p18:Boolean = false;

//row 17 Booleans
var invisiblea17q1:Boolean = false;
var invisibleb17q2:Boolean = false;
var invisiblec17q3:Boolean = false;
var invisibled17q4:Boolean = false;
var invisiblee17q5:Boolean = false;
var invisiblef17q6:Boolean = false;
var invisibleg17q7:Boolean = false;
var invisibleh17q8:Boolean = false;
var invisiblei17q9:Boolean = false;
var invisiblej17q10:Boolean = false;
var invisiblek17q11:Boolean = false;
var invisiblel17q12:Boolean = false;
var invisiblem17q13:Boolean = false;
var invisiblen17q14:Boolean = false;
var invisibleo17q15:Boolean = false;
var invisiblep17q16:Boolean = false;
var invisibleq17q17:Boolean = false;
var invisibler17q18:Boolean = false;

//row 18 Booleans
var invisiblea18r1:Boolean = false;
var invisibleb18r2:Boolean = false;
var invisiblec18r3:Boolean = false;
var invisibled18r4:Boolean = false;
var invisiblee18r5:Boolean = false;
var invisiblef18r6:Boolean = false;
var invisibleg18r7:Boolean = false;
var invisibleh18r8:Boolean = false;
var invisiblei18r9:Boolean = false;
var invisiblej18r10:Boolean = false;
var invisiblek18r11:Boolean = false;
var invisiblel18r12:Boolean = false;
var invisiblem18r13:Boolean = false;
var invisiblen18r14:Boolean = false;
var invisibleo18r15:Boolean = false;
var invisiblep18r16:Boolean = false;
var invisibleq18r17:Boolean = false;
var invisibler18r18:Boolean = false;


//row 1 Flags visibility
 a1a1Flag.visible = false;
 b1a2Flag.visible = false;
 c1a3Flag.visible = false;
 d1a4Flag.visible = false;
 e1a5Flag.visible = false;
 f1a6Flag.visible = false;
 g1a7Flag.visible = false;
 h1a8Flag.visible = false;
 i1a9Flag.visible = false;
 j1a10Flag.visible = false;
 k1a11Flag.visible = false;
 l1a12Flag.visible = false;
 m1a13Flag.visible = false;
 n1a14Flag.visible = false;
 o1a15Flag.visible = false;
 p1a16Flag.visible = false;
 q1a17Flag.visible = false;
 r1a18Flag.visible = false;

//row 2 Flags visibility
 a2b1Flag.visible = false;
 b2b2Flag.visible = false;
 c2b3Flag.visible = false;
 d2b4Flag.visible = false;
 e2b5Flag.visible = false;
 f2b6Flag.visible = false;
 g2b7Flag.visible = false;
 h2b8Flag.visible = false;
 i2b9Flag.visible = false;
 j2b10Flag.visible = false;
 k2b11Flag.visible = false;
 l2b12Flag.visible = false;
 m2b13Flag.visible = false;
 n2b14Flag.visible = false;
 o2b15Flag.visible = false;
 p2b16Flag.visible = false;
 q2b17Flag.visible = false;
 r2b18Flag.visible = false;

//row 3 Flags visibility
 a3c1Flag.visible = false;
 b3c2Flag.visible = false;
 c3c3Flag.visible = false;
 d3c4Flag.visible = false;
 e3c5Flag.visible = false;
 f3c6Flag.visible = false;
 g3c7Flag.visible = false;
 h3c8Flag.visible = false;
 i3c9Flag.visible = false;
 j3c10Flag.visible = false;
 k3c11Flag.visible = false;
 l3c12Flag.visible = false;
 m3c13Flag.visible = false;
 n3c14Flag.visible = false;
 o3c15Flag.visible = false;
 p3c16Flag.visible = false;
 q3c17Flag.visible = false;
 r3c18Flag.visible = false;

//row 4 Flags visibility
 a4d1Flag.visible = false;
 b4d2Flag.visible = false;
 c4d3Flag.visible = false;
 d4d4Flag.visible = false;
 e4d5Flag.visible = false;
 f4d6Flag.visible = false;
 g4d7Flag.visible = false;
 h4d8Flag.visible = false;
 i4d9Flag.visible = false;
 j4d10Flag.visible = false;
 k4d11Flag.visible = false;
 l4d12Flag.visible = false;
 m4d13Flag.visible = false;
 n4d14Flag.visible = false;
 o4d15Flag.visible = false;
 p4d16Flag.visible = false;
 q4d17Flag.visible = false;
 r4d18Flag.visible = false;

//row 5 Flags visibility
 a5e1Flag.visible = false;
 b5e2Flag.visible = false;
 c5e3Flag.visible = false;
 d5e4Flag.visible = false;
 e5e5Flag.visible = false;
 f5e6Flag.visible = false;
 g5e7Flag.visible = false;
 h5e8Flag.visible = false;
 i5e9Flag.visible = false;
 j5e10Flag.visible = false;
 k5e11Flag.visible = false;
 l5e12Flag.visible = false;
 m5e13Flag.visible = false;
 n5e14Flag.visible = false;
 o5e15Flag.visible = false;
 p5e16Flag.visible = false;
 q5e17Flag.visible = false;
 r5e18Flag.visible = false;

//row 6 Flags visibility
 a6f1Flag.visible = false;
 b6f2Flag.visible = false;
 c6f3Flag.visible = false;
 d6f4Flag.visible = false;
 e6f5Flag.visible = false;
 f6f6Flag.visible = false;
 g6f7Flag.visible = false;
 h6f8Flag.visible = false;
 i6f9Flag.visible = false;
 j6f10Flag.visible = false;
 k6f11Flag.visible = false;
 l6f12Flag.visible = false;
 m6f13Flag.visible = false;
 n6f14Flag.visible = false;
 o6f15Flag.visible = false;
 p6f16Flag.visible = false;
 q6f17Flag.visible = false;
 r6f18Flag.visible = false;

//row 7 Flags visibility
 a7g1Flag.visible = false;
 b7g2Flag.visible = false;
 c7g3Flag.visible = false;
 d7g4Flag.visible = false;
 e7g5Flag.visible = false;
 f7g6Flag.visible = false;
 g7g7Flag.visible = false;
 h7g8Flag.visible = false;
 i7g9Flag.visible = false;
 j7g10Flag.visible = false;
 k7g11Flag.visible = false;
 l7g12Flag.visible = false;
 m7g13Flag.visible = false;
 n7g14Flag.visible = false;
 o7g15Flag.visible = false;
 p7g16Flag.visible = false;
 q7g17Flag.visible = false;
 r7g18Flag.visible = false;

//row 8 Flags visibility
 a8h1Flag.visible = false;
 b8h2Flag.visible = false;
 c8h3Flag.visible = false;
 d8h4Flag.visible = false;
 e8h5Flag.visible = false;
 f8h6Flag.visible = false;
 g8h7Flag.visible = false;
 h8h8Flag.visible = false;
 i8h9Flag.visible = false;
 j8h10Flag.visible = false;
 k8h11Flag.visible = false;
 l8h12Flag.visible = false;
 m8h13Flag.visible = false;
 n8h14Flag.visible = false;
 o8h15Flag.visible = false;
 p8h16Flag.visible = false;
 q8h17Flag.visible = false;
 r8h18Flag.visible = false;

//row 9 Flags visibility
 a9i1Flag.visible = false;
 b9i2Flag.visible = false;
 c9i3Flag.visible = false;
 d9i4Flag.visible = false;
 e9i5Flag.visible = false;
 f9i6Flag.visible = false;
 g9i7Flag.visible = false;
 h9i8Flag.visible = false;
 i9i9Flag.visible = false;
 j9i10Flag.visible = false;
 k9i11Flag.visible = false;
 l9i12Flag.visible = false;
 m9i13Flag.visible = false;
 n9i14Flag.visible = false;
 o9i15Flag.visible = false;
 p9i16Flag.visible = false;
 q9i17Flag.visible = false;
 r9i18Flag.visible = false;

//row 10 Flags visibility
 a10j1Flag.visible = false;
 b10j2Flag.visible = false;
 c10j3Flag.visible = false;
 d10j4Flag.visible = false;
 e10j5Flag.visible = false;
 f10j6Flag.visible = false;
 g10j7Flag.visible = false;
 h10j8Flag.visible = false;
 i10j9Flag.visible = false;
 j10j10Flag.visible = false;
 k10j11Flag.visible = false;
 l10j12Flag.visible = false;
 m10j13Flag.visible = false;
 n10j14Flag.visible = false;
 o10j15Flag.visible = false;
 p10j16Flag.visible = false;
 q10j17Flag.visible = false;
 r10j18Flag.visible = false;

//row 11 Flags visibility
 a11k1Flag.visible = false;
 b11k2Flag.visible = false;
 c11k3Flag.visible = false;
 d11k4Flag.visible = false;
 e11k5Flag.visible = false;
 f11k6Flag.visible = false;
 g11k7Flag.visible = false;
 h11k8Flag.visible = false;
 i11k9Flag.visible = false;
 j11k10Flag.visible = false;
 k11k11Flag.visible = false;
 l11k12Flag.visible = false;
 m11k13Flag.visible = false;
 n11k14Flag.visible = false;
 o11k15Flag.visible = false;
 p11k16Flag.visible = false;
 q11k17Flag.visible = false;
 r11k18Flag.visible = false;

//row 12 Flags visibility
 a12l1Flag.visible = false;
 b12l2Flag.visible = false;
 c12l3Flag.visible = false;
 d12l4Flag.visible = false;
 e12l5Flag.visible = false;
 f12l6Flag.visible = false;
 g12l7Flag.visible = false;
 h12l8Flag.visible = false;
 i12l9Flag.visible = false;
 j12l10Flag.visible = false;
 k12l11Flag.visible = false;
 l12l12Flag.visible = false;
 m12l13Flag.visible = false;
 n12l14Flag.visible = false;
 o12l15Flag.visible = false;
 p12l16Flag.visible = false;
 q12l17Flag.visible = false;
 r12l18Flag.visible = false;

//row 13 Flags visibility
 a13m1Flag.visible = false;
 b13m2Flag.visible = false;
 c13m3Flag.visible = false;
 d13m4Flag.visible = false;
 e13m5Flag.visible = false;
 f13m6Flag.visible = false;
 g13m7Flag.visible = false;
 h13m8Flag.visible = false;
 i13m9Flag.visible = false;
 j13m10Flag.visible = false;
 k13m11Flag.visible = false;
 l13m12Flag.visible = false;
 m13m13Flag.visible = false;
 n13m14Flag.visible = false;
 o13m15Flag.visible = false;
 p13m16Flag.visible = false;
 q13m17Flag.visible = false;
 r13m18Flag.visible = false;

//row 14 Flags visibility
 a14n1Flag.visible = false;
 b14n2Flag.visible = false;
 c14n3Flag.visible = false;
 d14n4Flag.visible = false;
 e14n5Flag.visible = false;
 f14n6Flag.visible = false;
 g14n7Flag.visible = false;
 h14n8Flag.visible = false;
 i14n9Flag.visible = false;
 j14n10Flag.visible = false;
 k14n11Flag.visible = false;
 l14n12Flag.visible = false;
 m14n13Flag.visible = false;
 n14n14Flag.visible = false;
 o14n15Flag.visible = false;
 p14n16Flag.visible = false;
 q14n17Flag.visible = false;
 r14n18Flag.visible = false;

//row 15 Flags visibility
 a15o1Flag.visible = false;
 b15o2Flag.visible = false;
 c15o3Flag.visible = false;
 d15o4Flag.visible = false;
 e15o5Flag.visible = false;
 f15o6Flag.visible = false;
 g15o7Flag.visible = false;
 h15o8Flag.visible = false;
 i15o9Flag.visible = false;
 j15o10Flag.visible = false;
 k15o11Flag.visible = false;
 l15o12Flag.visible = false;
 m15o13Flag.visible = false;
 n15o14Flag.visible = false;
 o15o15Flag.visible = false;
 p15o16Flag.visible = false;
 q15o17Flag.visible = false;
 r15o18Flag.visible = false;

//row 16 Flags visibility
 a16p1Flag.visible = false;
 b16p2Flag.visible = false;
 c16p3Flag.visible = false;
 d16p4Flag.visible = false;
 e16p5Flag.visible = false;
 f16p6Flag.visible = false;
 g16p7Flag.visible = false;
 h16p8Flag.visible = false;
 i16p9Flag.visible = false;
 j16p10Flag.visible = false;
 k16p11Flag.visible = false;
 l16p12Flag.visible = false;
 m16p13Flag.visible = false;
 n16p14Flag.visible = false;
 o16p15Flag.visible = false;
 p16p16Flag.visible = false;
 q16p17Flag.visible = false;
 r16p18Flag.visible = false;

//row 17 Flags visibility
 a17q1Flag.visible = false;
 b17q2Flag.visible = false;
 c17q3Flag.visible = false;
 d17q4Flag.visible = false;
 e17q5Flag.visible = false;
 f17q6Flag.visible = false;
 g17q7Flag.visible = false;
 h17q8Flag.visible = false;
 i17q9Flag.visible = false;
 j17q10Flag.visible = false;
 k17q11Flag.visible = false;
 l17q12Flag.visible = false;
 m17q13Flag.visible = false;
 n17q14Flag.visible = false;
 o17q15Flag.visible = false;
 p17q16Flag.visible = false;
 q17q17Flag.visible = false;
 r17q18Flag.visible = false;

//row 18 Flags visibility
 a18r1Flag.visible = false;
 b18r2Flag.visible = false;
 c18r3Flag.visible = false;
 d18r4Flag.visible = false;
 e18r5Flag.visible = false;
 f18r6Flag.visible = false;
 g18r7Flag.visible = false;
 h18r8Flag.visible = false;
 i18r9Flag.visible = false;
 j18r10Flag.visible = false;
 k18r11Flag.visible = false;
 l18r12Flag.visible = false;
 m18r13Flag.visible = false;
 n18r14Flag.visible = false;
 o18r15Flag.visible = false;
 p18r16Flag.visible = false;
 q18r17Flag.visible = false;
 r18r18Flag.visible = false;
 
 //row 1 Flags button modes
 a1a1Flag.buttonMode = true
 b1a2Flag.buttonMode = true
 c1a3Flag.buttonMode = true
 d1a4Flag.buttonMode = true
 e1a5Flag.buttonMode = true
 f1a6Flag.buttonMode = true
 g1a7Flag.buttonMode = true
 h1a8Flag.buttonMode = true
 i1a9Flag.buttonMode = true
 j1a10Flag.buttonMode = true
 k1a11Flag.buttonMode = true
 l1a12Flag.buttonMode = true
 m1a13Flag.buttonMode = true
 n1a14Flag.buttonMode = true
 o1a15Flag.buttonMode = true
 p1a16Flag.buttonMode = true
 q1a17Flag.buttonMode = true
 r1a18Flag.buttonMode = true

//row 2 Flags button modes
 a2b1Flag.buttonMode = true
 b2b2Flag.buttonMode = true
 c2b3Flag.buttonMode = true
 d2b4Flag.buttonMode = true
 e2b5Flag.buttonMode = true
 f2b6Flag.buttonMode = true
 g2b7Flag.buttonMode = true
 h2b8Flag.buttonMode = true
 i2b9Flag.buttonMode = true
 j2b10Flag.buttonMode = true
 k2b11Flag.buttonMode = true
 l2b12Flag.buttonMode = true
 m2b13Flag.buttonMode = true
 n2b14Flag.buttonMode = true
 o2b15Flag.buttonMode = true
 p2b16Flag.buttonMode = true
 q2b17Flag.buttonMode = true
 r2b18Flag.buttonMode = true

//row 3 Flags button modes
 a3c1Flag.buttonMode = true
 b3c2Flag.buttonMode = true
 c3c3Flag.buttonMode = true
 d3c4Flag.buttonMode = true
 e3c5Flag.buttonMode = true
 f3c6Flag.buttonMode = true
 g3c7Flag.buttonMode = true
 h3c8Flag.buttonMode = true
 i3c9Flag.buttonMode = true
 j3c10Flag.buttonMode = true
 k3c11Flag.buttonMode = true
 l3c12Flag.buttonMode = true
 m3c13Flag.buttonMode = true
 n3c14Flag.buttonMode = true
 o3c15Flag.buttonMode = true
 p3c16Flag.buttonMode = true
 q3c17Flag.buttonMode = true
 r3c18Flag.buttonMode = true

//row 4 Flags button modes
 a4d1Flag.buttonMode = true
 b4d2Flag.buttonMode = true
 c4d3Flag.buttonMode = true
 d4d4Flag.buttonMode = true
 e4d5Flag.buttonMode = true
 f4d6Flag.buttonMode = true
 g4d7Flag.buttonMode = true
 h4d8Flag.buttonMode = true
 i4d9Flag.buttonMode = true
 j4d10Flag.buttonMode = true
 k4d11Flag.buttonMode = true
 l4d12Flag.buttonMode = true
 m4d13Flag.buttonMode = true
 n4d14Flag.buttonMode = true
 o4d15Flag.buttonMode = true
 p4d16Flag.buttonMode = true
 q4d17Flag.buttonMode = true
 r4d18Flag.buttonMode = true

//row 5 Flags button modes
 a5e1Flag.buttonMode = true
 b5e2Flag.buttonMode = true
 c5e3Flag.buttonMode = true
 d5e4Flag.buttonMode = true
 e5e5Flag.buttonMode = true
 f5e6Flag.buttonMode = true
 g5e7Flag.buttonMode = true
 h5e8Flag.buttonMode = true
 i5e9Flag.buttonMode = true
 j5e10Flag.buttonMode = true
 k5e11Flag.buttonMode = true
 l5e12Flag.buttonMode = true
 m5e13Flag.buttonMode = true
 n5e14Flag.buttonMode = true
 o5e15Flag.buttonMode = true
 p5e16Flag.buttonMode = true
 q5e17Flag.buttonMode = true
 r5e18Flag.buttonMode = true

//row 6 Flags button modes
 a6f1Flag.buttonMode = true
 b6f2Flag.buttonMode = true
 c6f3Flag.buttonMode = true
 d6f4Flag.buttonMode = true
 e6f5Flag.buttonMode = true
 f6f6Flag.buttonMode = true
 g6f7Flag.buttonMode = true
 h6f8Flag.buttonMode = true
 i6f9Flag.buttonMode = true
 j6f10Flag.buttonMode = true
 k6f11Flag.buttonMode = true
 l6f12Flag.buttonMode = true
 m6f13Flag.buttonMode = true
 n6f14Flag.buttonMode = true
 o6f15Flag.buttonMode = true
 p6f16Flag.buttonMode = true
 q6f17Flag.buttonMode = true
 r6f18Flag.buttonMode = true

//row 7 Flags button modes
 a7g1Flag.buttonMode = true
 b7g2Flag.buttonMode = true
 c7g3Flag.buttonMode = true
 d7g4Flag.buttonMode = true
 e7g5Flag.buttonMode = true
 f7g6Flag.buttonMode = true
 g7g7Flag.buttonMode = true
 h7g8Flag.buttonMode = true
 i7g9Flag.buttonMode = true
 j7g10Flag.buttonMode = true
 k7g11Flag.buttonMode = true
 l7g12Flag.buttonMode = true
 m7g13Flag.buttonMode = true
 n7g14Flag.buttonMode = true
 o7g15Flag.buttonMode = true
 p7g16Flag.buttonMode = true
 q7g17Flag.buttonMode = true
 r7g18Flag.buttonMode = true

//row 8 Flags button modes
 a8h1Flag.buttonMode = true
 b8h2Flag.buttonMode = true
 c8h3Flag.buttonMode = true
 d8h4Flag.buttonMode = true
 e8h5Flag.buttonMode = true
 f8h6Flag.buttonMode = true
 g8h7Flag.buttonMode = true
 h8h8Flag.buttonMode = true
 i8h9Flag.buttonMode = true
 j8h10Flag.buttonMode = true
 k8h11Flag.buttonMode = true
 l8h12Flag.buttonMode = true
 m8h13Flag.buttonMode = true
 n8h14Flag.buttonMode = true
 o8h15Flag.buttonMode = true
 p8h16Flag.buttonMode = true
 q8h17Flag.buttonMode = true
 r8h18Flag.buttonMode = true

//row 9 Flags button modes
 a9i1Flag.buttonMode = true
 b9i2Flag.buttonMode = true
 c9i3Flag.buttonMode = true
 d9i4Flag.buttonMode = true
 e9i5Flag.buttonMode = true
 f9i6Flag.buttonMode = true
 g9i7Flag.buttonMode = true
 h9i8Flag.buttonMode = true
 i9i9Flag.buttonMode = true
 j9i10Flag.buttonMode = true
 k9i11Flag.buttonMode = true
 l9i12Flag.buttonMode = true
 m9i13Flag.buttonMode = true
 n9i14Flag.buttonMode = true
 o9i15Flag.buttonMode = true
 p9i16Flag.buttonMode = true
 q9i17Flag.buttonMode = true
 r9i18Flag.buttonMode = true

//row 10 Flags button modes
 a10j1Flag.buttonMode = true
 b10j2Flag.buttonMode = true
 c10j3Flag.buttonMode = true
 d10j4Flag.buttonMode = true
 e10j5Flag.buttonMode = true
 f10j6Flag.buttonMode = true
 g10j7Flag.buttonMode = true
 h10j8Flag.buttonMode = true
 i10j9Flag.buttonMode = true
 j10j10Flag.buttonMode = true
 k10j11Flag.buttonMode = true
 l10j12Flag.buttonMode = true
 m10j13Flag.buttonMode = true
 n10j14Flag.buttonMode = true
 o10j15Flag.buttonMode = true
 p10j16Flag.buttonMode = true
 q10j17Flag.buttonMode = true
 r10j18Flag.buttonMode = true

//row 11 Flags button modes
 a11k1Flag.buttonMode = true
 b11k2Flag.buttonMode = true
 c11k3Flag.buttonMode = true
 d11k4Flag.buttonMode = true
 e11k5Flag.buttonMode = true
 f11k6Flag.buttonMode = true
 g11k7Flag.buttonMode = true
 h11k8Flag.buttonMode = true
 i11k9Flag.buttonMode = true
 j11k10Flag.buttonMode = true
 k11k11Flag.buttonMode = true
 l11k12Flag.buttonMode = true
 m11k13Flag.buttonMode = true
 n11k14Flag.buttonMode = true
 o11k15Flag.buttonMode = true
 p11k16Flag.buttonMode = true
 q11k17Flag.buttonMode = true
 r11k18Flag.buttonMode = true

//row 12 Flags button modes
 a12l1Flag.buttonMode = true
 b12l2Flag.buttonMode = true
 c12l3Flag.buttonMode = true
 d12l4Flag.buttonMode = true
 e12l5Flag.buttonMode = true
 f12l6Flag.buttonMode = true
 g12l7Flag.buttonMode = true
 h12l8Flag.buttonMode = true
 i12l9Flag.buttonMode = true
 j12l10Flag.buttonMode = true
 k12l11Flag.buttonMode = true
 l12l12Flag.buttonMode = true
 m12l13Flag.buttonMode = true
 n12l14Flag.buttonMode = true
 o12l15Flag.buttonMode = true
 p12l16Flag.buttonMode = true
 q12l17Flag.buttonMode = true
 r12l18Flag.buttonMode = true

//row 13 Flags button modes
 a13m1Flag.buttonMode = true
 b13m2Flag.buttonMode = true
 c13m3Flag.buttonMode = true
 d13m4Flag.buttonMode = true
 e13m5Flag.buttonMode = true
 f13m6Flag.buttonMode = true
 g13m7Flag.buttonMode = true
 h13m8Flag.buttonMode = true
 i13m9Flag.buttonMode = true
 j13m10Flag.buttonMode = true
 k13m11Flag.buttonMode = true
 l13m12Flag.buttonMode = true
 m13m13Flag.buttonMode = true
 n13m14Flag.buttonMode = true
 o13m15Flag.buttonMode = true
 p13m16Flag.buttonMode = true
 q13m17Flag.buttonMode = true
 r13m18Flag.buttonMode = true

//row 14 Flags button modes
 a14n1Flag.buttonMode = true
 b14n2Flag.buttonMode = true
 c14n3Flag.buttonMode = true
 d14n4Flag.buttonMode = true
 e14n5Flag.buttonMode = true
 f14n6Flag.buttonMode = true
 g14n7Flag.buttonMode = true
 h14n8Flag.buttonMode = true
 i14n9Flag.buttonMode = true
 j14n10Flag.buttonMode = true
 k14n11Flag.buttonMode = true
 l14n12Flag.buttonMode = true
 m14n13Flag.buttonMode = true
 n14n14Flag.buttonMode = true
 o14n15Flag.buttonMode = true
 p14n16Flag.buttonMode = true
 q14n17Flag.buttonMode = true
 r14n18Flag.buttonMode = true

//row 15 Flags button modes
 a15o1Flag.buttonMode = true
 b15o2Flag.buttonMode = true
 c15o3Flag.buttonMode = true
 d15o4Flag.buttonMode = true
 e15o5Flag.buttonMode = true
 f15o6Flag.buttonMode = true
 g15o7Flag.buttonMode = true
 h15o8Flag.buttonMode = true
 i15o9Flag.buttonMode = true
 j15o10Flag.buttonMode = true
 k15o11Flag.buttonMode = true
 l15o12Flag.buttonMode = true
 m15o13Flag.buttonMode = true
 n15o14Flag.buttonMode = true
 o15o15Flag.buttonMode = true
 p15o16Flag.buttonMode = true
 q15o17Flag.buttonMode = true
 r15o18Flag.buttonMode = true

//row 16 Flags button modes
 a16p1Flag.buttonMode = true
 b16p2Flag.buttonMode = true
 c16p3Flag.buttonMode = true
 d16p4Flag.buttonMode = true
 e16p5Flag.buttonMode = true
 f16p6Flag.buttonMode = true
 g16p7Flag.buttonMode = true
 h16p8Flag.buttonMode = true
 i16p9Flag.buttonMode = true
 j16p10Flag.buttonMode = true
 k16p11Flag.buttonMode = true
 l16p12Flag.buttonMode = true
 m16p13Flag.buttonMode = true
 n16p14Flag.buttonMode = true
 o16p15Flag.buttonMode = true
 p16p16Flag.buttonMode = true
 q16p17Flag.buttonMode = true
 r16p18Flag.buttonMode = true

//row 17 Flags button modes
 a17q1Flag.buttonMode = true
 b17q2Flag.buttonMode = true
 c17q3Flag.buttonMode = true
 d17q4Flag.buttonMode = true
 e17q5Flag.buttonMode = true
 f17q6Flag.buttonMode = true
 g17q7Flag.buttonMode = true
 h17q8Flag.buttonMode = true
 i17q9Flag.buttonMode = true
 j17q10Flag.buttonMode = true
 k17q11Flag.buttonMode = true
 l17q12Flag.buttonMode = true
 m17q13Flag.buttonMode = true
 n17q14Flag.buttonMode = true
 o17q15Flag.buttonMode = true
 p17q16Flag.buttonMode = true
 q17q17Flag.buttonMode = true
 r17q18Flag.buttonMode = true

//row 18 Flags button modes
 a18r1Flag.buttonMode = true
 b18r2Flag.buttonMode = true
 c18r3Flag.buttonMode = true
 d18r4Flag.buttonMode = true
 e18r5Flag.buttonMode = true
 f18r6Flag.buttonMode = true
 g18r7Flag.buttonMode = true
 h18r8Flag.buttonMode = true
 i18r9Flag.buttonMode = true
 j18r10Flag.buttonMode = true
 k18r11Flag.buttonMode = true
 l18r12Flag.buttonMode = true
 m18r13Flag.buttonMode = true
 n18r14Flag.buttonMode = true
 o18r15Flag.buttonMode = true
 p18r16Flag.buttonMode = true
 q18r17Flag.buttonMode = true
 r18r18Flag.buttonMode = true


 //row 1 Flags frames
 a1a1Flag.gotoAndStop(10);
 b1a2Flag.gotoAndStop(10);
 c1a3Flag.gotoAndStop(10);
 d1a4Flag.gotoAndStop(10);
 e1a5Flag.gotoAndStop(10);
 f1a6Flag.gotoAndStop(10);
 g1a7Flag.gotoAndStop(10);
 h1a8Flag.gotoAndStop(10);
 i1a9Flag.gotoAndStop(10);
 j1a10Flag.gotoAndStop(10);
 k1a11Flag.gotoAndStop(10);
 l1a12Flag.gotoAndStop(10);
 m1a13Flag.gotoAndStop(10);
 n1a14Flag.gotoAndStop(10);
 o1a15Flag.gotoAndStop(10);
 p1a16Flag.gotoAndStop(10);
 q1a17Flag.gotoAndStop(10);
 r1a18Flag.gotoAndStop(10);

//row 2 Flags frames
 a2b1Flag.gotoAndStop(10);
 b2b2Flag.gotoAndStop(10);
 c2b3Flag.gotoAndStop(10);
 d2b4Flag.gotoAndStop(10);
 e2b5Flag.gotoAndStop(10);
 f2b6Flag.gotoAndStop(10);
 g2b7Flag.gotoAndStop(10);
 h2b8Flag.gotoAndStop(10);
 i2b9Flag.gotoAndStop(10);
 j2b10Flag.gotoAndStop(10);
 k2b11Flag.gotoAndStop(10);
 l2b12Flag.gotoAndStop(10);
 m2b13Flag.gotoAndStop(10);
 n2b14Flag.gotoAndStop(10);
 o2b15Flag.gotoAndStop(10);
 p2b16Flag.gotoAndStop(10);
 q2b17Flag.gotoAndStop(10);
 r2b18Flag.gotoAndStop(10);

//row 3 Flags frames
 a3c1Flag.gotoAndStop(10);
 b3c2Flag.gotoAndStop(10);
 c3c3Flag.gotoAndStop(10);
 d3c4Flag.gotoAndStop(10);
 e3c5Flag.gotoAndStop(10);
 f3c6Flag.gotoAndStop(10);
 g3c7Flag.gotoAndStop(10);
 h3c8Flag.gotoAndStop(10);
 i3c9Flag.gotoAndStop(10);
 j3c10Flag.gotoAndStop(10);
 k3c11Flag.gotoAndStop(10);
 l3c12Flag.gotoAndStop(10);
 m3c13Flag.gotoAndStop(10);
 n3c14Flag.gotoAndStop(10);
 o3c15Flag.gotoAndStop(10);
 p3c16Flag.gotoAndStop(10);
 q3c17Flag.gotoAndStop(10);
 r3c18Flag.gotoAndStop(10);

//row 4 Flags frames
 a4d1Flag.gotoAndStop(10);
 b4d2Flag.gotoAndStop(10);
 c4d3Flag.gotoAndStop(10);
 d4d4Flag.gotoAndStop(10);
 e4d5Flag.gotoAndStop(10);
 f4d6Flag.gotoAndStop(10);
 g4d7Flag.gotoAndStop(10);
 h4d8Flag.gotoAndStop(10);
 i4d9Flag.gotoAndStop(10);
 j4d10Flag.gotoAndStop(10);
 k4d11Flag.gotoAndStop(10);
 l4d12Flag.gotoAndStop(10);
 m4d13Flag.gotoAndStop(10);
 n4d14Flag.gotoAndStop(10);
 o4d15Flag.gotoAndStop(10);
 p4d16Flag.gotoAndStop(10);
 q4d17Flag.gotoAndStop(10);
 r4d18Flag.gotoAndStop(10);

//row 5 Flags frames
 a5e1Flag.gotoAndStop(10);
 b5e2Flag.gotoAndStop(10);
 c5e3Flag.gotoAndStop(10);
 d5e4Flag.gotoAndStop(10);
 e5e5Flag.gotoAndStop(10);
 f5e6Flag.gotoAndStop(10);
 g5e7Flag.gotoAndStop(10);
 h5e8Flag.gotoAndStop(10);
 i5e9Flag.gotoAndStop(10);
 j5e10Flag.gotoAndStop(10);
 k5e11Flag.gotoAndStop(10);
 l5e12Flag.gotoAndStop(10);
 m5e13Flag.gotoAndStop(10);
 n5e14Flag.gotoAndStop(10);
 o5e15Flag.gotoAndStop(10);
 p5e16Flag.gotoAndStop(10);
 q5e17Flag.gotoAndStop(10);
 r5e18Flag.gotoAndStop(10);

//row 6 Flags frames
 a6f1Flag.gotoAndStop(10);
 b6f2Flag.gotoAndStop(10);
 c6f3Flag.gotoAndStop(10);
 d6f4Flag.gotoAndStop(10);
 e6f5Flag.gotoAndStop(10);
 f6f6Flag.gotoAndStop(10);
 g6f7Flag.gotoAndStop(10);
 h6f8Flag.gotoAndStop(10);
 i6f9Flag.gotoAndStop(10);
 j6f10Flag.gotoAndStop(10);
 k6f11Flag.gotoAndStop(10);
 l6f12Flag.gotoAndStop(10);
 m6f13Flag.gotoAndStop(10);
 n6f14Flag.gotoAndStop(10);
 o6f15Flag.gotoAndStop(10);
 p6f16Flag.gotoAndStop(10);
 q6f17Flag.gotoAndStop(10);
 r6f18Flag.gotoAndStop(10);

//row 7 Flags frames
 a7g1Flag.gotoAndStop(10);
 b7g2Flag.gotoAndStop(10);
 c7g3Flag.gotoAndStop(10);
 d7g4Flag.gotoAndStop(10);
 e7g5Flag.gotoAndStop(10);
 f7g6Flag.gotoAndStop(10);
 g7g7Flag.gotoAndStop(10);
 h7g8Flag.gotoAndStop(10);
 i7g9Flag.gotoAndStop(10);
 j7g10Flag.gotoAndStop(10);
 k7g11Flag.gotoAndStop(10);
 l7g12Flag.gotoAndStop(10);
 m7g13Flag.gotoAndStop(10);
 n7g14Flag.gotoAndStop(10);
 o7g15Flag.gotoAndStop(10);
 p7g16Flag.gotoAndStop(10);
 q7g17Flag.gotoAndStop(10);
 r7g18Flag.gotoAndStop(10);

//row 8 Flags frames
 a8h1Flag.gotoAndStop(10);
 b8h2Flag.gotoAndStop(10);
 c8h3Flag.gotoAndStop(10);
 d8h4Flag.gotoAndStop(10);
 e8h5Flag.gotoAndStop(10);
 f8h6Flag.gotoAndStop(10);
 g8h7Flag.gotoAndStop(10);
 h8h8Flag.gotoAndStop(10);
 i8h9Flag.gotoAndStop(10);
 j8h10Flag.gotoAndStop(10);
 k8h11Flag.gotoAndStop(10);
 l8h12Flag.gotoAndStop(10);
 m8h13Flag.gotoAndStop(10);
 n8h14Flag.gotoAndStop(10);
 o8h15Flag.gotoAndStop(10);
 p8h16Flag.gotoAndStop(10);
 q8h17Flag.gotoAndStop(10);
 r8h18Flag.gotoAndStop(10);

//row 9 Flags frames
 a9i1Flag.gotoAndStop(10);
 b9i2Flag.gotoAndStop(10);
 c9i3Flag.gotoAndStop(10);
 d9i4Flag.gotoAndStop(10);
 e9i5Flag.gotoAndStop(10);
 f9i6Flag.gotoAndStop(10);
 g9i7Flag.gotoAndStop(10);
 h9i8Flag.gotoAndStop(10);
 i9i9Flag.gotoAndStop(10);
 j9i10Flag.gotoAndStop(10);
 k9i11Flag.gotoAndStop(10);
 l9i12Flag.gotoAndStop(10);
 m9i13Flag.gotoAndStop(10);
 n9i14Flag.gotoAndStop(10);
 o9i15Flag.gotoAndStop(10);
 p9i16Flag.gotoAndStop(10);
 q9i17Flag.gotoAndStop(10);
 r9i18Flag.gotoAndStop(10);

//row 10 Flags frames
 a10j1Flag.gotoAndStop(10);
 b10j2Flag.gotoAndStop(10);
 c10j3Flag.gotoAndStop(10);
 d10j4Flag.gotoAndStop(10);
 e10j5Flag.gotoAndStop(10);
 f10j6Flag.gotoAndStop(10);
 g10j7Flag.gotoAndStop(10);
 h10j8Flag.gotoAndStop(10);
 i10j9Flag.gotoAndStop(10);
 j10j10Flag.gotoAndStop(10);
 k10j11Flag.gotoAndStop(10);
 l10j12Flag.gotoAndStop(10);
 m10j13Flag.gotoAndStop(10);
 n10j14Flag.gotoAndStop(10);
 o10j15Flag.gotoAndStop(10);
 p10j16Flag.gotoAndStop(10);
 q10j17Flag.gotoAndStop(10);
 r10j18Flag.gotoAndStop(10);

//row 11 Flags frames
 a11k1Flag.gotoAndStop(10);
 b11k2Flag.gotoAndStop(10);
 c11k3Flag.gotoAndStop(10);
 d11k4Flag.gotoAndStop(10);
 e11k5Flag.gotoAndStop(10);
 f11k6Flag.gotoAndStop(10);
 g11k7Flag.gotoAndStop(10);
 h11k8Flag.gotoAndStop(10);
 i11k9Flag.gotoAndStop(10);
 j11k10Flag.gotoAndStop(10);
 k11k11Flag.gotoAndStop(10);
 l11k12Flag.gotoAndStop(10);
 m11k13Flag.gotoAndStop(10);
 n11k14Flag.gotoAndStop(10);
 o11k15Flag.gotoAndStop(10);
 p11k16Flag.gotoAndStop(10);
 q11k17Flag.gotoAndStop(10);
 r11k18Flag.gotoAndStop(10);

//row 12 Flags frames
 a12l1Flag.gotoAndStop(10);
 b12l2Flag.gotoAndStop(10);
 c12l3Flag.gotoAndStop(10);
 d12l4Flag.gotoAndStop(10);
 e12l5Flag.gotoAndStop(10);
 f12l6Flag.gotoAndStop(10);
 g12l7Flag.gotoAndStop(10);
 h12l8Flag.gotoAndStop(10);
 i12l9Flag.gotoAndStop(10);
 j12l10Flag.gotoAndStop(10);
 k12l11Flag.gotoAndStop(10);
 l12l12Flag.gotoAndStop(10);
 m12l13Flag.gotoAndStop(10);
 n12l14Flag.gotoAndStop(10);
 o12l15Flag.gotoAndStop(10);
 p12l16Flag.gotoAndStop(10);
 q12l17Flag.gotoAndStop(10);
 r12l18Flag.gotoAndStop(10);

//row 13 Flags frames
 a13m1Flag.gotoAndStop(10);
 b13m2Flag.gotoAndStop(10);
 c13m3Flag.gotoAndStop(10);
 d13m4Flag.gotoAndStop(10);
 e13m5Flag.gotoAndStop(10);
 f13m6Flag.gotoAndStop(10);
 g13m7Flag.gotoAndStop(10);
 h13m8Flag.gotoAndStop(10);
 i13m9Flag.gotoAndStop(10);
 j13m10Flag.gotoAndStop(10);
 k13m11Flag.gotoAndStop(10);
 l13m12Flag.gotoAndStop(10);
 m13m13Flag.gotoAndStop(10);
 n13m14Flag.gotoAndStop(10);
 o13m15Flag.gotoAndStop(10);
 p13m16Flag.gotoAndStop(10);
 q13m17Flag.gotoAndStop(10);
 r13m18Flag.gotoAndStop(10);

//row 14 Flags frames
 a14n1Flag.gotoAndStop(10);
 b14n2Flag.gotoAndStop(10);
 c14n3Flag.gotoAndStop(10);
 d14n4Flag.gotoAndStop(10);
 e14n5Flag.gotoAndStop(10);
 f14n6Flag.gotoAndStop(10);
 g14n7Flag.gotoAndStop(10);
 h14n8Flag.gotoAndStop(10);
 i14n9Flag.gotoAndStop(10);
 j14n10Flag.gotoAndStop(10);
 k14n11Flag.gotoAndStop(10);
 l14n12Flag.gotoAndStop(10);
 m14n13Flag.gotoAndStop(10);
 n14n14Flag.gotoAndStop(10);
 o14n15Flag.gotoAndStop(10);
 p14n16Flag.gotoAndStop(10);
 q14n17Flag.gotoAndStop(10);
 r14n18Flag.gotoAndStop(10);

//row 15 Flags frames
 a15o1Flag.gotoAndStop(10);
 b15o2Flag.gotoAndStop(10);
 c15o3Flag.gotoAndStop(10);
 d15o4Flag.gotoAndStop(10);
 e15o5Flag.gotoAndStop(10);
 f15o6Flag.gotoAndStop(10);
 g15o7Flag.gotoAndStop(10);
 h15o8Flag.gotoAndStop(10);
 i15o9Flag.gotoAndStop(10);
 j15o10Flag.gotoAndStop(10);
 k15o11Flag.gotoAndStop(10);
 l15o12Flag.gotoAndStop(10);
 m15o13Flag.gotoAndStop(10);
 n15o14Flag.gotoAndStop(10);
 o15o15Flag.gotoAndStop(10);
 p15o16Flag.gotoAndStop(10);
 q15o17Flag.gotoAndStop(10);
 r15o18Flag.gotoAndStop(10);

//row 16 Flags frames
 a16p1Flag.gotoAndStop(10);
 b16p2Flag.gotoAndStop(10);
 c16p3Flag.gotoAndStop(10);
 d16p4Flag.gotoAndStop(10);
 e16p5Flag.gotoAndStop(10);
 f16p6Flag.gotoAndStop(10);
 g16p7Flag.gotoAndStop(10);
 h16p8Flag.gotoAndStop(10);
 i16p9Flag.gotoAndStop(10);
 j16p10Flag.gotoAndStop(10);
 k16p11Flag.gotoAndStop(10);
 l16p12Flag.gotoAndStop(10);
 m16p13Flag.gotoAndStop(10);
 n16p14Flag.gotoAndStop(10);
 o16p15Flag.gotoAndStop(10);
 p16p16Flag.gotoAndStop(10);
 q16p17Flag.gotoAndStop(10);
 r16p18Flag.gotoAndStop(10);

//row 17 Flags frames
 a17q1Flag.gotoAndStop(10);
 b17q2Flag.gotoAndStop(10);
 c17q3Flag.gotoAndStop(10);
 d17q4Flag.gotoAndStop(10);
 e17q5Flag.gotoAndStop(10);
 f17q6Flag.gotoAndStop(10);
 g17q7Flag.gotoAndStop(10);
 h17q8Flag.gotoAndStop(10);
 i17q9Flag.gotoAndStop(10);
 j17q10Flag.gotoAndStop(10);
 k17q11Flag.gotoAndStop(10);
 l17q12Flag.gotoAndStop(10);
 m17q13Flag.gotoAndStop(10);
 n17q14Flag.gotoAndStop(10);
 o17q15Flag.gotoAndStop(10);
 p17q16Flag.gotoAndStop(10);
 q17q17Flag.gotoAndStop(10);
 r17q18Flag.gotoAndStop(10);

//row 18 Flags frames
 a18r1Flag.gotoAndStop(10);
 b18r2Flag.gotoAndStop(10);
 c18r3Flag.gotoAndStop(10);
 d18r4Flag.gotoAndStop(10);
 e18r5Flag.gotoAndStop(10);
 f18r6Flag.gotoAndStop(10);
 g18r7Flag.gotoAndStop(10);
 h18r8Flag.gotoAndStop(10);
 i18r9Flag.gotoAndStop(10);
 j18r10Flag.gotoAndStop(10);
 k18r11Flag.gotoAndStop(10);
 l18r12Flag.gotoAndStop(10);
 m18r13Flag.gotoAndStop(10);
 n18r14Flag.gotoAndStop(10);
 o18r15Flag.gotoAndStop(10);
 p18r16Flag.gotoAndStop(10);
 q18r17Flag.gotoAndStop(10);
 r18r18Flag.gotoAndStop(10);



stage.addEventListener(Event.ENTER_FRAME, checkBombs);
var bombChild:MovieClip
function checkBombs(e:Event):void
{
	bombChild = new bombNums() as MovieClip;
	stage.addEventListener(Event.ENTER_FRAME, getRandomElementOf);
	function getRandomElementOf():MovieClip
	{
		 return hitArray[Math.floor(Math.random()*hitArray.length)];
		 
	}
	placeBomb = getRandomElementOf();

	switch (placeBomb.name)
	{
		//row 1 1a
		case "a1a1":
		if (checka1a1 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checka1a1 = true;
			b1a2.nextFrame();
			b2b2.nextFrame();
			a2b1.nextFrame();
			bombsPushed.push(bombChild);
		}
		break;
		
		case "b1a2":
		if (checkb1a2 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkb1a2 = true;
			a1a1.nextFrame();
			c1a3.nextFrame();
			b2b2.nextFrame();
			a2b1.nextFrame();
			c2b3.nextFrame();
			bombsPushed.push(bombChild);
		}
		break;
		
		case "c1a3":
		if (checkc1a3 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkc1a3 = true;
			b1a2.nextFrame();
			b2b2.nextFrame();
			c2b3.nextFrame();
			d2b4.nextFrame();
			d1a4.nextFrame();
			bombsPushed.push(bombChild);
		}
		break;
		
		case "d1a4":
		if (checkd1a4 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkd1a4 = true;
			c1a3.nextFrame();
			c2b3.nextFrame();
			d2b4.nextFrame();
			e2b5.nextFrame();
			e1a5.nextFrame();
			bombsPushed.push(bombChild);
		}
		break;
		
		case "e1a5":
		if (checke1a5 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checke1a5 = true;
			d1a4.nextFrame();
			f1a6.nextFrame();
			f2b6.nextFrame();
			e2b5.nextFrame();
			d2b4.nextFrame();
			bombsPushed.push(bombChild);
		}
		break;
		
		case "f1a6":
		if (checkf1a6 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkf1a6 = true;
			e1a5.nextFrame();
			g1a7.nextFrame();
			e2b5.nextFrame();
			g2b7.nextFrame();
			f2b6.nextFrame();
			bombsPushed.push(bombChild);
		}
		break;
		
		case "g1a7":
		if (checkg1a7 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkg1a7 = true;
			f1a6.nextFrame();
			f2b6.nextFrame();
			g2b7.nextFrame();
			h1a8.nextFrame();
			h2b8.nextFrame();
			bombsPushed.push(bombChild);
		}
		break;
		
		case "h1a8":
		if (checkh1a8 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkh1a8 = true;
			g1a7.nextFrame();
			g2b7.nextFrame();
			h2b8.nextFrame();
			i1a9.nextFrame();
			i2b9.nextFrame();
			bombsPushed.push(bombChild);
		}
		break;
		
		case "i1a9":
		if (checki1a9 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checki1a9 = true;
			h1a8.nextFrame();
			h2b8.nextFrame();
			i2b9.nextFrame();
			j1a10.nextFrame();
			j2b10.nextFrame();
			bombsPushed.push(bombChild);
		}
		break;
		
		case "j1a10":
		if (checkj1a10 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkj1a10 = true;
			i1a9.nextFrame();
			i2b9.nextFrame();
			j2b10.nextFrame();
			k1a11.nextFrame();
			k2b11.nextFrame();
			bombsPushed.push(bombChild);
		}
		break;
		
		case "k1a11":
		if (checkk1a11 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkk1a11 = true;
			j1a10.nextFrame();
			j2b10.nextFrame();
			k2b11.nextFrame();
			l1a12.nextFrame();
			l2b12.nextFrame();
			bombsPushed.push(bombChild);
		}
		break;
		
		case "l1a12":
		if (checkl1a12 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkl1a12 = true;
			k1a11.nextFrame();
			k2b11.nextFrame();
			l2b12.nextFrame();
			m1a13.nextFrame();
			m2b13.nextFrame();
			bombsPushed.push(bombChild);
		}
		break;
		
		case "m1a13":
		if (checkm1a13 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkm1a13 = true;
			l1a12.nextFrame();
			l2b12.nextFrame();
			m2b13.nextFrame();
			n1a14.nextFrame();
			n2b14.nextFrame();
			bombsPushed.push(bombChild);
		}
		break;
		
		case "n1a14":
		if (checkn1a14 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkn1a14 = true;
			m1a13.nextFrame();
			m2b13.nextFrame();
			n2b14.nextFrame();
			o1a15.nextFrame();
			o2b15.nextFrame();
			bombsPushed.push(bombChild);
		}
		break;
		
		case "o1a15":
		if (checko1a15 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checko1a15 = true;
			n1a14.nextFrame();
			n2b14.nextFrame();
			o2b15.nextFrame();
			p1a16.nextFrame();
			p2b16.nextFrame();
			bombsPushed.push(bombChild);
		}
		break;
		
		case "p1a16":
		if (checkp1a16 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkp1a16 = true;
			o1a15.nextFrame();
			o2b15.nextFrame();
			p2b16.nextFrame();
			q1a17.nextFrame();
			q2b17.nextFrame();
			bombsPushed.push(bombChild);
		}
		break;
		
		case "q1a17":
		if (checkq1a17 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkq1a17 = true;
			p1a16.nextFrame();
			p2b16.nextFrame();
			q2b17.nextFrame();
			r1a18.nextFrame();
			r2b18.nextFrame();
			bombsPushed.push(bombChild);
		}
		break;
		
		case "r1a18":
		if (checkr1a18 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkr1a18 = true;
			q1a17.nextFrame();
			q2b17.nextFrame();
			r2b18.nextFrame();
			bombsPushed.push(bombChild);
		}
		break;
		
		//row 2 2b
		case "a2b1":
		if (checka2b1 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checka2b1 = true;
			bombsPushed.push(bombChild);
			a1a1.nextFrame();
			b1a2.nextFrame();
			b2b2.nextFrame();
			b3c2.nextFrame();
			a3c1.nextFrame();

		}
		break;
		
		case "b2b2":
		if (checkb2b2 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkb2b2 = true;
			bombsPushed.push(bombChild);
			a1a1.nextFrame();
			b1a2.nextFrame();
			c1a3.nextFrame();
			a2b1.nextFrame();
			c2b3.nextFrame();
			a3c1.nextFrame();
			b3c2.nextFrame();
			c3c3.nextFrame();
		}
		break;
		
		case "c2b3":
		if (checkc2b3 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkc2b3 = true;
			bombsPushed.push(bombChild);
			b1a2.nextFrame();
			b2b2.nextFrame();
			b3c2.nextFrame();
			c1a3.nextFrame();
			c3c3.nextFrame();
			d1a4.nextFrame();
			d2b4.nextFrame();
			d3c4.nextFrame();
			
		}
		break;
		
		case "d2b4":
		if (checkd2b4 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkd2b4 = true;
			bombsPushed.push(bombChild);
			c1a3.nextFrame();
			c2b3.nextFrame();
			c3c3.nextFrame();
			d1a4.nextFrame();
			d3c4.nextFrame();
			e1a5.nextFrame();
			e2b5.nextFrame();
			e3c5.nextFrame();
		}
		break;
		
		case "e2b5":
		if (checke2b5 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checke2b5 = true;
			bombsPushed.push(bombChild);
			d1a4.nextFrame();
			d2b4.nextFrame();
			d3c4.nextFrame();
			e1a5.nextFrame();
			e3c5.nextFrame();
			f1a6.nextFrame();
			f2b6.nextFrame();
			f3c6.nextFrame();
		}
		break;
		
		case "f2b6":
		if (checkf2b6 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkf2b6 = true;
			bombsPushed.push(bombChild);
			e1a5.nextFrame();
			e2b5.nextFrame();
			e3c5.nextFrame();
			f1a6.nextFrame();
			f3c6.nextFrame();
			g1a7.nextFrame();
			g2b7.nextFrame();
			g3c7.nextFrame();
		}
		break;
		
		case "g2b7":
		if (checkg2b7 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkg2b7 = true;
			bombsPushed.push(bombChild);
			f1a6.nextFrame();
			f2b6.nextFrame();
			f3c6.nextFrame();
			g1a7.nextFrame();
			g3c7.nextFrame();
			h1a8.nextFrame();
			h2b8.nextFrame();
			h3c8.nextFrame();
		}
		break;
		
		case "h2b8":
		if (checkh2b8 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkh2b8 = true;
			bombsPushed.push(bombChild);
			g1a7.nextFrame();
			g2b7.nextFrame();
			g3c7.nextFrame();
			h1a8.nextFrame();
			h3c8.nextFrame();
			i1a9.nextFrame();
			i2b9.nextFrame();
			i3c9.nextFrame();
		}
		break;
		
		case "i2b9":
		if (checki2b9 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checki2b9 = true;
			bombsPushed.push(bombChild);
			h1a8.nextFrame();
			h2b8.nextFrame();
			h3c8.nextFrame();
			i1a9.nextFrame();
			i3c9.nextFrame();
			j1a10.nextFrame();
			j2b10.nextFrame();
			j3c10.nextFrame();
		}
		break;
		
		case "j2b10":
		if (checkj2b10 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkj2b10 = true;
			bombsPushed.push(bombChild);
			i1a9.nextFrame();
			i2b9.nextFrame();
			i3c9.nextFrame();
			j1a10.nextFrame();
			j3c10.nextFrame();
			k1a11.nextFrame();
			k2b11.nextFrame();
			k3c11.nextFrame();
		}
		break;
		
		case "k2b11":
		if (checkk2b11 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkk2b11 = true;
			bombsPushed.push(bombChild);
			j1a10.nextFrame();
			j2b10.nextFrame();
			j3c10.nextFrame();
			k1a11.nextFrame();
			k3c11.nextFrame();
			l1a12.nextFrame();
			l2b12.nextFrame();
			l3c12.nextFrame();
		}
		break;
		
		case "l2b12":
		if (checkl2b12 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkl2b12 = true;
			bombsPushed.push(bombChild);
			k1a11.nextFrame();
			k2b11.nextFrame();
			k3c11.nextFrame();
			l1a12.nextFrame();
			l3c12.nextFrame();
			m1a13.nextFrame();
			m2b13.nextFrame();
			m3c13.nextFrame();
		}
		break;
		
		case "m2b13":
		if (checkm2b13 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkm2b13 = true;
			bombsPushed.push(bombChild);
			l1a12.nextFrame();
			l2b12.nextFrame();
			l3c12.nextFrame();
			m1a13.nextFrame();
			m3c13.nextFrame();
			n1a14.nextFrame();
			n2b14.nextFrame();
			n3c14.nextFrame();
		}
		break;
		
		case "n2b14":
		if (checkn2b14 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkn2b14 = true;
			bombsPushed.push(bombChild);
			m1a13.nextFrame();
			m2b13.nextFrame();
			m3c13.nextFrame();
			n1a14.nextFrame();
			n3c14.nextFrame();
			o1a15.nextFrame();
			o2b15.nextFrame();
			o3c15.nextFrame();
		}
		break;
		
		case "o2b15":
		if (checko2b15 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checko2b15 = true;
			bombsPushed.push(bombChild);
			n1a14.nextFrame();
			n2b14.nextFrame();
			n3c14.nextFrame();
			o1a15.nextFrame();
			o3c15.nextFrame();
			p1a16.nextFrame();
			p2b16.nextFrame();
			p3c16.nextFrame();
		}
		break;
		
		case "p2b16":
		if (checkp2b16 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkp2b16 = true;
			bombsPushed.push(bombChild);
			o1a15.nextFrame();
			o2b15.nextFrame();
			o3c15.nextFrame();
			p1a16.nextFrame();
			p3c16.nextFrame();
			q1a17.nextFrame();
			q2b17.nextFrame();
			q3c17.nextFrame();
		}
		break;
		
		case "q2b17":
		if (checkq2b17 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkq2b17 = true;
			bombsPushed.push(bombChild);
			p1a16.nextFrame();
			p2b16.nextFrame();
			p3c16.nextFrame();
			q1a17.nextFrame();
			q3c17.nextFrame();
			r1a18.nextFrame();
			r2b18.nextFrame();
			r3c18.nextFrame();
		}
		break;
		
		case "r2b18":
		if (checkr2b18 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkr2b18 = true;
			bombsPushed.push(bombChild);
			q1a17.nextFrame();
			q2b17.nextFrame();
			q3c17.nextFrame();
			r1a18.nextFrame();
			r3c18.nextFrame();
		}
		break;
		
		//row 3 3c
		case "a3c1":
		if (checka3c1 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checka3c1 = true;
			a2b1.nextFrame();
			b2b2.nextFrame();
			b3c2.nextFrame();
			b4d2.nextFrame();
			a4d1.nextFrame();
			bombsPushed.push(bombChild);
		}
		break;
		
		case "b3c2":
		if (checkb3c2 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkb3c2 = true;
			a2b1.nextFrame();
			a3c1.nextFrame();
			a4d1.nextFrame();
			b2b2.nextFrame();
			b4d2.nextFrame();
			c2b3.nextFrame();
			c3c3.nextFrame();
			c4d3.nextFrame();
			bombsPushed.push(bombChild);
		}
		break;
		
		case "c3c3":
		if (checkc3c3 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkc3c3 = true;
			b2b2.nextFrame();
			b3c2.nextFrame();
			b4d2.nextFrame();
			c2b3.nextFrame();
			c4d3.nextFrame();
			d2b4.nextFrame();
			d3c4.nextFrame();
			d4d4.nextFrame();
			bombsPushed.push(bombChild);
		}
		break;
		
		case "d3c4":
		if (checkd3c4 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkd3c4 = true;
			c2b3.nextFrame();
			c3c3.nextFrame();
			c4d3.nextFrame();
			d2b4.nextFrame();
			d4d4.nextFrame();
			e2b5.nextFrame();
			e3c5.nextFrame();
			e4d5.nextFrame();
			bombsPushed.push(bombChild);
		}
		break;
		
		case "e3c5":
		if (checke3c5 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checke3c5 = true;
			d2b4.nextFrame();
			d3c4.nextFrame();
			d4d4.nextFrame();
			e2b5.nextFrame();
			e4d5.nextFrame();
			f2b6.nextFrame();
			f3c6.nextFrame();
			f4d6.nextFrame();
			bombsPushed.push(bombChild);
		}
		break;
		
		case "f3c6":
		if (checkf3c6 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkf3c6 = true;
			e2b5.nextFrame();
			e3c5.nextFrame();
			e4d5.nextFrame();
			f2b6.nextFrame();
			f4d6.nextFrame();
			g2b7.nextFrame();
			g3c7.nextFrame();
			g4d7.nextFrame();
			bombsPushed.push(bombChild);
		}
		break;
		
		case "g3c7":
		if (checkg3c7 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkg3c7 = true;
			f2b6.nextFrame();
			f3c6.nextFrame();
			f4d6.nextFrame();
			g2b7.nextFrame();
			g4d7.nextFrame();
			h2b8.nextFrame();
			h3c8.nextFrame();
			h4d8.nextFrame();
			bombsPushed.push(bombChild);
		}
		break;
		
		case "h3c8":
		if (checkh3c8 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkh3c8 = true;
			g2b7.nextFrame();
			g3c7.nextFrame();
			g4d7.nextFrame();
			h2b8.nextFrame();
			h4d8.nextFrame();
			i2b9.nextFrame();
			i3c9.nextFrame();
			i4d9.nextFrame();
			bombsPushed.push(bombChild);
		}
		break;
		
		case "i3c9":
		if (checki3c9 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checki3c9 = true;
			h2b8.nextFrame();
			h3c8.nextFrame();
			h4d8.nextFrame();
			i2b9.nextFrame();
			i4d9.nextFrame();
			j2b10.nextFrame();
			j3c10.nextFrame();
			j4d10.nextFrame();
			bombsPushed.push(bombChild);
		}
		break;
		
		case "j3c10":
		if (checkj3c10 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkj3c10 = true;
			i2b9.nextFrame();
			i3c9.nextFrame();
			i4d9.nextFrame();
			j2b10.nextFrame();
			j4d10.nextFrame();
			k2b11.nextFrame();
			k3c11.nextFrame();
			k4d11.nextFrame();
			bombsPushed.push(bombChild);
		}
		break;
		
		case "k3c11":
		if (checkk3c11 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkk3c11 = true;
			j2b10.nextFrame();
			j3c10.nextFrame();
			j4d10.nextFrame();
			k2b11.nextFrame();
			k4d11.nextFrame();
			l2b12.nextFrame();
			l3c12.nextFrame();
			l4d12.nextFrame();
			bombsPushed.push(bombChild);
		}
		break;
		
		case "l3c12":
		if (checkl3c12 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkl3c12 = true;
			k2b11.nextFrame();
			k3c11.nextFrame();
			k4d11.nextFrame();
			l2b12.nextFrame();
			l4d12.nextFrame();
			m2b13.nextFrame();
			m3c13.nextFrame();
			m4d13.nextFrame();
			bombsPushed.push(bombChild);
		}
		break;
		
		case "m3c13":
		if (checkm3c13 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkm3c13 = true;
			l2b12.nextFrame();
			l3c12.nextFrame();
			l4d12.nextFrame();
			m2b13.nextFrame();
			m4d13.nextFrame();
			n2b14.nextFrame();
			n3c14.nextFrame();
			n4d14.nextFrame();
			bombsPushed.push(bombChild);
		}
		break;
		
		case "n3c14":
		if (checkn3c14 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkn3c14 = true;
			m2b13.nextFrame();
			m3c13.nextFrame();
			m4d13.nextFrame();
			n2b14.nextFrame();
			n4d14.nextFrame();
			o2b15.nextFrame();
			o3c15.nextFrame();
			o4d15.nextFrame();
			bombsPushed.push(bombChild);
		}
		break;
		
		case "o3c15":
		if (checko3c15 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checko3c15 = true;
			n2b14.nextFrame();
			n3c14.nextFrame();
			n4d14.nextFrame();
			o2b15.nextFrame();
			o4d15.nextFrame();
			p2b16.nextFrame();
			p3c16.nextFrame();
			p4d16.nextFrame();
			bombsPushed.push(bombChild);
		}
		break;
		
		case "p3c16":
		if (checkp3c16 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkp3c16 = true;
			o2b15.nextFrame();
			o3c15.nextFrame();
			o4d15.nextFrame();
			p2b16.nextFrame();
			p4d16.nextFrame();
			q2b17.nextFrame();
			q3c17.nextFrame();
			q4d17.nextFrame();
			bombsPushed.push(bombChild);
		}
		break;
		
		case "q3c17":
		if (checkq3c17 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkq3c17 = true;
			p2b16.nextFrame();
			p3c16.nextFrame();
			p4d16.nextFrame();
			q2b17.nextFrame();
			q4d17.nextFrame();
			r2b18.nextFrame();
			r3c18.nextFrame();
			r4d18.nextFrame();
			bombsPushed.push(bombChild);
		}
		break;
		
		case "r3c18":
		if (checkr3c18 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkr3c18 = true;
			q2b17.nextFrame();
			q3c17.nextFrame();
			q4d17.nextFrame();
			r2b18.nextFrame();
			r4d18.nextFrame();
			bombsPushed.push(bombChild);
		}
		break;
		
		//row 4 4d
		case "a4d1":
		if (checka4d1 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checka4d1 = true;
			bombsPushed.push(bombChild);
			a3c1.nextFrame();
			a5e1.nextFrame();
			b3c2.nextFrame();
			b4d2.nextFrame();
			b5e2.nextFrame();
		}
		break;
		
		case "b4d2":
		if (checkb4d2 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkb4d2 = true;
			bombsPushed.push(bombChild);
			a3c1.nextFrame();
			a4d1.nextFrame();
			a5e1.nextFrame();
			b3c2.nextFrame();
			b5e2.nextFrame();
			c3c3.nextFrame();
			c4d3.nextFrame();
			c5e3.nextFrame();
		}
		break;
		
		case "c4d3":
		if (checkc4d3 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkc4d3 = true;
			bombsPushed.push(bombChild);
			b3c2.nextFrame();
			b4d2.nextFrame();
			b5e2.nextFrame();
			c3c3.nextFrame();
			c5e3.nextFrame();
			d3c4.nextFrame();
			d4d4.nextFrame();
			d5e4.nextFrame();
		}
		break;
		
		case "d4d4":
		if (checkd4d4 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkd4d4 = true;
			bombsPushed.push(bombChild);
			c3c3.nextFrame();
			c4d3.nextFrame();
			c5e3.nextFrame();
			d3c4.nextFrame();
			d5e4.nextFrame();
			e3c5.nextFrame();
			e4d5.nextFrame();
			e5e5.nextFrame();
		}
		break;
		
		case "e4d5":
		if (checke4d5 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checke4d5 = true;
			bombsPushed.push(bombChild);
			d3c4.nextFrame();
			d4d4.nextFrame();
			d5e4.nextFrame();
			e3c5.nextFrame();
			e5e5.nextFrame();
			f3c6.nextFrame();
			f4d6.nextFrame();
			f5e6.nextFrame();
		}
		break;
		
		case "f4d6":
		if (checkf4d6 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkf4d6 = true;
			bombsPushed.push(bombChild);
			e3c5.nextFrame();
			e4d5.nextFrame();
			e5e5.nextFrame();
			f3c6.nextFrame();
			f5e6.nextFrame();
			g3c7.nextFrame();
			g4d7.nextFrame();
			g5e7.nextFrame();
		}
		break;
		
		case "g4d7":
		if (checkg4d7 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkg4d7 = true;
			bombsPushed.push(bombChild);
			f3c6.nextFrame();
			f4d6.nextFrame();
			f5e6.nextFrame();
			g3c7.nextFrame();
			g5e7.nextFrame();
			h3c8.nextFrame();
			h4d8.nextFrame();
			h5e8.nextFrame();
		}
		break;
		
		case "h4d8":
		if (checkh4d8 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkh4d8 = true;
			bombsPushed.push(bombChild);
			g3c7.nextFrame();
			g4d7.nextFrame();
			g5e7.nextFrame();
			h3c8.nextFrame();
			h5e8.nextFrame();
			i3c9.nextFrame();
			i4d9.nextFrame();
			i5e9.nextFrame();
		}
		break;
		
		case "i4d9":
		if (checki4d9 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checki4d9 = true;
			bombsPushed.push(bombChild);
			h3c8.nextFrame();
			h4d8.nextFrame();
			h5e8.nextFrame();
			i3c9.nextFrame();
			i5e9.nextFrame();
			j3c10.nextFrame();
			j4d10.nextFrame();
			j5e10.nextFrame();
		}
		break;
		
		case "j4d10":
		if (checkj4d10 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkj4d10 = true;
			bombsPushed.push(bombChild);
			i3c9.nextFrame();
			i4d9.nextFrame();
			i5e9.nextFrame();
			j3c10.nextFrame();
			j5e10.nextFrame();
			k3c11.nextFrame();
			k4d11.nextFrame();
			k5e11.nextFrame();
		}
		break;
		
		case "k4d11":
		if (checkk4d11 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkk4d11 = true;
			bombsPushed.push(bombChild);
			j3c10.nextFrame();
			j4d10.nextFrame();
			j5e10.nextFrame();
			k3c11.nextFrame();
			k5e11.nextFrame();
			l3c12.nextFrame();
			l4d12.nextFrame();
			l5e12.nextFrame();
		}
		break;
		
		case "l4d12":
		if (checkl4d12 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkl4d12 = true;
			bombsPushed.push(bombChild);
			k3c11.nextFrame();
			k4d11.nextFrame();
			k5e11.nextFrame();
			l3c12.nextFrame();
			l5e12.nextFrame();
			m3c13.nextFrame();
			m4d13.nextFrame();
			m5e13.nextFrame();
		}
		break;
		
		case "m4d13":
		if (checkm4d13 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkm4d13 = true;
			bombsPushed.push(bombChild);
			l3c12.nextFrame();
			l4d12.nextFrame();
			l5e12.nextFrame();
			m3c13.nextFrame();
			m5e13.nextFrame();
			n3c14.nextFrame();
			n4d14.nextFrame();
			n5e14.nextFrame();
		}
		break;
		
		case "n4d14":
		if (checkn4d14 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkn4d14 = true;
			bombsPushed.push(bombChild);
			m3c13.nextFrame();
			m4d13.nextFrame();
			m5e13.nextFrame();
			n3c14.nextFrame();
			n5e14.nextFrame();
			o3c15.nextFrame();
			o4d15.nextFrame();
			o5e15.nextFrame();
		}
		break;
		
		case "o4d15":
		if (checko4d15 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checko4d15 = true;
			bombsPushed.push(bombChild);
			n3c14.nextFrame();
			n4d14.nextFrame();
			n5e14.nextFrame();
			o3c15.nextFrame();
			o5e15.nextFrame();
			p3c16.nextFrame();
			p4d16.nextFrame();
			p5e16.nextFrame();
		}
		break;
		
		case "p4d16":
		if (checkp4d16 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkp4d16 = true;
			bombsPushed.push(bombChild);
			o3c15.nextFrame();
			o4d15.nextFrame();
			o5e15.nextFrame();
			p3c16.nextFrame();
			p5e16.nextFrame();
			q3c17.nextFrame();
			q4d17.nextFrame();
			q5e17.nextFrame();
		}
		break;
		
		case "q4d17":
		if (checkq4d17 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkq4d17 = true;
			bombsPushed.push(bombChild);
			p3c16.nextFrame();
			p4d16.nextFrame();
			p5e16.nextFrame();
			q3c17.nextFrame();
			q5e17.nextFrame();
			r3c18.nextFrame();
			r4d18.nextFrame();
			r5e18.nextFrame();
		}
		break;
		
		case "r4d18":
		if (checkr4d18 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkr4d18 = true;
			bombsPushed.push(bombChild);
			q3c17.nextFrame();
			q4d17.nextFrame();
			q5e17.nextFrame();
			r3c18.nextFrame();
			r5e18.nextFrame();
		}
		break;
	
		//row 5 5e
		case "a5e1":
		if (checka5e1 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checka5e1 = true;
			bombsPushed.push(bombChild);
			a4d1.nextFrame();
			a6f1.nextFrame();
			b4d2.nextFrame();
			b5e2.nextFrame();
			b6f2.nextFrame();
		}
		break;
		
		case "b5e2":
		if (checkb5e2 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkb5e2 = true;
			bombsPushed.push(bombChild);
			a4d1.nextFrame();
			a5e1.nextFrame();
			a6f1.nextFrame();
			b4d2.nextFrame();
			b6f2.nextFrame();
			c4d3.nextFrame();
			c5e3.nextFrame();
			c6f3.nextFrame();
		}
		break;
		
		case "c5e3":
		if (checkc5e3 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkc5e3 = true;
			bombsPushed.push(bombChild);
			b4d2.nextFrame();
			b5e2.nextFrame();
			b6f2.nextFrame();
			c4d3.nextFrame();
			c6f3.nextFrame();
			d4d4.nextFrame();
			d5e4.nextFrame();
			d6f4.nextFrame();
		}
		break;
		
		case "d5e4":
		if (checkd5e4 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkd5e4 = true;
			bombsPushed.push(bombChild);
			c4d3.nextFrame();
			c5e3.nextFrame();
			c6f3.nextFrame();
			d4d4.nextFrame();
			d6f4.nextFrame();
			e4d5.nextFrame();
			e5e5.nextFrame();
			e6f5.nextFrame();
		}
		break;
		
		case "e5e5":
		if (checke5e5 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checke5e5 = true;
			bombsPushed.push(bombChild);
			d4d4.nextFrame();
			d5e4.nextFrame();
			d6f4.nextFrame();
			e4d5.nextFrame();
			e6f5.nextFrame();
			f4d6.nextFrame();
			f5e6.nextFrame();
			f6f6.nextFrame();
		}
		break;
		
		case "f5e6":
		if (checkf5e6 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkf5e6 = true;
			bombsPushed.push(bombChild);
			e4d5.nextFrame();
			e5e5.nextFrame();
			e6f5.nextFrame();
			f4d6.nextFrame();
			f6f6.nextFrame();
			g4d7.nextFrame();
			g5e7.nextFrame();
			g6f7.nextFrame();
		}
		break;
		
		case "g5e7":
		if (checkg5e7 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkg5e7 = true;
			bombsPushed.push(bombChild);
			f4d6.nextFrame();
			f5e6.nextFrame();
			f6f6.nextFrame();
			g4d7.nextFrame();
			g6f7.nextFrame();
			h4d8.nextFrame();
			h5e8.nextFrame();
			h6f8.nextFrame();
		}
		break;
		
		case "h5e8":
		if (checkh5e8 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkh5e8 = true;
			bombsPushed.push(bombChild);
			g4d7.nextFrame();
			g5e7.nextFrame();
			g6f7.nextFrame();
			h4d8.nextFrame();
			h6f8.nextFrame();
			i4d9.nextFrame();
			i5e9.nextFrame();
			i6f9.nextFrame();
		}
		break;
		
		case "i5e9":
		if (checki5e9 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checki5e9 = true;
			bombsPushed.push(bombChild);
			h4d8.nextFrame();
			h5e8.nextFrame();
			h6f8.nextFrame();
			i4d9.nextFrame();
			i6f9.nextFrame();
			j4d10.nextFrame();
			j5e10.nextFrame();
			j6f10.nextFrame();
		}
		break;
		
		case "j5e10":
		if (checkj5e10 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkj5e10 = true;
			bombsPushed.push(bombChild);
			i4d9.nextFrame();
			i5e9.nextFrame();
			i6f9.nextFrame();
			j4d10.nextFrame();
			j6f10.nextFrame();
			k4d11.nextFrame();
			k5e11.nextFrame();
			k6f11.nextFrame();
		}
		break;
		
		case "k5e11":
		if (checkk5e11 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkk5e11 = true;
			bombsPushed.push(bombChild);
			j4d10.nextFrame();
			j5e10.nextFrame();
			j6f10.nextFrame();
			k4d11.nextFrame();
			k6f11.nextFrame();
			l4d12.nextFrame();
			l5e12.nextFrame();
			l6f12.nextFrame();
		}
		break;
		
		case "l5e12":
		if (checkl5e12 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkl5e12 = true;
			bombsPushed.push(bombChild);
			k4d11.nextFrame();
			k5e11.nextFrame();
			k6f11.nextFrame();
			l4d12.nextFrame();
			l6f12.nextFrame();
			m4d13.nextFrame();
			m5e13.nextFrame();
			m6f13.nextFrame();
		}
		break;
		
		case "m5e13":
		if (checkm5e13 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkm5e13 = true;
			bombsPushed.push(bombChild);
			l4d12.nextFrame();
			l5e12.nextFrame();
			l6f12.nextFrame();
			m4d13.nextFrame();
			m6f13.nextFrame();
			n4d14.nextFrame();
			n5e14.nextFrame();
			n6f14.nextFrame();
		}
		break;
		
		case "n5e14":
		if (checkn5e14 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkn5e14 = true;
			bombsPushed.push(bombChild);
			m4d13.nextFrame();
			m5e13.nextFrame();
			m6f13.nextFrame();
			n4d14.nextFrame();
			n6f14.nextFrame();
			o4d15.nextFrame();
			o5e15.nextFrame();
			o6f15.nextFrame();
		}
		break;
		
		case "o5e15":
		if (checko5e15 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checko5e15 = true;
			bombsPushed.push(bombChild);
			n4d14.nextFrame();
			n5e14.nextFrame();
			n6f14.nextFrame();
			o4d15.nextFrame();
			o6f15.nextFrame();
			p4d16.nextFrame();
			p5e16.nextFrame();
			p6f16.nextFrame();
		}
		break;
		
		case "p5e16":
		if (checkp5e16 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkp5e16 = true;
			bombsPushed.push(bombChild);
			o4d15.nextFrame();
			o5e15.nextFrame();
			o6f15.nextFrame();
			p4d16.nextFrame();
			p6f16.nextFrame();
			q4d17.nextFrame();
			q5e17.nextFrame();
			q6f17.nextFrame();
		}
		break;
		
		case "q5e17":
		if (checkq5e17 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkq5e17 = true;
			bombsPushed.push(bombChild);
			p4d16.nextFrame();
			p5e16.nextFrame();
			p6f16.nextFrame();
			q4d17.nextFrame();
			q6f17.nextFrame();
			r4d18.nextFrame();
			r5e18.nextFrame();
			r6f18.nextFrame();
		}
		break;
		
		case "r5e18":
		if (checkr5e18 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkr5e18 = true;
			bombsPushed.push(bombChild);
			q4d17.nextFrame();
			q5e17.nextFrame();
			q6f17.nextFrame();
			r4d18.nextFrame();
			r6f18.nextFrame();
		}
		break;
		
		//row 6 6f
		case "a6f1":
		if (checka6f1 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checka6f1 = true;
			bombsPushed.push(bombChild);
			b5e2.nextFrame();
			b6f2.nextFrame();
			b7g2.nextFrame();
			a5e1.nextFrame();
			a7g1.nextFrame();
		}
		break;
		
		case "b6f2":
		if (checkb6f2 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkb6f2 = true;
			bombsPushed.push(bombChild);
			a5e1.nextFrame();
			a6f1.nextFrame();
			a7g1.nextFrame();
			b5e2.nextFrame();
			b7g2.nextFrame();
			c5e3.nextFrame();
			c6f3.nextFrame();
			c7g3.nextFrame();
			
		}
		break;
		
		case "c6f3":
		if (checkc6f3 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkc6f3 = true;
			bombsPushed.push(bombChild);
			b5e2.nextFrame();
			b6f2.nextFrame();
			b7g2.nextFrame();
			c5e3.nextFrame();
			c7g3.nextFrame();
			d5e4.nextFrame();
			d6f4.nextFrame();
			d7g4.nextFrame();
		}
		break;
		
		case "d6f4":
		if (checkd6f4 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkd6f4 = true;
			bombsPushed.push(bombChild);
			c5e3.nextFrame();
			c6f3.nextFrame();
			c7g3.nextFrame();
			d5e4.nextFrame();
			d7g4.nextFrame();
			e5e5.nextFrame();
			e6f5.nextFrame();
			e7g5.nextFrame();
		}
		break;
		
		case "e6f5":
		if (checke6f5 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checke6f5 = true;
			bombsPushed.push(bombChild);
			d5e4.nextFrame();
			d6f4.nextFrame();
			d7g4.nextFrame();
			e5e5.nextFrame();
			e7g5.nextFrame();
			f5e6.nextFrame();
			f6f6.nextFrame();
			f7g6.nextFrame();
		}
		break;
		
		case "f6f6":
		if (checkf6f6 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkf6f6 = true;
			bombsPushed.push(bombChild);
			e5e5.nextFrame();
			e6f5.nextFrame();
			e7g5.nextFrame();
			f5e6.nextFrame();
			f7g6.nextFrame();
			g5e7.nextFrame();
			g6f7.nextFrame();
			g7g7.nextFrame();
		}
		break;
		
		case "g6f7":
		if (checkg6f7 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkg6f7 = true;
			bombsPushed.push(bombChild);
			f5e6.nextFrame();
			f6f6.nextFrame();
			f7g6.nextFrame();
			g5e7.nextFrame();
			g7g7.nextFrame();
			h5e8.nextFrame();
			h6f8.nextFrame();
			h7g8.nextFrame();
		}
		break;
		
		case "h6f8":
		if (checkh6f8 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkh6f8 = true;
			bombsPushed.push(bombChild);
			g5e7.nextFrame();
			g6f7.nextFrame();
			g7g7.nextFrame();
			h5e8.nextFrame();
			h7g8.nextFrame();
			i5e9.nextFrame();
			i6f9.nextFrame();
			i7g9.nextFrame();
		}
		break;
		
		case "i6f9":
		if (checki6f9 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checki6f9 = true;
			bombsPushed.push(bombChild);
			h5e8.nextFrame();
			h6f8.nextFrame();
			h7g8.nextFrame();
			i5e9.nextFrame();
			i7g9.nextFrame();
			j5e10.nextFrame();
			j6f10.nextFrame();
			j7g10.nextFrame();
		}
		break;
		
		case "j6f10":
		if (checkj6f10 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkj6f10 = true;
			bombsPushed.push(bombChild);
			i5e9.nextFrame();
			i6f9.nextFrame();
			i7g9.nextFrame();
			j5e10.nextFrame();
			j7g10.nextFrame();
			k5e11.nextFrame();
			k6f11.nextFrame();
			k7g11.nextFrame();
		}
		break;
		
		case "k6f11":
		if (checkk6f11 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkk6f11 = true;
			bombsPushed.push(bombChild);
			j5e10.nextFrame();
			j6f10.nextFrame();
			j7g10.nextFrame();
			k5e11.nextFrame();
			k7g11.nextFrame();
			l5e12.nextFrame();
			l6f12.nextFrame();
			l7g12.nextFrame();
		}
		break;
		
		case "l6f12":
		if (checkl6f12 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkl6f12 = true;
			bombsPushed.push(bombChild);
			k5e11.nextFrame();
			k6f11.nextFrame();
			k7g11.nextFrame();
			l5e12.nextFrame();
			l7g12.nextFrame();
			m5e13.nextFrame();
			m6f13.nextFrame();
			m7g13.nextFrame();
		}
		break;
		
		case "m6f13":
		if (checkm6f13 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkm6f13 = true;
			bombsPushed.push(bombChild);
			l5e12.nextFrame();
			l6f12.nextFrame();
			l7g12.nextFrame();
			m5e13.nextFrame();
			m7g13.nextFrame();
			n5e14.nextFrame();
			n6f14.nextFrame();
			n7g14.nextFrame();
		}
		break;
		
		case "n6f14":
		if (checkn6f14 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkn6f14 = true;
			bombsPushed.push(bombChild);
			m5e13.nextFrame();
			m6f13.nextFrame();
			m7g13.nextFrame();
			n5e14.nextFrame();
			n7g14.nextFrame();
			o5e15.nextFrame();
			o6f15.nextFrame();
			o7g15.nextFrame();
		}
		break;
		
		case "o6f15":
		if (checko6f15 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checko6f15 = true;
			bombsPushed.push(bombChild);
			n5e14.nextFrame();
			n6f14.nextFrame();
			n7g14.nextFrame();
			o5e15.nextFrame();
			o7g15.nextFrame();
			p5e16.nextFrame();
			p6f16.nextFrame();
			p7g16.nextFrame();
		}
		break;
		
		case "p6f16":
		if (checkp6f16 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkp6f16 = true;
			bombsPushed.push(bombChild);
			o5e15.nextFrame();
			o6f15.nextFrame();
			o7g15.nextFrame();
			p5e16.nextFrame();
			p7g16.nextFrame();
			q5e17.nextFrame();
			q6f17.nextFrame();
			q7g17.nextFrame();
		}
		break;
		
		case "q6f17":
		if (checkq6f17 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkq6f17 = true;
			bombsPushed.push(bombChild);
			p5e16.nextFrame();
			p6f16.nextFrame();
			p7g16.nextFrame();
			q5e17.nextFrame();
			q7g17.nextFrame();
			r5e18.nextFrame();
			r6f18.nextFrame();
			r7g18.nextFrame();
		}
		break;
		
		case "r6f18":
		if (checkr6f18 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkr6f18 = true;
			bombsPushed.push(bombChild);
			q5e17.nextFrame();
			q6f17.nextFrame();
			q7g17.nextFrame();
			r5e18.nextFrame();
			r7g18.nextFrame();
		}
		break;
	
		//row 7 7g
		case "a7g1":
		if (checka7g1 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checka7g1 = true;
			bombsPushed.push(bombChild);
			b6f2.nextFrame();
			b7g2.nextFrame();
			b8h2.nextFrame();
			a6f1.nextFrame();
			a8h1.nextFrame();
		}
		break;
		
		case "b7g2":
		if (checkb7g2 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkb7g2 = true;
			bombsPushed.push(bombChild);
			a6f1.nextFrame();
			a7g1.nextFrame();
			a8h1.nextFrame();
			b6f2.nextFrame();
			b8h2.nextFrame();
			c6f3.nextFrame();
			c7g3.nextFrame();
			c8h3.nextFrame();
		}
		break;
		
		case "c7g3":
		if (checkc7g3 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkc7g3 = true;
			bombsPushed.push(bombChild);
			b6f2.nextFrame();
			b7g2.nextFrame();
			b8h2.nextFrame();
			c6f3.nextFrame();
			c8h3.nextFrame();
			d6f4.nextFrame();
			d7g4.nextFrame();
			d8h4.nextFrame();
		}
		break;
		
		case "d7g4":
		if (checkd7g4 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkd7g4 = true;
			bombsPushed.push(bombChild);
			c6f3.nextFrame();
			c7g3.nextFrame();
			c8h3.nextFrame();
			d6f4.nextFrame();
			d8h4.nextFrame();
			e6f5.nextFrame();
			e7g5.nextFrame();
			e8h5.nextFrame();
		}
		break;
		
		case "e7g5":
		if (checke7g5 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checke7g5 = true;
			bombsPushed.push(bombChild);
			d6f4.nextFrame();
			d7g4.nextFrame();
			d8h4.nextFrame();
			e6f5.nextFrame();
			e8h5.nextFrame();
			f6f6.nextFrame();
			f7g6.nextFrame();
			f8h6.nextFrame();
		}
		break;
		
		case "f7g6":
		if (checkf7g6 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkf7g6 = true;
			bombsPushed.push(bombChild);
			e6f5.nextFrame();
			e7g5.nextFrame();
			e8h5.nextFrame();
			f6f6.nextFrame();
			f8h6.nextFrame();
			g6f7.nextFrame();
			g7g7.nextFrame();
			g8h7.nextFrame();
		}
		break;
		
		case "g7g7":
		if (checkg7g7 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkg7g7 = true;
			bombsPushed.push(bombChild);
			f6f6.nextFrame();
			f7g6.nextFrame();
			f8h6.nextFrame();
			g6f7.nextFrame();
			g8h7.nextFrame();
			h6f8.nextFrame();
			h7g8.nextFrame();
			h8h8.nextFrame();
		}
		break;
		
		case "h7g8":
		if (checkh7g8 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkh7g8 = true;
			bombsPushed.push(bombChild);
			g6f7.nextFrame();
			g7g7.nextFrame();
			g8h7.nextFrame();
			h6f8.nextFrame();
			h8h8.nextFrame();
			i6f9.nextFrame();
			i7g9.nextFrame();
			i8h9.nextFrame();
		}
		break;
		
		case "i7g9":
		if (checki7g9 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checki7g9 = true;
			bombsPushed.push(bombChild);
			h6f8.nextFrame();
			h7g8.nextFrame();
			h8h8.nextFrame();
			i6f9.nextFrame();
			i8h9.nextFrame();
			j6f10.nextFrame();
			j7g10.nextFrame();
			j8h10.nextFrame();
		}
		break;
		
		case "j7g10":
		if (checkj7g10 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkj7g10 = true;
			bombsPushed.push(bombChild);
			i6f9.nextFrame();
			i7g9.nextFrame();
			i8h9.nextFrame();
			j6f10.nextFrame();
			j8h10.nextFrame();
			k6f11.nextFrame();
			k7g11.nextFrame();
			k8h11.nextFrame();
		}
		break;
		
		case "k7g11":
		if (checkk7g11 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkk7g11 = true;
			bombsPushed.push(bombChild);
			j6f10.nextFrame();
			j7g10.nextFrame();
			j8h10.nextFrame();
			k6f11.nextFrame();
			k8h11.nextFrame();
			l6f12.nextFrame();
			l7g12.nextFrame();
			l8h12.nextFrame();
		}
		break;
		
		case "l7g12":
		if (checkl7g12 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkl7g12 = true;
			bombsPushed.push(bombChild);
			k6f11.nextFrame();
			k7g11.nextFrame();
			k8h11.nextFrame();
			l6f12.nextFrame();
			l8h12.nextFrame();
			m6f13.nextFrame();
			m7g13.nextFrame();
			m8h13.nextFrame();
		}
		break;
		
		case "m7g13":
		if (checkm7g13 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkm7g13 = true;
			bombsPushed.push(bombChild);
			l6f12.nextFrame();
			l7g12.nextFrame();
			l8h12.nextFrame();
			m6f13.nextFrame();
			m8h13.nextFrame();
			n6f14.nextFrame();
			n7g14.nextFrame();
			n8h14.nextFrame();
		}
		break;
		
		case "n7g14":
		if (checkn7g14 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkn7g14 = true;
			bombsPushed.push(bombChild);
			m6f13.nextFrame();
			m7g13.nextFrame();
			m8h13.nextFrame();
			n6f14.nextFrame();
			n8h14.nextFrame();
			o6f15.nextFrame();
			o7g15.nextFrame();
			o8h15.nextFrame();
		}
		break;
		
		case "o7g15":
		if (checko7g15 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checko7g15 = true;
			bombsPushed.push(bombChild);
			n6f14.nextFrame();
			n7g14.nextFrame();
			n8h14.nextFrame();
			o6f15.nextFrame();
			o8h15.nextFrame();
			p6f16.nextFrame();
			p7g16.nextFrame();
			p8h16.nextFrame();
		}
		break;
		
		case "p7g16":
		if (checkp7g16 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkp7g16 = true;
			bombsPushed.push(bombChild);
			o6f15.nextFrame();
			o7g15.nextFrame();
			o8h15.nextFrame();
			p6f16.nextFrame();
			p8h16.nextFrame();
			q6f17.nextFrame();
			q7g17.nextFrame();
			q8h17.nextFrame();
		}
		break;
		
		case "q7g17":
		if (checkq7g17 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkq7g17 = true;
			bombsPushed.push(bombChild);
			p6f16.nextFrame();
			p7g16.nextFrame();
			p8h16.nextFrame();
			q6f17.nextFrame();
			q8h17.nextFrame();
			r6f18.nextFrame();
			r7g18.nextFrame();
			r8h18.nextFrame();
		}
		break;
		
		case "r7g18":
		if (checkr7g18 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkr7g18 = true;
			bombsPushed.push(bombChild);
			q6f17.nextFrame();
			q7g17.nextFrame();
			q8h17.nextFrame();
			r6f18.nextFrame();
			r8h18.nextFrame();
		}
		break;
		
		//row 8 8h
		case "a8h1":
		if (checka8h1 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checka8h1 = true;
			bombsPushed.push(bombChild);
			b7g2.nextFrame();
			b8h2.nextFrame();
			b9i2.nextFrame();
			a7g1.nextFrame();
			a9i1.nextFrame();
		}
		break;
		
		case "b8h2":
		if (checkb8h2 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkb8h2 = true;
			bombsPushed.push(bombChild);
			a7g1.nextFrame();
			a8h1.nextFrame();
			a9i1.nextFrame();
			b7g2.nextFrame();
			b9i2.nextFrame();
			c7g3.nextFrame();
			c8h3.nextFrame();
			c9i3.nextFrame();
		}
		break;
		
		case "c8h3":
		if (checkc8h3 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkc8h3 = true;
			bombsPushed.push(bombChild);
			b7g2.nextFrame();
			b8h2.nextFrame();
			b9i2.nextFrame();
			c7g3.nextFrame();
			c9i3.nextFrame();
			d7g4.nextFrame();
			d8h4.nextFrame();
			d9i4.nextFrame();
		}
		break;
		
		case "d8h4":
		if (checkd8h4 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkd8h4 = true;
			bombsPushed.push(bombChild);
			c7g3.nextFrame();
			c8h3.nextFrame();
			c9i3.nextFrame();
			d7g4.nextFrame();
			d9i4.nextFrame();
			e7g5.nextFrame();
			e8h5.nextFrame();
			e9i5.nextFrame();
		}
		break;
		
		case "e8h5":
		if (checke8h5 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checke8h5 = true;
			bombsPushed.push(bombChild);
			d7g4.nextFrame();
			d8h4.nextFrame();
			d9i4.nextFrame();
			e7g5.nextFrame();
			e9i5.nextFrame();
			f7g6.nextFrame();
			f8h6.nextFrame();
			f9i6.nextFrame();
		}
		break;
		
		case "f8h6":
		if (checkf8h6 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkf8h6 = true;
			bombsPushed.push(bombChild);
			e7g5.nextFrame();
			e8h5.nextFrame();
			e9i5.nextFrame();
			f7g6.nextFrame();
			f9i6.nextFrame();
			g7g7.nextFrame();
			g8h7.nextFrame();
			g9i7.nextFrame();
		}
		break;
		
		case "g8h7":
		if (checkg8h7 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkg8h7 = true;
			bombsPushed.push(bombChild);
			f7g6.nextFrame();
			f8h6.nextFrame();
			f9i6.nextFrame();
			g7g7.nextFrame();
			g9i7.nextFrame();
			h7g8.nextFrame();
			h8h8.nextFrame();
			h9i8.nextFrame();
		}
		break;
		
		case "h8h8":
		if (checkh8h8 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkh8h8 = true;
			bombsPushed.push(bombChild);
			g7g7.nextFrame();
			g8h7.nextFrame();
			g9i7.nextFrame();
			h7g8.nextFrame();
			h9i8.nextFrame();
			i7g9.nextFrame();
			i8h9.nextFrame();
			i9i9.nextFrame();
		}
		break;
		
		case "i8h9":
		if (checki8h9 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checki8h9 = true;
			bombsPushed.push(bombChild);
			h7g8.nextFrame();
			h8h8.nextFrame();
			h9i8.nextFrame();
			i7g9.nextFrame();
			i9i9.nextFrame();
			j7g10.nextFrame();
			j8h10.nextFrame();
			j9i10.nextFrame();
		}
		break;
		
		case "j8h10":
		if (checkj8h10 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkj8h10 = true;
			bombsPushed.push(bombChild);
			i7g9.nextFrame();
			i8h9.nextFrame();
			i9i9.nextFrame();
			j7g10.nextFrame();
			j9i10.nextFrame();
			k7g11.nextFrame();
			k8h11.nextFrame();
			k9i11.nextFrame();
		}
		break;
		
		case "k8h11":
		if (checkk8h11 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkk8h11 = true;
			bombsPushed.push(bombChild);
			j7g10.nextFrame();
			j8h10.nextFrame();
			j9i10.nextFrame();
			k7g11.nextFrame();
			k9i11.nextFrame();
			l7g12.nextFrame();
			l8h12.nextFrame();
			l9i12.nextFrame();
		}
		break;
		
		case "l8h12":
		if (checkl8h12 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkl8h12 = true;
			bombsPushed.push(bombChild);
			k7g11.nextFrame();
			k8h11.nextFrame();
			k9i11.nextFrame();
			l7g12.nextFrame();
			l9i12.nextFrame();
			m7g13.nextFrame();
			m8h13.nextFrame();
			m9i13.nextFrame();
		}
		break;
		
		case "m8h13":
		if (checkm8h13 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkm8h13 = true;
			bombsPushed.push(bombChild);
			l7g12.nextFrame();
			l8h12.nextFrame();
			l9i12.nextFrame();
			m7g13.nextFrame();
			m9i13.nextFrame();
			n7g14.nextFrame();
			n8h14.nextFrame();
			n9i14.nextFrame();
		}
		break;
		
		case "n8h14":
		if (checkn8h14 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkn8h14 = true;
			bombsPushed.push(bombChild);
			m7g13.nextFrame();
			m8h13.nextFrame();
			m9i13.nextFrame();
			n7g14.nextFrame();
			n9i14.nextFrame();
			o7g15.nextFrame();
			o8h15.nextFrame();
			o9i15.nextFrame();
		}
		break;
		
		case "o8h15":
		if (checko8h15 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checko8h15 = true;
			bombsPushed.push(bombChild);
			n7g14.nextFrame();
			n8h14.nextFrame();
			n9i14.nextFrame();
			o7g15.nextFrame();
			o9i15.nextFrame();
			p7g16.nextFrame();
			p8h16.nextFrame();
			p9i16.nextFrame();
		}
		break;
		
		case "p8h16":
		if (checkp8h16 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkp8h16 = true;
			bombsPushed.push(bombChild);
			o7g15.nextFrame();
			o8h15.nextFrame();
			o9i15.nextFrame();
			p7g16.nextFrame();
			p9i16.nextFrame();
			q7g17.nextFrame();
			q8h17.nextFrame();
			q9i17.nextFrame();
		}
		break;
		
		case "q8h17":
		if (checkq8h17 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkq8h17 = true;
			bombsPushed.push(bombChild);
			p7g16.nextFrame();
			p8h16.nextFrame();
			p9i16.nextFrame();
			q7g17.nextFrame();
			q9i17.nextFrame();
			r7g18.nextFrame();
			r8h18.nextFrame();
			r9i18.nextFrame();
		}
		break;
		
		case "r8h18":
		if (checkr8h18 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkr8h18 = true;
			bombsPushed.push(bombChild);
			q7g17.nextFrame();
			q8h17.nextFrame();
			q9i17.nextFrame();
			r7g18.nextFrame();
			r9i18.nextFrame();
		}
		break;
		
		//row 9 9i
		case "a9i1":
		if (checka9i1 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checka9i1 = true;
			bombsPushed.push(bombChild);
			b8h2.nextFrame();
			b9i2.nextFrame();
			b10j2.nextFrame();
			a8h1.nextFrame();
			a10j1.nextFrame();
		}
		break;
		
		case "b9i2":
		if (checkb9i2 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkb9i2 = true;
			bombsPushed.push(bombChild);
			a8h1.nextFrame();
			a9i1.nextFrame();
			a10j1.nextFrame();
			b8h2.nextFrame();
			b10j2.nextFrame();
			c8h3.nextFrame();
			c9i3.nextFrame();
			c10j3.nextFrame();
			
		}
		break;
		
		case "c9i3":
		if (checkc9i3 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkc9i3 = true;
			bombsPushed.push(bombChild);
			b8h2.nextFrame();
			b9i2.nextFrame();
			b10j2.nextFrame();
			c8h3.nextFrame();
			c10j3.nextFrame();
			d8h4.nextFrame();
			d9i4.nextFrame();
			d10j4.nextFrame();
		}
		break;
		
		case "d9i4":
		if (checkd9i4 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkd9i4 = true;
			bombsPushed.push(bombChild);
			c8h3.nextFrame();
			c9i3.nextFrame();
			c10j3.nextFrame();
			d8h4.nextFrame();
			d10j4.nextFrame();
			e8h5.nextFrame();
			e9i5.nextFrame();
			e10j5.nextFrame();
		}
		break;
		
		case "e9i5":
		if (checke9i5 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checke9i5 = true;
			bombsPushed.push(bombChild);
			d8h4.nextFrame();
			d9i4.nextFrame();
			d10j4.nextFrame();
			e8h5.nextFrame();
			e10j5.nextFrame();
			f8h6.nextFrame();
			f9i6.nextFrame();
			f10j6.nextFrame();
		}
		break;
		
		case "f9i6":
		if (checkf9i6 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkf9i6 = true;
			bombsPushed.push(bombChild);
			e8h5.nextFrame();
			e9i5.nextFrame();
			e10j5.nextFrame();
			f8h6.nextFrame();
			f10j6.nextFrame();
			g8h7.nextFrame();
			g9i7.nextFrame();
			g10j7.nextFrame();
		}
		break;
		
		case "g9i7":
		if (checkg9i7 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkg9i7 = true;
			bombsPushed.push(bombChild);
			f8h6.nextFrame();
			f9i6.nextFrame();
			f10j6.nextFrame();
			g8h7.nextFrame();
			g10j7.nextFrame();
			h8h8.nextFrame();
			h9i8.nextFrame();
			h10j8.nextFrame();
		}
		break;
		
		case "h9i8":
		if (checkh9i8 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkh9i8 = true;
			bombsPushed.push(bombChild);
			g8h7.nextFrame();
			g9i7.nextFrame();
			g10j7.nextFrame();
			h8h8.nextFrame();
			h10j8.nextFrame();
			i8h9.nextFrame();
			i9i9.nextFrame();
			i10j9.nextFrame();
		}
		break;
		
		case "i9i9":
		if (checki9i9 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checki9i9 = true;
			bombsPushed.push(bombChild);
			h8h8.nextFrame();
			h9i8.nextFrame();
			h10j8.nextFrame();
			i8h9.nextFrame();
			i10j9.nextFrame();
			j8h10.nextFrame();
			j9i10.nextFrame();
			j10j10.nextFrame();
		}
		break;
		
		case "j9i10":
		if (checkj9i10 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkj9i10 = true;
			bombsPushed.push(bombChild);
			i8h9.nextFrame();
			i9i9.nextFrame();
			i10j9.nextFrame();
			j8h10.nextFrame();
			j10j10.nextFrame();
			k8h11.nextFrame();
			k9i11.nextFrame();
			k10j11.nextFrame();
		}
		break;
		
		case "k9i11":
		if (checkk9i11 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkk9i11 = true;
			bombsPushed.push(bombChild);
			j8h10.nextFrame();
			j9i10.nextFrame();
			j10j10.nextFrame();
			k8h11.nextFrame();
			k10j11.nextFrame();
			l8h12.nextFrame();
			l9i12.nextFrame();
			l10j12.nextFrame();
		}
		break;
		
		case "l9i12":
		if (checkl9i12 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkl9i12 = true;
			bombsPushed.push(bombChild);
			k8h11.nextFrame();
			k9i11.nextFrame();
			k10j11.nextFrame();
			l8h12.nextFrame();
			l10j12.nextFrame();
			m8h13.nextFrame();
			m9i13.nextFrame();
			m10j13.nextFrame();
		}
		break;
		
		case "m9i13":
		if (checkm9i13 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkm9i13 = true;
			bombsPushed.push(bombChild);
			l8h12.nextFrame();
			l9i12.nextFrame();
			l10j12.nextFrame();
			m8h13.nextFrame();
			m10j13.nextFrame();
			n8h14.nextFrame();
			n9i14.nextFrame();
			n10j14.nextFrame();
		}
		break;
		
		case "n9i14":
		if (checkn9i14 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkn9i14 = true;
			bombsPushed.push(bombChild);
			m8h13.nextFrame();
			m9i13.nextFrame();
			m10j13.nextFrame();
			n8h14.nextFrame();
			n10j14.nextFrame();
			o8h15.nextFrame();
			o9i15.nextFrame();
			o10j15.nextFrame();
		}
		break;
		
		case "o9i15":
		if (checko9i15 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checko9i15 = true;
			bombsPushed.push(bombChild);
			n8h14.nextFrame();
			n9i14.nextFrame();
			n10j14.nextFrame();
			o8h15.nextFrame();
			o10j15.nextFrame();
			p8h16.nextFrame();
			p9i16.nextFrame();
			p10j16.nextFrame();
		}
		break;
		
		case "p9i16":
		if (checkp9i16 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkp9i16 = true;
			bombsPushed.push(bombChild);
			o8h15.nextFrame();
			o9i15.nextFrame();
			o10j15.nextFrame();
			p8h16.nextFrame();
			p10j16.nextFrame();
			q8h17.nextFrame();
			q9i17.nextFrame();
			q10j17.nextFrame();
		}
		break;
		
		case "q9i17":
		if (checkq9i17 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkq9i17 = true;
			bombsPushed.push(bombChild);
			p8h16.nextFrame();
			p9i16.nextFrame();
			p10j16.nextFrame();
			q8h17.nextFrame();
			q10j17.nextFrame();
			r8h18.nextFrame();
			r9i18.nextFrame();
			r10j18.nextFrame();
		}
		break;
		
		case "r9i18":
		if (checkr9i18 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkr9i18 = true;
			bombsPushed.push(bombChild);
			q8h17.nextFrame();
			q9i17.nextFrame();
			q10j17.nextFrame();
			r8h18.nextFrame();
			r10j18.nextFrame();
		}
		break;
		
		//row 10 10j
		case "a10j1":
		if (checka10j1 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checka10j1 = true;
			bombsPushed.push(bombChild);
			b9i2.nextFrame();
			b10j2.nextFrame();
			b11k2.nextFrame();
			a9i1.nextFrame();
			a11k1.nextFrame();
		}
		break;
		
		case "b10j2":
		if (checkb10j2 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkb10j2 = true;
			bombsPushed.push(bombChild);
			a9i1.nextFrame();
			a10j1.nextFrame();
			a11k1.nextFrame();
			b9i2.nextFrame();
			b11k2.nextFrame();
			c9i3.nextFrame();
			c10j3.nextFrame();
			c11k3.nextFrame();
			
		}
		break;
		
		case "c10j3":
		if (checkc10j3 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkc10j3 = true;
			bombsPushed.push(bombChild);
			b9i2.nextFrame();
			b10j2.nextFrame();
			b11k2.nextFrame();
			c9i3.nextFrame();
			c11k3.nextFrame();
			d9i4.nextFrame();
			d10j4.nextFrame();
			d11k4.nextFrame();
		}
		break;
		
		case "d10j4":
		if (checkd10j4 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkd10j4 = true;
			bombsPushed.push(bombChild);
			c9i3.nextFrame();
			c10j3.nextFrame();
			c11k3.nextFrame();
			d9i4.nextFrame();
			d11k4.nextFrame();
			e9i5.nextFrame();
			e10j5.nextFrame();
			e11k5.nextFrame();
		}
		break;
		
		case "e10j5":
		if (checke10j5 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checke10j5 = true;
			bombsPushed.push(bombChild);
			d9i4.nextFrame();
			d10j4.nextFrame();
			d11k4.nextFrame();
			e9i5.nextFrame();
			e11k5.nextFrame();
			f9i6.nextFrame();
			f10j6.nextFrame();
			f11k6.nextFrame();
		}
		break;
		
		case "f10j6":
		if (checkf10j6 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkf10j6 = true;
			bombsPushed.push(bombChild);
			e9i5.nextFrame();
			e10j5.nextFrame();
			e11k5.nextFrame();
			f9i6.nextFrame();
			f11k6.nextFrame();
			g9i7.nextFrame();
			g10j7.nextFrame();
			g11k7.nextFrame();
		}
		break;
		
		case "g10j7":
		if (checkg10j7 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkg10j7 = true;
			bombsPushed.push(bombChild);
			f9i6.nextFrame();
			f10j6.nextFrame();
			f11k6.nextFrame();
			g9i7.nextFrame();
			g11k7.nextFrame();
			h9i8.nextFrame();
			h10j8.nextFrame();
			h11k8.nextFrame();
		}
		break;
		
		case "h10j8":
		if (checkh10j8 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkh10j8 = true;
			bombsPushed.push(bombChild);
			g9i7.nextFrame();
			g10j7.nextFrame();
			g11k7.nextFrame();
			h9i8.nextFrame();
			h11k8.nextFrame();
			i9i9.nextFrame();
			i10j9.nextFrame();
			i11k9.nextFrame();
		}
		break;
		
		case "i10j9":
		if (checki10j9 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checki10j9 = true;
			bombsPushed.push(bombChild);
			h9i8.nextFrame();
			h10j8.nextFrame();
			h11k8.nextFrame();
			i9i9.nextFrame();
			i11k9.nextFrame();
			j9i10.nextFrame();
			j10j10.nextFrame();
			j11k10.nextFrame();
		}
		break;
		
		case "j10j10":
		if (checkj10j10 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkj10j10 = true;
			bombsPushed.push(bombChild);
			i9i9.nextFrame();
			i10j9.nextFrame();
			i11k9.nextFrame();
			j9i10.nextFrame();
			j11k10.nextFrame();
			k9i11.nextFrame();
			k10j11.nextFrame();
			k11k11.nextFrame();
		}
		break;
		
		case "k10j11":
		if (checkk10j11 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkk10j11 = true;
			bombsPushed.push(bombChild);
			j9i10.nextFrame();
			j10j10.nextFrame();
			j11k10.nextFrame();
			k9i11.nextFrame();
			k11k11.nextFrame();
			l9i12.nextFrame();
			l10j12.nextFrame();
			l11k12.nextFrame();
		}
		break;
		
		case "l10j12":
		if (checkl10j12 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkl10j12 = true;
			bombsPushed.push(bombChild);
			k9i11.nextFrame();
			k10j11.nextFrame();
			k11k11.nextFrame();
			l9i12.nextFrame();
			l11k12.nextFrame();
			m9i13.nextFrame();
			m10j13.nextFrame();
			m11k13.nextFrame();
		}
		break;
		
		case "m10j13":
		if (checkm10j13 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkm10j13 = true;
			bombsPushed.push(bombChild);
			l9i12.nextFrame();
			l10j12.nextFrame();
			l11k12.nextFrame();
			m9i13.nextFrame();
			m11k13.nextFrame();
			n9i14.nextFrame();
			n10j14.nextFrame();
			n11k14.nextFrame();
		}
		break;
		
		case "n10j14":
		if (checkn10j14 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkn10j14 = true;
			bombsPushed.push(bombChild);
			m9i13.nextFrame();
			m10j13.nextFrame();
			m11k13.nextFrame();
			n9i14.nextFrame();
			n11k14.nextFrame();
			o9i15.nextFrame();
			o10j15.nextFrame();
			o11k15.nextFrame();
		}
		break;
		
		case "o10j15":
		if (checko10j15 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checko10j15 = true;
			bombsPushed.push(bombChild);
			n9i14.nextFrame();
			n10j14.nextFrame();
			n11k14.nextFrame();
			o9i15.nextFrame();
			o11k15.nextFrame();
			p9i16.nextFrame();
			p10j16.nextFrame();
			p11k16.nextFrame();
		}
		break;
		
		case "p10j16":
		if (checkp10j16 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkp10j16 = true;
			bombsPushed.push(bombChild);
			o9i15.nextFrame();
			o10j15.nextFrame();
			o11k15.nextFrame();
			p9i16.nextFrame();
			p11k16.nextFrame();
			q9i17.nextFrame();
			q10j17.nextFrame();
			q11k17.nextFrame();
		}
		break;
		
		case "q10j17":
		if (checkq10j17 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkq10j17 = true;
			bombsPushed.push(bombChild);
			p9i16.nextFrame();
			p10j16.nextFrame();
			p11k16.nextFrame();
			q9i17.nextFrame();
			q11k17.nextFrame();
			r9i18.nextFrame();
			r10j18.nextFrame();
			r11k18.nextFrame();
		}
		break;
		
		case "r10j18":
		if (checkr10j18 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkr10j18 = true;
			bombsPushed.push(bombChild);
			q9i17.nextFrame();
			q10j17.nextFrame();
			q11k17.nextFrame();
			r9i18.nextFrame();
			r11k18.nextFrame();
		}
		break;
		
		//row 11 11k
		case "a11k1":
		if (checka11k1 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checka11k1 = true;
			bombsPushed.push(bombChild);
			b10j2.nextFrame();
			b11k2.nextFrame();
			b12l2.nextFrame();
			a10j1.nextFrame();
			a12l1.nextFrame();
		}
		break;
		
		case "b11k2":
		if (checkb11k2 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkb11k2 = true;
			bombsPushed.push(bombChild);
			a10j1.nextFrame();
			a11k1.nextFrame();
			a12l1.nextFrame();
			b10j2.nextFrame();
			b12l2.nextFrame();
			c10j3.nextFrame();
			c11k3.nextFrame();
			c12l3.nextFrame();
			
		}
		break;
		
		case "c11k3":
		if (checkc11k3 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkc11k3 = true;
			bombsPushed.push(bombChild);
			b10j2.nextFrame();
			b11k2.nextFrame();
			b12l2.nextFrame();
			c10j3.nextFrame();
			c12l3.nextFrame();
			d10j4.nextFrame();
			d11k4.nextFrame();
			d12l4.nextFrame();
		}
		break;
		
		case "d11k4":
		if (checkd11k4 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkd11k4 = true;
			bombsPushed.push(bombChild);
			c10j3.nextFrame();
			c11k3.nextFrame();
			c12l3.nextFrame();
			d10j4.nextFrame();
			d12l4.nextFrame();
			e10j5.nextFrame();
			e11k5.nextFrame();
			e12l5.nextFrame();
		}
		break;
		
		case "e11k5":
		if (checke11k5 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checke11k5 = true;
			bombsPushed.push(bombChild);
			d10j4.nextFrame();
			d11k4.nextFrame();
			d12l4.nextFrame();
			e10j5.nextFrame();
			e12l5.nextFrame();
			f10j6.nextFrame();
			f11k6.nextFrame();
			f12l6.nextFrame();
		}
		break;
		
		case "f11k6":
		if (checkf11k6 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkf11k6 = true;
			bombsPushed.push(bombChild);
			e10j5.nextFrame();
			e11k5.nextFrame();
			e12l5.nextFrame();
			f10j6.nextFrame();
			f12l6.nextFrame();
			g10j7.nextFrame();
			g11k7.nextFrame();
			g12l7.nextFrame();
		}
		break;
		
		case "g11k7":
		if (checkg11k7 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkg11k7 = true;
			bombsPushed.push(bombChild);
			f10j6.nextFrame();
			f11k6.nextFrame();
			f12l6.nextFrame();
			g10j7.nextFrame();
			g12l7.nextFrame();
			h10j8.nextFrame();
			h11k8.nextFrame();
			h12l8.nextFrame();
		}
		break;
		
		case "h11k8":
		if (checkh11k8 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkh11k8 = true;
			bombsPushed.push(bombChild);
			g10j7.nextFrame();
			g11k7.nextFrame();
			g12l7.nextFrame();
			h10j8.nextFrame();
			h12l8.nextFrame();
			i10j9.nextFrame();
			i11k9.nextFrame();
			i12l9.nextFrame();
		}
		break;
		
		case "i11k9":
		if (checki11k9 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checki11k9 = true;
			bombsPushed.push(bombChild);
			h10j8.nextFrame();
			h11k8.nextFrame();
			h12l8.nextFrame();
			i10j9.nextFrame();
			i12l9.nextFrame();
			j10j10.nextFrame();
			j11k10.nextFrame();
			j12l10.nextFrame();
		}
		break;
		
		case "j11k10":
		if (checkj11k10 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkj11k10 = true;
			bombsPushed.push(bombChild);
			i10j9.nextFrame();
			i11k9.nextFrame();
			i12l9.nextFrame();
			j10j10.nextFrame();
			j12l10.nextFrame();
			k10j11.nextFrame();
			k11k11.nextFrame();
			k12l11.nextFrame();
		}
		break;
		
		case "k11k11":
		if (checkk11k11 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkk11k11 = true;
			bombsPushed.push(bombChild);
			j10j10.nextFrame();
			j11k10.nextFrame();
			j12l10.nextFrame();
			k10j11.nextFrame();
			k12l11.nextFrame();
			l10j12.nextFrame();
			l11k12.nextFrame();
			l12l12.nextFrame();
		}
		break;
		
		case "l11k12":
		if (checkl11k12 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkl11k12 = true;
			bombsPushed.push(bombChild);
			k10j11.nextFrame();
			k11k11.nextFrame();
			k12l11.nextFrame();
			l10j12.nextFrame();
			l12l12.nextFrame();
			m10j13.nextFrame();
			m11k13.nextFrame();
			m12l13.nextFrame();
		}
		break;
		
		case "m11k13":
		if (checkm11k13 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkm11k13 = true;
			bombsPushed.push(bombChild);
			l10j12.nextFrame();
			l11k12.nextFrame();
			l12l12.nextFrame();
			m10j13.nextFrame();
			m12l13.nextFrame();
			n10j14.nextFrame();
			n11k14.nextFrame();
			n12l14.nextFrame();
		}
		break;
		
		case "n11k14":
		if (checkn11k14 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkn11k14 = true;
			bombsPushed.push(bombChild);
			m10j13.nextFrame();
			m11k13.nextFrame();
			m12l13.nextFrame();
			n10j14.nextFrame();
			n12l14.nextFrame();
			o10j15.nextFrame();
			o11k15.nextFrame();
			o12l15.nextFrame();
		}
		break;
		
		case "o11k15":
		if (checko11k15 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checko11k15 = true;
			bombsPushed.push(bombChild);
			n10j14.nextFrame();
			n11k14.nextFrame();
			n12l14.nextFrame();
			o10j15.nextFrame();
			o12l15.nextFrame();
			p10j16.nextFrame();
			p11k16.nextFrame();
			p12l16.nextFrame();
		}
		break;
		
		case "p11k16":
		if (checkp11k16 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkp11k16 = true;
			bombsPushed.push(bombChild);
			o10j15.nextFrame();
			o11k15.nextFrame();
			o12l15.nextFrame();
			p10j16.nextFrame();
			p12l16.nextFrame();
			q10j17.nextFrame();
			q11k17.nextFrame();
			q12l17.nextFrame();
		}
		break;
		
		case "q11k17":
		if (checkq11k17 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkq11k17 = true;
			bombsPushed.push(bombChild);
			p10j16.nextFrame();
			p11k16.nextFrame();
			p12l16.nextFrame();
			q10j17.nextFrame();
			q12l17.nextFrame();
			r10j18.nextFrame();
			r11k18.nextFrame();
			r12l18.nextFrame();
		}
		break;
		
		case "r11k18":
		if (checkr11k18 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkr11k18 = true;
			bombsPushed.push(bombChild);
			q10j17.nextFrame();
			q11k17.nextFrame();
			q12l17.nextFrame();
			r10j18.nextFrame();
			r12l18.nextFrame();
		}
		break;
		
		//row 12 12l
		case "a12l1":
		if (checka12l1 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checka12l1 = true;
			bombsPushed.push(bombChild);
			b11k2.nextFrame();
			b12l2.nextFrame();
			b13m2.nextFrame();
			a11k1.nextFrame();
			a13m1.nextFrame();
		}
		break;
		
		case "b12l2":
		if (checkb12l2 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkb12l2 = true;
			bombsPushed.push(bombChild);
			a11k1.nextFrame();
			a12l1.nextFrame();
			a13m1.nextFrame();
			b11k2.nextFrame();
			b13m2.nextFrame();
			c11k3.nextFrame();
			c12l3.nextFrame();
			c13m3.nextFrame();
		}
		break;
		
		case "c12l3":
		if (checkc12l3 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkc12l3 = true;
			bombsPushed.push(bombChild);
			b11k2.nextFrame();
			b12l2.nextFrame();
			b13m2.nextFrame();
			c11k3.nextFrame();
			c13m3.nextFrame();
			d11k4.nextFrame();
			d12l4.nextFrame();
			d13m4.nextFrame();
		}
		break;
		
		case "d12l4":
		if (checkd12l4 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkd12l4 = true;
			bombsPushed.push(bombChild);
			c11k3.nextFrame();
			c12l3.nextFrame();
			c13m3.nextFrame();
			d11k4.nextFrame();
			d13m4.nextFrame();
			e11k5.nextFrame();
			e12l5.nextFrame();
			e13m5.nextFrame();
		}
		break;
		
		case "e12l5":
		if (checke12l5 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checke12l5 = true;
			bombsPushed.push(bombChild);
			d11k4.nextFrame();
			d12l4.nextFrame();
			d13m4.nextFrame();
			e11k5.nextFrame();
			e13m5.nextFrame();
			f11k6.nextFrame();
			f12l6.nextFrame();
			f13m6.nextFrame();
		}
		break;
		
		case "f12l6":
		if (checkf12l6 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkf12l6 = true;
			bombsPushed.push(bombChild);
			e11k5.nextFrame();
			e12l5.nextFrame();
			e13m5.nextFrame();
			f11k6.nextFrame();
			f13m6.nextFrame();
			g11k7.nextFrame();
			g12l7.nextFrame();
			g13m7.nextFrame();
		}
		break;
		
		case "g12l7":
		if (checkg12l7 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkg12l7 = true;
			bombsPushed.push(bombChild);
			f11k6.nextFrame();
			f12l6.nextFrame();
			f13m6.nextFrame();
			g11k7.nextFrame();
			g13m7.nextFrame();
			h11k8.nextFrame();
			h12l8.nextFrame();
			h13m8.nextFrame();
		}
		break;
		
		case "h12l8":
		if (checkh12l8 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkh12l8 = true;
			bombsPushed.push(bombChild);
			g11k7.nextFrame();
			g12l7.nextFrame();
			g13m7.nextFrame();
			h11k8.nextFrame();
			h13m8.nextFrame();
			i11k9.nextFrame();
			i12l9.nextFrame();
			i13m9.nextFrame();
		}
		break;
		
		case "i12l9":
		if (checki12l9 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checki12l9 = true;
			bombsPushed.push(bombChild);
			h11k8.nextFrame();
			h12l8.nextFrame();
			h13m8.nextFrame();
			i11k9.nextFrame();
			i13m9.nextFrame();
			j11k10.nextFrame();
			j12l10.nextFrame();
			j13m10.nextFrame();
		}
		break;
		
		case "j12l10":
		if (checkj12l10 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkj12l10 = true;
			bombsPushed.push(bombChild);
			i11k9.nextFrame();
			i12l9.nextFrame();
			i13m9.nextFrame();
			j11k10.nextFrame();
			j13m10.nextFrame();
			k11k11.nextFrame();
			k12l11.nextFrame();
			k13m11.nextFrame();
		}
		break;
		
		case "k12l11":
		if (checkk12l11 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkk12l11 = true;
			bombsPushed.push(bombChild);
			j11k10.nextFrame();
			j12l10.nextFrame();
			j13m10.nextFrame();
			k11k11.nextFrame();
			k13m11.nextFrame();
			l11k12.nextFrame();
			l12l12.nextFrame();
			l13m12.nextFrame();
		}
		break;
		
		case "l12l12":
		if (checkl12l12 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkl12l12 = true;
			bombsPushed.push(bombChild);
			k11k11.nextFrame();
			k12l11.nextFrame();
			k13m11.nextFrame();
			l11k12.nextFrame();
			l13m12.nextFrame();
			m11k13.nextFrame();
			m12l13.nextFrame();
			m13m13.nextFrame();
		}
		break;
		
		case "m12l13":
		if (checkm12l13 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkm12l13 = true;
			bombsPushed.push(bombChild);
			l11k12.nextFrame();
			l12l12.nextFrame();
			l13m12.nextFrame();
			m11k13.nextFrame();
			m13m13.nextFrame();
			n11k14.nextFrame();
			n12l14.nextFrame();
			n13m14.nextFrame();
		}
		break;
		
		case "n12l14":
		if (checkn12l14 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkn12l14 = true;
			bombsPushed.push(bombChild);
			m11k13.nextFrame();
			m12l13.nextFrame();
			m13m13.nextFrame();
			n11k14.nextFrame();
			n13m14.nextFrame();
			o11k15.nextFrame();
			o12l15.nextFrame();
			o13m15.nextFrame();
		}
		break;
		
		case "o12l15":
		if (checko12l15 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checko12l15 = true;
			bombsPushed.push(bombChild);
			n11k14.nextFrame();
			n12l14.nextFrame();
			n13m14.nextFrame();
			o11k15.nextFrame();
			o13m15.nextFrame();
			p11k16.nextFrame();
			p12l16.nextFrame();
			p13m16.nextFrame();
		}
		break;
		
		case "p12l16":
		if (checkp12l16 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkp12l16 = true;
			bombsPushed.push(bombChild);
			o11k15.nextFrame();
			o12l15.nextFrame();
			o13m15.nextFrame();
			p11k16.nextFrame();
			p13m16.nextFrame();
			q11k17.nextFrame();
			q12l17.nextFrame();
			q13m17.nextFrame();
		}
		break;
		
		case "q12l17":
		if (checkq12l17 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkq12l17 = true;
			bombsPushed.push(bombChild);
			p11k16.nextFrame();
			p12l16.nextFrame();
			p13m16.nextFrame();
			q11k17.nextFrame();
			q13m17.nextFrame();
			r11k18.nextFrame();
			r12l18.nextFrame();
			r13m18.nextFrame();
		}
		break;
		
		case "r12l18":
		if (checkr12l18 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkr12l18 = true;
			bombsPushed.push(bombChild);
			q11k17.nextFrame();
			q12l17.nextFrame();
			q13m17.nextFrame();
			r11k18.nextFrame();
			r13m18.nextFrame();
		}
		break;
		
		//row 13 13m
		case "a13m1":
		if (checka13m1 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checka13m1 = true;
			bombsPushed.push(bombChild);
			b12l2.nextFrame();
			b13m2.nextFrame();
			b14n2.nextFrame();
			a12l1.nextFrame();
			a14n1.nextFrame();
		}
		break;
		
		case "b13m2":
		if (checkb13m2 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkb13m2 = true;
			bombsPushed.push(bombChild);
			a12l1.nextFrame();
			a13m1.nextFrame();
			a14n1.nextFrame();
			b12l2.nextFrame();
			b14n2.nextFrame();
			c12l3.nextFrame();
			c13m3.nextFrame();
			c14n3.nextFrame();
		}
		break;
		
		case "c13m3":
		if (checkc13m3 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkc13m3 = true;
			bombsPushed.push(bombChild);
			b12l2.nextFrame();
			b13m2.nextFrame();
			b14n2.nextFrame();
			c12l3.nextFrame();
			c14n3.nextFrame();
			d12l4.nextFrame();
			d13m4.nextFrame();
			d14n4.nextFrame();
		}
		break;
		
		case "d13m4":
		if (checkd13m4 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkd13m4 = true;
			bombsPushed.push(bombChild);
			c12l3.nextFrame();
			c13m3.nextFrame();
			c14n3.nextFrame();
			d12l4.nextFrame();
			d14n4.nextFrame();
			e12l5.nextFrame();
			e13m5.nextFrame();
			e14n5.nextFrame();
		}
		break;
		
		case "e13m5":
		if (checke13m5 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checke13m5 = true;
			bombsPushed.push(bombChild);
			d12l4.nextFrame();
			d13m4.nextFrame();
			d14n4.nextFrame();
			e12l5.nextFrame();
			e14n5.nextFrame();
			f12l6.nextFrame();
			f13m6.nextFrame();
			f14n6.nextFrame();
		}
		break;
		
		case "f13m6":
		if (checkf13m6 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkf13m6 = true;
			bombsPushed.push(bombChild);
			e12l5.nextFrame();
			e13m5.nextFrame();
			e14n5.nextFrame();
			f12l6.nextFrame();
			f14n6.nextFrame();
			g12l7.nextFrame();
			g13m7.nextFrame();
			g14n7.nextFrame();
		}
		break;
		
		case "g13m7":
		if (checkg13m7 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkg13m7 = true;
			bombsPushed.push(bombChild);
			f12l6.nextFrame();
			f13m6.nextFrame();
			f14n6.nextFrame();
			g12l7.nextFrame();
			g14n7.nextFrame();
			h12l8.nextFrame();
			h13m8.nextFrame();
			h14n8.nextFrame();
		}
		break;
		
		case "h13m8":
		if (checkh13m8 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkh13m8 = true;
			bombsPushed.push(bombChild);
			g12l7.nextFrame();
			g13m7.nextFrame();
			g14n7.nextFrame();
			h12l8.nextFrame();
			h14n8.nextFrame();
			i12l9.nextFrame();
			i13m9.nextFrame();
			i14n9.nextFrame();
		}
		break;
		
		case "i13m9":
		if (checki13m9 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checki13m9 = true;
			bombsPushed.push(bombChild);
			h12l8.nextFrame();
			h13m8.nextFrame();
			h14n8.nextFrame();
			i12l9.nextFrame();
			i14n9.nextFrame();
			j12l10.nextFrame();
			j13m10.nextFrame();
			j14n10.nextFrame();
		}
		break;
		
		case "j13m10":
		if (checkj13m10 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkj13m10 = true;
			bombsPushed.push(bombChild);
			i12l9.nextFrame();
			i13m9.nextFrame();
			i14n9.nextFrame();
			j12l10.nextFrame();
			j14n10.nextFrame();
			k12l11.nextFrame();
			k13m11.nextFrame();
			k14n11.nextFrame();
		}
		break;
		
		case "k13m11":
		if (checkk13m11 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkk13m11 = true;
			bombsPushed.push(bombChild);
			j12l10.nextFrame();
			j13m10.nextFrame();
			j14n10.nextFrame();
			k12l11.nextFrame();
			k14n11.nextFrame();
			l12l12.nextFrame();
			l13m12.nextFrame();
			l14n12.nextFrame();
		}
		break;
		
		case "l13m12":
		if (checkl13m12 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkl13m12 = true;
			bombsPushed.push(bombChild);
			k12l11.nextFrame();
			k13m11.nextFrame();
			k14n11.nextFrame();
			l12l12.nextFrame();
			l14n12.nextFrame();
			m12l13.nextFrame();
			m13m13.nextFrame();
			m14n13.nextFrame();
		}
		break;
		
		case "m13m13":
		if (checkm13m13 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkm13m13 = true;
			bombsPushed.push(bombChild);
			l12l12.nextFrame();
			l13m12.nextFrame();
			l14n12.nextFrame();
			m12l13.nextFrame();
			m14n13.nextFrame();
			n12l14.nextFrame();
			n13m14.nextFrame();
			n14n14.nextFrame();
		}
		break;
		
		case "n13m14":
		if (checkn13m14 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkn13m14 = true;
			bombsPushed.push(bombChild);
			m12l13.nextFrame();
			m13m13.nextFrame();
			m14n13.nextFrame();
			n12l14.nextFrame();
			n14n14.nextFrame();
			o12l15.nextFrame();
			o13m15.nextFrame();
			o14n15.nextFrame();
		}
		break;
		
		case "o13m15":
		if (checko13m15 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checko13m15 = true;
			bombsPushed.push(bombChild);
			n12l14.nextFrame();
			n13m14.nextFrame();
			n14n14.nextFrame();
			o12l15.nextFrame();
			o14n15.nextFrame();
			p12l16.nextFrame();
			p13m16.nextFrame();
			p14n16.nextFrame();
		}
		break;
		
		case "p13m16":
		if (checkp13m16 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkp13m16 = true;
			bombsPushed.push(bombChild);
			o12l15.nextFrame();
			o13m15.nextFrame();
			o14n15.nextFrame();
			p12l16.nextFrame();
			p14n16.nextFrame();
			q12l17.nextFrame();
			q13m17.nextFrame();
			q14n17.nextFrame();
		}
		break;
		
		case "q13m17":
		if (checkq13m17 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkq13m17 = true;
			bombsPushed.push(bombChild);
			p12l16.nextFrame();
			p13m16.nextFrame();
			p14n16.nextFrame();
			q12l17.nextFrame();
			q14n17.nextFrame();
			r12l18.nextFrame();
			r13m18.nextFrame();
			r14n18.nextFrame();
		}
		break;
		
		case "r13m18":
		if (checkr13m18 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkr13m18 = true;
			bombsPushed.push(bombChild);
			q12l17.nextFrame();
			q13m17.nextFrame();
			q14n17.nextFrame();
			r12l18.nextFrame();
			r14n18.nextFrame();
		}
		break;
		
		//row 14 14n
		case "a14n1":
		if (checka14n1 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checka14n1 = true;
			bombsPushed.push(bombChild);
			b13m2.nextFrame();
			b14n2.nextFrame();
			b15o2.nextFrame();
			a13m1.nextFrame();
			a15o1.nextFrame();
		}
		break;
		
		case "b14n2":
		if (checkb14n2 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkb14n2 = true;
			bombsPushed.push(bombChild);
			a13m1.nextFrame();
			a14n1.nextFrame();
			a15o1.nextFrame();
			b13m2.nextFrame();
			b15o2.nextFrame();
			c13m3.nextFrame();
			c14n3.nextFrame();
			c15o3.nextFrame();
		}
		break;
		
		case "c14n3":
		if (checkc14n3 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkc14n3 = true;
			bombsPushed.push(bombChild);
			b13m2.nextFrame();
			b14n2.nextFrame();
			b15o2.nextFrame();
			c13m3.nextFrame();
			c15o3.nextFrame();
			d13m4.nextFrame();
			d14n4.nextFrame();
			d15o4.nextFrame();
		}
		break;
		
		case "d14n4":
		if (checkd14n4 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkd14n4 = true;
			bombsPushed.push(bombChild);
			c13m3.nextFrame();
			c14n3.nextFrame();
			c15o3.nextFrame();
			d13m4.nextFrame();
			d15o4.nextFrame();
			e13m5.nextFrame();
			e14n5.nextFrame();
			e15o5.nextFrame();
		}
		break;
		
		case "e14n5":
		if (checke14n5 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checke14n5 = true;
			bombsPushed.push(bombChild);
			d13m4.nextFrame();
			d14n4.nextFrame();
			d15o4.nextFrame();
			e13m5.nextFrame();
			e15o5.nextFrame();
			f13m6.nextFrame();
			f14n6.nextFrame();
			f15o6.nextFrame();
		}
		break;
		
		case "f14n6":
		if (checkf14n6 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkf14n6 = true;
			bombsPushed.push(bombChild);
			e13m5.nextFrame();
			e14n5.nextFrame();
			e15o5.nextFrame();
			f13m6.nextFrame();
			f15o6.nextFrame();
			g13m7.nextFrame();
			g14n7.nextFrame();
			g15o7.nextFrame();
		}
		break;
		
		case "g14n7":
		if (checkg14n7 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkg14n7 = true;
			bombsPushed.push(bombChild);
			f13m6.nextFrame();
			f14n6.nextFrame();
			f15o6.nextFrame();
			g13m7.nextFrame();
			g15o7.nextFrame();
			h13m8.nextFrame();
			h14n8.nextFrame();
			h15o8.nextFrame();
		}
		break;
		
		case "h14n8":
		if (checkh14n8 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkh14n8 = true;
			bombsPushed.push(bombChild);
			g13m7.nextFrame();
			g14n7.nextFrame();
			g15o7.nextFrame();
			h13m8.nextFrame();
			h15o8.nextFrame();
			i13m9.nextFrame();
			i14n9.nextFrame();
			i15o9.nextFrame();
		}
		break;
		
		case "i14n9":
		if (checki14n9 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checki14n9 = true;
			bombsPushed.push(bombChild);
			h13m8.nextFrame();
			h14n8.nextFrame();
			h15o8.nextFrame();
			i13m9.nextFrame();
			i15o9.nextFrame();
			j13m10.nextFrame();
			j14n10.nextFrame();
			j15o10.nextFrame();
		}
		break;
		
		case "j14n10":
		if (checkj14n10 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkj14n10 = true;
			bombsPushed.push(bombChild);
			i13m9.nextFrame();
			i14n9.nextFrame();
			i15o9.nextFrame();
			j13m10.nextFrame();
			j15o10.nextFrame();
			k13m11.nextFrame();
			k14n11.nextFrame();
			k15o11.nextFrame();
		}
		break;
		
		case "k14n11":
		if (checkk14n11 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkk14n11 = true;
			bombsPushed.push(bombChild);
			j13m10.nextFrame();
			j14n10.nextFrame();
			j15o10.nextFrame();
			k13m11.nextFrame();
			k15o11.nextFrame();
			l13m12.nextFrame();
			l14n12.nextFrame();
			l15o12.nextFrame();
		}
		break;
		
		case "l14n12":
		if (checkl14n12 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkl14n12 = true;
			bombsPushed.push(bombChild);
			k13m11.nextFrame();
			k14n11.nextFrame();
			k15o11.nextFrame();
			l13m12.nextFrame();
			l15o12.nextFrame();
			m13m13.nextFrame();
			m14n13.nextFrame();
			m15o13.nextFrame();
		}
		break;
		
		case "m14n13":
		if (checkm14n13 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkm14n13 = true;
			bombsPushed.push(bombChild);
			l13m12.nextFrame();
			l14n12.nextFrame();
			l15o12.nextFrame();
			m13m13.nextFrame();
			m15o13.nextFrame();
			n13m14.nextFrame();
			n14n14.nextFrame();
			n15o14.nextFrame();
		}
		break;
		
		case "n14n14":
		if (checkn14n14 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkn14n14 = true;
			bombsPushed.push(bombChild);
			m13m13.nextFrame();
			m14n13.nextFrame();
			m15o13.nextFrame();
			n13m14.nextFrame();
			n15o14.nextFrame();
			o13m15.nextFrame();
			o14n15.nextFrame();
			o15o15.nextFrame();
		}
		break;
		
		case "o14n15":
		if (checko14n15 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checko14n15 = true;
			bombsPushed.push(bombChild);
			n13m14.nextFrame();
			n14n14.nextFrame();
			n15o14.nextFrame();
			o13m15.nextFrame();
			o15o15.nextFrame();
			p13m16.nextFrame();
			p14n16.nextFrame();
			p15o16.nextFrame();
		}
		break;
		
		case "p14n16":
		if (checkp14n16 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkp14n16 = true;
			bombsPushed.push(bombChild);
			o13m15.nextFrame();
			o14n15.nextFrame();
			o15o15.nextFrame();
			p13m16.nextFrame();
			p15o16.nextFrame();
			q13m17.nextFrame();
			q14n17.nextFrame();
			q15o17.nextFrame();
		}
		break;
		
		case "q14n17":
		if (checkq14n17 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkq14n17 = true;
			bombsPushed.push(bombChild);
			p13m16.nextFrame();
			p14n16.nextFrame();
			p15o16.nextFrame();
			q13m17.nextFrame();
			q15o17.nextFrame();
			r13m18.nextFrame();
			r14n18.nextFrame();
			r15o18.nextFrame();
		}
		break;
		
		case "r14n18":
		if (checkr14n18 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkr14n18 = true;
			bombsPushed.push(bombChild);
			q13m17.nextFrame();
			q14n17.nextFrame();
			q15o17.nextFrame();
			r13m18.nextFrame();
			r15o18.nextFrame();
		}
		break;
		
		//row 15 15o
		case "a15o1":
		if (checka15o1 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checka15o1 = true;
			bombsPushed.push(bombChild);
			b16p2.nextFrame();
			b14n2.nextFrame();
			b15o2.nextFrame();
			a14n1.nextFrame();
			a16p1.nextFrame();
		}
		break;
		
		case "b15o2":
		if (checkb15o2 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkb15o2 = true;
			bombsPushed.push(bombChild);
			a14n1.nextFrame();
			a15o1.nextFrame();
			a16p1.nextFrame();
			b14n2.nextFrame();
			b16p2.nextFrame();
			c14n3.nextFrame();
			c15o3.nextFrame();
			c16p3.nextFrame();
		}
		break;
		
		case "c15o3":
		if (checkc15o3 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkc15o3 = true;
			bombsPushed.push(bombChild);
			b14n2.nextFrame();
			b15o2.nextFrame();
			b16p2.nextFrame();
			c14n3.nextFrame();
			c16p3.nextFrame();
			d14n4.nextFrame();
			d15o4.nextFrame();
			d16p4.nextFrame();
		}
		break;
		
		case "d15o4":
		if (checkd15o4 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkd15o4 = true;
			bombsPushed.push(bombChild);
			c14n3.nextFrame();
			c15o3.nextFrame();
			c16p3.nextFrame();
			d14n4.nextFrame();
			d16p4.nextFrame();
			e14n5.nextFrame();
			e15o5.nextFrame();
			e16p5.nextFrame();
		}
		break;
		
		case "e15o5":
		if (checke15o5 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checke15o5 = true;
			bombsPushed.push(bombChild);
			d14n4.nextFrame();
			d15o4.nextFrame();
			d16p4.nextFrame();
			e14n5.nextFrame();
			e16p5.nextFrame();
			f14n6.nextFrame();
			f15o6.nextFrame();
			f16p6.nextFrame();
		}
		break;
		
		case "f15o6":
		if (checkf15o6 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkf15o6 = true;
			bombsPushed.push(bombChild);
			e14n5.nextFrame();
			e15o5.nextFrame();
			e16p5.nextFrame();
			f14n6.nextFrame();
			f16p6.nextFrame();
			g14n7.nextFrame();
			g15o7.nextFrame();
			g16p7.nextFrame();
		}
		break;
		
		case "g15o7":
		if (checkg15o7 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkg15o7 = true;
			bombsPushed.push(bombChild);
			f14n6.nextFrame();
			f15o6.nextFrame();
			f16p6.nextFrame();
			g14n7.nextFrame();
			g16p7.nextFrame();
			h14n8.nextFrame();
			h15o8.nextFrame();
			h16p8.nextFrame();
		}
		break;
		
		case "h15o8":
		if (checkh15o8 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkh15o8 = true;
			bombsPushed.push(bombChild);
			g14n7.nextFrame();
			g15o7.nextFrame();
			g16p7.nextFrame();
			h14n8.nextFrame();
			h16p8.nextFrame();
			i14n9.nextFrame();
			i15o9.nextFrame();
			i16p9.nextFrame();
		}
		break;
		
		case "i15o9":
		if (checki15o9 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checki15o9 = true;
			bombsPushed.push(bombChild);
			h14n8.nextFrame();
			h15o8.nextFrame();
			h16p8.nextFrame();
			i14n9.nextFrame();
			i16p9.nextFrame();
			j14n10.nextFrame();
			j15o10.nextFrame();
			j16p10.nextFrame();
		}
		break;
		
		case "j15o10":
		if (checkj15o10 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkj15o10 = true;
			bombsPushed.push(bombChild);
			i14n9.nextFrame();
			i15o9.nextFrame();
			i16p9.nextFrame();
			j14n10.nextFrame();
			j16p10.nextFrame();
			k14n11.nextFrame();
			k15o11.nextFrame();
			k16p11.nextFrame();
		}
		break;
		
		case "k15o11":
		if (checkk15o11 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkk15o11 = true;
			bombsPushed.push(bombChild);
			j14n10.nextFrame();
			j15o10.nextFrame();
			j16p10.nextFrame();
			k14n11.nextFrame();
			k16p11.nextFrame();
			l14n12.nextFrame();
			l15o12.nextFrame();
			l16p12.nextFrame();
		}
		break;
		
		case "l15o12":
		if (checkl15o12 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkl15o12 = true;
			bombsPushed.push(bombChild);
			k14n11.nextFrame();
			k15o11.nextFrame();
			k16p11.nextFrame();
			l14n12.nextFrame();
			l16p12.nextFrame();
			m14n13.nextFrame();
			m15o13.nextFrame();
			m16p13.nextFrame();
		}
		break;
		
		case "m15o13":
		if (checkm15o13 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkm15o13 = true;
			bombsPushed.push(bombChild);
			l14n12.nextFrame();
			l15o12.nextFrame();
			l16p12.nextFrame();
			m14n13.nextFrame();
			m16p13.nextFrame();
			n14n14.nextFrame();
			n15o14.nextFrame();
			n16p14.nextFrame();
		}
		break;
		
		case "n15o14":
		if (checkn15o14 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkn15o14 = true;
			bombsPushed.push(bombChild);
			m14n13.nextFrame();
			m15o13.nextFrame();
			m16p13.nextFrame();
			n14n14.nextFrame();
			n16p14.nextFrame();
			o14n15.nextFrame();
			o15o15.nextFrame();
			o16p15.nextFrame();
		}
		break;
		
		case "o15o15":
		if (checko15o15 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checko15o15 = true;
			bombsPushed.push(bombChild);
			n14n14.nextFrame();
			n15o14.nextFrame();
			n16p14.nextFrame();
			o14n15.nextFrame();
			o16p15.nextFrame();
			p14n16.nextFrame();
			p15o16.nextFrame();
			p16p16.nextFrame();
		}
		break;
		
		case "p15o16":
		if (checkp15o16 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkp15o16 = true;
			bombsPushed.push(bombChild);
			o14n15.nextFrame();
			o15o15.nextFrame();
			o16p15.nextFrame();
			p14n16.nextFrame();
			p16p16.nextFrame();
			q14n17.nextFrame();
			q15o17.nextFrame();
			q16p17.nextFrame();
		}
		break;
		
		case "q15o17":
		if (checkq15o17 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkq15o17 = true;
			bombsPushed.push(bombChild);
			p14n16.nextFrame();
			p15o16.nextFrame();
			p16p16.nextFrame();
			q14n17.nextFrame();
			q16p17.nextFrame();
			r14n18.nextFrame();
			r15o18.nextFrame();
			r16p18.nextFrame();
		}
		break;
		
		case "r15o18":
		if (checkr15o18 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkr15o18 = true;
			bombsPushed.push(bombChild);
			q14n17.nextFrame();
			q15o17.nextFrame();
			q16p17.nextFrame();
			r14n18.nextFrame();
			r16p18.nextFrame();
		}
		break;
		
		//row 16 16p
		case "a16p1":
		if (checka16p1 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checka16p1 = true;
			bombsPushed.push(bombChild);
			b15o2.nextFrame();
			b16p2.nextFrame();
			b17q2.nextFrame();
			a15o1.nextFrame();
			a17q1.nextFrame();
		}
		break;
		
		case "b16p2":
		if (checkb16p2 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkb16p2 = true;
			bombsPushed.push(bombChild);
			a15o1.nextFrame();
			a16p1.nextFrame();
			a17q1.nextFrame();
			b15o2.nextFrame();
			b17q2.nextFrame();
			c15o3.nextFrame();
			c16p3.nextFrame();
			c17q3.nextFrame();
		}
		break;
		
		case "c16p3":
		if (checkc16p3 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkc16p3 = true;
			bombsPushed.push(bombChild);
			b15o2.nextFrame();
			b16p2.nextFrame();
			b17q2.nextFrame();
			c15o3.nextFrame();
			c17q3.nextFrame();
			d15o4.nextFrame();
			d16p4.nextFrame();
			d17q4.nextFrame();
		}
		break;
		
		case "d16p4":
		if (checkd16p4 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkd16p4 = true;
			bombsPushed.push(bombChild);
			c15o3.nextFrame();
			c16p3.nextFrame();
			c17q3.nextFrame();
			d15o4.nextFrame();
			d17q4.nextFrame();
			e15o5.nextFrame();
			e16p5.nextFrame();
			e17q5.nextFrame();
		}
		break;
		
		case "e16p5":
		if (checke16p5 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checke16p5 = true;
			bombsPushed.push(bombChild);
			d15o4.nextFrame();
			d16p4.nextFrame();
			d17q4.nextFrame();
			e15o5.nextFrame();
			e17q5.nextFrame();
			f15o6.nextFrame();
			f16p6.nextFrame();
			f17q6.nextFrame();
		}
		break;
		
		case "f16p6":
		if (checkf16p6 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkf16p6 = true;
			bombsPushed.push(bombChild);
			e15o5.nextFrame();
			e16p5.nextFrame();
			e17q5.nextFrame();
			f15o6.nextFrame();
			f17q6.nextFrame();
			g15o7.nextFrame();
			g16p7.nextFrame();
			g17q7.nextFrame();
		}
		break;
		
		case "g16p7":
		if (checkg16p7 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkg16p7 = true;
			bombsPushed.push(bombChild);
			f15o6.nextFrame();
			f16p6.nextFrame();
			f17q6.nextFrame();
			g15o7.nextFrame();
			g17q7.nextFrame();
			h15o8.nextFrame();
			h16p8.nextFrame();
			h17q8.nextFrame();
		}
		break;
		
		case "h16p8":
		if (checkh16p8 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkh16p8 = true;
			bombsPushed.push(bombChild);
			g15o7.nextFrame();
			g16p7.nextFrame();
			g17q7.nextFrame();
			h15o8.nextFrame();
			h17q8.nextFrame();
			i15o9.nextFrame();
			i16p9.nextFrame();
			i17q9.nextFrame();
		}
		break;
		
		case "i16p9":
		if (checki16p9 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checki16p9 = true;
			bombsPushed.push(bombChild);
			h15o8.nextFrame();
			h16p8.nextFrame();
			h17q8.nextFrame();
			i15o9.nextFrame();
			i17q9.nextFrame();
			j15o10.nextFrame();
			j16p10.nextFrame();
			j17q10.nextFrame();
		}
		break;
		
		case "j16p10":
		if (checkj16p10 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkj16p10 = true;
			bombsPushed.push(bombChild);
			i15o9.nextFrame();
			i16p9.nextFrame();
			i17q9.nextFrame();
			j15o10.nextFrame();
			j17q10.nextFrame();
			k15o11.nextFrame();
			k16p11.nextFrame();
			k17q11.nextFrame();
		}
		break;
		
		case "k16p11":
		if (checkk16p11 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkk16p11 = true;
			bombsPushed.push(bombChild);
			j15o10.nextFrame();
			j16p10.nextFrame();
			j17q10.nextFrame();
			k15o11.nextFrame();
			k17q11.nextFrame();
			l15o12.nextFrame();
			l16p12.nextFrame();
			l17q12.nextFrame();
		}
		break;
		
		case "l16p12":
		if (checkl16p12 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkl16p12 = true;
			bombsPushed.push(bombChild);
			k15o11.nextFrame();
			k16p11.nextFrame();
			k17q11.nextFrame();
			l15o12.nextFrame();
			l17q12.nextFrame();
			m15o13.nextFrame();
			m16p13.nextFrame();
			m17q13.nextFrame();
		}
		break;
		
		case "m16p13":
		if (checkm16p13 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkm16p13 = true;
			bombsPushed.push(bombChild);
			l15o12.nextFrame();
			l16p12.nextFrame();
			l17q12.nextFrame();
			m15o13.nextFrame();
			m17q13.nextFrame();
			n15o14.nextFrame();
			n16p14.nextFrame();
			n17q14.nextFrame();
		}
		break;
		
		case "n16p14":
		if (checkn16p14 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkn16p14 = true;
			bombsPushed.push(bombChild);
			m15o13.nextFrame();
			m16p13.nextFrame();
			m17q13.nextFrame();
			n15o14.nextFrame();
			n17q14.nextFrame();
			o15o15.nextFrame();
			o16p15.nextFrame();
			o17q15.nextFrame();
		}
		break;
		
		case "o16p15":
		if (checko16p15 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checko16p15 = true;
			bombsPushed.push(bombChild);
			n15o14.nextFrame();
			n16p14.nextFrame();
			n17q14.nextFrame();
			o15o15.nextFrame();
			o17q15.nextFrame();
			p15o16.nextFrame();
			p16p16.nextFrame();
			p17q16.nextFrame();
		}
		break;
		
		case "p16p16":
		if (checkp16p16 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkp16p16 = true;
			bombsPushed.push(bombChild);
			o15o15.nextFrame();
			o16p15.nextFrame();
			o17q15.nextFrame();
			p15o16.nextFrame();
			p17q16.nextFrame();
			q15o17.nextFrame();
			q16p17.nextFrame();
			q17q17.nextFrame();
		}
		break;
		
		case "q16p17":
		if (checkq16p17 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkq16p17 = true;
			bombsPushed.push(bombChild);
			p15o16.nextFrame();
			p16p16.nextFrame();
			p17q16.nextFrame();
			q15o17.nextFrame();
			q17q17.nextFrame();
			r15o18.nextFrame();
			r16p18.nextFrame();
			r17q18.nextFrame();
		}
		break;
		
		case "r16p18":
		if (checkr16p18 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkr16p18 = true;
			bombsPushed.push(bombChild);
			q15o17.nextFrame();
			q16p17.nextFrame();
			q17q17.nextFrame();
			r15o18.nextFrame();
			r17q18.nextFrame();
		}
		break;
		
		//row 17 17q
		case "a17q1":
		if (checka17q1 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checka17q1 = true;
			bombsPushed.push(bombChild);
			b16p2.nextFrame();
			b17q2.nextFrame();
			b18r2.nextFrame();
			a16p1.nextFrame();
			a18r1.nextFrame();
		}
		break;
		
		case "b17q2":
		if (checkb17q2 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkb17q2 = true;
			bombsPushed.push(bombChild);
			a16p1.nextFrame();
			a17q1.nextFrame();
			a18r1.nextFrame();
			b16p2.nextFrame();
			b18r2.nextFrame();
			c16p3.nextFrame();
			c17q3.nextFrame();
			c18r3.nextFrame();
			
		}
		break;
		
		case "c17q3":
		if (checkc17q3 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkc17q3 = true;
			bombsPushed.push(bombChild);
			b16p2.nextFrame();
			b17q2.nextFrame();
			b18r2.nextFrame();
			c16p3.nextFrame();
			c18r3.nextFrame();
			d16p4.nextFrame();
			d17q4.nextFrame();
			d18r4.nextFrame();
		}
		break;
		
		case "d17q4":
		if (checkd17q4 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkd17q4 = true;
			bombsPushed.push(bombChild);
			c16p3.nextFrame();
			c17q3.nextFrame();
			c18r3.nextFrame();
			d16p4.nextFrame();
			d18r4.nextFrame();
			e16p5.nextFrame();
			e17q5.nextFrame();
			e18r5.nextFrame();
		}
		break;
		
		case "e17q5":
		if (checke17q5 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checke17q5 = true;
			bombsPushed.push(bombChild);
			d16p4.nextFrame();
			d17q4.nextFrame();
			d18r4.nextFrame();
			e16p5.nextFrame();
			e18r5.nextFrame();
			f16p6.nextFrame();
			f17q6.nextFrame();
			f18r6.nextFrame();
		}
		break;
		
		case "f17q6":
		if (checkf17q6 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkf17q6 = true;
			bombsPushed.push(bombChild);
			e16p5.nextFrame();
			e17q5.nextFrame();
			e18r5.nextFrame();
			f16p6.nextFrame();
			f18r6.nextFrame();
			g16p7.nextFrame();
			g17q7.nextFrame();
			g18r7.nextFrame();
		}
		break;
		
		case "g17q7":
		if (checkg17q7 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkg17q7 = true;
			bombsPushed.push(bombChild);
			f16p6.nextFrame();
			f17q6.nextFrame();
			f18r6.nextFrame();
			g16p7.nextFrame();
			g18r7.nextFrame();
			h16p8.nextFrame();
			h17q8.nextFrame();
			h18r8.nextFrame();
		}
		break;
		
		case "h17q8":
		if (checkh17q8 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkh17q8 = true;
			bombsPushed.push(bombChild);
			g16p7.nextFrame();
			g17q7.nextFrame();
			g18r7.nextFrame();
			h16p8.nextFrame();
			h18r8.nextFrame();
			i16p9.nextFrame();
			i17q9.nextFrame();
			i18r9.nextFrame();
		}
		break;
		
		case "i17q9":
		if (checki17q9 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checki17q9 = true;
			bombsPushed.push(bombChild);
			h16p8.nextFrame();
			h17q8.nextFrame();
			h18r8.nextFrame();
			i16p9.nextFrame();
			i18r9.nextFrame();
			j16p10.nextFrame();
			j17q10.nextFrame();
			j18r10.nextFrame();
		}
		break;
		
		case "j17q10":
		if (checkj17q10 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkj17q10 = true;
			bombsPushed.push(bombChild);
			i16p9.nextFrame();
			i17q9.nextFrame();
			i18r9.nextFrame();
			j16p10.nextFrame();
			j18r10.nextFrame();
			k16p11.nextFrame();
			k17q11.nextFrame();
			k18r11.nextFrame();
		}
		break;
		
		case "k17q11":
		if (checkk17q11 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkk17q11 = true;
			bombsPushed.push(bombChild);
			j16p10.nextFrame();
			j17q10.nextFrame();
			j18r10.nextFrame();
			k16p11.nextFrame();
			k18r11.nextFrame();
			l16p12.nextFrame();
			l17q12.nextFrame();
			l18r12.nextFrame();
		}
		break;
		
		case "l17q12":
		if (checkl17q12 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkl17q12 = true;
			bombsPushed.push(bombChild);
			k16p11.nextFrame();
			k17q11.nextFrame();
			k18r11.nextFrame();
			l16p12.nextFrame();
			l18r12.nextFrame();
			m16p13.nextFrame();
			m17q13.nextFrame();
			m18r13.nextFrame();
		}
		break;
		
		case "m17q13":
		if (checkm17q13 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkm17q13 = true;
			bombsPushed.push(bombChild);
			l16p12.nextFrame();
			l17q12.nextFrame();
			l18r12.nextFrame();
			m16p13.nextFrame();
			m18r13.nextFrame();
			n16p14.nextFrame();
			n17q14.nextFrame();
			n18r14.nextFrame();
		}
		break;
		
		case "n17q14":
		if (checkn17q14 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkn17q14 = true;
			bombsPushed.push(bombChild);
			m16p13.nextFrame();
			m17q13.nextFrame();
			m18r13.nextFrame();
			n16p14.nextFrame();
			n18r14.nextFrame();
			o16p15.nextFrame();
			o17q15.nextFrame();
			o18r15.nextFrame();
		}
		break;
		
		case "o17q15":
		if (checko17q15 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checko17q15 = true;
			bombsPushed.push(bombChild);
			n16p14.nextFrame();
			n17q14.nextFrame();
			n18r14.nextFrame();
			o16p15.nextFrame();
			o18r15.nextFrame();
			p16p16.nextFrame();
			p17q16.nextFrame();
			p18r16.nextFrame();
		}
		break;
		
		case "p17q16":
		if (checkp17q16 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkp17q16 = true;
			bombsPushed.push(bombChild);
			o16p15.nextFrame();
			o17q15.nextFrame();
			o18r15.nextFrame();
			p16p16.nextFrame();
			p18r16.nextFrame();
			q16p17.nextFrame();
			q17q17.nextFrame();
			q18r17.nextFrame();
		}
		break;
		
		case "q17q17":
		if (checkq17q17 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkq17q17 = true;
			bombsPushed.push(bombChild);
			p16p16.nextFrame();
			p17q16.nextFrame();
			p18r16.nextFrame();
			q16p17.nextFrame();
			q18r17.nextFrame();
			r16p18.nextFrame();
			r17q18.nextFrame();
			r18r18.nextFrame();
		}
		break;
		
		case "r17q18":
		if (checkr17q18 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkr17q18 = true;
			bombsPushed.push(bombChild);
			q16p17.nextFrame();
			q17q17.nextFrame();
			q18r17.nextFrame();
			r16p18.nextFrame();
			r18r18.nextFrame();
		}
		break;
		
		//row 18 18r
		case "a18r1":
		if (checka18r1 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checka18r1 = true;
			bombsPushed.push(bombChild);
			b17q2.nextFrame();
			b18r2.nextFrame();
			a17q1.nextFrame();
		}
		break;
		
		case "b18r2":
		if (checkb18r2 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkb18r2 = true;
			bombsPushed.push(bombChild);
			a17q1.nextFrame();
			a18r1.nextFrame();
			b17q2.nextFrame();
			c17q3.nextFrame();
			c18r3.nextFrame();
			
		}
		break;
		
		case "c18r3":
		if (checkc18r3 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkc18r3 = true;
			bombsPushed.push(bombChild);
			b17q2.nextFrame();
			b18r2.nextFrame();
			c17q3.nextFrame();
			d17q4.nextFrame();
			d18r4.nextFrame();
		}
		break;
		
		case "d18r4":
		if (checkd18r4 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkd18r4 = true;
			bombsPushed.push(bombChild);
			c17q3.nextFrame();
			c18r3.nextFrame();
			d17q4.nextFrame();
			e17q5.nextFrame();
			e18r5.nextFrame();
		}
		break;
		
		case "e18r5":
		if (checke18r5 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checke18r5 = true;
			bombsPushed.push(bombChild);
			d17q4.nextFrame();
			d18r4.nextFrame();
			e17q5.nextFrame();
			f17q6.nextFrame();
			f18r6.nextFrame();
		}
		break;
		
		case "f18r6":
		if (checkf18r6 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkf18r6 = true;
			bombsPushed.push(bombChild);
			e17q5.nextFrame();
			e18r5.nextFrame();
			f17q6.nextFrame();
			g17q7.nextFrame();
			g18r7.nextFrame();
		}
		break;
		
		case "g18r7":
		if (checkg18r7 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkg18r7 = true;
			bombsPushed.push(bombChild);
			f17q6.nextFrame();
			f18r6.nextFrame();
			g17q7.nextFrame();
			h17q8.nextFrame();
			h18r8.nextFrame();
		}
		break;
		
		case "h18r8":
		if (checkh18r8 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkh18r8 = true;
			bombsPushed.push(bombChild);
			g17q7.nextFrame();
			g18r7.nextFrame();
			h17q8.nextFrame();
			i17q9.nextFrame();
			i18r9.nextFrame();
		}
		break;
		
		case "i18r9":
		if (checki18r9 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checki18r9 = true;
			bombsPushed.push(bombChild);
			h17q8.nextFrame();
			h18r8.nextFrame();
			i17q9.nextFrame();
			j17q10.nextFrame();
			j18r10.nextFrame();
		}
		break;
		
		case "j18r10":
		if (checkj18r10 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkj18r10 = true;
			bombsPushed.push(bombChild);
			i17q9.nextFrame();
			i18r9.nextFrame();
			j17q10.nextFrame();
			k17q11.nextFrame();
			k18r11.nextFrame();
		}
		break;
		
		case "k18r11":
		if (checkk18r11 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkk18r11 = true;
			bombsPushed.push(bombChild);
			j17q10.nextFrame();
			j18r10.nextFrame();
			k17q11.nextFrame();
			l17q12.nextFrame();
			l18r12.nextFrame();
		}
		break;
		
		case "l18r12":
		if (checkl18r12 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkl18r12 = true;
			bombsPushed.push(bombChild);
			k17q11.nextFrame();
			k18r11.nextFrame();
			l17q12.nextFrame();
			m17q13.nextFrame();
			m18r13.nextFrame();
		}
		break;
		
		case "m18r13":
		if (checkm18r13 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkm18r13 = true;
			bombsPushed.push(bombChild);
			l17q12.nextFrame();
			l18r12.nextFrame();
			m17q13.nextFrame();
			n17q14.nextFrame();
			n18r14.nextFrame();
		}
		break;
		
		case "n18r14":
		if (checkn18r14 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkn18r14 = true;
			bombsPushed.push(bombChild);
			m17q13.nextFrame();
			m18r13.nextFrame();
			n17q14.nextFrame();
			o17q15.nextFrame();
			o18r15.nextFrame();
		}
		break;
		
		case "o18r15":
		if (checko18r15 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checko18r15 = true;
			bombsPushed.push(bombChild);
			n17q14.nextFrame();
			n18r14.nextFrame();
			o17q15.nextFrame();
			p17q16.nextFrame();
			p18r16.nextFrame();
		}
		break;
		
		case "p18r16":
		if (checkp18r16 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkp18r16 = true;
			bombsPushed.push(bombChild);
			o17q15.nextFrame();
			o18r15.nextFrame();
			p17q16.nextFrame();
			q17q17.nextFrame();
			q18r17.nextFrame();
		}
		break;
		
		case "q18r17":
		if (checkq18r17 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkq18r17 = true;
			bombsPushed.push(bombChild);
			p17q16.nextFrame();
			p18r16.nextFrame();
			q17q17.nextFrame();
			r17q18.nextFrame();
			r18r18.nextFrame();
		}
		break;
		
		case "r18r18":
		if (checkr18r18 == false)
		{
			stage.addChild(bombChild);
			bombChild.x = placeBomb.x;
			bombChild.y = placeBomb.y;
			bombs -= 1;
			checkr18r18 = true;
			bombsPushed.push(bombChild);
			q17q17.nextFrame();
			q18r17.nextFrame();
			r17q18.nextFrame();
		}
		break;
	}
	
	for(var i:int = 0; i<bombsPushed.length; i++)
	{
		bombsPushed[i].alpha = 0;
	}
	
	if (bombs == 0)
	{
		stage.removeEventListener(Event.ENTER_FRAME, checkBombs);
		trace("bombs are done");
		loadingScreen.visible = false;
		for (var k:int = 0; k<bombsPushed.length; k++)
		{
			bombsPushed[k].mouseEnabled = false;
			//bombsPushed[k].addEventListener(MouseEvent.CLICK, kaBOOM);
		}
	}		
}

for (var h:int = 0; h<buttonArray.length; h++)
{
	buttonArray[h].addEventListener(MouseEvent.CLICK, checkBomb);
	buttonArray[h].addEventListener(MouseEvent.RIGHT_CLICK, placeFlag);
}


for (var g:int = 0; g<flagArray.length; g++)
{
	flagArray[g].addEventListener(MouseEvent.RIGHT_CLICK, placeFlag);
}



//function kaBOOM(event:MouseEvent):void
//{
//	stage.removeEventListener(Event.ENTER_FRAME, loseBoom);
//}


var flagsOut:Number =  0;
var correctFlags:Number = 0;

youWin.visible = false;
youLose.visible = false;

function loseBoom(event:Event):void
{
	stage.removeEventListener(Event.ENTER_FRAME, loseBoom);
	youLose.visible = true;
	restart.visible = true;
	restart.addEventListener(MouseEvent.CLICK, startOver);
}

function checkForWin(event:Event):void
{
	if (flagsOut == totalBombs && correctFlags == totalBombs)
	{
		youWin.visible = true;
		restart.visible = true;
		restart.addEventListener(MouseEvent.CLICK, startOver);
	}
	stage.removeEventListener(Event.ENTER_FRAME, checkForWin);
}

function startOver(event:MouseEvent):void
{
	restart.removeEventListener(MouseEvent.CLICK, startOver);
	gotoAndStop(2);
	for (var b:int = 0; b<bombsPushed.length; b++)
	{
		stage.removeChild(bombsPushed[b]);
	}
	
	for (var g:int = 0; g<flagArray.length; g++)
	{
		flagArray[g].visible = false;
	}
	for (var h:int = 0; h<buttonArray.length; h++)
	{
		buttonArray[h].visible = true;
	}
	
	for (var d:int = 0; d<hitArray.length; d++)
	{
		hitArray[d].gotoAndStop(1);
	}
		
	bombs = 10;
	flagsOut = 0;
	correctFlags = 0;
	//stage.addEventListener(Event.ENTER_FRAME, checkBombs);
	youWin.visible = false;
	restart.visible = false;
	
	//row 1 Booleans
	checka1a1 = false;
	checkb1a2 = false;
	checkc1a3 = false;
	checkd1a4 = false;
	checke1a5 = false;
	checkf1a6 = false;
	checkg1a7 = false;
	checkh1a8 = false;
	checki1a9 = false;
	checkj1a10 = false;
	checkk1a11 = false;
	checkl1a12 = false;
	checkm1a13 = false;
	checkn1a14 = false;
	checko1a15 = false;
	checkp1a16 = false;
	checkq1a17 = false;
	checkr1a18 = false;

	//row 2 Booleans
	checka2b1 = false;
	checkb2b2 = false;
	checkc2b3 = false;
	checkd2b4 = false;
	checke2b5 = false;
	checkf2b6 = false;
	checkg2b7 = false;
	checkh2b8 = false;
	checki2b9 = false;
	checkj2b10 = false;
	checkk2b11 = false;
	checkl2b12 = false;
	checkm2b13 = false;
	checkn2b14 = false;
	checko2b15 = false;
	checkp2b16 = false;
	checkq2b17 = false;
	checkr2b18 = false;

	//row 3 Booleans
	checka3c1 = false;
	checkb3c2 = false;
	checkc3c3 = false;
	checkd3c4 = false;
	checke3c5 = false;
	checkf3c6 = false;
	checkg3c7 = false;
	checkh3c8 = false;
	checki3c9 = false;
	checkj3c10 = false;
	checkk3c11 = false;
	checkl3c12 = false;
	checkm3c13 = false;
	checkn3c14 = false;
	checko3c15 = false;
	checkp3c16 = false;
	checkq3c17 = false;
	checkr3c18 = false;

	//row 4 Booleans
	checka4d1 = false;
	checkb4d2 = false;
	checkc4d3 = false;
	checkd4d4 = false;
	checke4d5 = false;
	checkf4d6 = false;
	checkg4d7 = false;
	checkh4d8 = false;
	checki4d9 = false;
	checkj4d10 = false;
	checkk4d11 = false;
	checkl4d12 = false;
	checkm4d13 = false;
	checkn4d14 = false;
	checko4d15 = false;
	checkp4d16 = false;
	checkq4d17 = false;
	checkr4d18 = false;

	//row 5 Booleans
	checka5e1 = false;
	checkb5e2 = false;
	checkc5e3 = false;
	checkd5e4 = false;
	checke5e5 = false;
	checkf5e6 = false;
	checkg5e7 = false;
	checkh5e8 = false;
	checki5e9 = false;
	checkj5e10 = false;
	checkk5e11 = false;
	checkl5e12 = false;
	checkm5e13 = false;
	checkn5e14 = false;
	checko5e15 = false;
	checkp5e16 = false;
	checkq5e17 = false;
	checkr5e18 = false;

	//row 6 Booleans
	checka6f1 = false;
	checkb6f2 = false;
	checkc6f3 = false;
	checkd6f4 = false;
	checke6f5 = false;
	checkf6f6 = false;
	checkg6f7 = false;
	checkh6f8 = false;
	checki6f9 = false;
	checkj6f10 = false;
	checkk6f11 = false;
	checkl6f12 = false;
	checkm6f13 = false;
	checkn6f14 = false;
	checko6f15 = false;
	checkp6f16 = false;
	checkq6f17 = false;
	checkr6f18 = false;

	//row 7 Booleans
	checka7g1 = false;
	checkb7g2 = false;
	checkc7g3 = false;
	checkd7g4 = false;
	checke7g5 = false;
	checkf7g6 = false;
	checkg7g7 = false;
	checkh7g8 = false;
	checki7g9 = false;
	checkj7g10 = false;
	checkk7g11 = false;
	checkl7g12 = false;
	checkm7g13 = false;
	checkn7g14 = false;
	checko7g15 = false;
	checkp7g16 = false;
	checkq7g17 = false;
	checkr7g18 = false;

	//row 8 Booleans
	checka8h1 = false;
	checkb8h2 = false;
	checkc8h3 = false;
	checkd8h4 = false;
	checke8h5 = false;
	checkf8h6 = false;
	checkg8h7 = false;
	checkh8h8 = false;
	checki8h9 = false;
	checkj8h10 = false;
	checkk8h11 = false;
	checkl8h12 = false;
	checkm8h13 = false;
	checkn8h14 = false;
	checko8h15 = false;
	checkp8h16 = false;
	checkq8h17 = false;
	checkr8h18 = false;

	//row 9 Booleans
	checka9i1 = false;
	checkb9i2 = false;
	checkc9i3 = false;
	checkd9i4 = false;
	checke9i5 = false;
	checkf9i6 = false;
	checkg9i7 = false;
	checkh9i8 = false;
	checki9i9 = false;
	checkj9i10 = false;
	checkk9i11 = false;
	checkl9i12 = false;
	checkm9i13 = false;
	checkn9i14 = false;
	checko9i15 = false;
	checkp9i16 = false;
	checkq9i17 = false;
	checkr9i18 = false;

	//row 10 Booleans
	checka10j1 = false;
	checkb10j2 = false;
	checkc10j3 = false;
	checkd10j4 = false;
	checke10j5 = false;
	checkf10j6 = false;
	checkg10j7 = false;
	checkh10j8 = false;
	checki10j9 = false;
	checkj10j10 = false;
	checkk10j11 = false;
	checkl10j12 = false;
	checkm10j13 = false;
	checkn10j14 = false;
	checko10j15 = false;
	checkp10j16 = false;
	checkq10j17 = false;
	checkr10j18 = false;

	//row 11 Booleans
	checka11k1 = false;
	checkb11k2 = false;
	checkc11k3 = false;
	checkd11k4 = false;
	checke11k5 = false;
	checkf11k6 = false;
	checkg11k7 = false;
	checkh11k8 = false;
	checki11k9 = false;
	checkj11k10 = false;
	checkk11k11 = false;
	checkl11k12 = false;
	checkm11k13 = false;
	checkn11k14 = false;
	checko11k15 = false;
	checkp11k16 = false;
	checkq11k17 = false;
	checkr11k18 = false;

	//row 12 Booleans
	checka12l1 = false;
	checkb12l2 = false;
	checkc12l3 = false;
	checkd12l4 = false;
	checke12l5 = false;
	checkf12l6 = false;
	checkg12l7 = false;
	checkh12l8 = false;
	checki12l9 = false;
	checkj12l10 = false;
	checkk12l11 = false;
	checkl12l12 = false;
	checkm12l13 = false;
	checkn12l14 = false;
	checko12l15 = false;
	checkp12l16 = false;
	checkq12l17 = false;
	checkr12l18 = false;

	//row 13 Booleans
	checka13m1 = false;
	checkb13m2 = false;
	checkc13m3 = false;
	checkd13m4 = false;
	checke13m5 = false;
	checkf13m6 = false;
	checkg13m7 = false;
	checkh13m8 = false;
	checki13m9 = false;
	checkj13m10 = false;
	checkk13m11 = false;
	checkl13m12 = false;
	checkm13m13 = false;
	checkn13m14 = false;
	checko13m15 = false;
	checkp13m16 = false;
	checkq13m17 = false;
	checkr13m18 = false;

	//row 14 Booleans
	checka14n1 = false;
	checkb14n2 = false;
	checkc14n3 = false;
	checkd14n4 = false;
	checke14n5 = false;
	checkf14n6 = false;
	checkg14n7 = false;
	checkh14n8 = false;
	checki14n9 = false;
	checkj14n10 = false;
	checkk14n11 = false;
	checkl14n12 = false;
	checkm14n13 = false;
	checkn14n14 = false;
	checko14n15 = false;
	checkp14n16 = false;
	checkq14n17 = false;
	checkr14n18 = false;

	//row 15 Booleans
	checka15o1 = false;
	checkb15o2 = false;
	checkc15o3 = false;
	checkd15o4 = false;
	checke15o5 = false;
	checkf15o6 = false;
	checkg15o7 = false;
	checkh15o8 = false;
	checki15o9 = false;
	checkj15o10 = false;
	checkk15o11 = false;
	checkl15o12 = false;
	checkm15o13 = false;
	checkn15o14 = false;
	checko15o15 = false;
	checkp15o16 = false;
	checkq15o17 = false;
	checkr15o18 = false;

	//row 16 Booleans
	checka16p1 = false;
	checkb16p2 = false;
	checkc16p3 = false;
	checkd16p4 = false;
	checke16p5 = false;
	checkf16p6 = false;
	checkg16p7 = false;
	checkh16p8 = false;
	checki16p9 = false;
	checkj16p10 = false;
	checkk16p11 = false;
	checkl16p12 = false;
	checkm16p13 = false;
	checkn16p14 = false;
	checko16p15 = false;
	checkp16p16 = false;
	checkq16p17 = false;
	checkr16p18 = false;

	//row 17 Booleans
	checka17q1 = false;
	checkb17q2 = false;
	checkc17q3 = false;
	checkd17q4 = false;
	checke17q5 = false;
	checkf17q6 = false;
	checkg17q7 = false;
	checkh17q8 = false;
	checki17q9 = false;
	checkj17q10 = false;
	checkk17q11 = false;
	checkl17q12 = false;
	checkm17q13 = false;
	checkn17q14 = false;
	checko17q15 = false;
	checkp17q16 = false;
	checkq17q17 = false;
	checkr17q18 = false;

	//row 18 Booleans
	checka18r1 = false;
	checkb18r2 = false;
	checkc18r3 = false;
	checkd18r4 = false;
	checke18r5 = false;
	checkf18r6 = false;
	checkg18r7 = false;
	checkh18r8 = false;
	checki18r9 = false;
	checkj18r10 = false;
	checkk18r11 = false;
	checkl18r12 = false;
	checkm18r13 = false;
	checkn18r14 = false;
	checko18r15 = false;
	checkp18r16 = false;
	checkq18r17 = false;
	checkr18r18 = false;
	
	//row 1 Visibility Booleans
	invisiblea1a1 = false;
	invisibleb1a2 = false;
	invisiblec1a3 = false;
	invisibled1a4 = false;
	invisiblee1a5 = false;
	invisiblef1a6 = false;
	invisibleg1a7 = false;
	invisibleh1a8 = false;
	invisiblei1a9 = false;
	invisiblej1a10 = false;
	invisiblek1a11 = false;
	invisiblel1a12 = false;
	invisiblem1a13 = false;
	invisiblen1a14 = false;
	invisibleo1a15 = false;
	invisiblep1a16 = false;
	invisibleq1a17 = false;
	invisibler1a18 = false;

	//row 2 Booleans
	invisiblea2b1 = false;
	invisibleb2b2 = false;
	invisiblec2b3 = false;
	invisibled2b4 = false;
	invisiblee2b5 = false;
	invisiblef2b6 = false;
	invisibleg2b7 = false;
	invisibleh2b8 = false;
	invisiblei2b9 = false;
	invisiblej2b10 = false;
	invisiblek2b11 = false;
	invisiblel2b12 = false;
	invisiblem2b13 = false;
	invisiblen2b14 = false;
	invisibleo2b15 = false;
	invisiblep2b16 = false;
	invisibleq2b17 = false;
	invisibler2b18 = false;

	//row 3 Booleans
	invisiblea3c1 = false;
	invisibleb3c2 = false;
	invisiblec3c3 = false;
	invisibled3c4 = false;
	invisiblee3c5 = false;
	invisiblef3c6 = false;
	invisibleg3c7 = false;
	invisibleh3c8 = false;
	invisiblei3c9 = false;
	invisiblej3c10 = false;
	invisiblek3c11 = false;
	invisiblel3c12 = false;
	invisiblem3c13 = false;
	invisiblen3c14 = false;
	invisibleo3c15 = false;
	invisiblep3c16 = false;
	invisibleq3c17 = false;
	invisibler3c18 = false;

	//row 4 Booleans
	invisiblea4d1 = false;
	invisibleb4d2 = false;
	invisiblec4d3 = false;
	invisibled4d4 = false;
	invisiblee4d5 = false;
	invisiblef4d6 = false;
	invisibleg4d7 = false;
	invisibleh4d8 = false;
	invisiblei4d9 = false;
	invisiblej4d10 = false;
	invisiblek4d11 = false;
	invisiblel4d12 = false;
	invisiblem4d13 = false;
	invisiblen4d14 = false;
	invisibleo4d15 = false;
	invisiblep4d16 = false;
	invisibleq4d17 = false;
	invisibler4d18 = false;

	//row 5 Booleans
	invisiblea5e1 = false;
	invisibleb5e2 = false;
	invisiblec5e3 = false;
	invisibled5e4 = false;
	invisiblee5e5 = false;
	invisiblef5e6 = false;
	invisibleg5e7 = false;
	invisibleh5e8 = false;
	invisiblei5e9 = false;
	invisiblej5e10 = false;
	invisiblek5e11 = false;
	invisiblel5e12 = false;
	invisiblem5e13 = false;
	invisiblen5e14 = false;
	invisibleo5e15 = false;
	invisiblep5e16 = false;
	invisibleq5e17 = false;
	invisibler5e18 = false;

	//row 6 Booleans
	invisiblea6f1 = false;
	invisibleb6f2 = false;
	invisiblec6f3 = false;
	invisibled6f4 = false;
	invisiblee6f5 = false;
	invisiblef6f6 = false;
	invisibleg6f7 = false;
	invisibleh6f8 = false;
	invisiblei6f9 = false;
	invisiblej6f10 = false;
	invisiblek6f11 = false;
	invisiblel6f12 = false;
	invisiblem6f13 = false;
	invisiblen6f14 = false;
	invisibleo6f15 = false;
	invisiblep6f16 = false;
	invisibleq6f17 = false;
	invisibler6f18 = false;

	//row 7 Booleans
	invisiblea7g1 = false;
	invisibleb7g2 = false;
	invisiblec7g3 = false;
	invisibled7g4 = false;
	invisiblee7g5 = false;
	invisiblef7g6 = false;
	invisibleg7g7 = false;
	invisibleh7g8 = false;
	invisiblei7g9 = false;
	invisiblej7g10 = false;
	invisiblek7g11 = false;
	invisiblel7g12 = false;
	invisiblem7g13 = false;
	invisiblen7g14 = false;
	invisibleo7g15 = false;
	invisiblep7g16 = false;
	invisibleq7g17 = false;
	invisibler7g18 = false;

	//row 8 Booleans
	invisiblea8h1 = false;
	invisibleb8h2 = false;
	invisiblec8h3 = false;
	invisibled8h4 = false;
	invisiblee8h5 = false;
	invisiblef8h6 = false;
	invisibleg8h7 = false;
	invisibleh8h8 = false;
	invisiblei8h9 = false;
	invisiblej8h10 = false;
	invisiblek8h11 = false;
	invisiblel8h12 = false;
	invisiblem8h13 = false;
	invisiblen8h14 = false;
	invisibleo8h15 = false;
	invisiblep8h16 = false;
	invisibleq8h17 = false;
	invisibler8h18 = false;

	//row 9 Booleans
	invisiblea9i1 = false;
	invisibleb9i2 = false;
	invisiblec9i3 = false;
	invisibled9i4 = false;
	invisiblee9i5 = false;
	invisiblef9i6 = false;
	invisibleg9i7 = false;
	invisibleh9i8 = false;
	invisiblei9i9 = false;
	invisiblej9i10 = false;
	invisiblek9i11 = false;
	invisiblel9i12 = false;
	invisiblem9i13 = false;
	invisiblen9i14 = false;
	invisibleo9i15 = false;
	invisiblep9i16 = false;
	invisibleq9i17 = false;
	invisibler9i18 = false;

	//row 10 Booleans
	invisiblea10j1 = false;
	invisibleb10j2 = false;
	invisiblec10j3 = false;
	invisibled10j4 = false;
	invisiblee10j5 = false;
	invisiblef10j6 = false;
	invisibleg10j7 = false;
	invisibleh10j8 = false;
	invisiblei10j9 = false;
	invisiblej10j10 = false;
	invisiblek10j11 = false;
	invisiblel10j12 = false;
	invisiblem10j13 = false;
	invisiblen10j14 = false;
	invisibleo10j15 = false;
	invisiblep10j16 = false;
	invisibleq10j17 = false;
	invisibler10j18 = false;

	//row 11 Booleans
	invisiblea11k1 = false;
	invisibleb11k2 = false;
	invisiblec11k3 = false;
	invisibled11k4 = false;
	invisiblee11k5 = false;
	invisiblef11k6 = false;
	invisibleg11k7 = false;
	invisibleh11k8 = false;
	invisiblei11k9 = false;
	invisiblej11k10 = false;
	invisiblek11k11 = false;
	invisiblel11k12 = false;
	invisiblem11k13 = false;
	invisiblen11k14 = false;
	invisibleo11k15 = false;
	invisiblep11k16 = false;
	invisibleq11k17 = false;
	invisibler11k18 = false;

	//row 12 Booleans
	invisiblea12l1 = false;
	invisibleb12l2 = false;
	invisiblec12l3 = false;
	invisibled12l4 = false;
	invisiblee12l5 = false;
	invisiblef12l6 = false;
	invisibleg12l7 = false;
	invisibleh12l8 = false;
	invisiblei12l9 = false;
	invisiblej12l10 = false;
	invisiblek12l11 = false;
	invisiblel12l12 = false;
	invisiblem12l13 = false;
	invisiblen12l14 = false;
	invisibleo12l15 = false;
	invisiblep12l16 = false;
	invisibleq12l17 = false;
	invisibler12l18 = false;

	//row 13 Booleans
	invisiblea13m1 = false;
	invisibleb13m2 = false;
	invisiblec13m3 = false;
	invisibled13m4 = false;
	invisiblee13m5 = false;
	invisiblef13m6 = false;
	invisibleg13m7 = false;
	invisibleh13m8 = false;
	invisiblei13m9 = false;
	invisiblej13m10 = false;
	invisiblek13m11 = false;
	invisiblel13m12 = false;
	invisiblem13m13 = false;
	invisiblen13m14 = false;
	invisibleo13m15 = false;
	invisiblep13m16 = false;
	invisibleq13m17 = false;
	invisibler13m18 = false;

	//row 14 Booleans
	invisiblea14n1 = false;
	invisibleb14n2 = false;
	invisiblec14n3 = false;
	invisibled14n4 = false;
	invisiblee14n5 = false;
	invisiblef14n6 = false;
	invisibleg14n7 = false;
	invisibleh14n8 = false;
	invisiblei14n9 = false;
	invisiblej14n10 = false;
	invisiblek14n11 = false;
	invisiblel14n12 = false;
	invisiblem14n13 = false;
	invisiblen14n14 = false;
	invisibleo14n15 = false;
	invisiblep14n16 = false;
	invisibleq14n17 = false;
	invisibler14n18 = false;

	//row 15 Booleans
	invisiblea15o1 = false;
	invisibleb15o2 = false;
	invisiblec15o3 = false;
	invisibled15o4 = false;
	invisiblee15o5 = false;
	invisiblef15o6 = false;
	invisibleg15o7 = false;
	invisibleh15o8 = false;
	invisiblei15o9 = false;
	invisiblej15o10 = false;
	invisiblek15o11 = false;
	invisiblel15o12 = false;
	invisiblem15o13 = false;
	invisiblen15o14 = false;
	invisibleo15o15 = false;
	invisiblep15o16 = false;
	invisibleq15o17 = false;
	invisibler15o18 = false;

	//row 16 Booleans
	invisiblea16p1 = false;
	invisibleb16p2 = false;
	invisiblec16p3 = false;
	invisibled16p4 = false;
	invisiblee16p5 = false;
	invisiblef16p6 = false;
	invisibleg16p7 = false;
	invisibleh16p8 = false;
	invisiblei16p9 = false;
	invisiblej16p10 = false;
	invisiblek16p11 = false;
	invisiblel16p12 = false;
	invisiblem16p13 = false;
	invisiblen16p14 = false;
	invisibleo16p15 = false;
	invisiblep16p16 = false;
	invisibleq16p17 = false;
	invisibler16p18 = false;

	//row 17 Booleans
	invisiblea17q1 = false;
	invisibleb17q2 = false;
	invisiblec17q3 = false;
	invisibled17q4 = false;
	invisiblee17q5 = false;
	invisiblef17q6 = false;
	invisibleg17q7 = false;
	invisibleh17q8 = false;
	invisiblei17q9 = false;
	invisiblej17q10 = false;
	invisiblek17q11 = false;
	invisiblel17q12 = false;
	invisiblem17q13 = false;
	invisiblen17q14 = false;
	invisibleo17q15 = false;
	invisiblep17q16 = false;
	invisibleq17q17 = false;
	invisibler17q18 = false;

	//row 18 Booleans
	invisiblea18r1 = false;
	invisibleb18r2 = false;
	invisiblec18r3 = false;
	invisibled18r4 = false;
	invisiblee18r5 = false;
	invisiblef18r6 = false;
	invisibleg18r7 = false;
	invisibleh18r8 = false;
	invisiblei18r9 = false;
	invisiblej18r10 = false;
	invisiblek18r11 = false;
	invisiblel18r12 = false;
	invisiblem18r13 = false;
	invisiblen18r14 = false;
	invisibleo18r15 = false;
	invisiblep18r16 = false;
	invisibleq18r17 = false;
	invisibler18r18 = false;
}

function placeFlag(event:MouseEvent):void
{
	
	switch (event.target.name)
	{
		//row 1
		case "a1a1Btn":
		case "a1a1Flag":
			if (a1a1Flag.visible == true)
			{
				a1a1Flag.visible = false;
				flagsOut -= 1;
				stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checka1a1 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (a1a1Flag.visible == false)
			{
				a1a1Flag.visible = true;
				flagsOut += 1;
				stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checka1a1 == true)
				{
					correctFlags += 1;
				}
			}
		break;
		
		case "b1a2Btn":
		case "b1a2Flag":
			if (b1a2Flag.visible == true)
			{
				b1a2Flag.visible = false;
				flagsOut -= 1; 
				stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkb1a2 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (b1a2Flag.visible == false)
			{
				b1a2Flag.visible = true;
				flagsOut += 1; 
				stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkb1a2 == true)
				{
					
					correctFlags += 1;
				}
			}
		break;
		
		case "c1a3Btn":
		case "c1a3Flag":
			if (c1a3Flag.visible == true)
			{
				c1a3Flag.visible = false;
				flagsOut -= 1; 
				stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkc1a3 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (c1a3Flag.visible == false)
			{
				c1a3Flag.visible = true;
				flagsOut += 1; 
				stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkc1a3 == true)
				{
					
					correctFlags += 1;
				}
			}
		break;
		
		case "d1a4Btn":
		case "d1a4Flag":
			if (d1a4Flag.visible == true)
			{
				d1a4Flag.visible = false;
				flagsOut -= 1; 
				stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkd1a4 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (d1a4Flag.visible == false)
			{
				d1a4Flag.visible = true;
				flagsOut += 1; 
				stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkd1a4 == true)
				{
					
					correctFlags += 1;
				}
			}
		break;
		
		case "e1a5Btn":
		case "e1a5Flag":
			if (e1a5Flag.visible == true)
			{
				e1a5Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checke1a5 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (e1a5Flag.visible == false)
			{
				e1a5Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checke1a5 == true)
				{
					
					correctFlags += 1;
				}
			}
		break;
		
		case "f1a6Btn":
		case "f1a6Flag":
			if (f1a6Flag.visible == true)
			{
				f1a6Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkf1a6 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (f1a6Flag.visible == false)
			{
				f1a6Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkf1a6 == true)
				{
					
					correctFlags += 1;
				}
			}
		break;
		
		case "g1a7Btn":
		case "g1a7Flag":
			if (g1a7Flag.visible == true)
			{
				g1a7Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkg1a7 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (g1a7Flag.visible == false)
			{
				g1a7Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkg1a7 == true)
				{
					
					correctFlags += 1;
				}
			}
		break;
		
		case "h1a8Btn":
		case "h1a8Flag":
			if (h1a8Flag.visible == true)
			{
				h1a8Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkh1a8 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (h1a8Flag.visible == false)
			{
				h1a8Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkh1a8 == true)
				{
					
					correctFlags += 1;
				}
			}
		break;
		
		case "i1a9Btn":
		case "i1a9Flag":
			if (i1a9Flag.visible == true)
			{
				i1a9Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checki1a9 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (i1a9Flag.visible == false)
			{
				i1a9Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checki1a9 == true)
				{
					
					correctFlags += 1;
				}
			}
		break;
		
		case "j1a10Btn":
		case "j1a10Flag":
			if (j1a10Flag.visible == true)
			{
				j1a10Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkj1a10 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (j1a10Flag.visible == false)
			{
				j1a10Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkj1a10 == true)
				{
					
					correctFlags += 1;
				}
			}
		break;
		
		case "k1a11Btn":
		case "k1a11Flag":
			if (k1a11Flag.visible == true)
			{
				k1a11Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkk1a11 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (k1a11Flag.visible == false)
			{
				k1a11Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkk1a11 == true)
				{
					
					correctFlags += 1;
				}
			}
		break;
		
		case "l1a12Btn":
		case "l1a12Flag":
			if (l1a12Flag.visible == true)
			{
				l1a12Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkl1a12 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (l1a12Flag.visible == false)
			{
				l1a12Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkl1a12 == true)
				{
					
					correctFlags += 1;
				}
			}
		break;
		
		case "m1a13Btn":
		case "m1a13Flag":
			if (m1a13Flag.visible == true)
			{
				m1a13Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkm1a13 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (m1a13Flag.visible == false)
			{
				m1a13Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkm1a13 == true)
				{
					
					correctFlags += 1;
				}
			}
		break;
		
		case "n1a14Btn":
		case "n1a14Flag":
			if (n1a14Flag.visible == true)
			{
				n1a14Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkn1a14 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (n1a14Flag.visible == false)
			{
				n1a14Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkn1a14 == true)
				{
					
					correctFlags += 1;
				}
			}
		break;
		
		case "o1a15Btn":
		case "o1a15Flag":
			if (o1a15Flag.visible == true)
			{
				o1a15Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checko1a15 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (o1a15Flag.visible == false)
			{
				o1a15Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checko1a15 == true)
				{
					
					correctFlags += 1;
				}
			}
		break;
		
		case "p1a16Btn":
		case "p1a16Flag":
			if (p1a16Flag.visible == true)
			{
				p1a16Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkp1a16 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (p1a16Flag.visible == false)
			{
				p1a16Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkp1a16 == true)
				{
					
					correctFlags += 1;
				}
			}
		break;
		
		case "q1a17Btn":
		case "q1a17Flag":
			if (q1a17Flag.visible == true)
			{
				q1a17Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkq1a17 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (q1a17Flag.visible == false)
			{
				q1a17Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkq1a17 == true)
				{
					
					correctFlags += 1;
				}
			}
		break;
		
		case "r1a18Btn":
		case "r1a18Flag":
			if (r1a18Flag.visible == true)
			{
				r1a18Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkr1a18 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (r1a18Flag.visible == false)
			{
				r1a18Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkr1a18 == true)
				{
					
					correctFlags += 1;
				}
			}
		break;
		
		//row2  
		case "a2b1Btn":
		case "a2b1Flag":
			if (a2b1Flag.visible == true)
			{
				a2b1Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checka2b1 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (a2b1Flag.visible == false)
			{
				a2b1Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checka2b1 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
		  
		  case "b2b2Btn":
			case "b2b2Flag":
			if (b2b2Flag.visible == true)
			{
				b2b2Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkb2b2 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (b2b2Flag.visible == false)
			{
				b2b2Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkb2b2 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
		  
		  case "c2b3Btn":
			case "c2b3Flag":
			if (c2b3Flag.visible == true)
			{
				c2b3Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkc2b3 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (c2b3Flag.visible == false)
			{
				c2b3Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkc2b3 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
		  
		  case "d2b4Btn":
			case "d2b4Flag":
			if (d2b4Flag.visible == true)
			{
				d2b4Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkd2b4 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (d2b4Flag.visible == false)
			{
				d2b4Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkd2b4 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
		  
		  case "e2b5Btn":
			case "e2b5Flag":
			if (e2b5Flag.visible == true)
			{
				e2b5Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checke2b5 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (e2b5Flag.visible == false)
			{
				e2b5Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checke2b5 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
		   
		  case "f2b6Btn":
			case "f2b6Flag":
			if (f2b6Flag.visible == true)
			{
				f2b6Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkf2b6 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (f2b6Flag.visible == false)
			{
				f2b6Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkf2b6 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
		  
		  case "g2b7Btn":
			case "g2b7Flag":
			if (g2b7Flag.visible == true)
			{
				g2b7Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkg2b7 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (g2b7Flag.visible == false)
			{
				g2b7Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkg2b7 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
		   
		  case "h2b8Btn":
			case "h2b8Flag":
			if (h2b8Flag.visible == true)
			{
				h2b8Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkh2b8 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (h2b8Flag.visible == false)
			{
				h2b8Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkh2b8 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
		   
		  case "i2b9Btn":
			case "i2b9Flag":
			if (i2b9Flag.visible == true)
			{
				i2b9Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checki2b9 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (i2b9Flag.visible == false)
			{
				i2b9Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checki2b9 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
		  
		  case "j2b10Btn":
			case "j2b10Flag":
			if (j2b10Flag.visible == true)
			{
				j2b10Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkj2b10 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (j2b10Flag.visible == false)
			{
				j2b10Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkj2b10 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
		  
		  case "k2b11Btn":
			case "k2b11Flag":
			if (k2b11Flag.visible == true)
			{
				k2b11Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkk2b11 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (k2b11Flag.visible == false)
			{
				k2b11Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkk2b11 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
		  
		  case "l2b12Btn":
			case "l2b12Flag":
			if (l2b12Flag.visible == true)
			{
				l2b12Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkl2b12 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (l2b12Flag.visible == false)
			{
				l2b12Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkl2b12 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
		  
		  case "m2b13Btn":
			case "m2b13Flag":
			if (m2b13Flag.visible == true)
			{
				m2b13Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkm2b13 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (m2b13Flag.visible == false)
			{
				m2b13Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkm2b13 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
		  
		  case "n2b14Btn":
			case "n2b14Flag":
			if (n2b14Flag.visible == true)
			{
				n2b14Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkn2b14 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (n2b14Flag.visible == false)
			{
				n2b14Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkn2b14 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
		  
		  case "o2b15Btn":
			case "o2b15Flag":
			if (o2b15Flag.visible == true)
			{
				o2b15Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checko2b15 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (o2b15Flag.visible == false)
			{
				o2b15Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checko2b15 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
		  
		  case "p2b16Btn":
			case "p2b16Flag":
			if (p2b16Flag.visible == true)
			{
				p2b16Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkp2b16 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (p2b16Flag.visible == false)
			{
				p2b16Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkp2b16 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
		  
		  case "q2b17Btn":
			 case "q2b17Flag":
			if (q2b17Flag.visible == true)
			{
				q2b17Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkq2b17 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (q2b17Flag.visible == false)
			{
				q2b17Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkq2b17 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
		  
		  case "r2b18Btn":
			case "r2b18Flag":
			if (r2b18Flag.visible == true)
			{
				r2b18Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkr2b18 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (r2b18Flag.visible == false)
			{
				r2b18Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkr2b18 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
					  
	    //row 3
		case "a3c1Btn":
			case "a3c1Flag":
			if (a3c1Flag.visible == true)
			{
				a3c1Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checka3c1 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (a3c1Flag.visible == false)
			{
				a3c1Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checka3c1 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
	    
		case "b3c2Btn":
			case "b3c2Flag":
			if (b3c2Flag.visible == true)
			{
				b3c2Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkb3c2 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (b3c2Flag.visible == false)
			{
				b3c2Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkb3c2 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
	    
		case "c3c3Btn":
			case "c3c3Flag":
			if (c3c3Flag.visible == true)
			{
				c3c3Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkc3c3 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (c3c3Flag.visible == false)
			{
				c3c3Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkc3c3 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
	    
		case "d3c4Btn":
			case "d3c4Flag":
			if (d3c4Flag.visible == true)
			{
				d3c4Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkd3c4 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (d3c4Flag.visible == false)
			{
				d3c4Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkd3c4 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
	    
		case "e3c5Btn":
			case "e3c5Flag":
			if (e3c5Flag.visible == true)
			{
				e3c5Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checke3c5 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (e3c5Flag.visible == false)
			{
				e3c5Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checke3c5 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
	    
		case "f3c6Btn":
			case "f3c6Flag":
			if (f3c6Flag.visible == true)
			{
				f3c6Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkf3c6 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (f3c6Flag.visible == false)
			{
				f3c6Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkf3c6 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
	    
		case "g3c7Btn":
			case "g3c7Flag":
			if (g3c7Flag.visible == true)
			{
				g3c7Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkg3c7 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (g3c7Flag.visible == false)
			{
				g3c7Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkg3c7 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
	    
		case "h3c8Btn":
			case "h3c8Flag":
			if (h3c8Flag.visible == true)
			{
				h3c8Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkh3c8 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (h3c8Flag.visible == false)
			{
				h3c8Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkh3c8 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
	    
		case "i3c9Btn":
			case "i3c9Flag":
			if (i3c9Flag.visible == true)
			{
				i3c9Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checki3c9 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (i3c9Flag.visible == false)
			{
				i3c9Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checki3c9 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
	    
		case "j3c10Btn":
			case "j3c10Flag":
			if (j3c10Flag.visible == true)
			{
				j3c10Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkj3c10 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (j3c10Flag.visible == false)
			{
				j3c10Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkj3c10 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
	     
		case "k3c11Btn":
			case "k3c11Flag":
			if (k3c11Flag.visible == true)
			{
				k3c11Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkk3c11 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (k3c11Flag.visible == false)
			{
				k3c11Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkk3c11 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
	     
		case "l3c12Btn":
			case "l3c12Flag":
			if (l3c12Flag.visible == true)
			{
				l3c12Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkl3c12 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (l3c12Flag.visible == false)
			{
				l3c12Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkl3c12 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
	    
		case "m3c13Btn":
			case "m3c13Flag":
			if (m3c13Flag.visible == true)
			{
				m3c13Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkm3c13 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (m3c13Flag.visible == false)
			{
				m3c13Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkm3c13 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
	    
		case "n3c14Btn":
			case "n3c14Flag":
			if (n3c14Flag.visible == true)
			{
				n3c14Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkn3c14 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (n3c14Flag.visible == false)
			{
				n3c14Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkn3c14 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
	    
		case "o3c15Btn":
			case "o3c15Flag":
			if (o3c15Flag.visible == true)
			{
				o3c15Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checko3c15 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (o3c15Flag.visible == false)
			{
				o3c15Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checko3c15 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
  	    
		case "p3c16Btn":
			case "p3c16Flag":
			if (p3c16Flag.visible == true)
			{
				p3c16Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkp3c16 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (p3c16Flag.visible == false)
			{
				p3c16Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkp3c16 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
	    
		case "q3c17Btn":
			case "q3c17Flag":
			if (q3c17Flag.visible == true)
			{
				q3c17Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkq3c17 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (q3c17Flag.visible == false)
			{
				q3c17Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkq3c17 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
	    
		case "r3c18Btn":
			case "r3c18Flag":
			if (r3c18Flag.visible == true)
			{
				r3c18Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkr3c18 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (r3c18Flag.visible == false)
			{
				r3c18Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkr3c18 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
					  
		//row 4
		case "a4d1Btn":
			case "a4d1Flag":
			if (a4d1Flag.visible == true)
			{
				a4d1Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checka4d1 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (a4d1Flag.visible == false)
			{
				a4d1Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checka4d1 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;

					  
		  case "b4d2Btn":
			case "b4d2Flag":
			if (b4d2Flag.visible == true)
			{
				b4d2Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkb4d2 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (b4d2Flag.visible == false)
			{
				b4d2Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkb4d2 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
		  
					  
		  case "c4d3Btn":
			case "c4d3Flag":
			if (c4d3Flag.visible == true)
			{
				c4d3Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkc4d3 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (c4d3Flag.visible == false)
			{
				c4d3Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkc4d3 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
		  
					  
		  case "d4d4Btn":
			case "d4d4Flag":
			if (d4d4Flag.visible == true)
			{
				d4d4Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkd4d4 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (d4d4Flag.visible == false)
			{
				d4d4Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkd4d4 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
		  
					  
		  case "e4d5Btn":
			case "e4d5Flag":
			if (e4d5Flag.visible == true)
			{
				e4d5Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checke4d5 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (e4d5Flag.visible == false)
			{
				e4d5Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checke4d5 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
		  
					  
		  case "f4d6Btn":
			case "f4d6Flag":
			if (f4d6Flag.visible == true)
			{
				f4d6Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkf4d6 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (f4d6Flag.visible == false)
			{
				f4d6Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkf4d6 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
		  
					  
		  case "g4d7Btn":
			case "g4d7Flag":
			if (g4d7Flag.visible == true)
			{
				g4d7Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkg4d7 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (g4d7Flag.visible == false)
			{
				g4d7Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkg4d7 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
		  
					  
		  case "h4d8Btn":
			case "h4d8Flag":
			if (h4d8Flag.visible == true)
			{
				h4d8Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkh4d8 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (h4d8Flag.visible == false)
			{
				h4d8Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkh4d8 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
		  
					  
		  case "i4d9Btn":
			case "i4d9Flag":
			if (i4d9Flag.visible == true)
			{
				i4d9Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checki4d9 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (i4d9Flag.visible == false)
			{
				i4d9Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checki4d9 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
		  
					  
		  case "j4d10Btn":
			case "j4d10Flag":
			if (j4d10Flag.visible == true)
			{
				j4d10Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkj4d10 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (j4d10Flag.visible == false)
			{
				j4d10Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkj4d10 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
		  
					  
		  case "k4d11Btn":
			case "k4d11Flag":
			if (k4d11Flag.visible == true)
			{
				k4d11Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkk4d11 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (k4d11Flag.visible == false)
			{
				k4d11Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkk4d11 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
		  
					  
		  case "l4d12Btn":
			case "l4d12Flag":
			if (l4d12Flag.visible == true)
			{
				l4d12Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkl4d12 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (l4d12Flag.visible == false)
			{
				l4d12Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkl4d12 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
		  
					   
		  case "m4d13Btn":
			case "m4d13Flag":
			if (m4d13Flag.visible == true)
			{
				m4d13Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkm4d13 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (m4d13Flag.visible == false)
			{
				m4d13Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkm4d13 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
		  
					   
		  case "n4d14Btn":
			case "n4d14Flag":
			if (n4d14Flag.visible == true)
			{
				n4d14Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkn4d14 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (n4d14Flag.visible == false)
			{
				n4d14Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkn4d14 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
		  
					  
		  case "o4d15Btn":
			case "o4d15Flag":
			if (o4d15Flag.visible == true)
			{
				o4d15Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checko4d15 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (o4d15Flag.visible == false)
			{
				o4d15Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checko4d15 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
		  
					  
		  case "p4d16Btn":
			case "p4d16Flag":
			if (p4d16Flag.visible == true)
			{
				p4d16Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkp4d16 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (p4d16Flag.visible == false)
			{
				p4d16Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkp4d16 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
		  
					  
		  case "q4d17Btn":
			case "q4d17Flag":
			if (q4d17Flag.visible == true)
			{
				q4d17Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkq4d17 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (q4d17Flag.visible == false)
			{
				q4d17Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkq4d17 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
		  
					  
		  case "r4d18Btn":
			case "r4d18Flag":
			if (r4d18Flag.visible == true)
			{
				r4d18Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkr4d18 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (r4d18Flag.visible == false)
			{
				r4d18Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkr4d18 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
		  
		//row 5
		case "a5e1Btn":
			case "a5e1Flag":
			if (a5e1Flag.visible == true)
			{
				a5e1Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checka5e1 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (a5e1Flag.visible == false)
			{
				a5e1Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checka5e1 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
		  
		  case "b5e2Btn":
			case "b5e2Flag":
			if (b5e2Flag.visible == true)
			{
				b5e2Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkb5e2 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (b5e2Flag.visible == false)
			{
				b5e2Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkb5e2 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
		  
		  case "c5e3Btn":
			case "c5e3Flag":
			if (c5e3Flag.visible == true)
			{
				c5e3Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkc5e3 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (c5e3Flag.visible == false)
			{
				c5e3Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkc5e3 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
		   
		  case "d5e4Btn":
			case "d5e4Flag":
			if (d5e4Flag.visible == true)
			{
				d5e4Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkd5e4 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (d5e4Flag.visible == false)
			{
				d5e4Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkd5e4 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
		  
		  case "e5e5Btn":
			case "e5e5Flag":
			if (e5e5Flag.visible == true)
			{
				e5e5Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checke5e5 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (e5e5Flag.visible == false)
			{
				e5e5Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checke5e5 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
		   
		  case "f5e6Btn":
			case "f5e6Flag":
			if (f5e6Flag.visible == true)
			{
				f5e6Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkf5e6 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (f5e6Flag.visible == false)
			{
				f5e6Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkf5e6 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
		   
		  case "g5e7Btn":
			case "g5e7Flag":
			if (g5e7Flag.visible == true)
			{
				g5e7Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkg5e7 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (g5e7Flag.visible == false)
			{
				g5e7Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkg5e7 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
		   
		  case "h5e8Btn":
			case "h5e8Flag":
			if (h5e8Flag.visible == true)
			{
				h5e8Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkh5e8 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (h5e8Flag.visible == false)
			{
				h5e8Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkh5e8 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
		   
		  case "i5e9Btn":
			case "i5e9Flag":
			if (i5e9Flag.visible == true)
			{
				i5e9Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checki5e9 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (i5e9Flag.visible == false)
			{
				i5e9Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checki5e9 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
		  
		  case "j5e10Btn":
			case "j5e10Flag":
			if (j5e10Flag.visible == true)
			{
				j5e10Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkj5e10 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (j5e10Flag.visible == false)
			{
				j5e10Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkj5e10 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
		  
		  case "k5e11Btn":
			case "k5e11Flag":
			if (k5e11Flag.visible == true)
			{
				k5e11Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkk5e11 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (k5e11Flag.visible == false)
			{
				k5e11Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkk5e11 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
		  
		  case "l5e12Btn":
			case "l5e12Flag":
			if (l5e12Flag.visible == true)
			{
				l5e12Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkl5e12 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (l5e12Flag.visible == false)
			{
				l5e12Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkl5e12 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
		  
		  case "m5e13Btn":
			case "m5e13Flag":
			if (m5e13Flag.visible == true)
			{
				m5e13Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkm5e13 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (m5e13Flag.visible == false)
			{
				m5e13Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkm5e13 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
		  
		  case "n5e14Btn":
			case "n5e14Flag":
			if (n5e14Flag.visible == true)
			{
				n5e14Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkn5e14 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (n5e14Flag.visible == false)
			{
				n5e14Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkn5e14 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
		  
		  case "o5e15Btn":
			case "o5e15Flag":
			if (o5e15Flag.visible == true)
			{
				o5e15Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checko5e15 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (o5e15Flag.visible == false)
			{
				o5e15Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checko5e15 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
		  
		  case "p5e16Btn":
			case "p5e16Flag":
			if (p5e16Flag.visible == true)
			{
				p5e16Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkp5e16 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (p5e16Flag.visible == false)
			{
				p5e16Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkp5e16 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
		  
		  case "q5e17Btn":
			case "q5e17Flag":
			if (q5e17Flag.visible == true)
			{
				q5e17Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkq5e17 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (q5e17Flag.visible == false)
			{
				q5e17Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkq5e17 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
		  
		  case "r5e18Btn":
			case "r5e18Flag":
			if (r5e18Flag.visible == true)
			{
				r5e18Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkr5e18 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (r5e18Flag.visible == false)
			{
				r5e18Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkr5e18 == true)
				{
					
					correctFlags += 1;
				}
			}
		  break;
					  
		//row 6
		case "a6f1Btn":
			case "a6f1Flag":
			if (a6f1Flag.visible == true)
			{
				a6f1Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checka6f1 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (a6f1Flag.visible == false)
			{
				a6f1Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checka6f1 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "b6f2Btn":
			case "b6f2Flag":
			if (b6f2Flag.visible == true)
			{
				b6f2Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkb6f2 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (b6f2Flag.visible == false)
			{
				b6f2Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkb6f2 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		 
		case "c6f3Btn":
			case "c6f3Flag":
			if (c6f3Flag.visible == true)
			{
				c6f3Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkc6f3 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (c6f3Flag.visible == false)
			{
				c6f3Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkc6f3 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		 
		case "d6f4Btn":
			case "d6f4Flag":
			if (d6f4Flag.visible == true)
			{
				d6f4Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkd6f4 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (d6f4Flag.visible == false)
			{
				d6f4Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkd6f4 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "e6f5Btn":
			case "e6f5Flag":
			if (e6f5Flag.visible == true)
			{
				e6f5Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checke6f5 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (e6f5Flag.visible == false)
			{
				e6f5Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checke6f5 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "f6f6Btn":
			case "f6f6Flag":
			if (f6f6Flag.visible == true)
			{
				f6f6Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkf6f6 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (f6f6Flag.visible == false)
			{
				f6f6Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkf6f6 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		 
		case "g6f7Btn":
			case "g6f7Flag":
			if (g6f7Flag.visible == true)
			{
				g6f7Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkg6f7 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (g6f7Flag.visible == false)
			{
				g6f7Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkg6f7 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		 
		case "h6f8Btn":
			case "h6f8Flag":
			if (h6f8Flag.visible == true)
			{
				h6f8Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkh6f8 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (h6f8Flag.visible == false)
			{
				h6f8Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkh6f8 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		 
		case "i6f9Btn":
			case "i6f9Flag":
			if (i6f9Flag.visible == true)
			{
				i6f9Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checki6f9 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (i6f9Flag.visible == false)
			{
				i6f9Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checki6f9 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "j6f10Btn":
			case "j6f10Flag":
			if (j6f10Flag.visible == true)
			{
				j6f10Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkj6f10 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (j6f10Flag.visible == false)
			{
				j6f10Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkj6f10 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "k6f11Btn":
			case "k6f11Flag":
			if (k6f11Flag.visible == true)
			{
				k6f11Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkk6f11 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (k6f11Flag.visible == false)
			{
				k6f11Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkk6f11 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "l6f12Btn":
			case "l6f12Flag":
			if (l6f12Flag.visible == true)
			{
				l6f12Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkl6f12 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (l6f12Flag.visible == false)
			{
				l6f12Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkl6f12 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		 
		case "m6f13Btn":
			case "m6f13Flag":
			if (m6f13Flag.visible == true)
			{
				m6f13Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkm6f13 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (m6f13Flag.visible == false)
			{
				m6f13Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkm6f13 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		 
		case "n6f14Btn":
			case "n6f14Flag":
			if (n6f14Flag.visible == true)
			{
				n6f14Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkn6f14 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (n6f14Flag.visible == false)
			{
				n6f14Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkn6f14 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		 
		case "o6f15Btn":
			case "o6f15Flag":
			if (o6f15Flag.visible == true)
			{
				o6f15Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checko6f15 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (o6f15Flag.visible == false)
			{
				o6f15Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checko6f15 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		 
		case "p6f16Btn":
			case "p6f16Flag":
			if (p6f16Flag.visible == true)
			{
				p6f16Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkp6f16 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (p6f16Flag.visible == false)
			{
				p6f16Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkp6f16 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		 
		case "q6f17Btn":
			case "q6f17Flag":
			if (q6f17Flag.visible == true)
			{
				q6f17Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkq6f17 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (q6f17Flag.visible == false)
			{
				q6f17Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkq6f17 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "r6f18Btn":
			case "r6f18Flag":
			if (r6f18Flag.visible == true)
			{
				r6f18Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkr6f18 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (r6f18Flag.visible == false)
			{
				r6f18Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkr6f18 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		  
		//row 7
		case "a7g1Btn":
			case "a7g1Flag":
			if (a7g1Flag.visible == true)
			{
				a7g1Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checka7g1 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (a7g1Flag.visible == false)
			{
				a7g1Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checka7g1 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "b7g2Btn":
			case "b7g2Flag":
			if (b7g2Flag.visible == true)
			{
				b7g2Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkb7g2 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (b7g2Flag.visible == false)
			{
				b7g2Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkb7g2 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "c7g3Btn":
			case "c7g3Flag":
			if (c7g3Flag.visible == true)
			{
				c7g3Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkc7g3 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (c7g3Flag.visible == false)
			{
				c7g3Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkc7g3 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "d7g4Btn":
			case "d7g4Flag":
			if (d7g4Flag.visible == true)
			{
				d7g4Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkd7g4 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (d7g4Flag.visible == false)
			{
				d7g4Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkd7g4 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "e7g5Btn":
			case "e7g5Flag":
			if (e7g5Flag.visible == true)
			{
				e7g5Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checke7g5 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (e7g5Flag.visible == false)
			{
				e7g5Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checke7g5 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "f7g6Btn":
			case "f7g6Flag":
			if (f7g6Flag.visible == true)
			{
				f7g6Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkf7g6 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (f7g6Flag.visible == false)
			{
				f7g6Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkf7g6 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "g7g7Btn":
			case "g7g7Flag":
			if (g7g7Flag.visible == true)
			{
				g7g7Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkg7g7 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (g7g7Flag.visible == false)
			{
				g7g7Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkg7g7 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "h7g8Btn":
			case "h7g8Flag":
			if (h7g8Flag.visible == true)
			{
				h7g8Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkh7g8 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (h7g8Flag.visible == false)
			{
				h7g8Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkh7g8 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "i7g9Btn":
			case "i7g9Flag":
			if (i7g9Flag.visible == true)
			{
				i7g9Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checki7g9 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (i7g9Flag.visible == false)
			{
				i7g9Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checki7g9 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "j7g10Btn":
			case "j7g10Flag":
			if (j7g10Flag.visible == true)
			{
				j7g10Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkj7g10 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (j7g10Flag.visible == false)
			{
				j7g10Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkj7g10 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "k7g11Btn":
			case "k7g11Flag":
			if (k7g11Flag.visible == true)
			{
				k7g11Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkk7g11 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (k7g11Flag.visible == false)
			{
				k7g11Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkk7g11 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "l7g12Btn":
			case "l7g12Flag":
			if (l7g12Flag.visible == true)
			{
				l7g12Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkl7g12 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (l7g12Flag.visible == false)
			{
				l7g12Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkl7g12 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "m7g13Btn":
			case "m7g13Flag":
			if (m7g13Flag.visible == true)
			{
				m7g13Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkm7g13 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (m7g13Flag.visible == false)
			{
				m7g13Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkm7g13 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		 
		case "n7g14Btn":
			case "n7g14Flag":
			if (n7g14Flag.visible == true)
			{
				n7g14Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkn7g14 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (n7g14Flag.visible == false)
			{
				n7g14Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkn7g14 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		 
		case "o7g15Btn":
			case "o7g15Flag":
			if (o7g15Flag.visible == true)
			{
				o7g15Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checko7g15 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (o7g15Flag.visible == false)
			{
				o7g15Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checko7g15 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		 
		case "p7g16Btn":
			case "p7g16Flag":
			if (p7g16Flag.visible == true)
			{
				p7g16Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkp7g16 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (p7g16Flag.visible == false)
			{
				p7g16Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkp7g16 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		 
		case "q7g17Btn":
			case "q7g17Flag":
			if (q7g17Flag.visible == true)
			{
				q7g17Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkq7g17 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (q7g17Flag.visible == false)
			{
				q7g17Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkq7g17 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "r7g18Btn":
			case "r7g18Flag":
			if (r7g18Flag.visible == true)
			{
				r7g18Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkr7g18 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (r7g18Flag.visible == false)
			{
				r7g18Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkr7g18 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		//row 8
		case "a8h1Btn":
			case "a8h1Flag":
			if (a8h1Flag.visible == true)
			{
				a8h1Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checka8h1 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (a8h1Flag.visible == false)
			{
				a8h1Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checka8h1 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "b8h2Btn":
			case "b8h2Flag":
			if (b8h2Flag.visible == true)
			{
				b8h2Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkb8h2 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (b8h2Flag.visible == false)
			{
				b8h2Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkb8h2 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		 
		case "c8h3Btn":
			case "c8h3Flag":
			if (c8h3Flag.visible == true)
			{
				c8h3Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkc8h3 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (c8h3Flag.visible == false)
			{
				c8h3Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkc8h3 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		 
		case "d8h4Btn":
			case "d8h4Flag":
			if (d8h4Flag.visible == true)
			{
				d8h4Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkd8h4 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (d8h4Flag.visible == false)
			{
				d8h4Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkd8h4 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		 
		case "e8h5Btn":
			case "e8h5Flag":
			if (e8h5Flag.visible == true)
			{
				e8h5Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checke8h5 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (e8h5Flag.visible == false)
			{
				e8h5Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checke8h5 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "f8h6Btn":
			case "f8h6Flag":
			if (f8h6Flag.visible == true)
			{
				f8h6Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkf8h6 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (f8h6Flag.visible == false)
			{
				f8h6Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkf8h6 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "g8h7Btn":
			case "g8h7Flag":
			if (g8h7Flag.visible == true)
			{
				g8h7Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkg8h7 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (g8h7Flag.visible == false)
			{
				g8h7Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkg8h7 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "h8h8Btn":
			case "h8h8Flag":
			if (h8h8Flag.visible == true)
			{
				h8h8Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkh8h8 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (h8h8Flag.visible == false)
			{
				h8h8Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkh8h8 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "i8h9Btn":
			case "i8h9Flag":
			if (i8h9Flag.visible == true)
			{
				i8h9Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checki8h9 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (i8h9Flag.visible == false)
			{
				i8h9Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checki8h9 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "j8h10Btn":
			case "j8h10Flag":
			if (j8h10Flag.visible == true)
			{
				j8h10Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkj8h10 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (j8h10Flag.visible == false)
			{
				j8h10Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkj8h10 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "k8h11Btn":
			case "k8h11Flag":
			if (k8h11Flag.visible == true)
			{
				k8h11Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkk8h11 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (k8h11Flag.visible == false)
			{
				k8h11Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkk8h11 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "l8h12Btn":
			case "l8h12Flag":
			if (l8h12Flag.visible == true)
			{
				l8h12Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkl8h12 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (l8h12Flag.visible == false)
			{
				l8h12Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkl8h12 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "m8h13Btn":
			case "m8h13Flag":
			if (m8h13Flag.visible == true)
			{
				m8h13Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkm8h13 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (m8h13Flag.visible == false)
			{
				m8h13Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkm8h13 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "n8h14Btn":
			case "n8h14Flag":
			if (n8h14Flag.visible == true)
			{
				n8h14Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkn8h14 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (n8h14Flag.visible == false)
			{
				n8h14Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkn8h14 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "o8h15Btn":
			case "o8h15Flag":
			if (o8h15Flag.visible == true)
			{
				o8h15Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checko8h15 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (o8h15Flag.visible == false)
			{
				o8h15Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checko8h15 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "p8h16Btn":
			case "p8h16Flag":
			if (p8h16Flag.visible == true)
			{
				p8h16Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkp8h16 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (p8h16Flag.visible == false)
			{
				p8h16Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkp8h16 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "q8h17Btn":
			case "q8h17Flag":
			if (q8h17Flag.visible == true)
			{
				q8h17Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkq8h17 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (q8h17Flag.visible == false)
			{
				q8h17Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkq8h17 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "r8h18Btn":
			case "r8h18Flag":
			if (r8h18Flag.visible == true)
			{
				r8h18Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkr8h18 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (r8h18Flag.visible == false)
			{
				r8h18Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkr8h18 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		//row 9
		case "a9i1Btn":
			case "a9i1Flag":
			if (a9i1Flag.visible == true)
			{
				a9i1Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checka9i1 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (a9i1Flag.visible == false)
			{
				a9i1Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checka9i1 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		 
		case "b9i2Btn":
			case "b9i2Flag":
			if (b9i2Flag.visible == true)
			{
				b9i2Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkb9i2 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (b9i2Flag.visible == false)
			{
				b9i2Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkb9i2 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "c9i3Btn":
			case "c9i3Flag":
			if (c9i3Flag.visible == true)
			{
				c9i3Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkc9i3 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (c9i3Flag.visible == false)
			{
				c9i3Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkc9i3 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "d9i4Btn":
			case "d9i4Flag":
			if (d9i4Flag.visible == true)
			{
				d9i4Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkd9i4 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (d9i4Flag.visible == false)
			{
				d9i4Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkd9i4 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "e9i5Btn":
			case "e9i5Flag":
			if (e9i5Flag.visible == true)
			{
				e9i5Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checke9i5 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (e9i5Flag.visible == false)
			{
				e9i5Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checke9i5 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "f9i6Btn":
			case "f9i6Flag":
			if (f9i6Flag.visible == true)
			{
				f9i6Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkf9i6 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (f9i6Flag.visible == false)
			{
				f9i6Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkf9i6 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "g9i7Btn":
			case "g9i7Flag":
			if (g9i7Flag.visible == true)
			{
				g9i7Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkg9i7 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (g9i7Flag.visible == false)
			{
				g9i7Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkg9i7 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "h9i8Btn":
			case "h9i8Flag":
			if (h9i8Flag.visible == true)
			{
				h9i8Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkh9i8 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (h9i8Flag.visible == false)
			{
				h9i8Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkh9i8 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "i9i9Btn":
			case "i9i9Flag":
			if (i9i9Flag.visible == true)
			{
				i9i9Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checki9i9 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (i9i9Flag.visible == false)
			{
				i9i9Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checki9i9 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "j9i10Btn":
			case "j9i10Flag":
			if (j9i10Flag.visible == true)
			{
				j9i10Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkj9i10 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (j9i10Flag.visible == false)
			{
				j9i10Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkj9i10 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "k9i11Btn":
			case "k9i11Flag":
			if (k9i11Flag.visible == true)
			{
				k9i11Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkk9i11 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (k9i11Flag.visible == false)
			{
				k9i11Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkk9i11 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "l9i12Btn":
			case "l9i12Flag":
			if (l9i12Flag.visible == true)
			{
				l9i12Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkl9i12 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (l9i12Flag.visible == false)
			{
				l9i12Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkl9i12 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		 
		case "m9i13Btn":
			case "m9i13Flag":
			if (m9i13Flag.visible == true)
			{
				m9i13Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkm9i13 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (m9i13Flag.visible == false)
			{
				m9i13Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkm9i13 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "n9i14Btn":
			case "n9i14Flag":
			if (n9i14Flag.visible == true)
			{
				n9i14Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkn9i14 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (n9i14Flag.visible == false)
			{
				n9i14Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkn9i14 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "o9i15Btn":
			case "o9i15Flag":
			if (o9i15Flag.visible == true)
			{
				o9i15Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checko9i15 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (o9i15Flag.visible == false)
			{
				o9i15Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checko9i15 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "p9i16Btn":
			case "p9i16Flag":
			if (p9i16Flag.visible == true)
			{
				p9i16Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkp9i16 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (p9i16Flag.visible == false)
			{
				p9i16Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkp9i16 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "q9i17Btn":
			case "q9i17Flag":
			if (q9i17Flag.visible == true)
			{
				q9i17Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkq9i17 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (q9i17Flag.visible == false)
			{
				q9i17Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkq9i17 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "r9i18Btn":
			case "r9i18Flag":
			if (r9i18Flag.visible == true)
			{
				r9i18Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkr9i18 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (r9i18Flag.visible == false)
			{
				r9i18Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkr9i18 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		//row 10
		case "a10j1Btn":
			case "a10j1Flag":
			if (a10j1Flag.visible == true)
			{
				a10j1Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checka10j1 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (a10j1Flag.visible == false)
			{
				a10j1Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checka10j1 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "b10j2Btn":
			case "b10j2Flag":
			if (b10j2Flag.visible == true)
			{
				b10j2Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkb10j2 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (b10j2Flag.visible == false)
			{
				b10j2Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkb10j2 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "c10j3Btn":
			case "c10j3Flag":
			if (c10j3Flag.visible == true)
			{
				c10j3Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkc10j3 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (c10j3Flag.visible == false)
			{
				c10j3Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkc10j3 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "d10j4Btn":
			case "d10j4Flag":
			if (d10j4Flag.visible == true)
			{
				d10j4Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkd10j4 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (d10j4Flag.visible == false)
			{
				d10j4Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkd10j4 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "e10j5Btn":
			case "e10j5Flag":
			if (e10j5Flag.visible == true)
			{
				e10j5Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checke10j5 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (e10j5Flag.visible == false)
			{
				e10j5Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checke10j5 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "f10j6Btn":
			case "f10j6Flag":
			if (f10j6Flag.visible == true)
			{
				f10j6Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkf10j6 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (f10j6Flag.visible == false)
			{
				f10j6Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkf10j6 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "g10j7Btn":
			case "g10j7Flag":
			if (g10j7Flag.visible == true)
			{
				g10j7Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkg10j7 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (g10j7Flag.visible == false)
			{
				g10j7Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkg10j7 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "h10j8Btn":
			case "h10j8Flag":
			if (h10j8Flag.visible == true)
			{
				h10j8Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkh10j8 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (h10j8Flag.visible == false)
			{
				h10j8Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkh10j8 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "i10j9Btn":
			case "i10j9Flag":
			if (i10j9Flag.visible == true)
			{
				i10j9Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checki10j9 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (i10j9Flag.visible == false)
			{
				i10j9Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checki10j9 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "j10j10Btn":
			case "j10j10Flag":
			if (j10j10Flag.visible == true)
			{
				j10j10Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkj10j10 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (j10j10Flag.visible == false)
			{
				j10j10Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkj10j10 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "k10j11Btn":
			case "k10j11Flag":
			if (k10j11Flag.visible == true)
			{
				k10j11Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkk10j11 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (k10j11Flag.visible == false)
			{
				k10j11Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkk10j11 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "l10j12Btn":
			case "l10j12Flag":
			if (l10j12Flag.visible == true)
			{
				l10j12Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkl10j12 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (l10j12Flag.visible == false)
			{
				l10j12Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkl10j12 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "m10j13Btn":
			case "m10j13Flag":
			if (m10j13Flag.visible == true)
			{
				m10j13Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkm10j13 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (m10j13Flag.visible == false)
			{
				m10j13Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkm10j13 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "n10j14Btn":
			case "n10j14Flag":
			if (n10j14Flag.visible == true)
			{
				n10j14Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkn10j14 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (n10j14Flag.visible == false)
			{
				n10j14Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkn10j14 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		 
		case "o10j15Btn":
			case "o10j15Flag":
			if (o10j15Flag.visible == true)
			{
				o10j15Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checko10j15 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (o10j15Flag.visible == false)
			{
				o10j15Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checko10j15 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "p10j16Btn":
			case "p10j16Flag":
			if (p10j16Flag.visible == true)
			{
				p10j16Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkp10j16 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (p10j16Flag.visible == false)
			{
				p10j16Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkp10j16 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "q10j17Btn":
			case "q10j17Flag":
			if (q10j17Flag.visible == true)
			{
				q10j17Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkq10j17 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (q10j17Flag.visible == false)
			{
				q10j17Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkq10j17 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "r10j18Btn":
			case "r10j18Flag":
			if (r10j18Flag.visible == true)
			{
				r10j18Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkr10j18 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (r10j18Flag.visible == false)
			{
				r10j18Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkr10j18 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		 //row 11
		case "a11k1Btn":
			case "a11k1Flag":
			if (a11k1Flag.visible == true)
			{
				a11k1Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checka11k1 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (a11k1Flag.visible == false)
			{
				a11k1Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checka11k1 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		 
		case "b11k2Btn":
			case "b11k2Flag":
			if (b11k2Flag.visible == true)
			{
				b11k2Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkb11k2 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (b11k2Flag.visible == false)
			{
				b11k2Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkb11k2 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "c11k3Btn":
			case "c11k3Flag":
			if (c11k3Flag.visible == true)
			{
				c11k3Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkc11k3 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (c11k3Flag.visible == false)
			{
				c11k3Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkc11k3 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "d11k4Btn":
			case "d11k4Flag":
			if (d11k4Flag.visible == true)
			{
				d11k4Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkd11k4 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (d11k4Flag.visible == false)
			{
				d11k4Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkd11k4 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "e11k5Btn":
			case "e11k5Flag":
			if (e11k5Flag.visible == true)
			{
				e11k5Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checke11k5 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (e11k5Flag.visible == false)
			{
				e11k5Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checke11k5 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "f11k6Btn":
			case "f11k6Flag":
			if (f11k6Flag.visible == true)
			{
				f11k6Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkf11k6 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (f11k6Flag.visible == false)
			{
				f11k6Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkf11k6 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "g11k7Btn":
			case "g11k7Flag":
			if (g11k7Flag.visible == true)
			{
				g11k7Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkg11k7 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (g11k7Flag.visible == false)
			{
				g11k7Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkg11k7 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "h11k8Btn":
			case "h11k8Flag":
			if (h11k8Flag.visible == true)
			{
				h11k8Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkh11k8 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (h11k8Flag.visible == false)
			{
				h11k8Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkh11k8 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "i11k9Btn":
			case "i11k9Flag":
			if (i11k9Flag.visible == true)
			{
				i11k9Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checki11k9 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (i11k9Flag.visible == false)
			{
				i11k9Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checki11k9 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "j11k10Btn":
			case "j11k10Flag":
			if (j11k10Flag.visible == true)
			{
				j11k10Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkj11k10 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (j11k10Flag.visible == false)
			{
				j11k10Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkj11k10 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "k11k11Btn":
			case "k11k11Flag":
			if (k11k11Flag.visible == true)
			{
				k11k11Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkk11k11 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (k11k11Flag.visible == false)
			{
				k11k11Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkk11k11 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "l11k12Btn":
			case "l11k12Flag":
			if (l11k12Flag.visible == true)
			{
				l11k12Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkl11k12 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (l11k12Flag.visible == false)
			{
				l11k12Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkl11k12 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "m11k13Btn":
			case "m11k13Flag":
			if (m11k13Flag.visible == true)
			{
				m11k13Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkm11k13 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (m11k13Flag.visible == false)
			{
				m11k13Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkm11k13 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "n11k14Btn":
			case "n11k14Flag":
			if (n11k14Flag.visible == true)
			{
				n11k14Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkn11k14 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (n11k14Flag.visible == false)
			{
				n11k14Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkn11k14 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "o11k15Btn":
			case "o11k15Flag":
			if (o11k15Flag.visible == true)
			{
				o11k15Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checko11k15 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (o11k15Flag.visible == false)
			{
				o11k15Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checko11k15 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "p11k16Btn":
			case "p11k16Flag":
			if (p11k16Flag.visible == true)
			{
				p11k16Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkp11k16 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (p11k16Flag.visible == false)
			{
				p11k16Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkp11k16 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "q11k17Btn":
			case "q11k17Flag":
			if (q11k17Flag.visible == true)
			{
				q11k17Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkq11k17 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (q11k17Flag.visible == false)
			{
				q11k17Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkq11k17 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "r11k18Btn":
			case "r11k18Flag":
			if (r11k18Flag.visible == true)
			{
				r11k18Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkr11k18 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (r11k18Flag.visible == false)
			{
				r11k18Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkr11k18 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		//row 12
		case "a12l1Btn":
			case "a12l1Flag":
			if (a12l1Flag.visible == true)
			{
				a12l1Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checka12l1 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (a12l1Flag.visible == false)
			{
				a12l1Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checka12l1 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "b12l2Btn":
			case "b12l2Flag":
			if (b12l2Flag.visible == true)
			{
				b12l2Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkb12l2 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (b12l2Flag.visible == false)
			{
				b12l2Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkb12l2 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		 
		case "c12l3Btn":
			case "c12l3Flag":
			if (c12l3Flag.visible == true)
			{
				c12l3Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkc12l3 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (c12l3Flag.visible == false)
			{
				c12l3Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkc12l3 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "d12l4Btn":
			case "d12l4Flag":
			if (d12l4Flag.visible == true)
			{
				d12l4Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkd12l4 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (d12l4Flag.visible == false)
			{
				d12l4Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkd12l4 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		 
		case "e12l5Btn":
			case "e12l5Flag":
			if (e12l5Flag.visible == true)
			{
				e12l5Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checke12l5 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (e12l5Flag.visible == false)
			{
				e12l5Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checke12l5 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "f12l6Btn":
			case "f12l6Flag":
			if (f12l6Flag.visible == true)
			{
				f12l6Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkf12l6 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (f12l6Flag.visible == false)
			{
				f12l6Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkf12l6 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "g12l7Btn":
			case "g12l7Flag":
			if (g12l7Flag.visible == true)
			{
				g12l7Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkg12l7 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (g12l7Flag.visible == false)
			{
				g12l7Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkg12l7 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "h12l8Btn":
			case "h12l8Flag":
			if (h12l8Flag.visible == true)
			{
				h12l8Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkh12l8 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (h12l8Flag.visible == false)
			{
				h12l8Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkh12l8 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "i12l9Btn":
			case "i12l9Flag":
			if (i12l9Flag.visible == true)
			{
				i12l9Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checki12l9 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (i12l9Flag.visible == false)
			{
				i12l9Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checki12l9 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "j12l10Btn":
			case "j12l10Flag":
			if (j12l10Flag.visible == true)
			{
				j12l10Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkj12l10 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (j12l10Flag.visible == false)
			{
				j12l10Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkj12l10 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "k12l11Btn":
			case "k12l11Flag":
			if (k12l11Flag.visible == true)
			{
				k12l11Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkk12l11 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (k12l11Flag.visible == false)
			{
				k12l11Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkk12l11 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "l12l12Btn":
			case "l12l12Flag":
			if (l12l12Flag.visible == true)
			{
				l12l12Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkl12l12 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (l12l12Flag.visible == false)
			{
				l12l12Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkl12l12 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "m12l13Btn":
			case "m12l13Flag":
			if (m12l13Flag.visible == true)
			{
				m12l13Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkm12l13 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (m12l13Flag.visible == false)
			{
				m12l13Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkm12l13 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "n12l14Btn":
			case "n12l14Flag":
			if (n12l14Flag.visible == true)
			{
				n12l14Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkn12l14 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (n12l14Flag.visible == false)
			{
				n12l14Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkn12l14 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		 
		case "o12l15Btn":
			case "o12l15Flag":
			if (o12l15Flag.visible == true)
			{
				o12l15Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checko12l15 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (o12l15Flag.visible == false)
			{
				o12l15Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checko12l15 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		 
		case "p12l16Btn":
			case "p12l16Flag":
			if (p12l16Flag.visible == true)
			{
				p12l16Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkp12l16 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (p12l16Flag.visible == false)
			{
				p12l16Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkp12l16 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		 
		case "q12l17Btn":
			case "q12l17Flag":
			if (q12l17Flag.visible == true)
			{
				q12l17Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkq12l17 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (q12l17Flag.visible == false)
			{
				q12l17Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkq12l17 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "r12l18Btn":
			case "r12l18Flag":
			if (r12l18Flag.visible == true)
			{
				r12l18Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkr12l18 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (r12l18Flag.visible == false)
			{
				r12l18Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkr12l18 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		//row 13
		case "a13m1Btn":
			case "a13m1Flag":
			if (a13m1Flag.visible == true)
			{
				a13m1Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checka13m1 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (a13m1Flag.visible == false)
			{
				a13m1Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checka13m1 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "b13m2Btn":
			case "b13m2Flag":
			if (b13m2Flag.visible == true)
			{
				b13m2Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkb13m2 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (b13m2Flag.visible == false)
			{
				b13m2Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkb13m2 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "c13m3Btn":
			case "c13m3Flag":
			if (c13m3Flag.visible == true)
			{
				c13m3Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkc13m3 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (c13m3Flag.visible == false)
			{
				c13m3Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkc13m3 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "d13m4Btn":
			case "d13m4Flag":
			if (d13m4Flag.visible == true)
			{
				d13m4Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkd13m4 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (d13m4Flag.visible == false)
			{
				d13m4Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkd13m4 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "e13m5Btn":
			case "e13m5Flag":
			if (e13m5Flag.visible == true)
			{
				e13m5Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checke13m5 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (e13m5Flag.visible == false)
			{
				e13m5Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checke13m5 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "f13m6Btn":
			case "f13m6Flag":
			if (f13m6Flag.visible == true)
			{
				f13m6Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkf13m6 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (f13m6Flag.visible == false)
			{
				f13m6Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkf13m6 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "g13m7Btn":
			case "g13m7Flag":
			if (g13m7Flag.visible == true)
			{
				g13m7Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkg13m7 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (g13m7Flag.visible == false)
			{
				g13m7Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkg13m7 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "h13m8Btn":
			case "h13m8Flag":
			if (h13m8Flag.visible == true)
			{
				h13m8Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkh13m8 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (h13m8Flag.visible == false)
			{
				h13m8Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkh13m8 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "i13m9Btn":
			case "i13m9Flag":
			if (i13m9Flag.visible == true)
			{
				i13m9Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checki13m9 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (i13m9Flag.visible == false)
			{
				i13m9Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checki13m9 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "j13m10Btn":
			case "j13m10Flag":
			if (j13m10Flag.visible == true)
			{
				j13m10Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkj13m10 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (j13m10Flag.visible == false)
			{
				j13m10Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkj13m10 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "k13m11Btn":
			case "k13m11Flag":
			if (k13m11Flag.visible == true)
			{
				k13m11Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkk13m11 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (k13m11Flag.visible == false)
			{
				k13m11Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkk13m11 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "l13m12Btn":
			case "l13m12Flag":
			if (l13m12Flag.visible == true)
			{
				l13m12Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkl13m12 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (l13m12Flag.visible == false)
			{
				l13m12Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkl13m12 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		 
		case "m13m13Btn":
			case "m13m13Flag":
			if (m13m13Flag.visible == true)
			{
				m13m13Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkm13m13 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (m13m13Flag.visible == false)
			{
				m13m13Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkm13m13 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "n13m14Btn":
			case "n13m14Flag":
			if (n13m14Flag.visible == true)
			{
				n13m14Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkn13m14 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (n13m14Flag.visible == false)
			{
				n13m14Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkn13m14 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "o13m15Btn":
			case "o13m15Flag":
			if (o13m15Flag.visible == true)
			{
				o13m15Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checko13m15 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (o13m15Flag.visible == false)
			{
				o13m15Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checko13m15 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "p13m16Btn":
			case "p13m16Flag":
			if (p13m16Flag.visible == true)
			{
				p13m16Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkp13m16 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (p13m16Flag.visible == false)
			{
				p13m16Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkp13m16 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "q13m17Btn":
			case "q13m17Flag":
			if (q13m17Flag.visible == true)
			{
				q13m17Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkq13m17 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (q13m17Flag.visible == false)
			{
				q13m17Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkq13m17 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "r13m18Btn":
			case "r13m18Flag":
			if (r13m18Flag.visible == true)
			{
				r13m18Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkr13m18 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (r13m18Flag.visible == false)
			{
				r13m18Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkr13m18 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
				 
		//row 14
		case "a14n1Btn":
			case "a14n1Flag":
			if (a14n1Flag.visible == true)
			{
				a14n1Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checka14n1 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (a14n1Flag.visible == false)
			{
				a14n1Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checka14n1 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "b14n2Btn":
			case "b14n2Flag":
			if (b14n2Flag.visible == true)
			{
				b14n2Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkb14n2 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (b14n2Flag.visible == false)
			{
				b14n2Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkb14n2 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "c14n3Btn":
			case "c14n3Flag":
			if (c14n3Flag.visible == true)
			{
				c14n3Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkc14n3 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (c14n3Flag.visible == false)
			{
				c14n3Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkc14n3 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "d14n4Btn":
			case "d14n4Flag":
			if (d14n4Flag.visible == true)
			{
				d14n4Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkd14n4 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (d14n4Flag.visible == false)
			{
				d14n4Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkd14n4 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "e14n5Btn":
			case "e14n5Flag":
			if (e14n5Flag.visible == true)
			{
				e14n5Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checke14n5 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (e14n5Flag.visible == false)
			{
				e14n5Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checke14n5 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "f14n6Btn":
			case "f14n6Flag":
			if (f14n6Flag.visible == true)
			{
				f14n6Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkf14n6 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (f14n6Flag.visible == false)
			{
				f14n6Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkf14n6 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "g14n7Btn":
			case "g14n7Flag":
			if (g14n7Flag.visible == true)
			{
				g14n7Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkg14n7 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (g14n7Flag.visible == false)
			{
				g14n7Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkg14n7 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "h14n8Btn":
			case "h14n8Flag":
			if (h14n8Flag.visible == true)
			{
				h14n8Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkh14n8 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (h14n8Flag.visible == false)
			{
				h14n8Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkh14n8 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "i14n9Btn":
			case "i14n9Flag":
			if (i14n9Flag.visible == true)
			{
				i14n9Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checki14n9 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (i14n9Flag.visible == false)
			{
				i14n9Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checki14n9 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "j14n10Btn":
			case "j14n10Flag":
			if (j14n10Flag.visible == true)
			{
				j14n10Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkj14n10 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (j14n10Flag.visible == false)
			{
				j14n10Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkj14n10 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "k14n11Btn":
			case "k14n11Flag":
			if (k14n11Flag.visible == true)
			{
				k14n11Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkk14n11 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (k14n11Flag.visible == false)
			{
				k14n11Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkk14n11 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "l14n12Btn":
			case "l14n12Flag":
			if (l14n12Flag.visible == true)
			{
				l14n12Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkl14n12 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (l14n12Flag.visible == false)
			{
				l14n12Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkl14n12 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "m14n13Btn":
			case "m14n13Flag":
			if (m14n13Flag.visible == true)
			{
				m14n13Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkm14n13 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (m14n13Flag.visible == false)
			{
				m14n13Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkm14n13 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "n14n14Btn":
			case "n14n14Flag":
			if (n14n14Flag.visible == true)
			{
				n14n14Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkn14n14 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (n14n14Flag.visible == false)
			{
				n14n14Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkn14n14 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "o14n15Btn":
			case "o14n15Flag":
			if (o14n15Flag.visible == true)
			{
				o14n15Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checko14n15 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (o14n15Flag.visible == false)
			{
				o14n15Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checko14n15 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		 
		case "p14n16Btn":
			case "p14n16Flag":
			if (p14n16Flag.visible == true)
			{
				p14n16Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkp14n16 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (p14n16Flag.visible == false)
			{
				p14n16Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkp14n16 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		 
		case "q14n17Btn":
			case "q14n17Flag":
			if (q14n17Flag.visible == true)
			{
				q14n17Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkq14n17 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (q14n17Flag.visible == false)
			{
				q14n17Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkq14n17 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "r14n18Btn":
			case "r14n18Flag":
			if (r14n18Flag.visible == true)
			{
				r14n18Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkr14n18 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (r14n18Flag.visible == false)
			{
				r14n18Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkr14n18 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		//row 15
		case "a15o1Btn":
			case "a15o1Flag":
			if (a15o1Flag.visible == true)
			{
				a15o1Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checka15o1 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (a15o1Flag.visible == false)
			{
				a15o1Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checka15o1 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "b15o2Btn":
			case "b15o2Flag":
			if (b15o2Flag.visible == true)
			{
				b15o2Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkb15o2 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (b15o2Flag.visible == false)
			{
				b15o2Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkb15o2 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "c15o3Btn":
			case "c15o3Flag":
			if (c15o3Flag.visible == true)
			{
				c15o3Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkc15o3 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (c15o3Flag.visible == false)
			{
				c15o3Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkc15o3 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "d15o4Btn":
			case "d15o4Flag":
			if (d15o4Flag.visible == true)
			{
				d15o4Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkd15o4 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (d15o4Flag.visible == false)
			{
				d15o4Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkd15o4 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "e15o5Btn":
			case "e15o5Flag":
			if (e15o5Flag.visible == true)
			{
				e15o5Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checke15o5 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (e15o5Flag.visible == false)
			{
				e15o5Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checke15o5 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "f15o6Btn":
			case "f15o6Flag":
			if (f15o6Flag.visible == true)
			{
				f15o6Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkf15o6 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (f15o6Flag.visible == false)
			{
				f15o6Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkf15o6 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "g15o7Btn":
			case "g15o7Flag":
			if (g15o7Flag.visible == true)
			{
				g15o7Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkg15o7 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (g15o7Flag.visible == false)
			{
				g15o7Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkg15o7 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "h15o8Btn":
			case "h15o8Flag":
			if (h15o8Flag.visible == true)
			{
				h15o8Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkh15o8 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (h15o8Flag.visible == false)
			{
				h15o8Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkh15o8 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		 
		case "i15o9Btn":
			case "i15o9Flag":
			if (i15o9Flag.visible == true)
			{
				i15o9Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checki15o9 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (i15o9Flag.visible == false)
			{
				i15o9Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checki15o9 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "j15o10Btn":
			case "j15o10Flag":
			if (j15o10Flag.visible == true)
			{
				j15o10Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkj15o10 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (j15o10Flag.visible == false)
			{
				j15o10Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkj15o10 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "k15o11Btn":
			case "k15o11Flag":
			if (k15o11Flag.visible == true)
			{
				k15o11Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkk15o11 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (k15o11Flag.visible == false)
			{
				k15o11Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkk15o11 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "l15o12Btn":
			case "l15o12Flag":
			if (l15o12Flag.visible == true)
			{
				l15o12Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkl15o12 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (l15o12Flag.visible == false)
			{
				l15o12Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkl15o12 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "m15o13Btn":
			case "m15o13Flag":
			if (m15o13Flag.visible == true)
			{
				m15o13Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkm15o13 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (m15o13Flag.visible == false)
			{
				m15o13Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkm15o13 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "n15o14Btn":
			case "n15o14Flag":
			if (n15o14Flag.visible == true)
			{
				n15o14Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkn15o14 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (n15o14Flag.visible == false)
			{
				n15o14Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkn15o14 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "o15o15Btn":
			case "o15o15Flag":
			if (o15o15Flag.visible == true)
			{
				o15o15Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checko15o15 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (o15o15Flag.visible == false)
			{
				o15o15Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checko15o15 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		 
		case "p15o16Btn":
			case "p15o16Flag":
			if (p15o16Flag.visible == true)
			{
				p15o16Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkp15o16 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (p15o16Flag.visible == false)
			{
				p15o16Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkp15o16 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "q15o17Btn":
			case "q15o17Flag":
			if (q15o17Flag.visible == true)
			{
				q15o17Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkq15o17 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (q15o17Flag.visible == false)
			{
				q15o17Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkq15o17 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "r15o18Btn":
			case "r15o18Flag":
			if (r15o18Flag.visible == true)
			{
				r15o18Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkr15o18 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (r15o18Flag.visible == false)
			{
				r15o18Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkr15o18 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		//row 16
		case "a16p1Btn":
			case "a16p1Flag":
			if (a16p1Flag.visible == true)
			{
				a16p1Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checka16p1 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (a16p1Flag.visible == false)
			{
				a16p1Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checka16p1 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "b16p2Btn":
			case "b16p2Flag":
			if (b16p2Flag.visible == true)
			{
				b16p2Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkb16p2 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (b16p2Flag.visible == false)
			{
				b16p2Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkb16p2 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "c16p3Btn":
			case "c16p3Flag":
			if (c16p3Flag.visible == true)
			{
				c16p3Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkc16p3 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (c16p3Flag.visible == false)
			{
				c16p3Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkc16p3 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "d16p4Btn":
			case "d16p4Flag":
			if (d16p4Flag.visible == true)
			{
				d16p4Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkd16p4 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (d16p4Flag.visible == false)
			{
				d16p4Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkd16p4 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "e16p5Btn":
			case "e16p5Flag":
			if (e16p5Flag.visible == true)
			{
				e16p5Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checke16p5 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (e16p5Flag.visible == false)
			{
				e16p5Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checke16p5 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "f16p6Btn":
			case "f16p6Flag":
			if (f16p6Flag.visible == true)
			{
				f16p6Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkf16p6 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (f16p6Flag.visible == false)
			{
				f16p6Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkf16p6 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "g16p7Btn":
			case "g16p7Flag":
			if (g16p7Flag.visible == true)
			{
				g16p7Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkg16p7 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (g16p7Flag.visible == false)
			{
				g16p7Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkg16p7 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "h16p8Btn":
			case "h16p8Flag":
			if (h16p8Flag.visible == true)
			{
				h16p8Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkh16p8 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (h16p8Flag.visible == false)
			{
				h16p8Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkh16p8 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		 
		case "i16p9Btn":
			case "i16p9Flag":
			if (i16p9Flag.visible == true)
			{
				i16p9Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checki16p9 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (i16p9Flag.visible == false)
			{
				i16p9Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checki16p9 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "j16p10Btn":
			case "j16p10Flag":
			if (j16p10Flag.visible == true)
			{
				j16p10Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkj16p10 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (j16p10Flag.visible == false)
			{
				j16p10Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkj16p10 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "k16p11Btn":
			case "k16p11Flag":
			if (k16p11Flag.visible == true)
			{
				k16p11Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkk16p11 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (k16p11Flag.visible == false)
			{
				k16p11Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkk16p11 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "l16p12Btn":
			case "l16p12Flag":
			if (l16p12Flag.visible == true)
			{
				l16p12Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkl16p12 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (l16p12Flag.visible == false)
			{
				l16p12Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkl16p12 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "m16p13Btn":
			case "m16p13Flag":
			if (m16p13Flag.visible == true)
			{
				m16p13Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkm16p13 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (m16p13Flag.visible == false)
			{
				m16p13Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkm16p13 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "n16p14Btn":
			case "n16p14Flag":
			if (n16p14Flag.visible == true)
			{
				n16p14Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkn16p14 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (n16p14Flag.visible == false)
			{
				n16p14Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkn16p14 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "o16p15Btn":
			case "o16p15Flag":
			if (o16p15Flag.visible == true)
			{
				o16p15Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checko16p15 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (o16p15Flag.visible == false)
			{
				o16p15Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checko16p15 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "p16p16Btn":
			case "p16p16Flag":
			if (p16p16Flag.visible == true)
			{
				p16p16Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkp16p16 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (p16p16Flag.visible == false)
			{
				p16p16Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkp16p16 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "q16p17Btn":
			case "q16p17Flag":
			if (q16p17Flag.visible == true)
			{
				q16p17Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkq16p17 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (q16p17Flag.visible == false)
			{
				q16p17Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkq16p17 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "r16p18Btn":
			case "r16p18Flag":
			if (r16p18Flag.visible == true)
			{
				r16p18Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkr16p18 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (r16p18Flag.visible == false)
			{
				r16p18Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkr16p18 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		//row 17
		case "a17q1Btn":
			case "a17q1Flag":
			if (a17q1Flag.visible == true)
			{
				a17q1Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checka17q1 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (a17q1Flag.visible == false)
			{
				a17q1Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checka17q1 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "b17q2Btn":
			case "b17q2Flag":
			if (b17q2Flag.visible == true)
			{
				b17q2Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkb17q2 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (b17q2Flag.visible == false)
			{
				b17q2Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkb17q2 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "c17q3Btn":
			case "c17q3Flag":
			if (c17q3Flag.visible == true)
			{
				c17q3Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkc17q3 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (c17q3Flag.visible == false)
			{
				c17q3Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkc17q3 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "d17q4Btn":
			case "d17q4Flag":
			if (d17q4Flag.visible == true)
			{
				d17q4Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkd17q4 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (d17q4Flag.visible == false)
			{
				d17q4Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkd17q4 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "e17q5Btn":
			case "e17q5Flag":
			if (e17q5Flag.visible == true)
			{
				e17q5Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checke17q5 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (e17q5Flag.visible == false)
			{
				e17q5Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checke17q5 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "f17q6Btn":
			case "f17q6Flag":
			if (f17q6Flag.visible == true)
			{
				f17q6Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkf17q6 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (f17q6Flag.visible == false)
			{
				f17q6Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkf17q6 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		 
		case "g17q7Btn":
			case "g17q7Flag":
			if (g17q7Flag.visible == true)
			{
				g17q7Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkg17q7 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (g17q7Flag.visible == false)
			{
				g17q7Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkg17q7 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "h17q8Btn":
			case "h17q8Flag":
			if (h17q8Flag.visible == true)
			{
				h17q8Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkh17q8 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (h17q8Flag.visible == false)
			{
				h17q8Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkh17q8 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "i17q9Btn":
			case "i17q9Flag":
			if (i17q9Flag.visible == true)
			{
				i17q9Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checki17q9 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (i17q9Flag.visible == false)
			{
				i17q9Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checki17q9 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "j17q10Btn":
			case "j17q10Flag":
			if (j17q10Flag.visible == true)
			{
				j17q10Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkj17q10 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (j17q10Flag.visible == false)
			{
				j17q10Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkj17q10 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "k17q11Btn":
			case "k17q11Flag":
			if (k17q11Flag.visible == true)
			{
				k17q11Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkk17q11 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (k17q11Flag.visible == false)
			{
				k17q11Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkk17q11 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		 
		case "l17q12Btn":
			case "l17q12Flag":
			if (l17q12Flag.visible == true)
			{
				l17q12Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkl17q12 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (l17q12Flag.visible == false)
			{
				l17q12Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkl17q12 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "m17q13Btn":
			case "m17q13Flag":
			if (m17q13Flag.visible == true)
			{
				m17q13Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkm17q13 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (m17q13Flag.visible == false)
			{
				m17q13Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkm17q13 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		 
		case "n17q14Btn":
			case "n17q14Flag":
			if (n17q14Flag.visible == true)
			{
				n17q14Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkn17q14 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (n17q14Flag.visible == false)
			{
				n17q14Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkn17q14 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "o17q15Btn":
			case "o17q15Flag":
			if (o17q15Flag.visible == true)
			{
				o17q15Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checko17q15 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (o17q15Flag.visible == false)
			{
				o17q15Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checko17q15 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "p17q16Btn":
			case "p17q16Flag":
			if (p17q16Flag.visible == true)
			{
				p17q16Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkp17q16 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (p17q16Flag.visible == false)
			{
				p17q16Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkp17q16 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "q17q17Btn":
			case "q17q17Flag":
			if (q17q17Flag.visible == true)
			{
				q17q17Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkq17q17 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (q17q17Flag.visible == false)
			{
				q17q17Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkq17q17 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "r17q18Btn":
			case "r17q18Flag":
			if (r17q18Flag.visible == true)
			{
				r17q18Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkr17q18 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (r17q18Flag.visible == false)
			{
				r17q18Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkr17q18 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		//row 18
		case "a18r1Btn":
			case "a18r1Flag":
			if (a18r1Flag.visible == true)
			{
				a18r1Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checka18r1 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (a18r1Flag.visible == false)
			{
				a18r1Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checka18r1 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "b18r2Btn":
			case "b18r2Flag":
			if (b18r2Flag.visible == true)
			{
				b18r2Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkb18r2 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (b18r2Flag.visible == false)
			{
				b18r2Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkb18r2 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "c18r3Btn":
			case "c18r3Flag":
			if (c18r3Flag.visible == true)
			{
				c18r3Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkc18r3 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (c18r3Flag.visible == false)
			{
				c18r3Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkc18r3 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "d18r4Btn":
			case "d18r4Flag":
			if (d18r4Flag.visible == true)
			{
				d18r4Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkd18r4 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (d18r4Flag.visible == false)
			{
				d18r4Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkd18r4 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "e18r5Btn":
			case "e18r5Flag":
			if (e18r5Flag.visible == true)
			{
				e18r5Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checke18r5 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (e18r5Flag.visible == false)
			{
				e18r5Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checke18r5 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "f18r6Btn":
			case "f18r6Flag":
			if (f18r6Flag.visible == true)
			{
				f18r6Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkf18r6 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (f18r6Flag.visible == false)
			{
				f18r6Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkf18r6 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "g18r7Btn":
			case "g18r7Flag":
			if (g18r7Flag.visible == true)
			{
				g18r7Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkg18r7 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (g18r7Flag.visible == false)
			{
				g18r7Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkg18r7 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "h18r8Btn":
			case "h18r8Flag":
			if (h18r8Flag.visible == true)
			{
				h18r8Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkh18r8 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (h18r8Flag.visible == false)
			{
				h18r8Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkh18r8 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "i18r9Btn":
			case "i18r9Flag":
			if (i18r9Flag.visible == true)
			{
				i18r9Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checki18r9 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (i18r9Flag.visible == false)
			{
				i18r9Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checki18r9 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "j18r10Btn":
			case "j18r10Flag":
			if (j18r10Flag.visible == true)
			{
				j18r10Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkj18r10 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (j18r10Flag.visible == false)
			{
				j18r10Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkj18r10 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "k18r11Btn":
			case "k18r11Flag":
			if (k18r11Flag.visible == true)
			{
				k18r11Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkk18r11 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (k18r11Flag.visible == false)
			{
				k18r11Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkk18r11 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "l18r12Btn":
			case "l18r12Flag":
			if (l18r12Flag.visible == true)
			{
				l18r12Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkl18r12 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (l18r12Flag.visible == false)
			{
				l18r12Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkl18r12 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "m18r13Btn":
			case "m18r13Flag":
			if (m18r13Flag.visible == true)
			{
				m18r13Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkm18r13 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (m18r13Flag.visible == false)
			{
				m18r13Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkm18r13 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "n18r14Btn":
			case "n18r14Flag":
			if (n18r14Flag.visible == true)
			{
				n18r14Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkn18r14 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (n18r14Flag.visible == false)
			{
				n18r14Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkn18r14 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "o18r15Btn":
			case "o18r15Flag":
			if (o18r15Flag.visible == true)
			{
				o18r15Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checko18r15 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (o18r15Flag.visible == false)
			{
				o18r15Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checko18r15 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "p18r16Btn":
			case "p18r16Flag":
			if (p18r16Flag.visible == true)
			{
				p18r16Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkp18r16 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (p18r16Flag.visible == false)
			{
				p18r16Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkp18r16 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "q18r17Btn":
			case "q18r17Flag":
			if (q18r17Flag.visible == true)
			{
				q18r17Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkq18r17 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (q18r17Flag.visible == false)
			{
				q18r17Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkq18r17 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
		
		case "r18r18Btn":
			case "r18r18Flag":
			if (r18r18Flag.visible == true)
			{
				r18r18Flag.visible = false;
				flagsOut -= 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkr18r18 == true)
				{
					
					correctFlags -= 1;
				}
				
			} else if (r18r18Flag.visible == false)
			{
				r18r18Flag.visible = true;
				flagsOut += 1; stage.addEventListener(Event.ENTER_FRAME, checkForWin);
				if (checkr18r18 == true)
				{
					
					correctFlags += 1;
				}
			}
	 	break;
	}
}

function checkSpaces(event:Event):void
{
	switch (event.target.name)
	{
		//row 1
		case "a1a1":
		a1a1.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (a1a1.currentFrame == 1 &&  invisiblea1a1 == false)
		{
			invisiblea1a1 = true;
			a1a1Btn.visible = false;
			b1a2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b2b2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			a2b1.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "b1a2":
		b1a2.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (b1a2.currentFrame == 1 &&  invisibleb1a2 == false)
		{
			invisibleb1a2 = true;
			b1a2Btn.visible = false;
			a1a1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c1a3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b2b2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			a2b1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c2b3.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "c1a3":
		c1a3.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (c1a3.currentFrame == 1 &&  invisiblec1a3 == false)
		{
			invisiblec1a3 = true;
			c1a3Btn.visible = false;
			b1a2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b2b2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c2b3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d2b4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d1a4.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "d1a4":
		d1a4.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (d1a4.currentFrame == 1 &&  invisibled1a4 == false)
		{
			invisibled1a4 = true;
			d1a4Btn.visible = false;
			c1a3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c2b3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d2b4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e2b5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e1a5.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "e1a5":
		e1a5.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (e1a5.currentFrame == 1 &&  invisiblee1a5 == false)
		{
			invisiblee1a5 = true;
			e1a5Btn.visible = false;
			d1a4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f1a6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f2b6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e2b5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d2b4.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "f1a6":
		f1a6.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (f1a6.currentFrame == 1 &&  invisiblef1a6 == false)
		{
			invisiblef1a6 = true;
			f1a6Btn.visible = false;
			e1a5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g1a7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e2b5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g2b7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f2b6.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "g1a7":
		g1a7.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (g1a7.currentFrame == 1 &&  invisibleg1a7 == false)
		{
			invisibleg1a7 = true;
			g1a7Btn.visible = false;
			f1a6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f2b6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g2b7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h1a8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h2b8.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "h1a8":
		h1a8.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (h1a8.currentFrame == 1 &&  invisibleh1a8 == false)
		{
			invisibleh1a8 = true;
			h1a8Btn.visible = false;
			g1a7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g2b7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h2b8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i1a9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i2b9.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "i1a9":
		i1a9.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (i1a9.currentFrame == 1 &&  invisiblei1a9 == false)
		{
			invisiblei1a9 = true;
			i1a9Btn.visible = false;
			h1a8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h2b8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i2b9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j1a10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j2b10.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "j1a10":
		j1a10.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (j1a10.currentFrame == 1 &&  invisiblej1a10 == false)
		{
			invisiblej1a10 = true;
			j1a10Btn.visible = false;
			i1a9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i2b9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j2b10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k1a11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k2b11.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "k1a11":
		k1a11.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (k1a11.currentFrame == 1 &&  invisiblek1a11 == false)
		{
			invisiblek1a11 = true;
			k1a11Btn.visible = false;
			j1a10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j2b10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k2b11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l1a12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l2b12.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "l1a12":
		l1a12.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (l1a12.currentFrame == 1 &&  invisiblel1a12 == false)
		{
			invisiblel1a12 = true;
			l1a12Btn.visible = false;
			k1a11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k2b11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l2b12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m1a13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m2b13.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "m1a13":
		m1a13.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (m1a13.currentFrame == 1 &&  invisiblem1a13 == false)
		{
			invisiblem1a13 = true;
			m1a13Btn.visible = false;
			l1a12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l2b12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m2b13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n1a14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n2b14.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "n1a14":
		n1a14.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (n1a14.currentFrame == 1 &&  invisiblen1a14 == false)
		{
			invisiblen1a14 = true;
			n1a14Btn.visible = false;
			m1a13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m2b13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n2b14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o1a15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o2b15.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "o1a15":
		o1a15.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (o1a15.currentFrame == 1 &&  invisibleo1a15 == false)
		{
			invisibleo1a15 = true;
			o1a15Btn.visible = false;
			n1a14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n2b14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o2b15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p1a16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p2b16.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "p1a16":
		p1a16.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (p1a16.currentFrame == 1 &&  invisiblep1a16 == false)
		{
			invisiblep1a16 = true;
			p1a16Btn.visible = false;
			o1a15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o2b15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p2b16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q1a17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q2b17.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "q1a17":
		q1a17.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (q1a17.currentFrame == 1 &&  invisibleq1a17 == false)
		{
			invisibleq1a17 = true;
			q1a17Btn.visible = false;
			p1a16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p2b16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q2b17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r1a18.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r2b18.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "r1a18":
		r1a18.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (r1a18.currentFrame == 1 && invisibler1a18 == false)
		{
			invisibler1a18 = true;
			r1a18Btn.visible = false;
			q1a17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q2b17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r2b18.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		//row 2 2b
		case "a2b1":
		a2b1.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (a2b1.currentFrame == 1 && invisiblea2b1 == false)
		{
			invisiblea2b1 = true;
			a2b1Btn.visible = false;
			a1a1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b1a2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b2b2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b3c2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			a3c1.addEventListener(Event.ENTER_FRAME, checkSpaces);

		}
		break;
		
		case "b2b2":
		b2b2.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (b2b2.currentFrame == 1 && invisibleb2b2 == false)
		{
			invisibleb2b2 = true;
			b2b2Btn.visible = false;
			a1a1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b1a2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c1a3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			a2b1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c2b3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			a3c1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b3c2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c3c3.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "c2b3":
		c2b3.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (c2b3.currentFrame == 1 && invisiblec2b3 == false)
		{
			invisiblec2b3 = true;
			c2b3Btn.visible = false;
			b1a2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b2b2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b3c2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c1a3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c3c3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d1a4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d2b4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d3c4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			
		}
		break;
		
		case "d2b4":
		d2b4.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (d2b4.currentFrame == 1 && invisibled2b4 == false)
		{
			invisibled2b4 = true;
			d2b4Btn.visible = false;
			c1a3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c2b3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c3c3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d1a4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d3c4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e1a5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e2b5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e3c5.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "e2b5":
		e2b5.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (e2b5.currentFrame == 1 && invisiblee2b5 == false)
		{
			invisiblee2b5 = true;
			e2b5Btn.visible = false;
			d1a4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d2b4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d3c4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e1a5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e3c5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f1a6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f2b6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f3c6.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "f2b6":
		f2b6.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (f2b6.currentFrame == 1 && invisiblef2b6 == false)
		{
			invisiblef2b6 = true;
			f2b6Btn.visible = false;
			e1a5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e2b5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e3c5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f1a6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f3c6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g1a7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g2b7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g3c7.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "g2b7":
		g2b7.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (g2b7.currentFrame == 1 && invisibleg2b7 == false)
		{
			invisibleg2b7 = true;
			g2b7Btn.visible = false;
			f1a6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f2b6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f3c6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g1a7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g3c7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h1a8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h2b8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h3c8.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "h2b8":
		h2b8.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (h2b8.currentFrame == 1 && invisibleh2b8 == false)
		{
			invisibleh2b8 = true;
			h2b8Btn.visible = false;
			g1a7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g2b7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g3c7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h1a8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h3c8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i1a9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i2b9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i3c9.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "i2b9":
		i2b9.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (i2b9.currentFrame == 1 && invisiblei2b9 == false)
		{
			invisiblei2b9 = true;
			i2b9Btn.visible = false;
			h1a8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h2b8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h3c8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i1a9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i3c9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j1a10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j2b10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j3c10.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "j2b10":
		j2b10.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (j2b10.currentFrame == 1 && invisiblej2b10 == false)
		{
			invisiblej2b10 = true;
			j2b10Btn.visible = false;
			i1a9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i2b9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i3c9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j1a10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j3c10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k1a11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k2b11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k3c11.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "k2b11":
		k2b11.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (k2b11.currentFrame == 1 && invisiblek2b11 == false)
		{
			invisiblek2b11 = true;
			k2b11Btn.visible = false;
			j1a10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j2b10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j3c10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k1a11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k3c11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l1a12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l2b12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l3c12.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "l2b12":
		l2b12.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (l2b12.currentFrame == 1 && invisiblel2b12 == false)
		{
			invisiblel2b12 = true;
			l2b12Btn.visible = false;
			k1a11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k2b11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k3c11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l1a12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l3c12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m1a13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m2b13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m3c13.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "m2b13":
		m2b13.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (m2b13.currentFrame == 1 && invisiblem2b13 == false)
		{
			invisiblem2b13 = true;
			m2b13Btn.visible = false;
			l1a12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l2b12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l3c12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m1a13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m3c13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n1a14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n2b14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n3c14.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "n2b14":
		n2b14.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (n2b14.currentFrame == 1 && invisiblen2b14 == false)
		{
			invisiblen2b14 = true;
			n2b14Btn.visible = false;
			m1a13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m2b13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m3c13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n1a14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n3c14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o1a15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o2b15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o3c15.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "o2b15":
		o2b15.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (o2b15.currentFrame == 1 && invisibleo2b15 == false)
		{
			invisibleo2b15 = true;
			o2b15Btn.visible = false;
			n1a14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n2b14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n3c14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o1a15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o3c15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p1a16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p2b16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p3c16.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "p2b16":
		p2b16.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (p2b16.currentFrame == 1 && invisiblep2b16 == false)
		{
			invisiblep2b16 = true;
			p2b16Btn.visible = false;
			o1a15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o2b15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o3c15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p1a16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p3c16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q1a17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q2b17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q3c17.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "q2b17":
		q2b17.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (q2b17.currentFrame == 1 && invisibleq2b17 == false)
		{
			invisibleq2b17 = true;
			q2b17Btn.visible = false;
			p1a16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p2b16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p3c16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q1a17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q3c17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r1a18.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r2b18.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r3c18.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "r2b18":
		r2b18.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (r2b18.currentFrame == 1 && invisibler2b18 == false)
		{
			invisibler2b18 = true;
			r2b18Btn.visible = false;
			q1a17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q2b17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q3c17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r1a18.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r3c18.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		//row 3 3c
		case "a3c1":
		a3c1.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (a3c1.currentFrame == 1 && invisiblea3c1 == false)
		{
			invisiblea3c1 = true;
			a3c1Btn.visible = false;
			a2b1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b2b2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b3c2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b4d2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			a4d1.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "b3c2":
		b3c2.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (b3c2.currentFrame == 1 && invisibleb3c2 == false)
		{
			invisibleb3c2 = true;
			b3c2Btn.visible = false;
			a2b1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			a3c1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			a4d1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b2b2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b4d2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c2b3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c3c3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c4d3.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "c3c3":
		c3c3.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (c3c3.currentFrame == 1 && invisiblec3c3 == false)
		{
			invisiblec3c3 = true;
			c3c3Btn.visible = false;
			b2b2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b3c2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b4d2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c2b3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c4d3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d2b4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d3c4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d4d4.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "d3c4":
		d3c4.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (d3c4.currentFrame == 1 && invisibled3c4 == false)
		{
			invisibled3c4 = true;
			d3c4Btn.visible = false;
			c2b3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c3c3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c4d3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d2b4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d4d4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e2b5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e3c5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e4d5.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "e3c5":
		e3c5.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (e3c5.currentFrame == 1 && invisiblee3c5 == false)
		{
			invisiblee3c5 = true;
			e3c5Btn.visible = false;
			d2b4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d3c4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d4d4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e2b5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e4d5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f2b6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f3c6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f4d6.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "f3c6":
		f3c6.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (f3c6.currentFrame == 1 && invisiblef3c6 == false)
		{
			invisiblef3c6 = true;
			f3c6Btn.visible = false;
			e2b5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e3c5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e4d5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f2b6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f4d6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g2b7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g3c7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g4d7.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "g3c7":
		g3c7.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (g3c7.currentFrame == 1 && invisibleg3c7 == false)
		{
			invisibleg3c7 = true;
			g3c7Btn.visible = false;
			f2b6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f3c6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f4d6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g2b7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g4d7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h2b8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h3c8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h4d8.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "h3c8":
		h3c8.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (h3c8.currentFrame == 1 && invisibleh3c8 == false)
		{
			invisibleh3c8 = true;
			h3c8Btn.visible = false;
			g2b7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g3c7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g4d7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h2b8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h4d8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i2b9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i3c9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i4d9.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "i3c9":
		i3c9.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (i3c9.currentFrame == 1 && invisiblei3c9 == false)
		{
			invisiblei3c9 = true;
			i3c9Btn.visible = false;
			h2b8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h3c8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h4d8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i2b9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i4d9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j2b10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j3c10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j4d10.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "j3c10":
		j3c10.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (j3c10.currentFrame == 1 && invisiblej3c10 == false)
		{
			invisiblej3c10 = true;
			j3c10Btn.visible = false;
			i2b9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i3c9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i4d9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j2b10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j4d10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k2b11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k3c11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k4d11.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "k3c11":
		k3c11.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (k3c11.currentFrame == 1 && invisiblek3c11 == false)
		{
			invisiblek3c11 = true;
			k3c11Btn.visible = false;
			j2b10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j3c10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j4d10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k2b11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k4d11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l2b12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l3c12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l4d12.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "l3c12":
		l3c12.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (l3c12.currentFrame == 1 && invisiblel3c12 == false)
		{
			invisiblel3c12 = true;
			l3c12Btn.visible = false;
			k2b11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k3c11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k4d11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l2b12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l4d12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m2b13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m3c13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m4d13.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "m3c13":
		m3c13.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (m3c13.currentFrame == 1 && invisiblem3c13 == false)
		{
			invisiblem3c13 = true;
			m3c13Btn.visible = false;
			l2b12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l3c12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l4d12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m2b13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m4d13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n2b14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n3c14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n4d14.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "n3c14":
		n3c14.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (n3c14.currentFrame == 1 && invisiblen3c14 == false)
		{
			invisiblen3c14 = true;
			n3c14Btn.visible = false;
			m2b13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m3c13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m4d13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n2b14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n4d14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o2b15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o3c15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o4d15.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "o3c15":
		o3c15.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (o3c15.currentFrame == 1 && invisibleo3c15 == false)
		{
			invisibleo3c15 = true;
			o3c15Btn.visible = false;
			n2b14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n3c14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n4d14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o2b15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o4d15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p2b16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p3c16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p4d16.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "p3c16":
		p3c16.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (p3c16.currentFrame == 1 && invisiblep3c16 == false)
		{
			invisiblep3c16 = true;
			p3c16Btn.visible = false;
			o2b15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o3c15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o4d15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p2b16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p4d16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q2b17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q3c17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q4d17.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "q3c17":
		q3c17.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (q3c17.currentFrame == 1 && invisibleq3c17 == false)
		{
			invisibleq3c17 = true;
			q3c17Btn.visible = false;
			p2b16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p3c16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p4d16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q2b17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q4d17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r2b18.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r3c18.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r4d18.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "r3c18":
		r3c18.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (r3c18.currentFrame == 1 && invisibler3c18 == false)
		{
			invisibler3c18 = true;
			r3c18Btn.visible = false;
			q2b17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q3c17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q4d17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r2b18.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r4d18.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		//row 4 4d
		case "a4d1":
		a4d1.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (a4d1.currentFrame == 1 && invisiblea4d1 == false)
		{
			invisiblea4d1 = true;
			a4d1Btn.visible = false;
			a3c1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			a5e1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b3c2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b4d2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b5e2.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "b4d2":
		b4d2.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (b4d2.currentFrame == 1 && invisibleb4d2 == false)
		{
			invisibleb4d2 = true;
			b4d2Btn.visible = false;
			a3c1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			a4d1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			a5e1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b3c2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b5e2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c3c3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c4d3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c5e3.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "c4d3":
		c4d3.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (c4d3.currentFrame == 1 && invisiblec4d3 == false)
		{
			invisiblec4d3 = true;
			c4d3Btn.visible = false;
			b3c2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b4d2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b5e2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c3c3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c5e3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d3c4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d4d4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d5e4.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "d4d4":
		d4d4.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (d4d4.currentFrame == 1 && invisibled4d4 == false)
		{
			invisibled4d4 = true;
			d4d4Btn.visible = false;
			c3c3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c4d3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c5e3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d3c4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d5e4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e3c5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e4d5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e5e5.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "e4d5":
		e4d5.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (e4d5.currentFrame == 1 && invisiblee4d5 == false)
		{
			invisiblee4d5 = true;
			e4d5Btn.visible = false;
			d3c4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d4d4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d5e4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e3c5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e5e5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f3c6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f4d6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f5e6.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "f4d6":
		f4d6.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (f4d6.currentFrame == 1 && invisiblef4d6 == false)
		{
			invisiblef4d6 = true;
			f4d6Btn.visible = false;
			e3c5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e4d5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e5e5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f3c6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f5e6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g3c7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g4d7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g5e7.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "g4d7":
		g4d7.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (g4d7.currentFrame == 1 && invisibleg4d7 == false)
		{
			invisibleg4d7 = true;
			g4d7Btn.visible = false;
			f3c6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f4d6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f5e6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g3c7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g5e7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h3c8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h4d8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h5e8.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "h4d8":
		h4d8.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (h4d8.currentFrame == 1 && invisibleh4d8 == false)
		{
			invisibleh4d8 = true;
			h4d8Btn.visible = false;
			g3c7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g4d7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g5e7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h3c8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h5e8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i3c9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i4d9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i5e9.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "i4d9":
		i4d9.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (i4d9.currentFrame == 1 && invisiblei4d9 == false)
		{
			invisiblei4d9 = true;
			i4d9Btn.visible = false;
			h3c8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h4d8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h5e8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i3c9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i5e9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j3c10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j4d10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j5e10.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "j4d10":
		j4d10.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (j4d10.currentFrame == 1 && invisiblej4d10 == false)
		{
			invisiblej4d10 = true;
			j4d10Btn.visible = false;
			i3c9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i4d9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i5e9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j3c10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j5e10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k3c11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k4d11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k5e11.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "k4d11":
		k4d11.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (k4d11.currentFrame == 1 && invisiblek4d11 == false)
		{
			invisiblek4d11 = true;
			k4d11Btn.visible = false;
			j3c10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j4d10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j5e10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k3c11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k5e11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l3c12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l4d12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l5e12.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "l4d12":
	l4d12.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (l4d12.currentFrame == 1 && invisiblel4d12 == false)
		{
			invisiblel4d12 = true;
			l4d12Btn.visible = false;
			k3c11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k4d11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k5e11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l3c12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l5e12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m3c13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m4d13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m5e13.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "m4d13":
		m4d13.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (m4d13.currentFrame == 1 && invisiblem4d13 == false)
		{
			invisiblem4d13 = true;
			m4d13Btn.visible = false;
			l3c12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l4d12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l5e12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m3c13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m5e13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n3c14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n4d14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n5e14.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "n4d14":
		n4d14.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (n4d14.currentFrame == 1 && invisiblen4d14 == false)
		{
			invisiblen4d14 = true;
			n4d14Btn.visible = false;
			m3c13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m4d13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m5e13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n3c14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n5e14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o3c15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o4d15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o5e15.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "o4d15":
		o4d15.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (o4d15.currentFrame == 1 && invisibleo4d15 == false)
		{
			invisibleo4d15 = true;
			o4d15Btn.visible = false;
			n3c14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n4d14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n5e14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o3c15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o5e15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p3c16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p4d16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p5e16.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "p4d16":
		p4d16.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (p4d16.currentFrame == 1 && invisiblep4d16 == false)
		{
			invisiblep4d16 = true;
			p4d16Btn.visible = false;
			o3c15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o4d15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o5e15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p3c16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p5e16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q3c17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q4d17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q5e17.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "q4d17":
		q4d17.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (q4d17.currentFrame == 1 && invisibleq4d17 == false)
		{
			invisibleq4d17 = true;
			q4d17Btn.visible = false;
			p3c16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p4d16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p5e16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q3c17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q5e17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r3c18.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r4d18.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r5e18.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "r4d18":
		r4d18.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (r4d18.currentFrame == 1 && invisibler4d18 == false)
		{
			invisibler4d18 = true;
			r4d18Btn.visible = false;
			q3c17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q4d17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q5e17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r3c18.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r5e18.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
	
		//row 5 5e
		case "a5e1":
		a5e1.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (a5e1.currentFrame == 1 && invisiblea5e1 == false)
		{
			invisiblea5e1 = true;
			a5e1Btn.visible = false;
			a4d1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			a6f1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b4d2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b5e2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b6f2.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "b5e2":
		b5e2.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (b5e2.currentFrame == 1 && invisibleb5e2 == false)
		{
			invisibleb5e2 = true;
			b5e2Btn.visible = false;
			a4d1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			a5e1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			a6f1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b4d2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b6f2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c4d3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c5e3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c6f3.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "c5e3":
		c5e3.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (c5e3.currentFrame == 1 && invisiblec5e3 == false)
		{
			invisiblec5e3 = true;
			c5e3Btn.visible = false;
			b4d2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b5e2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b6f2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c4d3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c6f3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d4d4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d5e4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d6f4.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "d5e4":
		d5e4.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (d5e4.currentFrame == 1 && invisibled5e4 == false)
		{
			invisibled5e4 = true;
			d5e4Btn.visible = false;
			c4d3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c5e3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c6f3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d4d4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d6f4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e4d5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e5e5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e6f5.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "e5e5":
		e5e5.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (e5e5.currentFrame == 1 && invisiblee5e5 == false)
		{
			invisiblee5e5 = true;
			e5e5Btn.visible = false;
			d4d4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d5e4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d6f4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e4d5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e6f5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f4d6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f5e6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f6f6.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "f5e6":
		f5e6.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (f5e6.currentFrame == 1 && invisiblef5e6 == false)
		{
			invisiblef5e6 = true;
			f5e6Btn.visible = false;
			e4d5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e5e5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e6f5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f4d6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f6f6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g4d7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g5e7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g6f7.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "g5e7":
		g5e7.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (g5e7.currentFrame == 1 && invisibleg5e7 == false)
		{
			invisibleg5e7 = true;
			g5e7Btn.visible = false;
			f4d6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f5e6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f6f6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g4d7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g6f7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h4d8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h5e8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h6f8.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "h5e8":
		h5e8.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (h5e8.currentFrame == 1 && invisibleh5e8 == false)
		{
			invisibleh5e8 = true;
			h5e8Btn.visible = false;
			g4d7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g5e7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g6f7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h4d8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h6f8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i4d9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i5e9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i6f9.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "i5e9":
		i5e9.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (i5e9.currentFrame == 1 && invisiblei5e9 == false)
		{
			invisiblei5e9 = true;
			i5e9Btn.visible = false;
			h4d8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h5e8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h6f8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i4d9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i6f9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j4d10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j5e10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j6f10.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "j5e10":
		j5e10.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (j5e10.currentFrame == 1 && invisiblej5e10 == false)
		{
			invisiblej5e10 = true;
			j5e10Btn.visible = false;
			i4d9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i5e9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i6f9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j4d10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j6f10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k4d11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k5e11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k6f11.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "k5e11":
		k5e11.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (k5e11.currentFrame == 1 && invisiblek5e11 == false)
		{
			invisiblek5e11 = true;
			k5e11Btn.visible = false;
			j4d10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j5e10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j6f10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k4d11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k6f11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l4d12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l5e12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l6f12.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "l5e12":
		l5e12.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (l5e12.currentFrame == 1 && invisiblel5e12 == false)
		{
			invisiblel5e12 = true;
			l5e12Btn.visible = false;
			k4d11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k5e11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k6f11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l4d12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l6f12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m4d13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m5e13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m6f13.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "m5e13":
		m5e13.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (m5e13.currentFrame == 1 && invisiblem5e13 == false)
		{
			invisiblem5e13 = true;
			m5e13Btn.visible = false;
			l4d12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l5e12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l6f12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m4d13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m6f13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n4d14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n5e14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n6f14.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "n5e14":
		n5e14.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (n5e14.currentFrame == 1 && invisiblen5e14 == false)
		{
			invisiblen5e14 = true;
			n5e14Btn.visible = false;
			m4d13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m5e13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m6f13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n4d14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n6f14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o4d15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o5e15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o6f15.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "o5e15":
		o5e15.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (o5e15.currentFrame == 1 && invisibleo5e15 == false)
		{
			invisibleo5e15 = true;
			o5e15Btn.visible = false;
			n4d14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n5e14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n6f14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o4d15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o6f15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p4d16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p5e16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p6f16.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "p5e16":
	p5e16.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (p5e16.currentFrame == 1 && invisiblep5e16 == false)
		{
			invisiblep5e16 = true;
			p5e16Btn.visible = false;
			o4d15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o5e15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o6f15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p4d16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p6f16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q4d17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q5e17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q6f17.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "q5e17":
		q5e17.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (q5e17.currentFrame == 1 && invisibleq5e17 == false)
		{
			invisibleq5e17 = true;
			q5e17Btn.visible = false;
			p4d16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p5e16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p6f16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q4d17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q6f17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r4d18.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r5e18.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r6f18.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "r5e18":
		r5e18.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (r5e18.currentFrame == 1 && invisibler5e18 == false)
		{
			invisibler5e18 = true;
			r5e18Btn.visible = false;
			q4d17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q5e17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q6f17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r4d18.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r6f18.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		//row 6 6f
		case "a6f1":
		a6f1.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (a6f1.currentFrame == 1 && invisiblea6f1 == false)
		{
			invisiblea6f1 = true;
			a6f1Btn.visible = false;
			b5e2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b6f2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b7g2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			a5e1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			a7g1.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "b6f2":
		b6f2.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (b6f2.currentFrame == 1 && invisibleb6f2 == false)
		{
			invisibleb6f2 = true;
			b6f2Btn.visible = false;
			a5e1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			a6f1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			a7g1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b5e2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b7g2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c5e3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c6f3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c7g3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			
		}
		break;
		
		case "c6f3":
		c6f3.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (c6f3.currentFrame == 1 && invisiblec6f3 == false)
		{
			invisiblec6f3 = true;
			c6f3Btn.visible = false;
			b5e2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b6f2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b7g2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c5e3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c7g3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d5e4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d6f4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d7g4.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "d6f4":
		d6f4.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (d6f4.currentFrame == 1 && invisibled6f4 == false)
		{
			invisibled6f4 = true;
			d6f4Btn.visible = false;
			c5e3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c6f3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c7g3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d5e4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d7g4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e5e5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e6f5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e7g5.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "e6f5":
		e6f5.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (e6f5.currentFrame == 1 && invisiblee6f5 == false)
		{
			invisiblee6f5 = true;
			e6f5Btn.visible = false;
			d5e4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d6f4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d7g4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e5e5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e7g5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f5e6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f6f6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f7g6.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "f6f6":
		f6f6.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (f6f6.currentFrame == 1 && invisiblef6f6 == false)
		{
			invisiblef6f6 = true;
			f6f6Btn.visible = false;
			e5e5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e6f5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e7g5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f5e6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f7g6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g5e7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g6f7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g7g7.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "g6f7":
		g6f7.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (g6f7.currentFrame == 1 && invisibleg6f7 == false)
		{
			invisibleg6f7 = true;
			g6f7Btn.visible = false;
			f5e6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f6f6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f7g6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g5e7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g7g7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h5e8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h6f8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h7g8.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "h6f8":
		h6f8.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (h6f8.currentFrame == 1 && invisibleh6f8 == false)
		{
			invisibleh6f8 = true;
			h6f8Btn.visible = false;
			g5e7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g6f7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g7g7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h5e8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h7g8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i5e9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i6f9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i7g9.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "i6f9":
		i6f9.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (i6f9.currentFrame == 1 && invisiblei6f9 == false)
		{
			invisiblei6f9 = true;
			i6f9Btn.visible = false;
			h5e8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h6f8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h7g8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i5e9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i7g9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j5e10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j6f10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j7g10.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "j6f10":
		j6f10.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (j6f10.currentFrame == 1 && invisiblej6f10 == false)
		{
			invisiblej6f10 = true;
			j6f10Btn.visible = false;
			i5e9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i6f9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i7g9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j5e10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j7g10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k5e11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k6f11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k7g11.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "k6f11":
		k6f11.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (k6f11.currentFrame == 1 && invisiblek6f11 == false)
		{
			invisiblek6f11 = true;
			k6f11Btn.visible = false;
			j5e10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j6f10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j7g10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k5e11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k7g11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l5e12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l6f12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l7g12.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "l6f12":
		l6f12.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (l6f12.currentFrame == 1 && invisiblel6f12 == false)
		{
			invisiblel6f12 = true;
			l6f12Btn.visible = false;
			k5e11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k6f11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k7g11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l5e12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l7g12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m5e13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m6f13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m7g13.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "m6f13":
		m6f13.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (m6f13.currentFrame == 1 && invisiblem6f13 == false)
		{
			invisiblem6f13 = true;
			m6f13Btn.visible = false;
			l5e12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l6f12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l7g12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m5e13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m7g13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n5e14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n6f14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n7g14.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "n6f14":
		n6f14.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (n6f14.currentFrame == 1 && invisiblen6f14 == false)
		{
			invisiblen6f14 = true;
			n6f14Btn.visible = false;
			m5e13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m6f13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m7g13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n5e14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n7g14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o5e15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o6f15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o7g15.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "o6f15":
		o6f15.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (o6f15.currentFrame == 1 && invisibleo6f15 == false)
		{
			invisibleo6f15 = true;
			o6f15Btn.visible = false;
			n5e14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n6f14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n7g14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o5e15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o7g15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p5e16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p6f16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p7g16.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "p6f16":
		p6f16.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (p6f16.currentFrame == 1 && invisiblep6f16 == false)
		{
			invisiblep6f16 = true;
			p6f16Btn.visible = false;
			o5e15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o6f15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o7g15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p5e16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p7g16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q5e17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q6f17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q7g17.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "q6f17":
		q6f17.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (q6f17.currentFrame == 1 && invisibleq6f17 == false)
		{
			invisibleq6f17 = true;
			q6f17Btn.visible = false;
			p5e16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p6f16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p7g16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q5e17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q7g17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r5e18.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r6f18.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r7g18.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "r6f18":
		r6f18.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (r6f18.currentFrame == 1 && invisibler6f18 == false)
		{
			invisibler6f18 = true;
			r6f18Btn.visible = false;
			q5e17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q6f17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q7g17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r5e18.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r7g18.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
	
		//row 7 7g
		case "a7g1":
		a7g1.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (a7g1.currentFrame == 1 && invisiblea7g1 == false)
		{
			invisiblea7g1 = true;
			a7g1Btn.visible = false;
			b6f2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b7g2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b8h2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			a6f1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			a8h1.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "b7g2":
		b7g2.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (b7g2.currentFrame == 1 && invisibleb7g2 == false)
		{
			invisibleb7g2 = true;
			b7g2Btn.visible = false;
			a6f1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			a7g1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			a8h1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b6f2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b8h2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c6f3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c7g3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c8h3.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "c7g3":
		c7g3.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (c7g3.currentFrame == 1 && invisiblec7g3 == false)
		{
			invisiblec7g3 = true;
			c7g3Btn.visible = false;
			b6f2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b7g2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b8h2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c6f3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c8h3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d6f4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d7g4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d8h4.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "d7g4":
		d7g4.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (d7g4.currentFrame == 1 && invisibled7g4 == false)
		{
			invisibled7g4 = true;
			d7g4Btn.visible = false;
			c6f3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c7g3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c8h3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d6f4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d8h4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e6f5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e7g5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e8h5.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "e7g5":
		e7g5.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (e7g5.currentFrame == 1 && invisiblee7g5 == false)
		{
			invisiblee7g5 = true;
			e7g5Btn.visible = false;
			d6f4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d7g4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d8h4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e6f5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e8h5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f6f6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f7g6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f8h6.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "f7g6":
		f7g6.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (f7g6.currentFrame == 1 && invisiblef7g6 == false)
		{
			invisiblef7g6 = true;
			f7g6Btn.visible = false;
			e6f5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e7g5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e8h5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f6f6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f8h6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g6f7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g7g7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g8h7.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "g7g7":
		g7g7.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (g7g7.currentFrame == 1 && invisibleg7g7 == false)
		{
			invisibleg7g7 = true;
			g7g7Btn.visible = false;
			f6f6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f7g6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f8h6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g6f7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g8h7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h6f8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h7g8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h8h8.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "h7g8":
		h7g8.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (h7g8.currentFrame == 1 && invisibleh7g8 == false)
		{
			invisibleh7g8 = true;
			h7g8Btn.visible = false;
			g6f7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g7g7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g8h7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h6f8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h8h8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i6f9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i7g9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i8h9.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "i7g9":
		i7g9.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (i7g9.currentFrame == 1 && invisiblei7g9 == false)
		{
			invisiblei7g9 = true;
			i7g9Btn.visible = false;
			h6f8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h7g8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h8h8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i6f9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i8h9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j6f10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j7g10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j8h10.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "j7g10":
		j7g10.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (j7g10.currentFrame == 1 && invisiblej7g10 == false)
		{
			invisiblej7g10 = true;
			j7g10Btn.visible = false;
			i6f9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i7g9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i8h9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j6f10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j8h10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k6f11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k7g11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k8h11.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "k7g11":
		k7g11.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (k7g11.currentFrame == 1 && invisiblek7g11 == false)
		{
			invisiblek7g11 = true;
			k7g11Btn.visible = false;
			j6f10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j7g10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j8h10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k6f11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k8h11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l6f12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l7g12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l8h12.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "l7g12":
		l7g12.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (l7g12.currentFrame == 1 && invisiblel7g12 == false)
		{
			invisiblel7g12 = true;
			l7g12Btn.visible = false;
			k6f11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k7g11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k8h11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l6f12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l8h12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m6f13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m7g13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m8h13.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "m7g13":
		m7g13.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (m7g13.currentFrame == 1 && invisiblem7g13 == false)
		{
			invisiblem7g13 = true;
			m7g13Btn.visible = false;
			l6f12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l7g12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l8h12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m6f13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m8h13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n6f14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n7g14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n8h14.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "n7g14":
		n7g14.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (n7g14.currentFrame == 1 && invisiblen7g14 == false)
		{
			invisiblen7g14 = true;
			n7g14Btn.visible = false;
			m6f13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m7g13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m8h13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n6f14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n8h14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o6f15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o7g15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o8h15.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "o7g15":
		o7g15.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (o7g15.currentFrame == 1 && invisibleo7g15 == false)
		{
			invisibleo7g15 = true;
			o7g15Btn.visible = false;
			n6f14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n7g14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n8h14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o6f15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o8h15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p6f16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p7g16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p8h16.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "p7g16":
		p7g16.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (p7g16.currentFrame == 1 && invisiblep7g16 == false)
		{
			invisiblep7g16 = true;
			p7g16Btn.visible = false;
			o6f15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o7g15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o8h15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p6f16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p8h16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q6f17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q7g17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q8h17.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "q7g17":
		q7g17.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (q7g17.currentFrame == 1 && invisibleq7g17 == false)
		{
			invisibleq7g17 = true;
			q7g17Btn.visible = false;
			p6f16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p7g16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p8h16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q6f17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q8h17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r6f18.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r7g18.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r8h18.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "r7g18":
		r7g18.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (r7g18.currentFrame == 1 && invisibler7g18 == false)
		{
			invisibler7g18 = true;
			r7g18Btn.visible = false;
			q6f17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q7g17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q8h17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r6f18.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r8h18.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		//row 8 8h
		case "a8h1":
		a8h1.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (a8h1.currentFrame == 1 && invisiblea8h1 == false)
		{
			invisiblea8h1 = true;
			a8h1Btn.visible = false;
			b7g2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b8h2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b9i2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			a7g1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			a9i1.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "b8h2":
		b8h2.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (b8h2.currentFrame == 1 && invisibleb8h2 == false)
		{
			invisibleb8h2 = true;
			b8h2Btn.visible = false;
			a7g1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			a8h1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			a9i1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b7g2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b9i2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c7g3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c8h3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c9i3.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "c8h3":
		c8h3.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (c8h3.currentFrame == 1 && invisiblec8h3 == false)
		{
			invisiblec8h3 = true;
			c8h3Btn.visible = false;
			b7g2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b8h2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b9i2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c7g3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c9i3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d7g4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d8h4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d9i4.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "d8h4":
		d8h4.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (d8h4.currentFrame == 1 && invisibled8h4 == false)
		{
			invisibled8h4 = true;
			d8h4Btn.visible = false;
			c7g3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c8h3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c9i3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d7g4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d9i4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e7g5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e8h5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e9i5.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "e8h5":
		e8h5.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (e8h5.currentFrame == 1 && invisiblee8h5 == false)
		{
			invisiblee8h5 = true;
			e8h5Btn.visible = false;
			d7g4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d8h4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d9i4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e7g5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e9i5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f7g6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f8h6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f9i6.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "f8h6":
		f8h6.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (f8h6.currentFrame == 1 && invisiblef8h6 == false)
		{
			invisiblef8h6 = true;
			f8h6Btn.visible = false;
			e7g5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e8h5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e9i5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f7g6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f9i6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g7g7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g8h7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g9i7.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "g8h7":
		g8h7.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (g8h7.currentFrame == 1 && invisibleg8h7 == false)
		{
			invisibleg8h7 = true;
			g8h7Btn.visible = false;
			f7g6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f8h6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f9i6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g7g7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g9i7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h7g8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h8h8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h9i8.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "h8h8":
		h8h8.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (h8h8.currentFrame == 1 && invisibleh8h8 == false)
		{
			invisibleh8h8 = true;
			h8h8Btn.visible = false;
			g7g7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g8h7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g9i7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h7g8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h9i8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i7g9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i8h9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i9i9.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "i8h9":
		i8h9.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (i8h9.currentFrame == 1 && invisiblei8h9 == false)
		{
			invisiblei8h9 = true;
			i8h9Btn.visible = false;
			h7g8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h8h8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h9i8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i7g9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i9i9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j7g10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j8h10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j9i10.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "j8h10":
		j8h10.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (j8h10.currentFrame == 1 && invisiblej8h10 == false)
		{
			invisiblej8h10 = true;
			j8h10Btn.visible = false;
			i7g9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i8h9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i9i9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j7g10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j9i10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k7g11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k8h11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k9i11.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "k8h11":
		k8h11.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (k8h11.currentFrame == 1 && invisiblek8h11 == false)
		{
			invisiblek8h11 = true;
			k8h11Btn.visible = false;
			j7g10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j8h10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j9i10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k7g11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k9i11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l7g12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l8h12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l9i12.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "l8h12":
		l8h12.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (l8h12.currentFrame == 1 && invisiblel8h12 == false)
		{
			invisiblel8h12 = true;
			l8h12Btn.visible = false;
			k7g11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k8h11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k9i11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l7g12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l9i12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m7g13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m8h13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m9i13.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "m8h13":
		m8h13.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (m8h13.currentFrame == 1 && invisiblem8h13 == false)
		{
			invisiblem8h13 = true;
			m8h13Btn.visible = false;
			l7g12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l8h12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l9i12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m7g13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m9i13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n7g14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n8h14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n9i14.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "n8h14":
		n8h14.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (n8h14.currentFrame == 1 && invisiblen8h14 == false)
		{
			invisiblen8h14 = true;
			n8h14Btn.visible = false;
			m7g13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m8h13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m9i13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n7g14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n9i14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o7g15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o8h15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o9i15.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "o8h15":
		o8h15.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (o8h15.currentFrame == 1 && invisibleo8h15 == false)
		{
			invisibleo8h15 = true;
			o8h15Btn.visible = false;
			n7g14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n8h14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n9i14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o7g15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o9i15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p7g16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p8h16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p9i16.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "p8h16":
		p8h16.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (p8h16.currentFrame == 1 && invisiblep8h16 == false)
		{
			invisiblep8h16 = true;
			p8h16Btn.visible = false;
			o7g15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o8h15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o9i15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p7g16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p9i16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q7g17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q8h17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q9i17.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "q8h17":
		q8h17.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (q8h17.currentFrame == 1 && invisibleq8h17 == false)
		{
			invisibleq8h17 = true;
			q8h17Btn.visible = false;
			p7g16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p8h16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p9i16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q7g17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q9i17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r7g18.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r8h18.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r9i18.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "r8h18":
		r8h18.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (r8h18.currentFrame == 1 && invisibler8h18 == false)
		{
			invisibler8h18 = true;
			r8h18Btn.visible = false;
			q7g17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q8h17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q9i17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r7g18.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r9i18.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		//row 9 9i
		case "a9i1":
		a9i1.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (a9i1.currentFrame == 1 && invisiblea9i1 == false)
		{
			invisiblea9i1 = true;
			a9i1Btn.visible = false;
			b8h2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b9i2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b10j2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			a8h1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			a10j1.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "b9i2":
		b9i2.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (b9i2.currentFrame == 1 && invisibleb9i2 == false)
		{
			invisibleb9i2 = true;
			b9i2Btn.visible = false;
			a8h1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			a9i1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			a10j1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b8h2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b10j2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c8h3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c9i3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c10j3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			
		}
		break;
		
		case "c9i3":
		c9i3.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (c9i3.currentFrame == 1 && invisiblec9i3 == false)
		{
			invisiblec9i3 = true;
			c9i3Btn.visible = false;
			b8h2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b9i2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b10j2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c8h3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c10j3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d8h4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d9i4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d10j4.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "d9i4":
		d9i4.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (d9i4.currentFrame == 1 && invisibled9i4 == false)
		{
			invisibled9i4 = true;
			d9i4Btn.visible = false;
			c8h3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c9i3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c10j3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d8h4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d10j4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e8h5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e9i5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e10j5.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "e9i5":
		e9i5.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (e9i5.currentFrame == 1 && invisiblee9i5 == false)
		{
			invisiblee9i5 = true;
			e9i5Btn.visible = false;
			d8h4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d9i4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d10j4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e8h5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e10j5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f8h6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f9i6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f10j6.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "f9i6":
		f9i6.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (f9i6.currentFrame == 1 && invisiblef9i6 == false)
		{
			invisiblef9i6 = true;
			f9i6Btn.visible = false;
			e8h5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e9i5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e10j5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f8h6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f10j6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g8h7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g9i7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g10j7.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "g9i7":
		g9i7.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (g9i7.currentFrame == 1 && invisibleg9i7 == false)
		{
			invisibleg9i7 = true;
			g9i7Btn.visible = false;
			f8h6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f9i6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f10j6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g8h7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g10j7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h8h8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h9i8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h10j8.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "h9i8":
		h9i8.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (h9i8.currentFrame == 1 && invisibleh9i8 == false)
		{
			invisibleh9i8 = true;
			h9i8Btn.visible = false;
			g8h7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g9i7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g10j7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h8h8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h10j8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i8h9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i9i9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i10j9.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "i9i9":
		i9i9.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (i9i9.currentFrame == 1 && invisiblei9i9 == false)
		{
			invisiblei9i9 = true;
			i9i9Btn.visible = false;
			h8h8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h9i8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h10j8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i8h9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i10j9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j8h10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j9i10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j10j10.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "j9i10":
		j9i10.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (j9i10.currentFrame == 1 && invisiblej9i10 == false)
		{
			invisiblej9i10 = true;
			j9i10Btn.visible = false;
			i8h9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i9i9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i10j9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j8h10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j10j10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k8h11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k9i11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k10j11.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "k9i11":
		k9i11.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (k9i11.currentFrame == 1 && invisiblek9i11 == false)
		{
			invisiblek9i11 = true;
			k9i11Btn.visible = false;
			j8h10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j9i10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j10j10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k8h11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k10j11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l8h12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l9i12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l10j12.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "l9i12":
		l9i12.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (l9i12.currentFrame == 1 && invisiblel9i12 == false)
		{
			invisiblel9i12 = true;
			l9i12Btn.visible = false;
			k8h11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k9i11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k10j11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l8h12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l10j12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m8h13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m9i13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m10j13.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "m9i13":
		m9i13.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (m9i13.currentFrame == 1 && invisiblem9i13 == false)
		{
			invisiblem9i13 = true;
			m9i13Btn.visible = false;
			l8h12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l9i12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l10j12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m8h13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m10j13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n8h14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n9i14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n10j14.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "n9i14":
		n9i14.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (n9i14.currentFrame == 1 && invisiblen9i14 == false)
		{
			invisiblen9i14 = true;
			n9i14Btn.visible = false;
			m8h13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m9i13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m10j13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n8h14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n10j14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o8h15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o9i15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o10j15.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "o9i15":
		o9i15.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (o9i15.currentFrame == 1 && invisibleo9i15 == false)
		{
			invisibleo9i15 = true;
			o9i15Btn.visible = false;
			n8h14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n9i14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n10j14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o8h15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o10j15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p8h16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p9i16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p10j16.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "p9i16":
		p9i16.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (p9i16.currentFrame == 1 && invisiblep9i16 == false)
		{
			invisiblep9i16 = true;
			p9i16Btn.visible = false;
			o8h15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o9i15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o10j15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p8h16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p10j16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q8h17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q9i17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q10j17.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "q9i17":
		q9i17.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (q9i17.currentFrame == 1 && invisibleq9i17 == false)
		{
			invisibleq9i17 = true;
			q9i17Btn.visible = false;
			p8h16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p9i16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p10j16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q8h17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q10j17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r8h18.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r9i18.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r10j18.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "r9i18":
		r9i18.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (r9i18.currentFrame == 1 && invisibler9i18 == false)
		{
			invisibler9i18 = true;
			r9i18Btn.visible = false;
			q8h17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q9i17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q10j17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r8h18.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r10j18.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		//row 10 10j
		case "a10j1":
		a10j1.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (a10j1.currentFrame == 1 && invisiblea10j1 == false)
		{
			invisiblea10j1 = true;
			a10j1Btn.visible = false;
			b9i2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b10j2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b11k2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			a9i1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			a11k1.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "b10j2":
		b10j2.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (b10j2.currentFrame == 1 && invisibleb10j2 == false)
		{
			invisibleb10j2 = true;
			b10j2Btn.visible = false;
			a9i1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			a10j1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			a11k1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b9i2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b11k2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c9i3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c10j3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c11k3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			
		}
		break;
		
		case "c10j3":
		c10j3.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (c10j3.currentFrame == 1 && invisiblec10j3 == false)
		{
			invisiblec10j3 = true;
			c10j3Btn.visible = false;
			b9i2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b10j2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b11k2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c9i3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c11k3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d9i4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d10j4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d11k4.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "d10j4":
		d10j4.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (d10j4.currentFrame == 1 && invisibled10j4 == false)
		{
			invisibled10j4 = true;
			d10j4Btn.visible = false;
			c9i3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c10j3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c11k3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d9i4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d11k4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e9i5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e10j5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e11k5.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "e10j5":
		e10j5.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (e10j5.currentFrame == 1 && invisiblee10j5 == false)
		{
			invisiblee10j5 = true;
			e10j5Btn.visible = false;
			d9i4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d10j4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d11k4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e9i5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e11k5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f9i6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f10j6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f11k6.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "f10j6":
		f10j6.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (f10j6.currentFrame == 1 && invisiblef10j6 == false)
		{
			invisiblef10j6 = true;
			f10j6Btn.visible = false;
			e9i5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e10j5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e11k5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f9i6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f11k6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g9i7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g10j7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g11k7.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "g10j7":
		g10j7.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (g10j7.currentFrame == 1 && invisibleg10j7 == false)
		{
			invisibleg10j7 = true;
			g10j7Btn.visible = false;
			f9i6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f10j6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f11k6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g9i7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g11k7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h9i8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h10j8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h11k8.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "h10j8":
		h10j8.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (h10j8.currentFrame == 1 && invisibleh10j8 == false)
		{
			invisibleh10j8 = true;
			h10j8Btn.visible = false;
			g9i7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g10j7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g11k7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h9i8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h11k8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i9i9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i10j9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i11k9.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "i10j9":
		i10j9.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (i10j9.currentFrame == 1 && invisiblei10j9 == false)
		{
			invisiblei10j9 = true;
			i10j9Btn.visible = false;
			h9i8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h10j8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h11k8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i9i9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i11k9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j9i10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j10j10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j11k10.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "j10j10":
		j10j10.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (j10j10.currentFrame == 1 && invisiblej10j10 == false)
		{
			invisiblej10j10 = true;
			j10j10Btn.visible = false;
			i9i9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i10j9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i11k9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j9i10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j11k10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k9i11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k10j11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k11k11.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "k10j11":
		k10j11.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (k10j11.currentFrame == 1 && invisiblek10j11 == false)
		{
			invisiblek10j11 = true;
			k10j11Btn.visible = false;
			j9i10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j10j10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j11k10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k9i11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k11k11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l9i12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l10j12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l11k12.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "l10j12":
		l10j12.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (l10j12.currentFrame == 1 && invisiblel10j12 == false)
		{
			invisiblel10j12 = true;
			l10j12Btn.visible = false;
			k9i11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k10j11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k11k11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l9i12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l11k12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m9i13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m10j13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m11k13.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "m10j13":
		m10j13.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (m10j13.currentFrame == 1 && invisiblem10j13 == false)
		{
			invisiblem10j13 = true;
			m10j13Btn.visible = false;
			l9i12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l10j12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l11k12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m9i13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m11k13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n9i14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n10j14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n11k14.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "n10j14":
		n10j14.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (n10j14.currentFrame == 1 && invisiblen10j14 == false)
		{
			invisiblen10j14 = true;
			n10j14Btn.visible = false;
			m9i13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m10j13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m11k13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n9i14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n11k14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o9i15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o10j15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o11k15.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "o10j15":
		o10j15.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (o10j15.currentFrame == 1 && invisibleo10j15 == false)
		{
			invisibleo10j15 = true;
			o10j15Btn.visible = false;
			n9i14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n10j14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n11k14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o9i15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o11k15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p9i16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p10j16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p11k16.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "p10j16":
		p10j16.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (p10j16.currentFrame == 1 && invisiblep10j16 == false)
		{
			invisiblep10j16 = true;
			p10j16Btn.visible = false;
			o9i15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o10j15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o11k15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p9i16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p11k16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q9i17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q10j17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q11k17.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "q10j17":
		q10j17.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (q10j17.currentFrame == 1 && invisibleq10j17 == false)
		{
			invisibleq10j17 = true;
			q10j17Btn.visible = false;
			p9i16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p10j16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p11k16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q9i17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q11k17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r9i18.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r10j18.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r11k18.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "r10j18":
		r10j18.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (r10j18.currentFrame == 1 && invisibler10j18 == false)
		{
			invisibler10j18 = true;
			r10j18Btn.visible = false;
			q9i17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q10j17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q11k17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r9i18.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r11k18.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		//row 11 11k
		case "a11k1":
		a11k1.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (a11k1.currentFrame == 1 && invisiblea11k1 == false)
		{
			invisiblea11k1 = true;
			a11k1Btn.visible = false;
			b10j2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b11k2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b12l2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			a10j1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			a12l1.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "b11k2":
		b11k2.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (b11k2.currentFrame == 1 && invisibleb11k2 == false)
		{
			invisibleb11k2 = true;
			b11k2Btn.visible = false;
			a10j1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			a11k1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			a12l1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b10j2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b12l2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c10j3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c11k3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c12l3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			
		}
		break;
		
		case "c11k3":
		c11k3.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (c11k3.currentFrame == 1 && invisiblec11k3 == false)
		{
			invisiblec11k3 = true;
			c11k3Btn.visible = false;
			b10j2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b11k2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b12l2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c10j3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c12l3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d10j4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d11k4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d12l4.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "d11k4":
		d11k4.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (d11k4.currentFrame == 1 && invisibled11k4 == false)
		{
			invisibled11k4 = true;
			d11k4Btn.visible = false;
			c10j3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c11k3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c12l3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d10j4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d12l4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e10j5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e11k5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e12l5.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "e11k5":
		e11k5.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (e11k5.currentFrame == 1 && invisiblee11k5 == false)
		{
			invisiblee11k5 = true;
			e11k5Btn.visible = false;
			d10j4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d11k4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d12l4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e10j5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e12l5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f10j6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f11k6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f12l6.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "f11k6":
		f11k6.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (f11k6.currentFrame == 1 && invisiblef11k6 == false)
		{
			invisiblef11k6 = true;
			f11k6Btn.visible = false;
			e10j5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e11k5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e12l5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f10j6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f12l6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g10j7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g11k7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g12l7.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "g11k7":
		g11k7.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (g11k7.currentFrame == 1 && invisibleg11k7 == false)
		{
			invisibleg11k7 = true;
			g11k7Btn.visible = false;
			f10j6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f11k6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f12l6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g10j7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g12l7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h10j8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h11k8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h12l8.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "h11k8":
		h11k8.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (h11k8.currentFrame == 1 && invisibleh11k8 == false)
		{
			invisibleh11k8 = true;
			h11k8Btn.visible = false;
			g10j7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g11k7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g12l7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h10j8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h12l8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i10j9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i11k9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i12l9.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "i11k9":
		i11k9.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (i11k9.currentFrame == 1 && invisiblei11k9 == false)
		{
			invisiblei11k9 = true;
			i11k9Btn.visible = false;
			h10j8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h11k8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h12l8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i10j9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i12l9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j10j10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j11k10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j12l10.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "j11k10":
		j11k10.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (j11k10.currentFrame == 1 && invisiblej11k10 == false)
		{
			invisiblej11k10 = true;
			j11k10Btn.visible = false;
			i10j9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i11k9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i12l9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j10j10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j12l10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k10j11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k11k11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k12l11.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "k11k11":
		k11k11.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (k11k11.currentFrame == 1 && invisiblek11k11 == false)
		{
			invisiblek11k11 = true;
			k11k11Btn.visible = false;
			j10j10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j11k10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j12l10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k10j11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k12l11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l10j12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l11k12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l12l12.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "l11k12":
		l11k12.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (l11k12.currentFrame == 1 && invisiblel11k12 == false)
		{
			invisiblel11k12 = true;
			l11k12Btn.visible = false;
			k10j11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k11k11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k12l11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l10j12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l12l12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m10j13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m11k13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m12l13.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "m11k13":
		m11k13.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (m11k13.currentFrame == 1 && invisiblem11k13 == false)
		{
			invisiblem11k13 = true;
			m11k13Btn.visible = false;
			l10j12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l11k12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l12l12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m10j13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m12l13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n10j14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n11k14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n12l14.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "n11k14":
		n11k14.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (n11k14.currentFrame == 1 && invisiblen11k14 == false)
		{
			invisiblen11k14 = true;
			n11k14Btn.visible = false;
			m10j13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m11k13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m12l13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n10j14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n12l14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o10j15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o11k15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o12l15.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "o11k15":
		o11k15.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (o11k15.currentFrame == 1 && invisibleo11k15 == false)
		{
			invisibleo11k15 = true;
			o11k15Btn.visible = false;
			n10j14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n11k14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n12l14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o10j15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o12l15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p10j16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p11k16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p12l16.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "p11k16":
		p11k16.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (p11k16.currentFrame == 1 && invisiblep11k16 == false)
		{
			invisiblep11k16 = true;
			p11k16Btn.visible = false;
			o10j15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o11k15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o12l15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p10j16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p12l16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q10j17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q11k17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q12l17.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "q11k17":
		q11k17.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (q11k17.currentFrame == 1 && invisibleq11k17 == false)
		{
			invisibleq11k17 = true;
			q11k17Btn.visible = false;
			p10j16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p11k16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p12l16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q10j17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q12l17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r10j18.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r11k18.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r12l18.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "r11k18":
		r11k18.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (r11k18.currentFrame == 1 && invisibler11k18 == false)
		{
			invisibler11k18 = true;
			r11k18Btn.visible = false;
			q10j17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q11k17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q12l17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r10j18.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r12l18.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		//row 12 12l
		case "a12l1":
		a12l1.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (a12l1.currentFrame == 1 && invisiblea12l1 == false)
		{
			invisiblea12l1 = true;
			a12l1Btn.visible = false;
			b11k2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b12l2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b13m2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			a11k1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			a13m1.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "b12l2":
		b12l2.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (b12l2.currentFrame == 1 && invisibleb12l2 == false)
		{
			invisibleb12l2 = true;
			b12l2Btn.visible = false;
			a11k1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			a12l1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			a13m1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b11k2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b13m2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c11k3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c12l3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c13m3.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "c12l3":
		c12l3.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (c12l3.currentFrame == 1 && invisiblec12l3 == false)
		{
			invisiblec12l3 = true;
			c12l3Btn.visible = false;
			b11k2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b12l2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b13m2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c11k3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c13m3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d11k4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d12l4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d13m4.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "d12l4":
		d12l4.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (d12l4.currentFrame == 1 && invisibled12l4 == false)
		{
			invisibled12l4 = true;
			d12l4Btn.visible = false;
			c11k3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c12l3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c13m3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d11k4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d13m4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e11k5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e12l5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e13m5.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "e12l5":
		e12l5.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (e12l5.currentFrame == 1 && invisiblee12l5 == false)
		{
			invisiblee12l5 = true;
			e12l5Btn.visible = false;
			d11k4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d12l4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d13m4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e11k5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e13m5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f11k6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f12l6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f13m6.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "f12l6":
		f12l6.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (f12l6.currentFrame == 1 && invisiblef12l6 == false)
		{
			invisiblef12l6 = true;
			f12l6Btn.visible = false;
			e11k5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e12l5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e13m5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f11k6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f13m6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g11k7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g12l7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g13m7.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "g12l7":
		g12l7.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (g12l7.currentFrame == 1 && invisibleg12l7 == false)
		{
			invisibleg12l7 = true;
			g12l7Btn.visible = false;
			f11k6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f12l6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f13m6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g11k7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g13m7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h11k8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h12l8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h13m8.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "h12l8":
		h12l8.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (h12l8.currentFrame == 1 && invisibleh12l8 == false)
		{
			invisibleh12l8 = true;
			h12l8Btn.visible = false;
			g11k7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g12l7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g13m7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h11k8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h13m8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i11k9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i12l9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i13m9.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "i12l9":
		i12l9.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (i12l9.currentFrame == 1 && invisiblei12l9 == false)
		{
			invisiblei12l9 = true;
			i12l9Btn.visible = false;
			h11k8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h12l8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h13m8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i11k9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i13m9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j11k10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j12l10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j13m10.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "j12l10":
		j12l10.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (j12l10.currentFrame == 1 && invisiblej12l10 == false)
		{
			invisiblej12l10 = true;
			j12l10Btn.visible = false;
			i11k9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i12l9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i13m9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j11k10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j13m10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k11k11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k12l11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k13m11.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "k12l11":
		k12l11.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (k12l11.currentFrame == 1 && invisiblek12l11 == false)
		{
			invisiblek12l11 = true;
			k12l11Btn.visible = false;
			j11k10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j12l10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j13m10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k11k11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k13m11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l11k12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l12l12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l13m12.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "l12l12":
		l12l12.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (l12l12.currentFrame == 1 && invisiblel12l12 == false)
		{
			invisiblel12l12 = true;
			l12l12Btn.visible = false;
			k11k11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k12l11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k13m11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l11k12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l13m12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m11k13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m12l13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m13m13.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "m12l13":
		m12l13.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (m12l13.currentFrame == 1 && invisiblem12l13 == false)
		{
			invisiblem12l13 = true;
			m12l13Btn.visible = false;
			l11k12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l12l12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l13m12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m11k13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m13m13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n11k14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n12l14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n13m14.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "n12l14":
		n12l14.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (n12l14.currentFrame == 1 && invisiblen12l14 == false)
		{
			invisiblen12l14 = true;
			n12l14Btn.visible = false;
			m11k13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m12l13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m13m13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n11k14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n13m14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o11k15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o12l15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o13m15.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "o12l15":
		o12l15.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (o12l15.currentFrame == 1 && invisibleo12l15 == false)
		{
			invisibleo12l15 = true;
			o12l15Btn.visible = false;
			n11k14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n12l14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n13m14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o11k15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o13m15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p11k16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p12l16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p13m16.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "p12l16":
		p12l16.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (p12l16.currentFrame == 1 && invisiblep12l16 == false)
		{
			invisiblep12l16 = true;
			p12l16Btn.visible = false;
			o11k15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o12l15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o13m15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p11k16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p13m16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q11k17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q12l17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q13m17.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "q12l17":
		q12l17.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (q12l17.currentFrame == 1 && invisibleq12l17 == false)
		{
			invisibleq12l17 = true;
			q12l17Btn.visible = false;
			p11k16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p12l16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p13m16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q11k17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q13m17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r11k18.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r12l18.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r13m18.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "r12l18":
		r12l18.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (r12l18.currentFrame == 1 && invisibler12l18 == false)
		{
			invisibler12l18 = true;
			r12l18Btn.visible = false;
			q11k17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q12l17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q13m17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r11k18.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r13m18.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		//row 13 13m
		case "a13m1":
		a13m1.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (a13m1.currentFrame == 1 && invisiblea13m1 == false)
		{
			invisiblea13m1 = true;
			a13m1Btn.visible = false;
			b12l2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b13m2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b14n2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			a12l1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			a14n1.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "b13m2":
		b13m2.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (b13m2.currentFrame == 1 && invisibleb13m2 == false)
		{
			invisibleb13m2 = true;
			b13m2Btn.visible = false;
			a12l1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			a13m1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			a14n1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b12l2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b14n2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c12l3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c13m3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c14n3.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "c13m3":
		c13m3.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (c13m3.currentFrame == 1 && invisiblec13m3 == false)
		{
			invisiblec13m3 = true;
			c13m3Btn.visible = false;
			b12l2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b13m2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b14n2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c12l3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c14n3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d12l4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d13m4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d14n4.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "d13m4":
		d13m4.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (d13m4.currentFrame == 1 && invisibled13m4 == false)
		{
			invisibled13m4 = true;
			d13m4Btn.visible = false;
			c12l3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c13m3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c14n3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d12l4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d14n4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e12l5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e13m5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e14n5.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "e13m5":
		e13m5.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (e13m5.currentFrame == 1 && invisiblee13m5 == false)
		{
			invisiblee13m5 = true;
			e13m5Btn.visible = false;
			d12l4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d13m4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d14n4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e12l5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e14n5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f12l6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f13m6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f14n6.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "f13m6":
		f13m6.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (f13m6.currentFrame == 1 && invisiblef13m6 == false)
		{
			invisiblef13m6 = true;
			f13m6Btn.visible = false;
			e12l5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e13m5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e14n5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f12l6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f14n6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g12l7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g13m7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g14n7.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "g13m7":
		g13m7.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (g13m7.currentFrame == 1 && invisibleg13m7 == false)
		{
			invisibleg13m7 = true;
			g13m7Btn.visible = false;
			f12l6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f13m6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f14n6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g12l7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g14n7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h12l8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h13m8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h14n8.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "h13m8":
		h13m8.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (h13m8.currentFrame == 1 && invisibleh13m8 == false)
		{
			invisibleh13m8 = true;
			h13m8Btn.visible = false;
			g12l7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g13m7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g14n7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h12l8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h14n8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i12l9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i13m9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i14n9.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "i13m9":
		i13m9.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (i13m9.currentFrame == 1 && invisiblei13m9 == false)
		{
			invisiblei13m9 = true;
			i13m9Btn.visible = false;
			h12l8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h13m8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h14n8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i12l9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i14n9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j12l10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j13m10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j14n10.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "j13m10":
		j13m10.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (j13m10.currentFrame == 1 && invisiblej13m10 == false)
		{
			invisiblej13m10 = true;
			j13m10Btn.visible = false;
			i12l9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i13m9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i14n9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j12l10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j14n10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k12l11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k13m11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k14n11.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "k13m11":
		k13m11.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (k13m11.currentFrame == 1 && invisiblek13m11 == false)
		{
			invisiblek13m11 = true;
			k13m11Btn.visible = false;
			j12l10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j13m10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j14n10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k12l11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k14n11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l12l12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l13m12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l14n12.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "l13m12":
		l13m12.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (l13m12.currentFrame == 1 && invisiblel13m12 == false)
		{
			invisiblel13m12 = true;
			l13m12Btn.visible = false;
			k12l11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k13m11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k14n11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l12l12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l14n12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m12l13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m13m13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m14n13.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "m13m13":
		m13m13.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (m13m13.currentFrame == 1 && invisiblem13m13 == false)
		{
			invisiblem13m13 = true;
			m13m13Btn.visible = false;
			l12l12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l13m12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l14n12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m12l13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m14n13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n12l14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n13m14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n14n14.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "n13m14":
		n13m14.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (n13m14.currentFrame == 1 && invisiblen13m14 == false)
		{
			invisiblen13m14 = true;
			n13m14Btn.visible = false;
			m12l13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m13m13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m14n13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n12l14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n14n14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o12l15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o13m15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o14n15.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "o13m15":
		o13m15.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (o13m15.currentFrame == 1 && invisibleo13m15 == false)
		{
			invisibleo13m15 = true;
			o13m15Btn.visible = false;
			n12l14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n13m14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n14n14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o12l15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o14n15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p12l16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p13m16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p14n16.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "p13m16":
		p13m16.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (p13m16.currentFrame == 1 && invisiblep13m16 == false)
		{
			invisiblep13m16 = true;
			p13m16Btn.visible = false;
			o12l15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o13m15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o14n15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p12l16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p14n16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q12l17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q13m17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q14n17.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "q13m17":
		q13m17.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (q13m17.currentFrame == 1 && invisibleq13m17 == false)
		{
			invisibleq13m17 = true;
			q13m17Btn.visible = false;
			p12l16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p13m16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p14n16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q12l17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q14n17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r12l18.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r13m18.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r14n18.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "r13m18":
		r13m18.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (r13m18.currentFrame == 1 && invisibler13m18 == false)
		{
			invisibler13m18 = true;
			r13m18Btn.visible = false;
			q12l17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q13m17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q14n17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r12l18.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r14n18.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		//row 14 14n
		case "a14n1":
		a14n1.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (a14n1.currentFrame == 1 && invisiblea14n1 == false)
		{
			invisiblea14n1 = true;
			a14n1Btn.visible = false;
			b13m2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b14n2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b15o2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			a13m1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			a15o1.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "b14n2":
		b14n2.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (b14n2.currentFrame == 1 && invisibleb14n2 == false)
		{
			invisibleb14n2 = true;
			b14n2Btn.visible = false;
			a13m1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			a14n1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			a15o1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b13m2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b15o2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c13m3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c14n3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c15o3.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "c14n3":
		c14n3.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (c14n3.currentFrame == 1 && invisiblec14n3 == false)
		{
			invisiblec14n3 = true;
			c14n3Btn.visible = false;
			b13m2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b14n2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b15o2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c13m3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c15o3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d13m4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d14n4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d15o4.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "d14n4":
		d14n4.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (d14n4.currentFrame == 1 && invisibled14n4 == false)
		{
			invisibled14n4 = true;
			d14n4Btn.visible = false;
			c13m3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c14n3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c15o3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d13m4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d15o4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e13m5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e14n5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e15o5.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "e14n5":
		e14n5.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (e14n5.currentFrame == 1 && invisiblee14n5 == false)
		{
			invisiblee14n5 = true;
			e14n5Btn.visible = false;
			d13m4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d14n4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d15o4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e13m5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e15o5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f13m6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f14n6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f15o6.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "f14n6":
		f14n6.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (f14n6.currentFrame == 1 && invisiblef14n6 == false)
		{
			invisiblef14n6 = true;
			f14n6Btn.visible = false;
			e13m5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e14n5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e15o5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f13m6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f15o6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g13m7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g14n7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g15o7.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "g14n7":
		g14n7.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (g14n7.currentFrame == 1 && invisibleg14n7 == false)
		{
			invisibleg14n7 = true;
			g14n7Btn.visible = false;
			f13m6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f14n6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f15o6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g13m7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g15o7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h13m8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h14n8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h15o8.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "h14n8":
		h14n8.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (h14n8.currentFrame == 1 && invisibleh14n8 == false)
		{
			invisibleh14n8 = true;
			h14n8Btn.visible = false;
			g13m7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g14n7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g15o7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h13m8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h15o8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i13m9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i14n9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i15o9.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "i14n9":
		i14n9.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (i14n9.currentFrame == 1 && invisiblei14n9 == false)
		{
			invisiblei14n9 = true;
			i14n9Btn.visible = false;
			h13m8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h14n8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h15o8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i13m9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i15o9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j13m10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j14n10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j15o10.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "j14n10":
		j14n10.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (j14n10.currentFrame == 1 && invisiblej14n10 == false)
		{
			invisiblej14n10 = true;
			j14n10Btn.visible = false;
			i13m9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i14n9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i15o9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j13m10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j15o10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k13m11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k14n11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k15o11.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "k14n11":
		k14n11.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (k14n11.currentFrame == 1 && invisiblek14n11 == false)
		{
			invisiblek14n11 = true;
			k14n11Btn.visible = false;
			j13m10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j14n10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j15o10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k13m11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k15o11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l13m12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l14n12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l15o12.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "l14n12":
		l14n12.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (l14n12.currentFrame == 1 && invisiblel14n12 == false)
		{
			invisiblel14n12 = true;
			l14n12Btn.visible = false;
			k13m11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k14n11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k15o11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l13m12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l15o12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m13m13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m14n13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m15o13.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "m14n13":
		m14n13.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (m14n13.currentFrame == 1 && invisiblem14n13 == false)
		{
			invisiblem14n13 = true;
			m14n13Btn.visible = false;
			l13m12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l14n12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l15o12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m13m13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m15o13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n13m14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n14n14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n15o14.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "n14n14":
		n14n14.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (n14n14.currentFrame == 1 && invisiblen14n14 == false)
		{
			invisiblen14n14 = true;
			n14n14Btn.visible = false;
			m13m13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m14n13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m15o13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n13m14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n15o14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o13m15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o14n15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o15o15.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "o14n15":
		o14n15.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (o14n15.currentFrame == 1 && invisibleo14n15 == false)
		{
			invisibleo14n15 = true;
			o14n15Btn.visible = false;
			n13m14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n14n14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n15o14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o13m15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o15o15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p13m16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p14n16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p15o16.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "p14n16":
		p14n16.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (p14n16.currentFrame == 1 && invisiblep14n16 == false)
		{
			invisiblep14n16 = true;
			p14n16Btn.visible = false;
			o13m15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o14n15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o15o15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p13m16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p15o16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q13m17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q14n17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q15o17.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "q14n17":
		q14n17.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (q14n17.currentFrame == 1 && invisibleq14n17 == false)
		{
			invisibleq14n17 = true;
			q14n17Btn.visible = false;
			p13m16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p14n16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p15o16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q13m17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q15o17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r13m18.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r14n18.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r15o18.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "r14n18":
		r14n18.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (r14n18.currentFrame == 1 && invisibler14n18 == false)
		{
			invisibler14n18 = true;
			r14n18Btn.visible = false;
			q13m17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q14n17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q15o17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r13m18.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r15o18.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		//row 15 15o
		case "a15o1":
		a15o1.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (a15o1.currentFrame == 1 && invisiblea15o1 == false)
		{
			invisiblea15o1 = true;
			a15o1Btn.visible = false;
			b16p2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b14n2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b15o2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			a14n1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			a16p1.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "b15o2":
		b15o2.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (b15o2.currentFrame == 1 && invisibleb15o2 == false)
		{
			invisibleb15o2 = true;
			b15o2Btn.visible = false;
			a14n1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			a15o1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			a16p1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b14n2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b16p2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c14n3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c15o3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c16p3.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "c15o3":
		c15o3.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (c15o3.currentFrame == 1 && invisiblec15o3 == false)
		{
			invisiblec15o3 = true;
			c15o3Btn.visible = false;
			b14n2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b15o2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b16p2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c14n3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c16p3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d14n4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d15o4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d16p4.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "d15o4":
		d15o4.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (d15o4.currentFrame == 1 && invisibled15o4 == false)
		{
			invisibled15o4 = true;
			d15o4Btn.visible = false;
			c14n3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c15o3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c16p3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d14n4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d16p4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e14n5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e15o5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e16p5.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "e15o5":
		e15o5.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (e15o5.currentFrame == 1 && invisiblee15o5 == false)
		{
			invisiblee15o5 = true;
			e15o5Btn.visible = false;
			d14n4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d15o4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d16p4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e14n5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e16p5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f14n6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f15o6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f16p6.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "f15o6":
		f15o6.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (f15o6.currentFrame == 1 && invisiblef15o6 == false)
		{
			invisiblef15o6 = true;
			f15o6Btn.visible = false;
			e14n5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e15o5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e16p5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f14n6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f16p6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g14n7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g15o7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g16p7.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "g15o7":
		g15o7.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (g15o7.currentFrame == 1 && invisibleg15o7 == false)
		{
			invisibleg15o7 = true;
			g15o7Btn.visible = false;
			f14n6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f15o6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f16p6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g14n7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g16p7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h14n8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h15o8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h16p8.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "h15o8":
		h15o8.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (h15o8.currentFrame == 1 && invisibleh15o8 == false)
		{
			invisibleh15o8 = true;
			h15o8Btn.visible = false;
			g14n7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g15o7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g16p7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h14n8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h16p8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i14n9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i15o9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i16p9.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "i15o9":
		i15o9.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (i15o9.currentFrame == 1 && invisiblei15o9 == false)
		{
			invisiblei15o9 = true;
			i15o9Btn.visible = false;
			h14n8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h15o8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h16p8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i14n9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i16p9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j14n10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j15o10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j16p10.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "j15o10":
		j15o10.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (j15o10.currentFrame == 1 && invisiblej15o10 == false)
		{
			invisiblej15o10 = true;
			j15o10Btn.visible = false;
			i14n9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i15o9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i16p9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j14n10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j16p10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k14n11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k15o11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k16p11.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "k15o11":
		k15o11.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (k15o11.currentFrame == 1 && invisiblek15o11 == false)
		{
			invisiblek15o11 = true;
			k15o11Btn.visible = false;
			j14n10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j15o10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j16p10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k14n11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k16p11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l14n12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l15o12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l16p12.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "l15o12":
		l15o12.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (l15o12.currentFrame == 1 && invisiblel15o12 == false)
		{
			invisiblel15o12 = true;
			l15o12Btn.visible = false;
			k14n11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k15o11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k16p11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l14n12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l16p12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m14n13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m15o13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m16p13.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "m15o13":
		m15o13.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (m15o13.currentFrame == 1 && invisiblem15o13 == false)
		{
			invisiblem15o13 = true;
			m15o13Btn.visible = false;
			l14n12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l15o12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l16p12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m14n13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m16p13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n14n14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n15o14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n16p14.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "n15o14":
		n15o14.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (n15o14.currentFrame == 1 && invisiblen15o14 == false)
		{
			invisiblen15o14 = true;
			n15o14Btn.visible = false;
			m14n13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m15o13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m16p13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n14n14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n16p14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o14n15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o15o15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o16p15.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "o15o15":
		o15o15.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (o15o15.currentFrame == 1 && invisibleo15o15 == false)
		{
			invisibleo15o15 = true;
			o15o15Btn.visible = false;
			n14n14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n15o14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n16p14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o14n15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o16p15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p14n16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p15o16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p16p16.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "p15o16":
		p15o16.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (p15o16.currentFrame == 1 && invisiblep15o16 == false)
		{
			invisiblep15o16 = true;
			p15o16Btn.visible = false;
			o14n15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o15o15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o16p15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p14n16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p16p16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q14n17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q15o17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q16p17.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "q15o17":
		q15o17.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (q15o17.currentFrame == 1 && invisibleq15o17 == false)
		{
			invisibleq15o17 = true;
			q15o17Btn.visible = false;
			p14n16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p15o16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p16p16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q14n17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q16p17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r14n18.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r15o18.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r16p18.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "r15o18":
		r15o18.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (r15o18.currentFrame == 1 && invisibler15o18 == false)
		{
			invisibler15o18 = true;
			r15o18Btn.visible = false;
			q14n17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q15o17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q16p17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r14n18.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r16p18.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		//row 16 16p
		case "a16p1":
		a16p1.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (a16p1.currentFrame == 1 && invisiblea16p1 == false)
		{
			invisiblea16p1 = true;
			a16p1Btn.visible = false;
			b15o2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b16p2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b17q2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			a15o1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			a17q1.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "b16p2":
		b16p2.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (b16p2.currentFrame == 1 && invisibleb16p2 == false)
		{
			invisibleb16p2 = true;
			b16p2Btn.visible = false;
			a15o1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			a16p1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			a17q1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b15o2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b17q2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c15o3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c16p3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c17q3.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "c16p3":
		c16p3.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (c16p3.currentFrame == 1 && invisiblec16p3 == false)
		{
			invisiblec16p3 = true;
			c16p3Btn.visible = false;
			b15o2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b16p2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b17q2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c15o3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c17q3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d15o4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d16p4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d17q4.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "d16p4":
		d16p4.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (d16p4.currentFrame == 1 && invisibled16p4 == false)
		{
			invisibled16p4 = true;
			d16p4Btn.visible = false;
			c15o3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c16p3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c17q3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d15o4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d17q4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e15o5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e16p5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e17q5.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "e16p5":
		e16p5.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (e16p5.currentFrame == 1 && invisiblee16p5 == false)
		{
			invisiblee16p5 = true;
			e16p5Btn.visible = false;
			d15o4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d16p4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d17q4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e15o5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e17q5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f15o6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f16p6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f17q6.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "f16p6":
		f16p6.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (f16p6.currentFrame == 1 && invisiblef16p6 == false)
		{
			invisiblef16p6 = true;
			f16p6Btn.visible = false;
			e15o5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e16p5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e17q5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f15o6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f17q6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g15o7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g16p7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g17q7.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "g16p7":
		g16p7.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (g16p7.currentFrame == 1 && invisibleg16p7 == false)
		{
			invisibleg16p7 = true;
			g16p7Btn.visible = false;
			f15o6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f16p6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f17q6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g15o7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g17q7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h15o8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h16p8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h17q8.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "h16p8":
		h16p8.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (h16p8.currentFrame == 1 && invisibleh16p8 == false)
		{
			invisibleh16p8 = true;
			h16p8Btn.visible = false;
			g15o7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g16p7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g17q7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h15o8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h17q8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i15o9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i16p9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i17q9.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "i16p9":
		i16p9.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (i16p9.currentFrame == 1 && invisiblei16p9 == false)
		{
			invisiblei16p9 = true;
			i16p9Btn.visible = false;
			h15o8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h16p8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h17q8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i15o9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i17q9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j15o10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j16p10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j17q10.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "j16p10":
		j16p10.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (j16p10.currentFrame == 1 && invisiblej16p10 == false)
		{
			invisiblej16p10 = true;
			j16p10Btn.visible = false;
			i15o9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i16p9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i17q9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j15o10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j17q10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k15o11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k16p11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k17q11.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "k16p11":
		k16p11.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (k16p11.currentFrame == 1 && invisiblek16p11 == false)
		{
			invisiblek16p11 = true;
			k16p11Btn.visible = false;
			j15o10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j16p10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j17q10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k15o11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k17q11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l15o12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l16p12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l17q12.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "l16p12":
		l16p12.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (l16p12.currentFrame == 1 && invisiblel16p12 == false)
		{
			invisiblel16p12 = true;
			l16p12Btn.visible = false;
			k15o11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k16p11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k17q11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l15o12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l17q12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m15o13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m16p13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m17q13.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "m16p13":
		m16p13.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (m16p13.currentFrame == 1 && invisiblem16p13 == false)
		{
			invisiblem16p13 = true;
			m16p13Btn.visible = false;
			l15o12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l16p12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l17q12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m15o13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m17q13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n15o14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n16p14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n17q14.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "n16p14":
		n16p14.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (n16p14.currentFrame == 1 && invisiblen16p14 == false)
		{
			invisiblen16p14 = true;
			n16p14Btn.visible = false;
			m15o13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m16p13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m17q13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n15o14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n17q14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o15o15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o16p15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o17q15.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "o16p15":
		o16p15.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (o16p15.currentFrame == 1 && invisibleo16p15 == false)
		{
			invisibleo16p15 = true;
			o16p15Btn.visible = false;
			n15o14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n16p14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n17q14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o15o15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o17q15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p15o16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p16p16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p17q16.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "p16p16":
		p16p16.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (p16p16.currentFrame == 1 && invisiblep16p16 == false)
		{
			invisiblep16p16 = true;
			p16p16Btn.visible = false;
			o15o15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o16p15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o17q15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p15o16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p17q16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q15o17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q16p17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q17q17.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "q16p17":
		q16p17.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (q16p17.currentFrame == 1 && invisibleq16p17 == false)
		{
			invisibleq16p17 = true;
			q16p17Btn.visible = false;
			p15o16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p16p16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p17q16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q15o17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q17q17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r15o18.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r16p18.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r17q18.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "r16p18":
		r16p18.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (r16p18.currentFrame == 1 && invisibler16p18 == false)
		{
			invisibler16p18 = true;
			r16p18Btn.visible = false;
			q15o17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q16p17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q17q17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r15o18.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r17q18.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		//row 17 17q
		case "a17q1":
		a17q1.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (a17q1.currentFrame == 1 && invisiblea17q1 == false)
		{
			invisiblea17q1 = true;
			a17q1Btn.visible = false;
			b16p2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b17q2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b18r2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			a16p1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			a18r1.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "b17q2":
		b17q2.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (b17q2.currentFrame == 1 && invisibleb17q2 == false)
		{
			invisibleb17q2 = true;
			b17q2Btn.visible = false;
			a16p1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			a17q1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			a18r1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b16p2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b18r2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c16p3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c17q3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c18r3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			
		}
		break;
		
		case "c17q3":
		c17q3.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (c17q3.currentFrame == 1 && invisiblec17q3 == false)
		{
			invisiblec17q3 = true;
			c17q3Btn.visible = false;
			b16p2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b17q2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b18r2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c16p3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c18r3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d16p4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d17q4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d18r4.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "d17q4":
		d17q4.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (d17q4.currentFrame == 1 && invisibled17q4 == false)
		{
			invisibled17q4 = true;
			d17q4Btn.visible = false;
			c16p3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c17q3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c18r3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d16p4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d18r4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e16p5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e17q5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e18r5.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "e17q5":
		e17q5.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (e17q5.currentFrame == 1 && invisiblee17q5 == false)
		{
			invisiblee17q5 = true;
			e17q5Btn.visible = false;
			d16p4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d17q4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d18r4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e16p5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e18r5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f16p6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f17q6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f18r6.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "f17q6":
		f17q6.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (f17q6.currentFrame == 1 && invisiblef17q6 == false)
		{
			invisiblef17q6 = true;
			f17q6Btn.visible = false;
			e16p5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e17q5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e18r5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f16p6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f18r6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g16p7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g17q7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g18r7.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "g17q7":
		g17q7.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (g17q7.currentFrame == 1 && invisibleg17q7 == false)
		{
			invisibleg17q7 = true;
			g17q7Btn.visible = false;
			f16p6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f17q6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f18r6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g16p7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g18r7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h16p8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h17q8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h18r8.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "h17q8":
		h17q8.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (h17q8.currentFrame == 1 && invisibleh17q8 == false)
		{
			invisibleh17q8 = true;
			h17q8Btn.visible = false;
			g16p7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g17q7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g18r7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h16p8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h18r8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i16p9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i17q9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i18r9.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "i17q9":
		i17q9.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (i17q9.currentFrame == 1 && invisiblei17q9 == false)
		{
			invisiblei17q9 = true;
			i17q9Btn.visible = false;
			h16p8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h17q8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h18r8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i16p9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i18r9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j16p10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j17q10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j18r10.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "j17q10":
		j17q10.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (j17q10.currentFrame == 1 && invisiblej17q10 == false)
		{
			invisiblej17q10 = true;
			j17q10Btn.visible = false;
			i16p9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i17q9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i18r9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j16p10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j18r10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k16p11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k17q11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k18r11.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "k17q11":
		k17q11.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (k17q11.currentFrame == 1 && invisiblek17q11 == false)
		{
			invisiblek17q11 = true;
			k17q11Btn.visible = false;
			j16p10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j17q10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j18r10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k16p11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k18r11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l16p12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l17q12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l18r12.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "l17q12":
		l17q12.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (l17q12.currentFrame == 1 && invisiblel17q12 == false)
		{
			invisiblel17q12 = true;
			l17q12Btn.visible = false;
			k16p11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k17q11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k18r11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l16p12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l18r12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m16p13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m17q13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m18r13.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "m17q13":
		m17q13.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (m17q13.currentFrame == 1 && invisiblem17q13 == false)
		{
			invisiblem17q13 = true;
			m17q13Btn.visible = false;
			l16p12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l17q12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l18r12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m16p13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m18r13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n16p14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n17q14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n18r14.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "n17q14":
		n17q14.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (n17q14.currentFrame == 1 && invisiblen17q14 == false)
		{
			invisiblen17q14 = true;
			n17q14Btn.visible = false;
			m16p13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m17q13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m18r13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n16p14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n18r14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o16p15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o17q15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o18r15.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "o17q15":
		o17q15.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (o17q15.currentFrame == 1 && invisibleo17q15 == false)
		{
			invisibleo17q15 = true;
			o17q15Btn.visible = false;
			n16p14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n17q14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n18r14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o16p15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o18r15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p16p16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p17q16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p18r16.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "p17q16":
		p17q16.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (p17q16.currentFrame == 1 && invisiblep17q16 == false)
		{
			invisiblep17q16 = true;
			p17q16Btn.visible = false;
			o16p15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o17q15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o18r15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p16p16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p18r16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q16p17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q17q17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q18r17.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "q17q17":
		q17q17.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (q17q17.currentFrame == 1 && invisibleq17q17 == false)
		{
			invisibleq17q17 = true;
			q17q17Btn.visible = false;
			p16p16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p17q16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p18r16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q16p17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q18r17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r16p18.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r17q18.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r18r18.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "r17q18":
		r17q18.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (r17q18.currentFrame == 1 && invisibler17q18 == false)
		{
			invisibler17q18 = true;
			r17q18Btn.visible = false;
			q16p17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q17q17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q18r17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r16p18.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r18r18.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		//row 18 18r
		case "a18r1":
		a18r1.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (a18r1.currentFrame == 1 && invisiblea18r1 == false)
		{
			invisiblea18r1 = true;
			a18r1Btn.visible = false;
			b17q2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b18r2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			a17q1.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "b18r2":
		b18r2.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (b18r2.currentFrame == 1 && invisibleb18r2 == false)
		{
			invisibleb18r2 = true;
			b18r2Btn.visible = false;
			a17q1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			a18r1.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b17q2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c17q3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c18r3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			
		}
		break;
		
		case "c18r3":
		c18r3.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (c18r3.currentFrame == 1 && invisiblec18r3 == false)
		{
			invisiblec18r3 = true;
			c18r3Btn.visible = false;
			b17q2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			b18r2.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c17q3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d17q4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d18r4.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "d18r4":
		d18r4.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (d18r4.currentFrame == 1 && invisibled18r4 == false)
		{
			invisibled18r4 = true;
			d18r4Btn.visible = false;
			c17q3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			c18r3.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d17q4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e17q5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e18r5.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "e18r5":
		e18r5.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (e18r5.currentFrame == 1 && invisiblee18r5 == false)
		{
			invisiblee18r5 = true;
			e18r5Btn.visible = false;
			d17q4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			d18r4.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e17q5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f17q6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f18r6.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "f18r6":
		f18r6.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (f18r6.currentFrame == 1 && invisiblef18r6 == false)
		{
			invisiblef18r6 = true;
			f18r6Btn.visible = false;
			e17q5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			e18r5.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f17q6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g17q7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g18r7.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "g18r7":
		g18r7.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (g18r7.currentFrame == 1 && invisibleg18r7 == false)
		{
			invisibleg18r7 = true;
			g18r7Btn.visible = false;
			f17q6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			f18r6.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g17q7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h17q8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h18r8.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "h18r8":
		h18r8.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (h18r8.currentFrame == 1 && invisibleh18r8 == false)
		{
			invisibleh18r8 = true;
			h18r8Btn.visible = false;
			g17q7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			g18r7.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h17q8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i17q9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i18r9.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "i18r9":
		i18r9.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (i18r9.currentFrame == 1 && invisiblei18r9 == false)
		{
			invisiblei18r9 = true;
			i18r9Btn.visible = false;
			h17q8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			h18r8.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i17q9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j17q10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j18r10.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "j18r10":
		j18r10.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (j18r10.currentFrame == 1 && invisiblej18r10 == false)
		{
			invisiblej18r10 = true;
			j18r10Btn.visible = false;
			i17q9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			i18r9.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j17q10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k17q11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k18r11.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "k18r11":
		k18r11.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (k18r11.currentFrame == 1 && invisiblek18r11 == false)
		{
			invisiblek18r11 = true;
			k18r11Btn.visible = false;
			j17q10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			j18r10.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k17q11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l17q12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l18r12.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "l18r12":
		l18r12.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (l18r12.currentFrame == 1 && invisiblel18r12 == false)
		{
			invisiblel18r12 = true;
			l18r12Btn.visible = false;
			k17q11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			k18r11.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l17q12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m17q13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m18r13.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "m18r13":
		m18r13.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (m18r13.currentFrame == 1 && invisiblem18r13 == false)
		{
			invisiblem18r13 = true;
			m18r13Btn.visible = false;
			l17q12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			l18r12.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m17q13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n17q14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n18r14.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "n18r14":
		n18r14.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (n18r14.currentFrame == 1 && invisiblen18r14 == false)
		{
			invisiblen18r14 = true;
			n18r14Btn.visible = false;
			m17q13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			m18r13.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n17q14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o17q15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o18r15.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "o18r15":
		o18r15.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (o18r15.currentFrame == 1 && invisibleo18r15 == false)
		{
			invisibleo18r15 = true;
			o18r15Btn.visible = false;
			n17q14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			n18r14.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o17q15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p17q16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p18r16.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "p18r16":
		p18r16.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (p18r16.currentFrame == 1 && invisiblep18r16 == false)
		{
			invisiblep18r16 = true;
			p18r16Btn.visible = false;
			o17q15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			o18r15.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p17q16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q17q17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q18r17.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "q18r17":
		q18r17.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (q18r17.currentFrame == 1 && invisibleq18r17 == false)
		{
			invisibleq18r17 = true;
			q18r17Btn.visible = false;
			p17q16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			p18r16.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q17q17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r17q18.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r18r18.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
		
		case "r18r18":
		r18r18.removeEventListener(Event.ENTER_FRAME, checkSpaces);
		if (r18r18.currentFrame == 1 && invisibler18r18 == false)
		{
			invisibler18r18 = true;
			r18r18Btn.visible = false;
			q17q17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			q18r17.addEventListener(Event.ENTER_FRAME, checkSpaces);
			r17q18.addEventListener(Event.ENTER_FRAME, checkSpaces);
		}
		break;
	}
}

function checkBomb(e:MouseEvent):void
{
	switch (e.target.name)
	{
		//row 1
		case "a1a1Btn":
			attemptedClip = a1a1;
			if (checka1a1 == true)
			{
				for(var aa:int = 0; aa<bombsPushed.length; aa++)
				{
					bombsPushed[aa].alpha = 1;
					stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checka1a1 == false)
			{
				a1a1Btn.visible = false;
				if (a1a1.currentFrame == 1)
				{
					a1a1.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		break;
		
		case "b1a2Btn":
			attemptedClip = b1a2;
			if (checkb1a2 == true)
			{
				for(var a:int = 0; a<bombsPushed.length; a++)
				{
					bombsPushed[a].alpha = 1;
					stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkb1a2 == false)
			{
				b1a2Btn.visible = false;
				if (b1a2.currentFrame == 1)
				{
					b1a2.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		break;
		
		case "c1a3Btn":
			attemptedClip = b1a2;
			if (checkc1a3 == true)
			{
				for(var b:int = 0; b<bombsPushed.length; b++)
				{
					bombsPushed[b].alpha = 1;
					stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkc1a3 == false)
			{
				c1a3Btn.visible = false;
				if (c1a3.currentFrame == 1)
				{
					c1a3.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		break;
		
		case "d1a4Btn":
			if (checkd1a4 == true)
			{
				for(var c:int = 0; c<bombsPushed.length; c++)
				{
					bombsPushed[c].alpha = 1;
					stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkd1a4 == false)
			{
				d1a4Btn.visible = false;
				if (d1a4.currentFrame == 1)
				{
					d1a4.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		break;
		
		case "e1a5Btn":
			if (checke1a5 == true)
			{
				for(var d:int = 0; d<bombsPushed.length; d++)
				{
					bombsPushed[d].alpha = 1;
					stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checke1a5 == false)
			{
				e1a5Btn.visible = false;
				if (e1a5.currentFrame == 1)
				{
					e1a5.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		break;
		
		case "f1a6Btn":
			if (checkf1a6 == true)
			{
				for(var ee:int = 0; ee<bombsPushed.length; ee++)
				{
					bombsPushed[ee].alpha = 1;
					stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkf1a6 == false)
			{
				f1a6Btn.visible = false;
				if (f1a6.currentFrame == 1)
				{
					f1a6.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		break;
		
		case "g1a7Btn":
			if (checkg1a7 == true)
			{
				for(var f:int = 0; f<bombsPushed.length; f++)
				{
					bombsPushed[f].alpha = 1;
					stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkg1a7 == false)
			{
				g1a7Btn.visible = false;
				if (g1a7.currentFrame == 1)
				{
					g1a7.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		break;
		
		case "h1a8Btn":
			if (checkh1a8 == true)
			{
				for(var g:int = 0; g<bombsPushed.length; g++)
				{
					bombsPushed[g].alpha = 1;
					stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkh1a8 == false)
			{
				h1a8Btn.visible = false;
				if (h1a8.currentFrame == 1)
				{
					h1a8.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		break;
		
		case "i1a9Btn":
			if (checki1a9 == true)
			{
				for(var h:int = 0; h<bombsPushed.length; h++)
				{
					bombsPushed[h].alpha = 1;
					stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checki1a9 == false)
			{
				i1a9Btn.visible = false;
				if (i1a9.currentFrame == 1)
				{
					i1a9.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		break;
		
		case "j1a10Btn":
			if (checkj1a10 == true)
			{
				for(var j:int = 0; j<bombsPushed.length; j++)
				{
					bombsPushed[j].alpha = 1;
					stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkj1a10 == false)
			{
				j1a10Btn.visible = false;
				if (j1a10.currentFrame == 1)
				{
					j1a10.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		break;
		
		case "k1a11Btn":
			if (checkk1a11 == true)
			{
				for(var k:int = 0; k<bombsPushed.length; k++)
				{
					bombsPushed[k].alpha = 1;
					stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkk1a11 == false)
			{
				k1a11Btn.visible = false;
				if (k1a11.currentFrame == 1)
				{
					k1a11.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		break;
		
		case "l1a12Btn":
			if (checkl1a12 == true)
			{
				for(var l:int = 0; l<bombsPushed.length; l++)
				{
					bombsPushed[l].alpha = 1;
					stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checka1a1 == false)
			{
				l1a12Btn.visible = false;
				if (l1a12.currentFrame == 1)
				{
					l1a12.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		break;
		
		case "m1a13Btn":
			if (checkm1a13 == true)
			{
				for(var m:int = 0; m<bombsPushed.length; m++)
				{
					bombsPushed[m].alpha = 1;
					stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkm1a13 == false)
			{
				m1a13Btn.visible = false;
				if (m1a13.currentFrame == 1)
				{
					m1a13.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		break;
		
		case "n1a14Btn":
			if (checkn1a14 == true)
			{
				for(var n:int = 0; n<bombsPushed.length; n++)
				{
					bombsPushed[n].alpha = 1;
					stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkn1a14 == false)
			{
				n1a14Btn.visible = false;
				if (n1a14.currentFrame == 1)
				{
					n1a14.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		break;
		
		case "o1a15Btn":
			if (checko1a15 == true)
			{
				for(var o:int = 0; o<bombsPushed.length; o++)
				{
					bombsPushed[o].alpha = 1;
					stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checko1a15 == false)
			{
				o1a15Btn.visible = false;
				if (o1a15.currentFrame == 1)
				{
					o1a15.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		break;
		
		case "p1a16Btn":
			if (checkp1a16 == true)
			{
				for(var p:int = 0; p<bombsPushed.length; p++)
				{
					bombsPushed[p].alpha = 1;
					stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkp1a16 == false)
			{
				p1a16Btn.visible = false;
				if (p1a16.currentFrame == 1)
				{
					p1a16.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		break;
		
		case "q1a17Btn":
			if (checkq1a17 == true)
			{
				for(var q:int = 0; q<bombsPushed.length; q++)
				{
					bombsPushed[q].alpha = 1;
					stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkq1a17 == false)
			{
				q1a17Btn.visible = false;
				if (q1a17.currentFrame == 1)
				{
					q1a17.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		break;
		
		case "r1a18Btn":
			if (checkr1a18 == true)
			{
				for(var r:int = 0; r<bombsPushed.length; r++)
				{
					bombsPushed[r].alpha = 1;
					stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkr1a18 == false)
			{
				r1a18Btn.visible = false;
				if (r1a18.currentFrame == 1)
				{
					r1a18.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		break;
		
		//row2  
		case "a2b1Btn":
			if (checka2b1 == true)
			{
				for(var a2:int = 0; a2<bombsPushed.length; a2++)
				{
					bombsPushed[a2].alpha = 1;
					stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checka2b1 == false)
			{
				a2b1Btn.visible = false;
				if (a2b1.currentFrame == 1)
				{
					a2b1.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
		  
		  case "b2b2Btn":
			if (checkb2b2 == true)
			{
				for(var b2:int = 0; b2<bombsPushed.length; b2++)
				{
					bombsPushed[b2].alpha = 1;
					stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkb2b2 == false)
			{
				b2b2Btn.visible = false;
				if (b2b2.currentFrame == 1)
				{
					b2b2.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
		  
		  case "c2b3Btn":
			if (checkc2b3 == true)
			{
				for(var c2:int = 0; c2<bombsPushed.length; c2++)
				{
					bombsPushed[c2].alpha = 1;
					stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkc2b3 == false)
			{
				c2b3Btn.visible = false;
				if (c2b3.currentFrame == 1)
				{
					c2b3.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
		  
		  case "d2b4Btn":
			if (checkd2b4 == true)
			{
				for(var d2:int = 0; d2<bombsPushed.length; d2++)
				{
					bombsPushed[d2].alpha = 1;
					stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			}  else if (checkd2b4 == false)
			{
				d2b4Btn.visible = false;
				if (d2b4.currentFrame == 1)
				{
					d2b4.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
		  
		  case "e2b5Btn":
			if (checke2b5 == true)
			{
				for(var e2:int = 0; e2<bombsPushed.length; e2++)
				{
					bombsPushed[e2].alpha = 1;
					stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checke2b5 == false)
			{
				e2b5Btn.visible = false;
				if (e2b5.currentFrame == 1)
				{
					e2b5.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
		   
		  case "f2b6Btn":
			if (checkf2b6 == true)
			{
				for(var f2:int = 0; f2<bombsPushed.length; f2++)
				{
					bombsPushed[f2].alpha = 1;
					stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			}  else if (checkf2b6 == false)
			{
				f2b6Btn.visible = false;
				if (f2b6.currentFrame == 1)
				{
					f2b6.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
		  
		  case "g2b7Btn":
			if (checkg2b7 == true)
			{
				for(var g2:int = 0; g2<bombsPushed.length; g2++)
				{
					bombsPushed[g2].alpha = 1;
					stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkg2b7 == false)
			{
				g2b7Btn.visible = false;
				if (g2b7.currentFrame == 1)
				{
					g2b7.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
		   
		  case "h2b8Btn":
			if (checkh2b8 == true)
			{
				for(var h2:int = 0; h2<bombsPushed.length; h2++)
				{
					bombsPushed[h2].alpha = 1;
					stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkh2b8 == false)
			{
				h2b8Btn.visible = false;
				if (h2b8.currentFrame == 1)
				{
					h2b8.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
		   
		  case "i2b9Btn":
			if (checki2b9 == true)
			{
				for(var i2:int = 0; i2<bombsPushed.length; i2++)
				{
					bombsPushed[i2].alpha = 1;
					stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			}  else if (checki2b9 == false)
			{
				i2b9Btn.visible = false;
				if (i2b9.currentFrame == 1)
				{
					i2b9.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
		  
		  case "j2b10Btn":
			if (checkj2b10 == true)
			{
				for(var j2:int = 0; j2<bombsPushed.length; j2++)
				{
					bombsPushed[j2].alpha = 1;
					stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			}  else if (checkj2b10 == false)
			{
				j2b10Btn.visible = false;
				if (j2b10.currentFrame == 1)
				{
					j2b10.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
		  
		  case "k2b11Btn":
			if (checkk2b11 == true)
			{
				for(var k2:int = 0; k2<bombsPushed.length; k2++)
				{
					bombsPushed[k2].alpha = 1;
					stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkk2b11 == false)
			{
				k2b11Btn.visible = false;
				if (k2b11.currentFrame == 1)
				{
					k2b11.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
		  
		  case "l2b12Btn":
			if (checkl2b12 == true)
			{
				for(var l2:int = 0; l2<bombsPushed.length; l2++)
				{
					bombsPushed[l2].alpha = 1;
					stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkl2b12 == false)
			{
				l2b12Btn.visible = false;
				if (l2b12.currentFrame == 1)
				{
					l2b12.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
		  
		  case "m2b13Btn":
			if (checkm2b13 == true)
			{
				for(var m2:int = 0; m2<bombsPushed.length; m2++)
				{
					bombsPushed[m2].alpha = 1;
					stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkm2b13 == false)
			{
				m2b13Btn.visible = false;
				if (m2b13.currentFrame == 1)
				{
					m2b13.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
		  
		  case "n2b14Btn":
			if (checkn2b14 == true)
			{
				for(var n2:int = 0; n2<bombsPushed.length; n2++)
				{
					bombsPushed[n2].alpha = 1;
					stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkn2b14 == false)
			{
				n2b14Btn.visible = false;
				if (n2b14.currentFrame == 1)
				{
					n2b14.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
		  
		  case "o2b15Btn":
			if (checko2b15 == true)
			{
				for(var o2:int = 0; o2<bombsPushed.length; o2++)
				{
					bombsPushed[o2].alpha = 1;
					stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checko2b15 == false)
			{
				o2b15Btn.visible = false;
				if (o2b15.currentFrame == 1)
				{
					o2b15.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
		  
		  case "p2b16Btn":
			if (checkp2b16 == true)
			{
				for(var p2:int = 0; p2<bombsPushed.length; p2++)
				{
					bombsPushed[p2].alpha = 1;
					stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkp2b16 == false)
			{
				p2b16Btn.visible = false;
				if (p2b16.currentFrame == 1)
				{
					p2b16.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
		  
		  case "q2b17Btn":
			  if (checkq2b17 == true)
			  {
				  for(var q2:int = 0; q2<bombsPushed.length; q2++)
				  {
					  bombsPushed[q2].alpha = 1; 
					  stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				  }
			  } else if (checkq2b17 == false)
			{
				q2b17Btn.visible = false;
				if (q2b17.currentFrame == 1)
				{
					q2b17.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
		  
		  case "r2b18Btn":
			  if (checkr2b18 == true)
			  {
				  for(var r2:int = 0; r2<bombsPushed.length; r2++)
				  {
					  bombsPushed[r2].alpha = 1; 
					  stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				  }
			  } else if (checkr2b18 == false)
			{
				r2b18Btn.visible = false;
				if (r2b18.currentFrame == 1)
				{
					r2b18.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
					  
	    //row 3
		case "a3c1Btn":
			if (checka3c1 == true)
			{
				for(var a3:int = 0; a3<bombsPushed.length; a3++)
				{
					bombsPushed[a3].alpha = 1; 
					stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checka3c1 == false)
			{
				a3c1Btn.visible = false;
				if (a3c1.currentFrame == 1)
				{
					a3c1.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
	    
		case "b3c2Btn":
			if (checkb3c2 == true)
			{
				for(var b3:int = 0; b3<bombsPushed.length; b3++)
				{
					bombsPushed[b3].alpha = 1;
					stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkb3c2 == false)
			{
				b3c2Btn.visible = false;
				if (b3c2.currentFrame == 1)
				{
					b3c2.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
	    
		case "c3c3Btn":
			if (checkc3c3 == true)
			{
				for(var c3:int = 0; c3<bombsPushed.length; c3++)
				{
					bombsPushed[c3].alpha = 1; 
					stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkc3c3 == false)
			{
				c3c3Btn.visible = false;
				if (c3c3.currentFrame == 1)
				{
					c3c3.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
	    
		case "d3c4Btn":
			if (checkd3c4 == true)
			{
				for(var d3:int = 0; d3<bombsPushed.length; d3++)
				{
					bombsPushed[d3].alpha = 1; 
					stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkd3c4 == false)
			{
				d3c4Btn.visible = false;
				if (d3c4.currentFrame == 1)
				{
					d3c4.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
	    
		case "e3c5Btn":
			if (checke3c5 == true)
			{
				for(var e3:int = 0; e3<bombsPushed.length; e3++)
				{
					bombsPushed[e3].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checke3c5 == false)
			{
				e3c5Btn.visible = false;
				if (e3c5.currentFrame == 1)
				{
					e3c5.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
	    
		case "f3c6Btn":
			if (checkf3c6 == true)
			{
				for(var f3:int = 0; f3<bombsPushed.length; f3++)
				{
					bombsPushed[f3].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkf3c6 == false)
			{
				f3c6Btn.visible = false;
				if (f3c6.currentFrame == 1)
				{
					f3c6.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
	    
		case "g3c7Btn":
			if (checkg3c7 == true)
			{
				for(var g3:int = 0; g3<bombsPushed.length; g3++)
				{
					bombsPushed[g3].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkg3c7 == false)
			{
				g3c7Btn.visible = false;
				if (g3c7.currentFrame == 1)
				{
					g3c7.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
	    
		case "h3c8Btn":
			if (checkh3c8 == true)
			{
				for(var h3:int = 0; h3<bombsPushed.length; h3++)
				{
					bombsPushed[h3].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkh3c8 == false)
			{
				h3c8Btn.visible = false;
				if (h3c8.currentFrame == 1)
				{
					h3c8.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
	    
		case "i3c9Btn":
			if (checki3c9 == true)
			{
				for(var i3:int = 0; i3<bombsPushed.length; i3++)
				{
					bombsPushed[i3].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checki3c9 == false)
			{
				i3c9Btn.visible = false;
				if (i3c9.currentFrame == 1)
				{
					i3c9.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
	    
		case "j3c10Btn":
			if (checkj3c10 == true)
			{
				for(var j3:int = 0; j3<bombsPushed.length; j3++)
				{
					bombsPushed[j3].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkj3c10 == false)
			{
				j3c10Btn.visible = false;
				if (j3c10.currentFrame == 1)
				{
					j3c10.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
	     
		case "k3c11Btn":
			if (checkk3c11 == true)
			{
				for(var k3:int = 0; k3<bombsPushed.length; k3++)
				{
					bombsPushed[k3].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkk3c11 == false)
			{
				k3c11Btn.visible = false;
				if (k3c11.currentFrame == 1)
				{
					k3c11.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
	     
		case "l3c12Btn":
			if (checkl3c12 == true)
			{
				for(var l3:int = 0; l3<bombsPushed.length; l3++)
				{
					bombsPushed[l3].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkl3c12 == false)
			{
				l3c12Btn.visible = false;
				if (l3c12.currentFrame == 1)
				{
					l3c12.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
	    
		case "m3c13Btn":
			if (checkm3c13 == true)
			{
				for(var m3:int = 0; m3<bombsPushed.length; m3++)
				{
					bombsPushed[m3].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkm3c13 == false)
			{
				m3c13Btn.visible = false;
				if (m3c13.currentFrame == 1)
				{
					m3c13.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
	    
		case "n3c14Btn":
			if (checkn3c14 == true)
			{
				for(var n3:int = 0; n3<bombsPushed.length; n3++)
				{
					bombsPushed[n3].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkn3c14 == false)
			{
				n3c14Btn.visible = false;
				if (n3c14.currentFrame == 1)
				{
					n3c14.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
	    
		case "o3c15Btn":
			if (checko3c15 == true)
			{
				for(var o3:int = 0; o3<bombsPushed.length; o3++)
				{
					bombsPushed[o3].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checko3c15 == false)
			{
				o3c15Btn.visible = false;
				if (o3c15.currentFrame == 1)
				{
					o3c15.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
  	    
		case "p3c16Btn":
			if (checkp3c16 == true)
			{
				for(var p3:int = 0; p3<bombsPushed.length; p3++)
				{
					bombsPushed[p3].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkp3c16 == false)
			{
				p3c16Btn.visible = false;
				if (p3c16.currentFrame == 1)
				{
					p3c16.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
	    
		case "q3c17Btn":
			if (checkq3c17 == true)
			{
				for(var q3:int = 0; q3<bombsPushed.length; q3++)
				{
					bombsPushed[q3].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkq3c17 == false)
			{
				q3c17Btn.visible = false;
				if (q3c17.currentFrame == 1)
				{
					q3c17.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
	    
		case "r3c18Btn":
			if (checkr3c18 == true)
			{
				for(var r3:int = 0; r3<bombsPushed.length; r3++)
				{
					bombsPushed[r3].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkr3c18 == false)
			{
				r3c18Btn.visible = false;
				if (r3c18.currentFrame == 1)
				{
					r3c18.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
					  
		//row 4
		case "a4d1Btn":
			if (checka4d1 == true)
			{
				for(var a4:int = 0; a4<bombsPushed.length; a4++)
				{
					bombsPushed[a4].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checka4d1 == false)
			{
				a4d1Btn.visible = false;
				if (a4d1.currentFrame == 1)
				{
					a4d1.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;

					  
		  case "b4d2Btn":
			if (checkb4d2 == true)
			{
				for(var b4:int = 0; b4<bombsPushed.length; b4++)
				{
					bombsPushed[b4].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkb4d2 == false)
			{
				b4d2Btn.visible = false;
				if (b4d2.currentFrame == 1)
				{
					b4d2.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
		  
					  
		  case "c4d3Btn":
			if (checkc4d3 == true)
			{
				for(var c4:int = 0; c4<bombsPushed.length; c4++)
				{
					bombsPushed[c4].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkc4d3 == false)
			{
				c4d3Btn.visible = false;
				if (c4d3.currentFrame == 1)
				{
					c4d3.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
		  
					  
		  case "d4d4Btn":
			if (checkd4d4 == true)
			{
				for(var d4:int = 0; d4<bombsPushed.length; d4++)
				{
					bombsPushed[d4].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkd4d4 == false)
			{
				d4d4Btn.visible = false;
				if (d4d4.currentFrame == 1)
				{
					d4d4.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
		  
					  
		  case "e4d5Btn":
			if (checke4d5 == true)
			{
				for(var e4:int = 0; e4<bombsPushed.length; e4++)
				{
					bombsPushed[e4].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checke4d5 == false)
			{
				e4d5Btn.visible = false;
				if (e4d5.currentFrame == 1)
				{
					e4d5.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
		  
					  
		  case "f4d6Btn":
			if (checkf4d6 == true)
			{
				for(var f4:int = 0; f4<bombsPushed.length; f4++)
				{
					bombsPushed[f4].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkf4d6 == false)
			{
				f4d6Btn.visible = false;
				if (f4d6.currentFrame == 1)
				{
					f4d6.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
		  
					  
		  case "g4d7Btn":
			if (checkg4d7 == true)
			{
				for(var g4:int = 0; g4<bombsPushed.length; g4++)
				{
					bombsPushed[g4].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkg4d7 == false)
			{
				g4d7Btn.visible = false;
				if (g4d7.currentFrame == 1)
				{
					g4d7.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
		  
					  
		  case "h4d8Btn":
			if (checkh4d8 == true)
			{
				for(var h4:int = 0; h4<bombsPushed.length; h4++)
				{
					bombsPushed[h4].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkh4d8 == false)
			{
				h4d8Btn.visible = false;
				if (h4d8.currentFrame == 1)
				{
					h4d8.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
		  
					  
		  case "i4d9Btn":
			if (checki4d9 == true)
			{
				for(var i4:int = 0; i4<bombsPushed.length; i4++)
				{
					bombsPushed[i4].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checki4d9 == false)
			{
				i4d9Btn.visible = false;
				if (i4d9.currentFrame == 1)
				{
					i4d9.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
		  
					  
		  case "j4d10Btn":
			if (checkj4d10 == true)
			{
				for(var j4:int = 0; j4<bombsPushed.length; j4++)
				{
					bombsPushed[j4].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkj4d10 == false)
			{
				j4d10Btn.visible = false;
				if (j4d10.currentFrame == 1)
				{
					j4d10.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
		  
					  
		  case "k4d11Btn":
			if (checkk4d11 == true)
			{
				for(var k4:int = 0; k4<bombsPushed.length; k4++)
				{
					bombsPushed[k4].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkk4d11 == false)
			{
				k4d11Btn.visible = false;
				if (k4d11.currentFrame == 1)
				{
					k4d11.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
		  
					  
		  case "l4d12Btn":
			if (checkl4d12 == true)
			{
				for(var l4:int = 0; l4<bombsPushed.length; l4++)
				{
					bombsPushed[l4].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkl4d12 == false)
			{
				l4d12Btn.visible = false;
				if (l4d12.currentFrame == 1)
				{
					l4d12.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
		  
					   
		  case "m4d13Btn":
			if (checkm4d13 == true)
			{
				for(var m4:int = 0; m4<bombsPushed.length; m4++)
				{
					bombsPushed[m4].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkm4d13 == false)
			{
				m4d13Btn.visible = false;
				if (m4d13.currentFrame == 1)
				{
					m4d13.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
		  
					   
		  case "n4d14Btn":
			if (checkn4d14 == true)
			{
				for(var n4:int = 0; n4<bombsPushed.length; n4++)
				{
					bombsPushed[n4].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkn4d14 == false)
			{
				n4d14Btn.visible = false;
				if (n4d14.currentFrame == 1)
				{
					n4d14.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
		  
					  
		  case "o4d15Btn":
			if (checko4d15 == true)
			{
				for(var o4:int = 0; o4<bombsPushed.length; o4++)
				{
					bombsPushed[o4].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checko4d15 == false)
			{
				o4d15Btn.visible = false;
				if (o4d15.currentFrame == 1)
				{
					o4d15.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
		  
					  
		  case "p4d16Btn":
			if (checkp4d16 == true)
			{
				for(var p4:int = 0; p4<bombsPushed.length; p4++)
				{
					bombsPushed[p4].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkp4d16 == false)
			{
				p4d16Btn.visible = false;
				if (p4d16.currentFrame == 1)
				{
					p4d16.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
		  
					  
		  case "q4d17Btn":
			if (checkq4d17 == true)
			{
				for(var q4:int = 0; q4<bombsPushed.length; q4++)
				{
					bombsPushed[q4].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkq4d17 == false)
			{
				q4d17Btn.visible = false;
				if (q4d17.currentFrame == 1)
				{
					q4d17.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
		  
					  
		  case "r4d18Btn":
			if (checkr4d18 == true)
			{
				for(var r4:int = 0; r4<bombsPushed.length; r4++)
				{
					bombsPushed[r4].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkr4d18 == false)
			{
				r4d18Btn.visible = false;
				if (r4d18.currentFrame == 1)
				{
					r4d18.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
		  
		//row 5
		case "a5e1Btn":
			if (checka5e1 == true)
			{
				for(var a5:int = 0; a5<bombsPushed.length; a5++)
				{
					bombsPushed[a5].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checka5e1 == false)
			{
				a5e1Btn.visible = false;
				if (a5e1.currentFrame == 1)
				{
					a5e1.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
		  
		  case "b5e2Btn":
			if (checkb5e2 == true)
			{
				for(var b5:int = 0; b5<bombsPushed.length; b5++)
				{
					bombsPushed[b5].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkb5e2 == false)
			{
				b5e2Btn.visible = false;
				if (b5e2.currentFrame == 1)
				{
					b5e2.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
		  
		  case "c5e3Btn":
			if (checkc5e3 == true)
			{
				for(var c5:int = 0; c5<bombsPushed.length; c5++)
				{
					bombsPushed[c5].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkc5e3 == false)
			{
				c5e3Btn.visible = false;
				if (c5e3.currentFrame == 1)
				{
					c5e3.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
		   
		  case "d5e4Btn":
			if (checkd5e4 == true)
			{
				for(var d5:int = 0; d5<bombsPushed.length; d5++)
				{
					bombsPushed[d5].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkd5e4 == false)
			{
				d5e4Btn.visible = false;
				if (d5e4.currentFrame == 1)
				{
					d5e4.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
		  
		  case "e5e5Btn":
			if (checke5e5 == true)
			{
				for(var e5:int = 0; e5<bombsPushed.length; e5++)
				{
					bombsPushed[e5].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checke5e5 == false)
			{
				e5e5Btn.visible = false;
				if (e5e5.currentFrame == 1)
				{
					e5e5.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
		   
		  case "f5e6Btn":
			if (checkf5e6 == true)
			{
				for(var f5:int = 0; f5<bombsPushed.length; f5++)
				{
					bombsPushed[f5].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkf5e6 == false)
			{
				f5e6Btn.visible = false;
				if (f5e6.currentFrame == 1)
				{
					f5e6.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
		   
		  case "g5e7Btn":
			if (checkg5e7 == true)
			{
				for(var g5:int = 0; g5<bombsPushed.length; g5++)
				{
					bombsPushed[g5].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkg5e7 == false)
			{
				g5e7Btn.visible = false;
				if (g5e7.currentFrame == 1)
				{
					g5e7.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
		   
		  case "h5e8Btn":
			if (checkh5e8 == true)
			{
				for(var h5:int = 0; h5<bombsPushed.length; h5++)
				{
					bombsPushed[h5].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkh5e8 == false)
			{
				h5e8Btn.visible = false;
				if (h5e8.currentFrame == 1)
				{
					h5e8.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
		   
		  case "i5e9Btn":
			if (checki5e9 == true)
			{
				for(var i5:int = 0; i5<bombsPushed.length; i5++)
				{
					bombsPushed[i5].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checki5e9 == false)
			{
				i5e9Btn.visible = false;
				if (i5e9.currentFrame == 1)
				{
					i5e9.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
		  
		  case "j5e10Btn":
			if (checkj5e10 == true)
			{
				for(var j5:int = 0; j5<bombsPushed.length; j5++)
				{
					bombsPushed[j5].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkj5e10 == false)
			{
				j5e10Btn.visible = false;
				if (j5e10.currentFrame == 1)
				{
					j5e10.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
		  
		  case "k5e11Btn":
			if (checkk5e11 == true)
			{
				for(var k5:int = 0; k5<bombsPushed.length; k5++)
				{
					bombsPushed[k5].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkk5e11 == false)
			{
				k5e11Btn.visible = false;
				if (k5e11.currentFrame == 1)
				{
					k5e11.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
		  
		  case "l5e12Btn":
			if (checkl5e12 == true)
			{
				for(var l5:int = 0; l5<bombsPushed.length; l5++)
				{
					bombsPushed[l5].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkl5e12 == false)
			{
				l5e12Btn.visible = false;
				if (l5e12.currentFrame == 1)
				{
					l5e12.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
		  
		  case "m5e13Btn":
			if (checkm5e13 == true)
			{
				for(var m5:int = 0; m5<bombsPushed.length; m5++)
				{
					bombsPushed[m5].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkm5e13 == false)
			{
				m5e13Btn.visible = false;
				if (m5e13.currentFrame == 1)
				{
					m5e13.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
		  
		  case "n5e14Btn":
			if (checkn5e14 == true)
			{
				for(var n5:int = 0; n5<bombsPushed.length; n5++)
				{
					bombsPushed[n5].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkn5e14 == false)
			{
				n5e14Btn.visible = false;
				if (n5e14.currentFrame == 1)
				{
					n5e14.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
		  
		  case "o5e15Btn":
			if (checko5e15 == true)
			{
				for(var o5:int = 0; o5<bombsPushed.length; o5++)
				{
					bombsPushed[o5].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checko5e15 == false)
			{
				o5e15Btn.visible = false;
				if (o5e15.currentFrame == 1)
				{
					o5e15.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
		  
		  case "p5e16Btn":
			if (checkp5e16 == true)
			{
				for(var p5:int = 0; p5<bombsPushed.length; p5++)
				{
					bombsPushed[p5].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkp5e16 == false)
			{
				p5e16Btn.visible = false;
				if (p5e16.currentFrame == 1)
				{
					p5e16.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
		  
		  case "q5e17Btn":
			if (checkq5e17 == true)
			{
				for(var q5:int = 0; q5<bombsPushed.length; q5++)
				{
					bombsPushed[q5].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkq5e17 == false)
			{
				q5e17Btn.visible = false;
				if (q5e17.currentFrame == 1)
				{
					q5e17.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
		  
		  case "r5e18Btn":
			if (checkr5e18 == true)
			{
				for(var r5:int = 0; r5<bombsPushed.length; r5++)
				{
					bombsPushed[r5].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkr5e18 == false)
			{
				r5e18Btn.visible = false;
				if (r5e18.currentFrame == 1)
				{
					r5e18.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
		  break;
					  
		//row 6
		case "a6f1Btn":
			if (checka6f1 == true)
			{
				for(var a6:int = 0; a6<bombsPushed.length; a6++)
				{
					bombsPushed[a6].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checka6f1 == false)
			{
				a6f1Btn.visible = false;
				if (a6f1.currentFrame == 1)
				{
					a6f1.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "b6f2Btn":
			if (checkb6f2 == true)
			{
				for(var b6:int = 0; b6<bombsPushed.length; b6++)
				{
					bombsPushed[b6].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkb6f2 == false)
			{
				b6f2Btn.visible = false;
				if (b6f2.currentFrame == 1)
				{
					b6f2.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		 
		case "c6f3Btn":
			if (checkc6f3 == true)
			{
				for(var c6:int = 0; c6<bombsPushed.length; c6++)
				{
					bombsPushed[c6].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkc6f3 == false)
			{
				c6f3Btn.visible = false;
				if (c6f3.currentFrame == 1)
				{
					c6f3.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		 
		case "d6f4Btn":
			if (checkd6f4 == true)
			{
				for(var d6:int = 0; d6<bombsPushed.length; d6++)
				{
					bombsPushed[d6].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkd6f4 == false)
			{
				d6f4Btn.visible = false;
				if (d6f4.currentFrame == 1)
				{
					d6f4.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "e6f5Btn":
			if (checke6f5 == true)
			{
				for(var e6:int = 0; e6<bombsPushed.length; e6++)
				{
					bombsPushed[e6].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checke6f5 == false)
			{
				e6f5Btn.visible = false;
				if (e6f5.currentFrame == 1)
				{
					e6f5.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "f6f6Btn":
			if (checkf6f6 == true)
			{
				for(var f6:int = 0; f6<bombsPushed.length; f6++)
				{
					bombsPushed[f6].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkf6f6 == false)
			{
				f6f6Btn.visible = false;
				if (f6f6.currentFrame == 1)
				{
					f6f6.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		 
		case "g6f7Btn":
			if (checkg6f7 == true)
			{
				for(var g6:int = 0; g6<bombsPushed.length; g6++)
				{
					bombsPushed[g6].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkg6f7 == false)
			{
				g6f7Btn.visible = false;
				if (g6f7.currentFrame == 1)
				{
					g6f7.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		 
		case "h6f8Btn":
			if (checkh6f8 == true)
			{
				for(var h6:int = 0; h6<bombsPushed.length; h6++)
				{
					bombsPushed[h6].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkh6f8 == false)
			{
				h6f8Btn.visible = false;
				if (h6f8.currentFrame == 1)
				{
					h6f8.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		 
		case "i6f9Btn":
			if (checki6f9 == true)
			{
				for(var i6:int = 0; i6<bombsPushed.length; i6++)
				{
					bombsPushed[i6].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checki6f9 == false)
			{
				i6f9Btn.visible = false;
				if (i6f9.currentFrame == 1)
				{
					i6f9.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "j6f10Btn":
			if (checkj6f10 == true)
			{
				for(var j6:int = 0; j6<bombsPushed.length; j6++)
				{
					bombsPushed[j6].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkj6f10 == false)
			{
				j6f10Btn.visible = false;
				if (j6f10.currentFrame == 1)
				{
					j6f10.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "k6f11Btn":
			if (checkk6f11 == true)
			{
				for(var k6:int = 0; k6<bombsPushed.length; k6++)
				{
					bombsPushed[k6].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkk6f11 == false)
			{
				k6f11Btn.visible = false;
				if (k6f11.currentFrame == 1)
				{
					k6f11.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "l6f12Btn":
			if (checkl6f12 == true)
			{
				for(var l6:int = 0; l6<bombsPushed.length; l6++)
				{
					bombsPushed[l6].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkl6f12 == false)
			{
				l6f12Btn.visible = false;
				if (l6f12.currentFrame == 1)
				{
					l6f12.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		 
		case "m6f13Btn":
			if (checkm6f13 == true)
			{
				for(var m6:int = 0; m6<bombsPushed.length; m6++)
				{
					bombsPushed[m6].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkm6f13 == false)
			{
				m6f13Btn.visible = false;
				if (m6f13.currentFrame == 1)
				{
					m6f13.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		 
		case "n6f14Btn":
			if (checkn6f14 == true)
			{
				for(var n6:int = 0; n6<bombsPushed.length; n6++)
				{
					bombsPushed[n6].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkn6f14 == false)
			{
				n6f14Btn.visible = false;
				if (n6f14.currentFrame == 1)
				{
					n6f14.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		 
		case "o6f15Btn":
			if (checko6f15 == true)
			{
				for(var o6:int = 0; o6<bombsPushed.length; o6++)
				{
					bombsPushed[o6].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checko6f15 == false)
			{
				o6f15Btn.visible = false;
				if (o6f15.currentFrame == 1)
				{
					o6f15.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		 
		case "p6f16Btn":
			if (checkp6f16 == true)
			{
				for(var p6:int = 0; p6<bombsPushed.length; p6++)
				{
					bombsPushed[p6].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkp6f16 == false)
			{
				p6f16Btn.visible = false;
				if (p6f16.currentFrame == 1)
				{
					p6f16.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		 
		case "q6f17Btn":
			if (checkq6f17 == true)
			{
				for(var q6:int = 0; q6<bombsPushed.length; q6++)
				{
					bombsPushed[q6].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkq6f17 == false)
			{
				q6f17Btn.visible = false;
				if (q6f17.currentFrame == 1)
				{
					q6f17.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "r6f18Btn":
			if (checkr6f18 == true)
			{
				for(var r6:int = 0; r6<bombsPushed.length; r6++)
				{
					bombsPushed[r6].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkr6f18 == false)
			{
				r6f18Btn.visible = false;
				if (r6f18.currentFrame == 1)
				{
					r6f18.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		  
		//row 7
		case "a7g1Btn":
			if (checka7g1 == true)
			{
				for(var a7:int = 0; a7<bombsPushed.length; a7++)
				{
					bombsPushed[a7].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checka7g1 == false)
			{
				a7g1Btn.visible = false;
				if (a7g1.currentFrame == 1)
				{
					a7g1.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "b7g2Btn":
			if (checkb7g2 == true)
			{
				for(var b7:int = 0; b7<bombsPushed.length; b7++)
				{
					bombsPushed[b7].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkb7g2 == false)
			{
				b7g2Btn.visible = false;
				if (b7g2.currentFrame == 1)
				{
					b7g2.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "c7g3Btn":
			if (checkc7g3 == true)
			{
				for(var c7:int = 0; c7<bombsPushed.length; c7++)
				{
					bombsPushed[c7].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkc7g3 == false)
			{
				c7g3Btn.visible = false;
				if (c7g3.currentFrame == 1)
				{
					c7g3.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "d7g4Btn":
			if (checkd7g4 == true)
			{
				for(var d7:int = 0; d7<bombsPushed.length; d7++)
				{
					bombsPushed[d7].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkd7g4 == false)
			{
				d7g4Btn.visible = false;
				if (d7g4.currentFrame == 1)
				{
					d7g4.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "e7g5Btn":
			if (checke7g5 == true)
			{
				for(var e7:int = 0; e7<bombsPushed.length; e7++)
				{
					bombsPushed[e7].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checke7g5 == false)
			{
				e7g5Btn.visible = false;
				if (e7g5.currentFrame == 1)
				{
					e7g5.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "f7g6Btn":
			if (checkf7g6 == true)
			{
				for(var f7:int = 0; f7<bombsPushed.length; f7++)
				{
					bombsPushed[f7].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkf7g6 == false)
			{
				f7g6Btn.visible = false;
				if (f7g6.currentFrame == 1)
				{
					f7g6.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "g7g7Btn":
			if (checkg7g7 == true)
			{
				for(var g7:int = 0; g7<bombsPushed.length; g7++)
				{
					bombsPushed[g7].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkg7g7 == false)
			{
				g7g7Btn.visible = false;
				if (g7g7.currentFrame == 1)
				{
					g7g7.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "h7g8Btn":
			if (checkh7g8 == true)
			{
				for(var h7:int = 0; h7<bombsPushed.length; h7++)
				{
					bombsPushed[h7].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkh7g8 == false)
			{
				h7g8Btn.visible = false;
				if (h7g8.currentFrame == 1)
				{
					h7g8.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "i7g9Btn":
			if (checki7g9 == true)
			{
				for(var i7:int = 0; i7<bombsPushed.length; i7++)
				{
					bombsPushed[i7].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checki7g9 == false)
			{
				i7g9Btn.visible = false;
				if (i7g9.currentFrame == 1)
				{
					i7g9.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "j7g10Btn":
			if (checkj7g10 == true)
			{
				for(var j7:int = 0; j7<bombsPushed.length; j7++)
				{
					bombsPushed[j7].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkj7g10 == false)
			{
				j7g10Btn.visible = false;
				if (j7g10.currentFrame == 1)
				{
					j7g10.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "k7g11Btn":
			if (checkk7g11 == true)
			{
				for(var k7:int = 0; k7<bombsPushed.length; k7++)
				{
					bombsPushed[k7].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkk7g11 == false)
			{
				k7g11Btn.visible = false;
				if (k7g11.currentFrame == 1)
				{
					k7g11.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "l7g12Btn":
			if (checkl7g12 == true)
			{
				for(var l7:int = 0; l7<bombsPushed.length; l7++)
				{
					bombsPushed[l7].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkl7g12 == false)
			{
				l7g12Btn.visible = false;
				if (l7g12.currentFrame == 1)
				{
					l7g12.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "m7g13Btn":
			if (checkm7g13 == true)
			{
				for(var m7:int = 0; m7<bombsPushed.length; m7++)
				{
					bombsPushed[m7].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkm7g13 == false)
			{
				m7g13Btn.visible = false;
				if (m7g13.currentFrame == 1)
				{
					m7g13.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		 
		case "n7g14Btn":
			if (checkn7g14 == true)
			{
				for(var n7:int = 0; n7<bombsPushed.length; n7++)
				{
					bombsPushed[n7].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkn7g14 == false)
			{
				n7g14Btn.visible = false;
				if (n7g14.currentFrame == 1)
				{
					n7g14.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		 
		case "o7g15Btn":
			if (checko7g15 == true)
			{
				for(var o7:int = 0; o7<bombsPushed.length; o7++)
				{
					bombsPushed[o7].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checko7g15 == false)
			{
				o7g15Btn.visible = false;
				if (o7g15.currentFrame == 1)
				{
					o7g15.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		 
		case "p7g16Btn":
			if (checkp7g16 == true)
			{
				for(var p7:int = 0; p7<bombsPushed.length; p7++)
				{
					bombsPushed[p7].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkp7g16 == false)
			{
				p7g16Btn.visible = false;
				if (p7g16.currentFrame == 1)
				{
					p7g16.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		 
		case "q7g17Btn":
			if (checkq7g17 == true)
			{
				for(var q7:int = 0; q7<bombsPushed.length; q7++)
				{
					bombsPushed[q7].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkq7g17 == false)
			{
				q7g17Btn.visible = false;
				if (q7g17.currentFrame == 1)
				{
					q7g17.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "r7g18Btn":
			if (checkr7g18 == true)
			{
				for(var r7:int = 0; r7<bombsPushed.length; r7++)
				{
					bombsPushed[r7].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkr7g18 == false)
			{
				r7g18Btn.visible = false;
				if (r7g18.currentFrame == 1)
				{
					r7g18.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		//row 8
		case "a8h1Btn":
			if (checka8h1 == true)
			{
				for(var a8:int = 0; a8<bombsPushed.length; a8++)
				{
					bombsPushed[a8].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checka8h1 == false)
			{
				a8h1Btn.visible = false;
				if (a8h1.currentFrame == 1)
				{
					a8h1.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "b8h2Btn":
			if (checkb8h2 == true)
			{
				for(var b8:int = 0; b8<bombsPushed.length; b8++)
				{
					bombsPushed[b8].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkb8h2 == false)
			{
				b8h2Btn.visible = false;
				if (b8h2.currentFrame == 1)
				{
					b8h2.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		 
		case "c8h3Btn":
			if (checkc8h3 == true)
			{
				for(var c8:int = 0; c8<bombsPushed.length; c8++)
				{
					bombsPushed[c8].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkc8h3 == false)
			{
				c8h3Btn.visible = false;
				if (c8h3.currentFrame == 1)
				{
					c8h3.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		 
		case "d8h4Btn":
			if (checkd8h4 == true)
			{
				for(var d8:int = 0; d8<bombsPushed.length; d8++)
				{
					bombsPushed[d8].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkd8h4 == false)
			{
				d8h4Btn.visible = false;
				if (d8h4.currentFrame == 1)
				{
					d8h4.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		 
		case "e8h5Btn":
			if (checke8h5 == true)
			{
				for(var e8:int = 0; e8<bombsPushed.length; e8++)
				{
					bombsPushed[e8].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checke8h5 == false)
			{
				e8h5Btn.visible = false;
				if (e8h5.currentFrame == 1)
				{
					e8h5.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "f8h6Btn":
			if (checkf8h6 == true)
			{
				for(var f8:int = 0; f8<bombsPushed.length; f8++)
				{
					bombsPushed[f8].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkf8h6 == false)
			{
				f8h6Btn.visible = false;
				if (f8h6.currentFrame == 1)
				{
					f8h6.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "g8h7Btn":
			if (checkg8h7 == true)
			{
				for(var g8:int = 0; g8<bombsPushed.length; g8++)
				{
					bombsPushed[g8].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkg8h7 == false)
			{
				g8h7Btn.visible = false;
				if (g8h7.currentFrame == 1)
				{
					g8h7.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "h8h8Btn":
			if (checkh8h8 == true)
			{
				for(var h8:int = 0; h8<bombsPushed.length; h8++)
				{
					bombsPushed[h8].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkh8h8 == false)
			{
				h8h8Btn.visible = false;
				if (h8h8.currentFrame == 1)
				{
					h8h8.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "i8h9Btn":
			if (checki8h9 == true)
			{
				for(var i8:int = 0; i8<bombsPushed.length; i8++)
				{
					bombsPushed[i8].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checki8h9 == false)
			{
				i8h9Btn.visible = false;
				if (i8h9.currentFrame == 1)
				{
					i8h9.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "j8h10Btn":
			if (checkj8h10 == true)
			{
				for(var j8:int = 0; j8<bombsPushed.length; j8++)
				{
					bombsPushed[j8].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkj8h10 == false)
			{
				j8h10Btn.visible = false;
				if (j8h10.currentFrame == 1)
				{
					j8h10.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "k8h11Btn":
			if (checkk8h11 == true)
			{
				for(var k8:int = 0; k8<bombsPushed.length; k8++)
				{
					bombsPushed[k8].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkk8h11 == false)
			{
				k8h11Btn.visible = false;
				if (k8h11.currentFrame == 1)
				{
					k8h11.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "l8h12Btn":
			if (checkl8h12 == true)
			{
				for(var l8:int = 0; l8<bombsPushed.length; l8++)
				{
					bombsPushed[l8].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkl8h12 == false)
			{
				l8h12Btn.visible = false;
				if (l8h12.currentFrame == 1)
				{
					l8h12.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "m8h13Btn":
			if (checkm8h13 == true)
			{
				for(var m8:int = 0; m8<bombsPushed.length; m8++)
				{
					bombsPushed[m8].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkm8h13 == false)
			{
				m8h13Btn.visible = false;
				if (m8h13.currentFrame == 1)
				{
					m8h13.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "n8h14Btn":
			if (checkn8h14 == true)
			{
				for(var n8:int = 0; n8<bombsPushed.length; n8++)
				{
					bombsPushed[n8].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkn8h14 == false)
			{
				n8h14Btn.visible = false;
				if (n8h14.currentFrame == 1)
				{
					n8h14.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "o8h15Btn":
			if (checko8h15 == true)
			{
				for(var o8:int = 0; o8<bombsPushed.length; o8++)
				{
					bombsPushed[o8].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checko8h15 == false)
			{
				o8h15Btn.visible = false;
				if (o8h15.currentFrame == 1)
				{
					o8h15.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "p8h16Btn":
			if (checkp8h16 == true)
			{
				for(var p8:int = 0; p8<bombsPushed.length; p8++)
				{
					bombsPushed[p8].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkp8h16 == false)
			{
				p8h16Btn.visible = false;
				if (p8h16.currentFrame == 1)
				{
					p8h16.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "q8h17Btn":
			if (checkq8h17 == true)
			{
				for(var q8:int = 0; q8<bombsPushed.length; q8++)
				{
					bombsPushed[q8].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkq8h17 == false)
			{
				q8h17Btn.visible = false;
				if (q8h17.currentFrame == 1)
				{
					q8h17.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "r8h18Btn":
			if (checkr8h18 == true)
			{
				for(var r8:int = 0; r8<bombsPushed.length; r8++)
				{
					bombsPushed[r8].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkr8h18 == false)
			{
				r8h18Btn.visible = false;
				if (r8h18.currentFrame == 1)
				{
					r8h18.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		//row 9
		case "a9i1Btn":
			if (checka9i1 == true)
			{
				for(var a9:int = 0; a9<bombsPushed.length; a9++)
				{
					bombsPushed[a9].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checka9i1 == false)
			{
				a9i1Btn.visible = false;
				if (a9i1.currentFrame == 1)
				{
					a9i1.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		 
		case "b9i2Btn":
			if (checkb9i2 == true)
			{
				for(var b9:int = 0; b9<bombsPushed.length; b9++)
				{
					bombsPushed[b9].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkb9i2 == false)
			{
				b9i2Btn.visible = false;
				if (b9i2.currentFrame == 1)
				{
					b9i2.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "c9i3Btn":
			if (checkc9i3 == true)
			{
				for(var c9:int = 0; c9<bombsPushed.length; c9++)
				{
					bombsPushed[c9].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkc9i3 == false)
			{
				c9i3Btn.visible = false;
				if (c9i3.currentFrame == 1)
				{
					c9i3.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "d9i4Btn":
			if (checkd9i4 == true)
			{
				for(var d9:int = 0; d9<bombsPushed.length; d9++)
				{
					bombsPushed[d9].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkd9i4 == false)
			{
				d9i4Btn.visible = false;
				if (d9i4.currentFrame == 1)
				{
					d9i4.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "e9i5Btn":
			if (checke9i5 == true)
			{
				for(var e9:int = 0; e9<bombsPushed.length; e9++)
				{
					bombsPushed[e9].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checke9i5 == false)
			{
				e9i5Btn.visible = false;
				if (e9i5.currentFrame == 1)
				{
					e9i5.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "f9i6Btn":
			if (checkf9i6 == true)
			{
				for(var f9:int = 0; f9<bombsPushed.length; f9++)
				{
					bombsPushed[f9].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkf9i6 == false)
			{
				f9i6Btn.visible = false;
				if (f9i6.currentFrame == 1)
				{
					f9i6.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "g9i7Btn":
			if (checkg9i7 == true)
			{
				for(var g9:int = 0; g9<bombsPushed.length; g9++)
				{
					bombsPushed[g9].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkg9i7 == false)
			{
				g9i7Btn.visible = false;
				if (g9i7.currentFrame == 1)
				{
					g9i7.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "h9i8Btn":
			if (checkh9i8 == true)
			{
				for(var h9:int = 0; h9<bombsPushed.length; h9++)
				{
					bombsPushed[h9].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkh9i8 == false)
			{
				h9i8Btn.visible = false;
				if (h9i8.currentFrame == 1)
				{
					h9i8.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "i9i9Btn":
			if (checki9i9 == true)
			{
				for(var i9:int = 0; i9<bombsPushed.length; i9++)
				{
					bombsPushed[i9].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checki9i9 == false)
			{
				i9i9Btn.visible = false;
				if (i9i9.currentFrame == 1)
				{
					i9i9.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "j9i10Btn":
			if (checkj9i10 == true)
			{
				for(var j9:int = 0; j9<bombsPushed.length; j9++)
				{
					bombsPushed[j9].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkj9i10 == false)
			{
				j9i10Btn.visible = false;
				if (j9i10.currentFrame == 1)
				{
					j9i10.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "k9i11Btn":
			if (checkk9i11 == true)
			{
				for(var k9:int = 0; k9<bombsPushed.length; k9++)
				{
					bombsPushed[k9].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkk9i11 == false)
			{
				k9i11Btn.visible = false;
				if (k9i11.currentFrame == 1)
				{
					k9i11.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "l9i12Btn":
			if (checkl9i12 == true)
			{
				for(var l9:int = 0; l9<bombsPushed.length; l9++)
				{
					bombsPushed[l9].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkl9i12 == false)
			{
				l9i12Btn.visible = false;
				if (l9i12.currentFrame == 1)
				{
					l9i12.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		 
		case "m9i13Btn":
			if (checkm9i13 == true)
			{
				for(var m9:int = 0; m9<bombsPushed.length; m9++)
				{
					bombsPushed[m9].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkm9i13 == false)
			{
				m9i13Btn.visible = false;
				if (m9i13.currentFrame == 1)
				{
					m9i13.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "n9i14Btn":
			if (checkn9i14 == true)
			{
				for(var n9:int = 0; n9<bombsPushed.length; n9++)
				{
					bombsPushed[n9].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkn9i14 == false)
			{
				n9i14Btn.visible = false;
				if (n9i14.currentFrame == 1)
				{
					n9i14.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "o9i15Btn":
			if (checko9i15 == true)
			{
				for(var o9:int = 0; o9<bombsPushed.length; o9++)
				{
					bombsPushed[o9].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checko9i15 == false)
			{
				o9i15Btn.visible = false;
				if (o9i15.currentFrame == 1)
				{
					o9i15.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "p9i16Btn":
			if (checkp9i16 == true)
			{
				for(var p9:int = 0; p9<bombsPushed.length; p9++)
				{
					bombsPushed[p9].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkp9i16 == false)
			{
				p9i16Btn.visible = false;
				if (p9i16.currentFrame == 1)
				{
					p9i16.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "q9i17Btn":
			if (checkq9i17 == true)
			{
				for(var q9:int = 0; q9<bombsPushed.length; q9++)
				{
					bombsPushed[q9].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkq9i17 == false)
			{
				q9i17Btn.visible = false;
				if (q9i17.currentFrame == 1)
				{
					q9i17.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "r9i18Btn":
			if (checkr9i18 == true)
			{
				for(var r9:int = 0; r9<bombsPushed.length; r9++)
				{
					bombsPushed[r9].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkr9i18 == false)
			{
				r9i18Btn.visible = false;
				if (r9i18.currentFrame == 1)
				{
					r9i18.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		//row 10
		case "a10j1Btn":
			if (checka10j1 == true)
			{
				for(var a10:int = 0; a10<bombsPushed.length; a10++)
				{
					bombsPushed[a10].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checka10j1 == false)
			{
				a10j1Btn.visible = false;
				if (a10j1.currentFrame == 1)
				{
					a10j1.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "b10j2Btn":
			if (checkb10j2 == true)
			{
				for(var b10:int = 0; b10<bombsPushed.length; b10++)
				{
					bombsPushed[b10].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkb10j2 == false)
			{
				b10j2Btn.visible = false;
				if (b10j2.currentFrame == 1)
				{
					b10j2.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "c10j3Btn":
			if (checkc10j3 == true)
			{
				for(var c10:int = 0; c10<bombsPushed.length; c10++)
				{
					bombsPushed[c10].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkc10j3 == false)
			{
				c10j3Btn.visible = false;
				if (c10j3.currentFrame == 1)
				{
					c10j3.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "d10j4Btn":
			if (checkd10j4 == true)
			{
				for(var d10:int = 0; d10<bombsPushed.length; d10++)
				{
					bombsPushed[d10].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkd10j4 == false)
			{
				d10j4Btn.visible = false;
				if (d10j4.currentFrame == 1)
				{
					d10j4.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "e10j5Btn":
			if (checke10j5 == true)
			{
				for(var e10:int = 0; e10<bombsPushed.length; e10++)
				{
					bombsPushed[e10].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checke10j5 == false)
			{
				e10j5Btn.visible = false;
			if (e10j5.currentFrame == 1)
				{
					e10j5.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "f10j6Btn":
			if (checkf10j6 == true)
			{
				for(var f10:int = 0; f10<bombsPushed.length; f10++)
				{
					bombsPushed[f10].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkf10j6 == false)
			{
				f10j6Btn.visible = false;
			if (f10j6.currentFrame == 1)
				{
					f10j6.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "g10j7Btn":
			if (checkg10j7 == true)
			{
				for(var g10:int = 0; g10<bombsPushed.length; g10++)
				{
					bombsPushed[g10].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkg10j7 == false)
			{
				g10j7Btn.visible = false;
			if (g10j7.currentFrame == 1)
				{
					g10j7.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "h10j8Btn":
			if (checkh10j8 == true)
			{
				for(var h10:int = 0; h10<bombsPushed.length; h10++)
				{
					bombsPushed[h10].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkh10j8 == false)
			{
				h10j8Btn.visible = false;
			if (h10j8.currentFrame == 1)
				{
					h10j8.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "i10j9Btn":
			if (checki10j9 == true)
			{
				for(var i10:int = 0; i10<bombsPushed.length; i10++)
				{
					bombsPushed[i10].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checki10j9 == false)
			{
				i10j9Btn.visible = false;
			if (i10j9.currentFrame == 1)
				{
					i10j9.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "j10j10Btn":
			if (checkj10j10 == true)
			{
				for(var j10:int = 0; j10<bombsPushed.length; j10++)
				{
					bombsPushed[j10].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkj10j10 == false)
			{
				j10j10Btn.visible = false;
			if (j10j10.currentFrame == 1)
				{
					j10j10.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "k10j11Btn":
			if (checkk10j11 == true)
			{
				for(var k10:int = 0; k10<bombsPushed.length; k10++)
				{
					bombsPushed[k10].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkk10j11 == false)
			{
				k10j11Btn.visible = false;
			if (k10j11.currentFrame == 1)
				{
					k10j11.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "l10j12Btn":
			if (checkl10j12 == true)
			{
				for(var l10:int = 0; l10<bombsPushed.length; l10++)
				{
					bombsPushed[l10].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkl10j12 == false)
			{
				l10j12Btn.visible = false;
			if (l10j12.currentFrame == 1)
				{
					l10j12.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "m10j13Btn":
			if (checkm10j13 == true)
			{
				for(var m10:int = 0; m10<bombsPushed.length; m10++)
				{
					bombsPushed[m10].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkm10j13 == false)
			{
				m10j13Btn.visible = false;
			if (m10j13.currentFrame == 1)
				{
					m10j13.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "n10j14Btn":
			if (checkn10j14 == true)
			{
				for(var n10:int = 0; n10<bombsPushed.length; n10++)
				{
					bombsPushed[n10].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkn10j14 == false)
			{
				n10j14Btn.visible = false;
			if (n10j14.currentFrame == 1)
				{
					n10j14.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		 
		case "o10j15Btn":
			if (checko10j15 == true)
			{
				for(var o10:int = 0; o10<bombsPushed.length; o10++)
				{
					bombsPushed[o10].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checko10j15 == false)
			{
				o10j15Btn.visible = false;
			if (o10j15.currentFrame == 1)
				{
					o10j15.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "p10j16Btn":
			if (checkp10j16 == true)
			{
				for(var p10:int = 0; p10<bombsPushed.length; p10++)
				{
					bombsPushed[p10].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkp10j16 == false)
			{
				p10j16Btn.visible = false;
			if (p10j16.currentFrame == 1)
				{
					p10j16.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "q10j17Btn":
			if (checkq10j17 == true)
			{
				for(var q10:int = 0; q10<bombsPushed.length; q10++)
				{
					bombsPushed[q10].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkq10j17 == false)
			{
				q10j17Btn.visible = false;
			if (q10j17.currentFrame == 1)
				{
					q10j17.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "r10j18Btn":
			if (checkr10j18 == true)
			{
				for(var r10:int = 0; r10<bombsPushed.length; r10++)
				{
					bombsPushed[r10].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkr10j18 == false)
			{
				r10j18Btn.visible = false;
			if (r10j18.currentFrame == 1)
				{
					r10j18.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		 //row 11
		case "a11k1Btn":
			if (checka11k1 == true)
			{
				for(var a11:int = 0; a11<bombsPushed.length; a11++)
				{
					bombsPushed[a11].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checka11k1 == false)
			{
				a11k1Btn.visible = false;
			if (a11k1.currentFrame == 1)
				{
					a11k1.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		 
		case "b11k2Btn":
			if (checkb11k2 == true)
			{
				for(var b11:int = 0; b11<bombsPushed.length; b11++)
				{
					bombsPushed[b11].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkb11k2 == false)
			{
				b11k2Btn.visible = false;
			if (b11k2.currentFrame == 1)
				{
					b11k2.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "c11k3Btn":
			if (checkc11k3 == true)
			{
				for(var c11:int = 0; c11<bombsPushed.length; c11++)
				{
					bombsPushed[c11].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkc11k3 == false)
			{
				c11k3Btn.visible = false;
			if (c11k3.currentFrame == 1)
				{
					c11k3.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "d11k4Btn":
			if (checkd11k4 == true)
			{
				for(var d11:int = 0; d11<bombsPushed.length; d11++)
				{
					bombsPushed[d11].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkd11k4 == false)
			{
				d11k4Btn.visible = false;
			if (d11k4.currentFrame == 1)
				{
					d11k4.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "e11k5Btn":
			if (checke11k5 == true)
			{
				for(var e11:int = 0; e11<bombsPushed.length; e11++)
				{
					bombsPushed[e11].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checke11k5 == false)
			{
				e11k5Btn.visible = false;
			if (e11k5.currentFrame == 1)
				{
					e11k5.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "f11k6Btn":
			if (checkf11k6 == true)
			{
				for(var f11:int = 0; f11<bombsPushed.length; f11++)
				{
					bombsPushed[f11].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkf11k6 == false)
			{
				f11k6Btn.visible = false;
			if (f11k6.currentFrame == 1)
				{
					f11k6.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "g11k7Btn":
			if (checkg11k7 == true)
			{
				for(var g11:int = 0; g11<bombsPushed.length; g11++)
				{
					bombsPushed[g11].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkg11k7 == false)
			{
				g11k7Btn.visible = false;
			if (g11k7.currentFrame == 1)
				{
					g11k7.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "h11k8Btn":
			if (checkh11k8 == true)
			{
				for(var h11:int = 0; h11<bombsPushed.length; h11++)
				{
					bombsPushed[h11].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkh11k8 == false)
			{
				h11k8Btn.visible = false;
			if (h11k8.currentFrame == 1)
				{
					h11k8.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "i11k9Btn":
			if (checki11k9 == true)
			{
				for(var i11:int = 0; i11<bombsPushed.length; i11++)
				{
					bombsPushed[i11].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checki11k9 == false)
			{
				i11k9Btn.visible = false;
			if (i11k9.currentFrame == 1)
				{
					i11k9.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "j11k10Btn":
			if (checkj11k10 == true)
			{
				for(var j11:int = 0; j11<bombsPushed.length; j11++)
				{
					bombsPushed[j11].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkj11k10 == false)
			{
				j11k10Btn.visible = false;
			if (j11k10.currentFrame == 1)
				{
					j11k10.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "k11k11Btn":
			if (checkk11k11 == true)
			{
				for(var k11:int = 0; k11<bombsPushed.length; k11++)
				{
					bombsPushed[k11].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkk11k11 == false)
			{
				k11k11Btn.visible = false;
			if (k11k11.currentFrame == 1)
				{
					k11k11.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "l11k12Btn":
			if (checkl11k12 == true)
			{
				for(var l11:int = 0; l11<bombsPushed.length; l11++)
				{
					bombsPushed[l11].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkl11k12 == false)
			{
				l11k12Btn.visible = false;
			if (l11k12.currentFrame == 1)
				{
					l11k12.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "m11k13Btn":
			if (checkm11k13 == true)
			{
				for(var m11:int = 0; m11<bombsPushed.length; m11++)
				{
					bombsPushed[m11].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkm11k13 == false)
			{
				m11k13Btn.visible = false;
			if (m11k13.currentFrame == 1)
				{
					m11k13.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "n11k14Btn":
			if (checkn11k14 == true)
			{
				for(var n11:int = 0; n11<bombsPushed.length; n11++)
				{
					bombsPushed[n11].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkn11k14 == false)
			{
				n11k14Btn.visible = false;
			if (n11k14.currentFrame == 1)
				{
					n11k14.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "o11k15Btn":
			if (checko11k15 == true)
			{
				for(var o11:int = 0; o11<bombsPushed.length; o11++)
				{
					bombsPushed[o11].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checko11k15 == false)
			{
				o11k15Btn.visible = false;
			if (o11k15.currentFrame == 1)
				{
					o11k15.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "p11k16Btn":
			if (checkp11k16 == true)
			{
				for(var p11:int = 0; p11<bombsPushed.length; p11++)
				{
					bombsPushed[p11].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkp11k16 == false)
			{
				p11k16Btn.visible = false;
			if (p11k16.currentFrame == 1)
				{
					p11k16.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "q11k17Btn":
			if (checkq11k17 == true)
			{
				for(var q11:int = 0; q11<bombsPushed.length; q11++)
				{
					bombsPushed[q11].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkq11k17 == false)
			{
				q11k17Btn.visible = false;
			if (q11k17.currentFrame == 1)
				{
					q11k17.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "r11k18Btn":
			if (checkr11k18 == true)
			{
				for(var r11:int = 0; r11<bombsPushed.length; r11++)
				{
					bombsPushed[r11].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkr11k18 == false)
			{
				r11k18Btn.visible = false;
			if (r11k18.currentFrame == 1)
				{
					r11k18.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		//row 12
		case "a12l1Btn":
			if (checka12l1 == true)
			{
				for(var a12:int = 0; a12<bombsPushed.length; a12++)
				{
					bombsPushed[a12].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checka12l1 == false)
			{
				a12l1Btn.visible = false;
			if (a12l1.currentFrame == 1)
				{
					a12l1.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "b12l2Btn":
			if (checkb12l2 == true)
			{
				for(var b12:int = 0; b12<bombsPushed.length; b12++)
				{
					bombsPushed[b12].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkb12l2 == false)
			{
				b12l2Btn.visible = false;
			if (b12l2.currentFrame == 1)
				{
					b12l2.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		 
		case "c12l3Btn":
			if (checkc12l3 == true)
			{
				for(var c12:int = 0; c12<bombsPushed.length; c12++)
				{
					bombsPushed[c12].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkc12l3 == false)
			{
				c12l3Btn.visible = false;
			if (c12l3.currentFrame == 1)
				{
					c12l3.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "d12l4Btn":
			if (checkd12l4 == true)
			{
				for(var d12:int = 0; d12<bombsPushed.length; d12++)
				{
					bombsPushed[d12].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkd12l4 == false)
			{
				d12l4Btn.visible = false;
			if (d12l4.currentFrame == 1)
				{
					d12l4.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		 
		case "e12l5Btn":
			if (checke12l5 == true)
			{
				for(var e12:int = 0; e12<bombsPushed.length; e12++)
				{
					bombsPushed[e12].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checke12l5 == false)
			{
				e12l5Btn.visible = false;
			if (e12l5.currentFrame == 1)
				{
					e12l5.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "f12l6Btn":
			if (checkf12l6 == true)
			{
				for(var f12:int = 0; f12<bombsPushed.length; f12++)
				{
					bombsPushed[f12].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkf12l6 == false)
			{
				f12l6Btn.visible = false;
			if (f12l6.currentFrame == 1)
				{
					f12l6.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "g12l7Btn":
			if (checkg12l7 == true)
			{
				for(var g12:int = 0; g12<bombsPushed.length; g12++)
				{
					bombsPushed[g12].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkg12l7 == false)
			{
				g12l7Btn.visible = false;
			if (g12l7.currentFrame == 1)
				{
					g12l7.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "h12l8Btn":
			if (checkh12l8 == true)
			{
				for(var h12:int = 0; h12<bombsPushed.length; h12++)
				{
					bombsPushed[h12].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkh12l8 == false)
			{
				h12l8Btn.visible = false;
			if (h12l8.currentFrame == 1)
				{
					h12l8.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "i12l9Btn":
			if (checki12l9 == true)
			{
				for(var i12:int = 0; i12<bombsPushed.length; i12++)
				{
					bombsPushed[i12].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checki12l9 == false)
			{
				i12l9Btn.visible = false;
			if (i12l9.currentFrame == 1)
				{
					i12l9.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "j12l10Btn":
			if (checkj12l10 == true)
			{
				for(var j12:int = 0; j12<bombsPushed.length; j12++)
				{
					bombsPushed[j12].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkj12l10 == false)
			{
				j12l10Btn.visible = false;
			if (j12l10.currentFrame == 1)
				{
					j12l10.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "k12l11Btn":
			if (checkk12l11 == true)
			{
				for(var k12:int = 0; k12<bombsPushed.length; k12++)
				{
					bombsPushed[k12].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkk12l11 == false)
			{
				k12l11Btn.visible = false;
			if (k12l11.currentFrame == 1)
				{
					k12l11.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "l12l12Btn":
			if (checkl12l12 == true)
			{
				for(var l12:int = 0; l12<bombsPushed.length; l12++)
				{
					bombsPushed[l12].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkl12l12 == false)
			{
				l12l12Btn.visible = false;
			if (l12l12.currentFrame == 1)
				{
					l12l12.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "m12l13Btn":
			if (checkm12l13 == true)
			{
				for(var m12:int = 0; m12<bombsPushed.length; m12++)
				{
					bombsPushed[m12].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkm12l13 == false)
			{
				m12l13Btn.visible = false;
			if (m12l13.currentFrame == 1)
				{
					m12l13.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "n12l14Btn":
			if (checkn12l14 == true)
			{
				for(var n12:int = 0; n12<bombsPushed.length; n12++)
				{
					bombsPushed[n12].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkn12l14 == false)
			{
				n12l14Btn.visible = false;
			if (n12l14.currentFrame == 1)
				{
					n12l14.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		 
		case "o12l15Btn":
			if (checko12l15 == true)
			{
				for(var o12:int = 0; o12<bombsPushed.length; o12++)
				{
					bombsPushed[o12].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checko12l15 == false)
			{
				o12l15Btn.visible = false;
			if (o12l15.currentFrame == 1)
				{
					o12l15.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		 
		case "p12l16Btn":
			if (checkp12l16 == true)
			{
				for(var p12:int = 0; p12<bombsPushed.length; p12++)
				{
					bombsPushed[p12].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkp12l16 == false)
			{
				p12l16Btn.visible = false;
			if (p12l16.currentFrame == 1)
				{
					p12l16.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		 
		case "q12l17Btn":
			if (checkq12l17 == true)
			{
				for(var q12:int = 0; q12<bombsPushed.length; q12++)
				{
					bombsPushed[q12].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkq12l17 == false)
			{
				q12l17Btn.visible = false;
			if (q12l17.currentFrame == 1)
				{
					q12l17.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "r12l18Btn":
			if (checkr12l18 == true)
			{
				for(var r12:int = 0; r12<bombsPushed.length; r12++)
				{
					bombsPushed[r12].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkr12l18 == false)
			{
				r12l18Btn.visible = false;
			if (r12l18.currentFrame == 1)
				{
					r12l18.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		//row 13
		case "a13m1Btn":
			if (checka13m1 == true)
			{
				for(var a13:int = 0; a13<bombsPushed.length; a13++)
				{
					bombsPushed[a13].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checka13m1 == false)
			{
				a13m1Btn.visible = false;
			if (a13m1.currentFrame == 1)
				{
					a13m1.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "b13m2Btn":
			if (checkb13m2 == true)
			{
				for(var b13:int = 0; b13<bombsPushed.length; b13++)
				{
					bombsPushed[b13].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkb13m2 == false)
			{
				b13m2Btn.visible = false;
			if (b13m2.currentFrame == 1)
				{
					b13m2.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "c13m3Btn":
			if (checkc13m3 == true)
			{
				for(var c13:int = 0; c13<bombsPushed.length; c13++)
				{
					bombsPushed[c13].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkc13m3 == false)
			{
				c13m3Btn.visible = false;
			if (c13m3.currentFrame == 1)
				{
					c13m3.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "d13m4Btn":
			if (checkd13m4 == true)
			{
				for(var d13:int = 0; d13<bombsPushed.length; d13++)
				{
					bombsPushed[d13].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkd13m4 == false)
			{
				d13m4Btn.visible = false;
			if (d13m4.currentFrame == 1)
				{
					d13m4.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "e13m5Btn":
			if (checke13m5 == true)
			{
				for(var e13:int = 0; e13<bombsPushed.length; e13++)
				{
					bombsPushed[e13].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checke13m5 == false)
			{
				e13m5Btn.visible = false;
			if (e13m5.currentFrame == 1)
				{
					e13m5.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "f13m6Btn":
			if (checkf13m6 == true)
			{
				for(var f13:int = 0; f13<bombsPushed.length; f13++)
				{
					bombsPushed[f13].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkf13m6 == false)
			{
				f13m6Btn.visible = false;
			if (f13m6.currentFrame == 1)
				{
					f13m6.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "g13m7Btn":
			if (checkg13m7 == true)
			{
				for(var g13:int = 0; g13<bombsPushed.length; g13++)
				{
					bombsPushed[g13].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkg13m7 == false)
			{
				g13m7Btn.visible = false;
			if (g13m7.currentFrame == 1)
				{
					g13m7.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "h13m8Btn":
			if (checkh13m8 == true)
			{
				for(var h13:int = 0; h13<bombsPushed.length; h13++)
				{
					bombsPushed[h13].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkh13m8 == false)
			{
				h13m8Btn.visible = false;
			if (h13m8.currentFrame == 1)
				{
					h13m8.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "i13m9Btn":
			if (checki13m9 == true)
			{
				for(var i13:int = 0; i13<bombsPushed.length; i13++)
				{
					bombsPushed[i13].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checki13m9 == false)
			{
				i13m9Btn.visible = false;
			if (i13m9.currentFrame == 1)
				{
					i13m9.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "j13m10Btn":
			if (checkj13m10 == true)
			{
				for(var j13:int = 0; j13<bombsPushed.length; j13++)
				{
					bombsPushed[j13].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkj13m10 == false)
			{
				j13m10Btn.visible = false;
			if (j13m10.currentFrame == 1)
				{
					j13m10.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "k13m11Btn":
			if (checkk13m11 == true)
			{
				for(var k13:int = 0; k13<bombsPushed.length; k13++)
				{
					bombsPushed[k13].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkk13m11 == false)
			{
				k13m11Btn.visible = false;
			if (k13m11.currentFrame == 1)
				{
					k13m11.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "l13m12Btn":
			if (checkl13m12 == true)
			{
				for(var l13:int = 0; l13<bombsPushed.length; l13++)
				{
					bombsPushed[l13].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkl13m12 == false)
			{
				l13m12Btn.visible = false;
			if (l13m12.currentFrame == 1)
				{
					l13m12.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		 
		case "m13m13Btn":
			if (checkm13m13 == true)
			{
				for(var m13:int = 0; m13<bombsPushed.length; m13++)
				{
					bombsPushed[m13].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkm13m13 == false)
			{
				m13m13Btn.visible = false;
			if (m13m13.currentFrame == 1)
				{
					m13m13.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "n13m14Btn":
			if (checkn13m14 == true)
			{
				for(var n13:int = 0; n13<bombsPushed.length; n13++)
				{
					bombsPushed[n13].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkn13m14 == false)
			{
				n13m14Btn.visible = false;
			if (n13m14.currentFrame == 1)
				{
					n13m14.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "o13m15Btn":
			if (checko13m15 == true)
			{
				for(var o13:int = 0; o13<bombsPushed.length; o13++)
				{
					bombsPushed[o13].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checko13m15 == false)
			{
				o13m15Btn.visible = false;
			if (o13m15.currentFrame == 1)
				{
					o13m15.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "p13m16Btn":
			if (checkp13m16 == true)
			{
				for(var p13:int = 0; p13<bombsPushed.length; p13++)
				{
					bombsPushed[p13].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkp13m16 == false)
			{
				p13m16Btn.visible = false;
			if (p13m16.currentFrame == 1)
				{
					p13m16.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "q13m17Btn":
			if (checkq13m17 == true)
			{
				for(var q13:int = 0; q13<bombsPushed.length; q13++)
				{
					bombsPushed[q13].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkq13m17 == false)
			{
				q13m17Btn.visible = false;
			if (q13m17.currentFrame == 1)
				{
					q13m17.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "r13m18Btn":
			if (checkr13m18 == true)
			{
				for(var r13:int = 0; r13<bombsPushed.length; r13++)
				{
					bombsPushed[r13].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkr13m18 == false)
			{
				r13m18Btn.visible = false;
			if (r13m18.currentFrame == 1)
				{
					r13m18.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
				 
		//row 14
		case "a14n1Btn":
			if (checka14n1 == true)
			{
				for(var a14:int = 0; a14<bombsPushed.length; a14++)
				{
					bombsPushed[a14].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checka14n1 == false)
			{
				a14n1Btn.visible = false;
			if (a14n1.currentFrame == 1)
				{
					a14n1.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "b14n2Btn":
			if (checkb14n2 == true)
			{
				for(var b14:int = 0; b14<bombsPushed.length; b14++)
				{
					bombsPushed[b14].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkb14n2 == false)
			{
				b14n2Btn.visible = false;
			if (b14n2.currentFrame == 1)
				{
					b14n2.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "c14n3Btn":
			if (checkc14n3 == true)
			{
				for(var c14:int = 0; c14<bombsPushed.length; c14++)
				{
					bombsPushed[c14].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkc14n3 == false)
			{
				c14n3Btn.visible = false;
			if (c14n3.currentFrame == 1)
				{
					c14n3.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "d14n4Btn":
			if (checkd14n4 == true)
			{
				for(var d14:int = 0; d14<bombsPushed.length; d14++)
				{
					bombsPushed[d14].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkd14n4 == false)
			{
				d14n4Btn.visible = false;
			if (d14n4.currentFrame == 1)
				{
					d14n4.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "e14n5Btn":
			if (checke14n5 == true)
			{
				for(var e14:int = 0; e14<bombsPushed.length; e14++)
				{
					bombsPushed[e14].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checke14n5 == false)
			{
				e14n5Btn.visible = false;
			if (e14n5.currentFrame == 1)
				{
					e14n5.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "f14n6Btn":
			if (checkf14n6 == true)
			{
				for(var f14:int = 0; f14<bombsPushed.length; f14++)
				{
					bombsPushed[f14].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkf14n6 == false)
			{
				f14n6Btn.visible = false;
			if (f14n6.currentFrame == 1)
				{
					f14n6.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "g14n7Btn":
			if (checkg14n7 == true)
			{
				for(var g14:int = 0; g14<bombsPushed.length; g14++)
				{
					bombsPushed[g14].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkg14n7 == false)
			{
				g14n7Btn.visible = false;
			if (g14n7.currentFrame == 1)
				{
					g14n7.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "h14n8Btn":
			if (checkh14n8 == true)
			{
				for(var h14:int = 0; h14<bombsPushed.length; h14++)
				{
					bombsPushed[h14].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkh14n8 == false)
			{
				h14n8Btn.visible = false;
			if (h14n8.currentFrame == 1)
				{
					h14n8.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "i14n9Btn":
			if (checki14n9 == true)
			{
				for(var i14:int = 0; i14<bombsPushed.length; i14++)
				{
					bombsPushed[i14].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checki14n9 == false)
			{
				i14n9Btn.visible = false;
			if (i14n9.currentFrame == 1)
				{
					i14n9.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "j14n10Btn":
			if (checkj14n10 == true)
			{
				for(var j14:int = 0; j14<bombsPushed.length; j14++)
				{
					bombsPushed[j14].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkj14n10 == false)
			{
				j14n10Btn.visible = false;
			if (j14n10.currentFrame == 1)
				{
					j14n10.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "k14n11Btn":
			if (checkk14n11 == true)
			{
				for(var k14:int = 0; k14<bombsPushed.length; k14++)
				{
					bombsPushed[k14].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkk14n11 == false)
			{
				k14n11Btn.visible = false;
			if (k14n11.currentFrame == 1)
				{
					k14n11.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "l14n12Btn":
			if (checkl14n12 == true)
			{
				for(var l14:int = 0; l14<bombsPushed.length; l14++)
				{
					bombsPushed[l14].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkl14n12 == false)
			{
				l14n12Btn.visible = false;
			if (l14n12.currentFrame == 1)
				{
					l14n12.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "m14n13Btn":
			if (checkm14n13 == true)
			{
				for(var m14:int = 0; m14<bombsPushed.length; m14++)
				{
					bombsPushed[m14].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkm14n13 == false)
			{
				m14n13Btn.visible = false;
			if (m14n13.currentFrame == 1)
				{
					m14n13.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "n14n14Btn":
			if (checkn14n14 == true)
			{
				for(var n14:int = 0; n14<bombsPushed.length; n14++)
				{
					bombsPushed[n14].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkn14n14 == false)
			{
				n14n14Btn.visible = false;
			if (n14n14.currentFrame == 1)
				{
					n14n14.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "o14n15Btn":
			if (checko14n15 == true)
			{
				for(var o14:int = 0; o14<bombsPushed.length; o14++)
				{
					bombsPushed[o14].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checko14n15 == false)
			{
				o14n15Btn.visible = false;
			if (o14n15.currentFrame == 1)
				{
					o14n15.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		 
		case "p14n16Btn":
			if (checkp14n16 == true)
			{
				for(var p14:int = 0; p14<bombsPushed.length; p14++)
				{
					bombsPushed[p14].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkp14n16 == false)
			{
				p14n16Btn.visible = false;
			if (p14n16.currentFrame == 1)
				{
					p14n16.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		 
		case "q14n17Btn":
			if (checkq14n17 == true)
			{
				for(var q14:int = 0; q14<bombsPushed.length; q14++)
				{
					bombsPushed[q14].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkq14n17 == false)
			{
				q14n17Btn.visible = false;
			if (q14n17.currentFrame == 1)
				{
					q14n17.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "r14n18Btn":
			if (checkr14n18 == true)
			{
				for(var r14:int = 0; r14<bombsPushed.length; r14++)
				{
					bombsPushed[r14].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkr14n18 == false)
			{
				r14n18Btn.visible = false;
			if (r14n18.currentFrame == 1)
				{
					r14n18.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		//row 15
		case "a15o1Btn":
			if (checka15o1 == true)
			{
				for(var a15:int = 0; a15<bombsPushed.length; a15++)
				{
					bombsPushed[a15].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checka15o1 == false)
			{
				a15o1Btn.visible = false;
			if (a15o1.currentFrame == 1)
				{
					a15o1.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "b15o2Btn":
			if (checkb15o2 == true)
			{
				for(var b15:int = 0; b15<bombsPushed.length; b15++)
				{
					bombsPushed[b15].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkb15o2 == false)
			{
				b15o2Btn.visible = false;
			if (b15o2.currentFrame == 1)
				{
					b15o2.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "c15o3Btn":
			if (checkc15o3 == true)
			{
				for(var c15:int = 0; c15<bombsPushed.length; c15++)
				{
					bombsPushed[c15].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkc15o3 == false)
			{
				c15o3Btn.visible = false;
			if (c15o3.currentFrame == 1)
				{
					c15o3.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "d15o4Btn":
			if (checkd15o4 == true)
			{
				for(var d15:int = 0; d15<bombsPushed.length; d15++)
				{
					bombsPushed[d15].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkd15o4 == false)
			{
				d15o4Btn.visible = false;
			if (d15o4.currentFrame == 1)
				{
					d15o4.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "e15o5Btn":
			if (checke15o5 == true)
			{
				for(var e15:int = 0; e15<bombsPushed.length; e15++)
				{
					bombsPushed[e15].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checke15o5 == false)
			{
				e15o5Btn.visible = false;
			if (e15o5.currentFrame == 1)
				{
					e15o5.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "f15o6Btn":
			if (checkf15o6 == true)
			{
				for(var f15:int = 0; f15<bombsPushed.length; f15++)
				{
					bombsPushed[f15].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkf15o6 == false)
			{
				f15o6Btn.visible = false;
			if (f15o6.currentFrame == 1)
				{
					f15o6.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "g15o7Btn":
			if (checkg15o7 == true)
			{
				for(var g15:int = 0; g15<bombsPushed.length; g15++)
				{
					bombsPushed[g15].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkg15o7 == false)
			{
				g15o7Btn.visible = false;
			if (g15o7.currentFrame == 1)
				{
					g15o7.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "h15o8Btn":
			if (checkh15o8 == true)
			{
				for(var h15:int = 0; h15<bombsPushed.length; h15++)
				{
					bombsPushed[h15].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkh15o8 == false)
			{
				h15o8Btn.visible = false;
			if (h15o8.currentFrame == 1)
				{
					h15o8.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		 
		case "i15o9Btn":
			if (checki15o9 == true)
			{
				for(var i15:int = 0; i15<bombsPushed.length; i15++)
				{
					bombsPushed[i15].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checki15o9 == false)
			{
				i15o9Btn.visible = false;
			if (i15o9.currentFrame == 1)
				{
					i15o9.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "j15o10Btn":
			if (checkj15o10 == true)
			{
				for(var j15:int = 0; j15<bombsPushed.length; j15++)
				{
					bombsPushed[j15].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkj15o10 == false)
			{
				j15o10Btn.visible = false;
			if (j15o10.currentFrame == 1)
				{
					j15o10.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "k15o11Btn":
			if (checkk15o11 == true)
			{
				for(var k15:int = 0; k15<bombsPushed.length; k15++)
				{
					bombsPushed[k15].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkk15o11 == false)
			{
				k15o11Btn.visible = false;
			if (k15o11.currentFrame == 1)
				{
					k15o11.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "l15o12Btn":
			if (checkl15o12 == true)
			{
				for(var l15:int = 0; l15<bombsPushed.length; l15++)
				{
					bombsPushed[l15].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkl15o12 == false)
			{
				l15o12Btn.visible = false;
			if (l15o12.currentFrame == 1)
				{
					l15o12.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "m15o13Btn":
			if (checkm15o13 == true)
			{
				for(var m15:int = 0; m15<bombsPushed.length; m15++)
				{
					bombsPushed[m15].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkm15o13 == false)
			{
				m15o13Btn.visible = false;
			if (m15o13.currentFrame == 1)
				{
					m15o13.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "n15o14Btn":
			if (checkn15o14 == true)
			{
				for(var n15:int = 0; n15<bombsPushed.length; n15++)
				{
					bombsPushed[n15].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkn15o14 == false)
			{
				n15o14Btn.visible = false;
			if (n15o14.currentFrame == 1)
				{
					n15o14.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "o15o15Btn":
			if (checko15o15 == true)
			{
				for(var o15:int = 0; o15<bombsPushed.length; o15++)
				{
					bombsPushed[o15].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checko15o15 == false)
			{
				o15o15Btn.visible = false;
			if (o15o15.currentFrame == 1)
				{
					o15o15.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		 
		case "p15o16Btn":
			if (checkp15o16 == true)
			{
				for(var p15:int = 0; p15<bombsPushed.length; p15++)
				{
					bombsPushed[p15].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkp15o16 == false)
			{
				p15o16Btn.visible = false;
			if (p15o16.currentFrame == 1)
				{
					p15o16.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "q15o17Btn":
			if (checkq15o17 == true)
			{
				for(var q15:int = 0; q15<bombsPushed.length; q15++)
				{
					bombsPushed[q15].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkq15o17 == false)
			{
				q15o17Btn.visible = false;
			if (q15o17.currentFrame == 1)
				{
					q15o17.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "r15o18Btn":
			if (checkr15o18 == true)
			{
				for(var r15:int = 0; r15<bombsPushed.length; r15++)
				{
					bombsPushed[r15].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkr15o18 == false)
			{
				r15o18Btn.visible = false;
			if (r15o18.currentFrame == 1)
				{
					r15o18.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		//row 16
		case "a16p1Btn":
			if (checka16p1 == true)
			{
				for(var a16:int = 0; a16<bombsPushed.length; a16++)
				{
					bombsPushed[a16].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checka16p1 == false)
			{
				a16p1Btn.visible = false;
			if (a16p1.currentFrame == 1)
				{
					a16p1.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "b16p2Btn":
			if (checkb16p2 == true)
			{
				for(var b16:int = 0; b16<bombsPushed.length; b16++)
				{
					bombsPushed[b16].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkb16p2 == false)
			{
				b16p2Btn.visible = false;
			if (b16p2.currentFrame == 1)
				{
					b16p2.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "c16p3Btn":
			if (checkc16p3 == true)
			{
				for(var c16:int = 0; c16<bombsPushed.length; c16++)
				{
					bombsPushed[c16].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkc16p3 == false)
			{
				c16p3Btn.visible = false;
			if (c16p3.currentFrame == 1)
				{
					c16p3.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "d16p4Btn":
			if (checkd16p4 == true)
			{
				for(var d16:int = 0; d16<bombsPushed.length; d16++)
				{
					bombsPushed[d16].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkd16p4 == false)
			{
				d16p4Btn.visible = false;
			if (d16p4.currentFrame == 1)
				{
					d16p4.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "e16p5Btn":
			if (checke16p5 == true)
			{
				for(var e16:int = 0; e16<bombsPushed.length; e16++)
				{
					bombsPushed[e16].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checke16p5 == false)
			{
				e16p5Btn.visible = false;
			if (e16p5.currentFrame == 1)
				{
					e16p5.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "f16p6Btn":
			if (checkf16p6 == true)
			{
				for(var f16:int = 0; f16<bombsPushed.length; f16++)
				{
					bombsPushed[f16].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkf16p6 == false)
			{
				f16p6Btn.visible = false;
			if (f16p6.currentFrame == 1)
				{
					f16p6.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "g16p7Btn":
			if (checkg16p7 == true)
			{
				for(var g16:int = 0; g16<bombsPushed.length; g16++)
				{
					bombsPushed[g16].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkg16p7 == false)
			{
				g16p7Btn.visible = false;
			if (g16p7.currentFrame == 1)
				{
					g16p7.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "h16p8Btn":
			if (checkh16p8 == true)
			{
				for(var h16:int = 0; h16<bombsPushed.length; h16++)
				{
					bombsPushed[h16].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkh16p8 == false)
			{
				h16p8Btn.visible = false;
			if (h16p8.currentFrame == 1)
				{
					h16p8.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		 
		case "i16p9Btn":
			if (checki16p9 == true)
			{
				for(var i16:int = 0; i16<bombsPushed.length; i16++)
				{
					bombsPushed[i16].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checki16p9 == false)
			{
				i16p9Btn.visible = false;
			if (i16p9.currentFrame == 1)
				{
					i16p9.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "j16p10Btn":
			if (checkj16p10 == true)
			{
				for(var j16:int = 0; j16<bombsPushed.length; j16++)
				{
					bombsPushed[j16].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkj16p10 == false)
			{
				j16p10Btn.visible = false;
			if (j16p10.currentFrame == 1)
				{
					j16p10.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "k16p11Btn":
			if (checkk16p11 == true)
			{
				for(var k16:int = 0; k16<bombsPushed.length; k16++)
				{
					bombsPushed[k16].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkk16p11 == false)
			{
				k16p11Btn.visible = false;
			if (k16p11.currentFrame == 1)
				{
					k16p11.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "l16p12Btn":
			if (checkl16p12 == true)
			{
				for(var l16:int = 0; l16<bombsPushed.length; l16++)
				{
					bombsPushed[l16].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkl16p12 == false)
			{
				l16p12Btn.visible = false;
			if (l16p12.currentFrame == 1)
				{
					l16p12.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "m16p13Btn":
			if (checkm16p13 == true)
			{
				for(var m16:int = 0; m16<bombsPushed.length; m16++)
				{
					bombsPushed[m16].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkm16p13 == false)
			{
				m16p13Btn.visible = false;
			if (m16p13.currentFrame == 1)
				{
					m16p13.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "n16p14Btn":
			if (checkn16p14 == true)
			{
				for(var n16:int = 0; n16<bombsPushed.length; n16++)
				{
					bombsPushed[n16].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkn16p14 == false)
			{
				n16p14Btn.visible = false;
			if (n16p14.currentFrame == 1)
				{
					n16p14.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "o16p15Btn":
			if (checko16p15 == true)
			{
				for(var o16:int = 0; o16<bombsPushed.length; o16++)
				{
					bombsPushed[o16].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checko16p15 == false)
			{
				o16p15Btn.visible = false;
			if (o16p15.currentFrame == 1)
				{
					o16p15.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "p16p16Btn":
			if (checkp16p16 == true)
			{
				for(var p16:int = 0; p16<bombsPushed.length; p16++)
				{
					bombsPushed[p16].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkp16p16 == false)
			{
				p16p16Btn.visible = false;
			if (p16p16.currentFrame == 1)
				{
					p16p16.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "q16p17Btn":
			if (checkq16p17 == true)
			{
				for(var q16:int = 0; q16<bombsPushed.length; q16++)
				{
					bombsPushed[q16].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkq16p17 == false)
			{
				q16p17Btn.visible = false;
			if (q16p17.currentFrame == 1)
				{
					q16p17.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "r16p18Btn":
			if (checkr16p18 == true)
			{
				for(var r16:int = 0; r16<bombsPushed.length; r16++)
				{
					bombsPushed[r16].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkr16p18 == false)
			{
				r16p18Btn.visible = false;
			if (r16p18.currentFrame == 1)
				{
					r16p18.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		//row 17
		case "a17q1Btn":
			if (checka17q1 == true)
			{
				for(var a17:int = 0; a17<bombsPushed.length; a17++)
				{
					bombsPushed[a17].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checka17q1 == false)
			{
				a17q1Btn.visible = false;
			if (a17q1.currentFrame == 1)
				{
					a17q1.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "b17q2Btn":
			if (checkb17q2 == true)
			{
				for(var b17:int = 0; b17<bombsPushed.length; b17++)
				{
					bombsPushed[b17].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkb17q2 == false)
			{
				b17q2Btn.visible = false;
			if (b17q2.currentFrame == 1)
				{
					b17q2.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "c17q3Btn":
			if (checkc17q3 == true)
			{
				for(var c17:int = 0; c17<bombsPushed.length; c17++)
				{
					bombsPushed[c17].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkc17q3 == false)
			{
				c17q3Btn.visible = false;
			if (c17q3.currentFrame == 1)
				{
					c17q3.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "d17q4Btn":
			if (checkd17q4 == true)
			{
				for(var d17:int = 0; d17<bombsPushed.length; d17++)
				{
					bombsPushed[d17].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkd17q4 == false)
			{
				d17q4Btn.visible = false;
			if (d17q4.currentFrame == 1)
				{
					d17q4.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "e17q5Btn":
			if (checke17q5 == true)
			{
				for(var e17:int = 0; e17<bombsPushed.length; e17++)
				{
					bombsPushed[e17].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checke17q5 == false)
			{
				e17q5Btn.visible = false;
			if (e17q5.currentFrame == 1)
				{
					e17q5.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "f17q6Btn":
			if (checkf17q6 == true)
			{
				for(var f17:int = 0; f17<bombsPushed.length; f17++)
				{
					bombsPushed[f17].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkf17q6 == false)
			{
				f17q6Btn.visible = false;
			if (f17q6.currentFrame == 1)
				{
					f17q6.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		 
		case "g17q7Btn":
			if (checkg17q7 == true)
			{
				for(var g17:int = 0; g17<bombsPushed.length; g17++)
				{
					bombsPushed[g17].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkg17q7 == false)
			{
				g17q7Btn.visible = false;
			if (g17q7.currentFrame == 1)
				{
					g17q7.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "h17q8Btn":
			if (checkh17q8 == true)
			{
				for(var h17:int = 0; h17<bombsPushed.length; h17++)
				{
					bombsPushed[h17].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkh17q8 == false)
			{
				h17q8Btn.visible = false;
			if (h17q8.currentFrame == 1)
				{
					h17q8.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "i17q9Btn":
			if (checki17q9 == true)
			{
				for(var i17:int = 0; i17<bombsPushed.length; i17++)
				{
					bombsPushed[i17].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checki17q9 == false)
			{
				i17q9Btn.visible = false;
			if (i17q9.currentFrame == 1)
				{
					i17q9.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "j17q10Btn":
			if (checkj17q10 == true)
			{
				for(var j17:int = 0; j17<bombsPushed.length; j17++)
				{
					bombsPushed[j17].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkj17q10 == false)
			{
				j17q10Btn.visible = false;
			if (j17q10.currentFrame == 1)
				{
					j17q10.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "k17q11Btn":
			if (checkk17q11 == true)
			{
				for(var k17:int = 0; k17<bombsPushed.length; k17++)
				{
					bombsPushed[k17].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkk17q11 == false)
			{
				k17q11Btn.visible = false;
			if (k17q11.currentFrame == 1)
				{
					k17q11.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		 
		case "l17q12Btn":
			if (checkl17q12 == true)
			{
				for(var l17:int = 0; l17<bombsPushed.length; l17++)
				{
					bombsPushed[l17].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkl17q12 == false)
			{
				l17q12Btn.visible = false;
			if (l17q12.currentFrame == 1)
				{
					l17q12.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "m17q13Btn":
			if (checkm17q13 == true)
			{
				for(var m17:int = 0; m17<bombsPushed.length; m17++)
				{
					bombsPushed[m17].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkm17q13 == false)
			{
				m17q13Btn.visible = false;
			if (m17q13.currentFrame == 1)
				{
					m17q13.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		 
		case "n17q14Btn":
			if (checkn17q14 == true)
			{
				for(var n17:int = 0; n17<bombsPushed.length; n17++)
				{
					bombsPushed[n17].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkn17q14 == false)
			{
				n17q14Btn.visible = false;
			if (n17q14.currentFrame == 1)
				{
					n17q14.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "o17q15Btn":
			if (checko17q15 == true)
			{
				for(var o17:int = 0; o17<bombsPushed.length; o17++)
				{
					bombsPushed[o17].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checko17q15 == false)
			{
				o17q15Btn.visible = false;
			if (o17q15.currentFrame == 1)
				{
					o17q15.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "p17q16Btn":
			if (checkp17q16 == true)
			{
				for(var p17:int = 0; p17<bombsPushed.length; p17++)
				{
					bombsPushed[p17].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkp17q16 == false)
			{
				p17q16Btn.visible = false;
			if (p17q16.currentFrame == 1)
				{
					p17q16.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "q17q17Btn":
			if (checkq17q17 == true)
			{
				for(var q17:int = 0; q17<bombsPushed.length; q17++)
				{
					bombsPushed[q17].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkq17q17 == false)
			{
				q17q17Btn.visible = false;
			if (q17q17.currentFrame == 1)
				{
					q17q17.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "r17q18Btn":
			if (checkr17q18 == true)
			{
				for(var r17:int = 0; r17<bombsPushed.length; r17++)
				{
					bombsPushed[r17].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkr17q18 == false)
			{
				r17q18Btn.visible = false;
			if (r17q18.currentFrame == 1)
				{
					r17q18.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		//row 18
		case "a18r1Btn":
			if (checka18r1 == true)
			{
				for(var a18:int = 0; a18<bombsPushed.length; a18++)
				{
					bombsPushed[a18].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checka18r1 == false)
			{
				a18r1Btn.visible = false;
			if (a18r1.currentFrame == 1)
				{
					a18r1.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "b18r2Btn":
			if (checkb18r2 == true)
			{
				for(var b18:int = 0; b18<bombsPushed.length; b18++)
				{
					bombsPushed[b18].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkb18r2 == false)
			{
				b18r2Btn.visible = false;
			if (b18r2.currentFrame == 1)
				{
					b18r2.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "c18r3Btn":
			if (checkc18r3 == true)
			{
				for(var c18:int = 0; c18<bombsPushed.length; c18++)
				{
					bombsPushed[c18].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkc18r3 == false)
			{
				c18r3Btn.visible = false;
			if (c18r3.currentFrame == 1)
				{
					c18r3.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "d18r4Btn":
			if (checkd18r4 == true)
			{
				for(var d18:int = 0; d18<bombsPushed.length; d18++)
				{
					bombsPushed[d18].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkd18r4 == false)
			{
				d18r4Btn.visible = false;
			if (d18r4.currentFrame == 1)
				{
					d18r4.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "e18r5Btn":
			if (checke18r5 == true)
			{
				for(var e18:int = 0; e18<bombsPushed.length; e18++)
				{
					bombsPushed[e18].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checke18r5 == false)
			{
				e18r5Btn.visible = false;
			if (e18r5.currentFrame == 1)
				{
					e18r5.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "f18r6Btn":
			if (checkf18r6 == true)
			{
				for(var f18:int = 0; f18<bombsPushed.length; f18++)
				{
					bombsPushed[f18].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkf18r6 == false)
			{
				f18r6Btn.visible = false;
			if (f18r6.currentFrame == 1)
				{
					f18r6.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "g18r7Btn":
			if (checkg18r7 == true)
			{
				for(var g18:int = 0; g18<bombsPushed.length; g18++)
				{
					bombsPushed[g18].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkg18r7 == false)
			{
				g18r7Btn.visible = false;
			if (g18r7.currentFrame == 1)
				{
					g18r7.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "h18r8Btn":
			if (checkh18r8 == true)
			{
				for(var h18:int = 0; h18<bombsPushed.length; h18++)
				{
					bombsPushed[h18].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkh18r8 == false)
			{
				h18r8Btn.visible = false;
			if (h18r8.currentFrame == 1)
				{
					h18r8.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "i18r9Btn":
			if (checki18r9 == true)
			{
				for(var i18:int = 0; i18<bombsPushed.length; i18++)
				{
					bombsPushed[i18].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checki18r9 == false)
			{
				i18r9Btn.visible = false;
			if (i18r9.currentFrame == 1)
				{
					i18r9.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "j18r10Btn":
			if (checkj18r10 == true)
			{
				for(var j18:int = 0; j18<bombsPushed.length; j18++)
				{
					bombsPushed[j18].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkj18r10 == false)
			{
				j18r10Btn.visible = false;
			if (j18r10.currentFrame == 1)
				{
					j18r10.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "k18r11Btn":
			if (checkk18r11 == true)
			{
				for(var k18:int = 0; k18<bombsPushed.length; k18++)
				{
					bombsPushed[k18].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkk18r11 == false)
			{
				k18r11Btn.visible = false;
			if (k18r11.currentFrame == 1)
				{
					k18r11.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "l18r12Btn":
			if (checkl18r12 == true)
			{
				for(var l18:int = 0; l18<bombsPushed.length; l18++)
				{
					bombsPushed[l18].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkl18r12 == false)
			{
				l18r12Btn.visible = false;
			if (l18r12.currentFrame == 1)
				{
					l18r12.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "m18r13Btn":
			if (checkm18r13 == true)
			{
				for(var m18:int = 0; m18<bombsPushed.length; m18++)
				{
					bombsPushed[m18].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkm18r13 == false)
			{
				m18r13Btn.visible = false;
			if (m18r13.currentFrame == 1)
				{
					m18r13.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "n18r14Btn":
			if (checkn18r14 == true)
			{
				for(var n18:int = 0; n18<bombsPushed.length; n18++)
				{
					bombsPushed[n18].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkn18r14 == false)
			{
				n18r14Btn.visible = false;
			if (n18r14.currentFrame == 1)
				{
					n18r14.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "o18r15Btn":
			if (checko18r15 == true)
			{
				for(var o18:int = 0; o18<bombsPushed.length; o18++)
				{
					bombsPushed[o18].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checko18r15 == false)
			{
				o18r15Btn.visible = false;
			if (o18r15.currentFrame == 1)
				{
					o18r15.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "p18r16Btn":
			if (checkp18r16 == true)
			{
				for(var p18:int = 0; p18<bombsPushed.length; p18++)
				{
					bombsPushed[p18].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkp18r16 == false)
			{
				p18r16Btn.visible = false;
			if (p18r16.currentFrame == 1)
				{
					p18r16.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "q18r17Btn":
			if (checkq18r17 == true)
			{
				for(var q18:int = 0; q18<bombsPushed.length; q18++)
				{
					bombsPushed[q18].alpha = 1; stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkq18r17 == false)
			{
				q18r17Btn.visible = false;
			if (q18r17.currentFrame == 1)
				{
					q18r17.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
		
		case "r18r18Btn":
			if (checkr18r18 == true)
			{
				for(var r18:int = 0; r18<bombsPushed.length; r18++)
				{
					bombsPushed[r18].alpha = 1;
					 stage.addEventListener(Event.ENTER_FRAME, loseBoom);
				}
			} else if (checkr18r18 == false)
			{
				r18r18Btn.visible = false;
			if (r18r18.currentFrame == 1)
				{
					r18r18.addEventListener(Event.ENTER_FRAME, checkSpaces);
				}
			}
	 	break;
	}
}