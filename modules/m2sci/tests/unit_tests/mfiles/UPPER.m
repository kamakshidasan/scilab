% Test file for function upper()
% Matlab version: 7.9.0.529 (R2009b)

% TEST 1
res1 = upper([]);
% TEST 2
res2 = upper(m2sciUnknownType([]));
% TEST 3
res3 = upper(m2sciUnknownDims([]));
% TEST 4
res4 = upper([1]);
% TEST 5
res5 = upper([1,2,3]);
% TEST 6
res6 = upper([1;2;3]);
% TEST 7
res7 = upper([1,2,3;4,5,6]);
% TEST 8
res8 = upper(m2sciUnknownType([1]));
% TEST 9
res9 = upper(m2sciUnknownType([1,2,3]));
% TEST 10
res10 = upper(m2sciUnknownType([1;2;3]));
% TEST 11
res11 = upper(m2sciUnknownType([1,2,3;4,5,6]));
% TEST 12
res12 = upper(m2sciUnknownDims([1]));
% TEST 13
res13 = upper(m2sciUnknownDims([1,2,3]));
% TEST 14
res14 = upper(m2sciUnknownDims([1;2;3]));
% TEST 15
res15 = upper(m2sciUnknownDims([1,2,3;4,5,6]));
% TEST 16
res16 = upper([i]);
% TEST 17
res17 = upper([i,2i,3i]);
% TEST 18
res18 = upper([i;2i;3i]);
% TEST 19
res19 = upper([i,2i,3i;4i,5i,6i]);
% TEST 20
res20 = upper(m2sciUnknownType([i]));
% TEST 21
res21 = upper(m2sciUnknownType([i,2i,3i]));
% TEST 22
res22 = upper(m2sciUnknownType([i;2i;3i]));
% TEST 23
res23 = upper(m2sciUnknownType([i,2i,3i;4i,5i,6i]));
% TEST 24
res24 = upper(m2sciUnknownDims([i]));
% TEST 25
res25 = upper(m2sciUnknownDims([i,2i,3i]));
% TEST 26
res26 = upper(m2sciUnknownDims([i;2i;3i]));
% TEST 27
res27 = upper(m2sciUnknownDims([i,2i,3i;4i,5i,6i]));
% TEST 28
res28 = upper(['s']);
% TEST 29
res29 = upper(['str1']);
% TEST 30
res30 = upper(['str1','str2','str3']);
% TEST 31
res31 = upper(['str1';'str2';'str3']);
% TEST 32
res32 = upper(['str1','str2','str3';'str4','str5','str6']);
% TEST 33
res33 = upper(m2sciUnknownType(['s']));
% TEST 34
res34 = upper(m2sciUnknownType(['str1']));
% TEST 35
res35 = upper(m2sciUnknownType(['str1','str2','str3']));
% TEST 36
res36 = upper(m2sciUnknownType(['str1';'str2';'str3']));
% TEST 37
res37 = upper(m2sciUnknownType(['str1','str2','str3';'str4','str5','str6']));
% TEST 38
res38 = upper(m2sciUnknownDims(['s']));
% TEST 39
res39 = upper(m2sciUnknownDims(['str1']));
% TEST 40
res40 = upper(m2sciUnknownDims(['str1','str2','str3']));
% TEST 41
res41 = upper(m2sciUnknownDims(['str1';'str2';'str3']));
% TEST 42
res42 = upper(m2sciUnknownDims(['str1','str2','str3';'str4','str5','str6']));