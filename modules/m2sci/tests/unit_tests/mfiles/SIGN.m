% Test file for function sign()
% Matlab version: 7.9.0.529 (R2009b)

% TEST 1
res1 = sign([]);
% TEST 2
res2 = sign(m2sciUnknownType([]));
% TEST 3
res3 = sign(m2sciUnknownDims([]));
% TEST 4
res4 = sign([1]);
% TEST 5
res5 = sign([1,2,3]);
% TEST 6
res6 = sign([1;2;3]);
% TEST 7
res7 = sign([1,2,3;4,5,6]);
% TEST 8
res8 = sign(m2sciUnknownType([1]));
% TEST 9
res9 = sign(m2sciUnknownType([1,2,3]));
% TEST 10
res10 = sign(m2sciUnknownType([1;2;3]));
% TEST 11
res11 = sign(m2sciUnknownType([1,2,3;4,5,6]));
% TEST 12
res12 = sign(m2sciUnknownDims([1]));
% TEST 13
res13 = sign(m2sciUnknownDims([1,2,3]));
% TEST 14
res14 = sign(m2sciUnknownDims([1;2;3]));
% TEST 15
res15 = sign(m2sciUnknownDims([1,2,3;4,5,6]));
% TEST 16
res16 = sign([i]);
% TEST 17
res17 = sign([i,2i,3i]);
% TEST 18
res18 = sign([i;2i;3i]);
% TEST 19
res19 = sign([i,2i,3i;4i,5i,6i]);
% TEST 20
res20 = sign(m2sciUnknownType([i]));
% TEST 21
res21 = sign(m2sciUnknownType([i,2i,3i]));
% TEST 22
res22 = sign(m2sciUnknownType([i;2i;3i]));
% TEST 23
res23 = sign(m2sciUnknownType([i,2i,3i;4i,5i,6i]));
% TEST 24
res24 = sign(m2sciUnknownDims([i]));
% TEST 25
res25 = sign(m2sciUnknownDims([i,2i,3i]));
% TEST 26
res26 = sign(m2sciUnknownDims([i;2i;3i]));
% TEST 27
res27 = sign(m2sciUnknownDims([i,2i,3i;4i,5i,6i]));
% TEST 28
res28 = sign(['s']);
% TEST 29
res29 = sign(['str1']);
% TEST 30
res30 = sign(['str1','str2','str3']);
% TEST 31
res31 = sign(['str1';'str2';'str3']);
% TEST 32
res32 = sign(['str1','str2','str3';'str4','str5','str6']);
% TEST 33
res33 = sign(m2sciUnknownType(['s']));
% TEST 34
res34 = sign(m2sciUnknownType(['str1']));
% TEST 35
res35 = sign(m2sciUnknownType(['str1','str2','str3']));
% TEST 36
res36 = sign(m2sciUnknownType(['str1';'str2';'str3']));
% TEST 37
res37 = sign(m2sciUnknownType(['str1','str2','str3';'str4','str5','str6']));
% TEST 38
res38 = sign(m2sciUnknownDims(['s']));
% TEST 39
res39 = sign(m2sciUnknownDims(['str1']));
% TEST 40
res40 = sign(m2sciUnknownDims(['str1','str2','str3']));
% TEST 41
res41 = sign(m2sciUnknownDims(['str1';'str2';'str3']));
% TEST 42
res42 = sign(m2sciUnknownDims(['str1','str2','str3';'str4','str5','str6']));
% TEST 43
res43 = sign([1.1]);
% TEST 44
res44 = sign([1.1,2.2,3.3]);
% TEST 45
res45 = sign([1.1;2.2;3.3]);
% TEST 46
res46 = sign([1.1,2.2,3.3;4.4,5.5,6.6]);
% TEST 47
res47 = sign([1.1+1.1i]);
% TEST 48
res48 = sign([1.1+1.1i,2.2+2.2i,3.3+3.3i]);
% TEST 49
res49 = sign([1.1+1.1i;2.2+2.2i;3.3+3.3i]);
% TEST 50
res50 = sign([1.1+1.1i,2.2+2.2i,3.3+3.3i;4.4+4.4i,5.5+5.5i,6.6+6.6i]);
% TEST 51
res51 = sign(m2sciUnknownType([1.1]));
% TEST 52
res52 = sign(m2sciUnknownType([1.1,2.2,3.3]));
% TEST 53
res53 = sign(m2sciUnknownType([1.1;2.2;3.3]));
% TEST 54
res54 = sign(m2sciUnknownType([1.1,2.2,3.3;4.4,5.5,6.6]));
% TEST 55
res55 = sign(m2sciUnknownType([1.1+1.1i]));
% TEST 56
res56 = sign(m2sciUnknownType([1.1+1.1i,2.2+2.2i,3.3+3.3i]));
% TEST 57
res57 = sign(m2sciUnknownType([1.1+1.1i;2.2+2.2i;3.3+3.3i]));
% TEST 58
res58 = sign(m2sciUnknownType([1.1+1.1i,2.2+2.2i,3.3+3.3i;4.4+4.4i,5.5+5.5i,6.6+6.6i]));
% TEST 59
res59 = sign(m2sciUnknownDims([1.1]));
% TEST 60
res60 = sign(m2sciUnknownDims([1.1,2.2,3.3]));
% TEST 61
res61 = sign(m2sciUnknownDims([1.1;2.2;3.3]));
% TEST 62
res62 = sign(m2sciUnknownDims([1.1,2.2,3.3;4.4,5.5,6.6]));
% TEST 63
res63 = sign(m2sciUnknownDims([1.1+1.1i]));
% TEST 64
res64 = sign(m2sciUnknownDims([1.1+1.1i,2.2+2.2i,3.3+3.3i]));
% TEST 65
res65 = sign(m2sciUnknownDims([1.1+1.1i;2.2+2.2i;3.3+3.3i]));
% TEST 66
res66 = sign(m2sciUnknownDims([1.1+1.1i,2.2+2.2i,3.3+3.3i;4.4+4.4i,5.5+5.5i,6.6+6.6i]));
