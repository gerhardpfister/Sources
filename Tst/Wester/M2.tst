LIB "tst.lib"; tst_init();

ring R = 0, (x1, x2, x3, x4, x5, x6, x7, x8, x9, x10), lp;
matrix w[101][21];
w =     1,  1, 1, 12, x9, 22, x8, 32, x7, 42, x6, 52, x5, 62, x4, 72, x3, 82, x2, 92, x1 ,
           2,  2, 1, 13, x9, 23, x8, 33, x7, 43, x6, 53, x5, 63, x4, 73, x3, 83, x2, 93, x1 ,
           3,  3, 1, 14, x9, 24, x8, 34, x7, 44, x6, 54, x5, 64, x4, 74, x3, 84, x2, 94, x1 ,
           4,  4, 1, 15, x9, 25, x8, 35, x7, 45, x6, 55, x5, 65, x4, 75, x3, 85, x2, 95, x1 ,
           5,  5, 1, 16, x9, 26, x8, 36, x7, 46, x6, 56, x5, 66, x4, 76, x3, 86, x2, 96, x1 ,
           6,  6, 1, 17, x9, 27, x8, 37, x7, 47, x6, 57, x5, 67, x4, 77, x3, 87, x2, 97, x1 ,
           7,  7, 1, 18, x9, 28, x8, 38, x7, 48, x6, 58, x5, 68, x4, 78, x3, 88, x2, 98, x1 ,
           8,  8, 1, 19, x9, 29, x8, 39, x7, 49, x6, 59, x5, 69, x4, 79, x3, 89, x2, 99, x1 ,
           9,  9, 1, 20, x9, 30, x8, 40, x7, 50, x6, 60, x5, 70, x4, 80, x3, 90, x2, 100, x1 ,
          10, 10, 1, 101, 1, 1,0, 1,0, 1,0, 1,0, 1,0, 1,0, 1,0, 1,0  ,
          11,  2, x10, 11, 1, 22, x8, 32, x7, 42, x6, 52, x5, 62, x4, 72, x3, 82, x2, 92, x1 ,
          12,  3, x10, 12, 1, 23, x8, 33, x7, 43, x6, 53, x5, 63, x4, 73, x3, 83, x2, 93, x1 ,
          13,  4, x10, 13, 1, 24, x8, 34, x7, 44, x6, 54, x5, 64, x4, 74, x3, 84, x2, 94, x1 ,
          14,  5, x10, 14, 1, 25, x8, 35, x7, 45, x6, 55, x5, 65, x4, 75, x3, 85, x2, 95, x1 ,
          15,  6, x10, 15, 1, 26, x8, 36, x7, 46, x6, 56, x5, 66, x4, 76, x3, 86, x2, 96, x1 ,
          16,  7, x10, 16, 1, 27, x8, 37, x7, 47, x6, 57, x5, 67, x4, 77, x3, 87, x2, 97, x1 ,
          17,  8, x10, 17, 1, 28, x8, 38, x7, 48, x6, 58, x5, 68, x4, 78, x3, 88, x2, 98, x1 ,
          18,  9, x10, 18, 1, 29, x8, 39, x7, 49, x6, 59, x5, 69, x4, 79, x3, 89, x2, 99, x1 ,
          19, 10, x10, 19, 1, 30, x8, 40, x7, 50, x6, 60, x5, 70, x4, 80, x3, 90, x2, 100, x1 ,
          20, 20, 1, 101, 1, 1,0, 1,0, 1,0, 1,0, 1,0, 1,0, 1,0, 1,0  ,
          21,  2, x10, 12, x9, 21, 1, 32, x7, 42, x6, 52, x5, 62, x4, 72, x3, 82, x2, 92, x1 ,
          22,  3, x10, 13, x9, 22, 1, 33, x7, 43, x6, 53, x5, 63, x4, 73, x3, 83, x2, 93, x1 ,
          23,  4, x10, 14, x9, 23, 1, 34, x7, 44, x6, 54, x5, 64, x4, 74, x3, 84, x2, 94, x1 ,
          24,  5, x10, 15, x9, 24, 1, 35, x7, 45, x6, 55, x5, 65, x4, 75, x3, 85, x2, 95, x1 ,
          25,  6, x10, 16, x9, 25, 1, 36, x7, 46, x6, 56, x5, 66, x4, 76, x3, 86, x2, 96, x1 ,
          26,  7, x10, 17, x9, 26, 1, 37, x7, 47, x6, 57, x5, 67, x4, 77, x3, 87, x2, 97, x1 ,
          27,  8, x10, 18, x9, 27, 1, 38, x7, 48, x6, 58, x5, 68, x4, 78, x3, 88, x2, 98, x1 ,
          28,  9, x10, 19, x9, 28, 1, 39, x7, 49, x6, 59, x5, 69, x4, 79, x3, 89, x2, 99, x1 ,
          29, 10, x10, 20, x9, 29, 1, 40, x7, 50, x6, 60, x5, 70, x4, 80, x3, 90, x2, 100, x1 ,
          30, 30, 1, 101, 1, 1,0, 1,0, 1,0, 1,0, 1,0, 1,0, 1,0, 1,0  ,
          31,  2, x10, 12, x9, 22, x8, 31, 1, 42, x6, 52, x5, 62, x4, 72, x3, 82, x2, 92, x1 ,
          32,  3, x10, 13, x9, 23, x8, 32, 1, 43, x6, 53, x5, 63, x4, 73, x3, 83, x2, 93, x1 ,
          33,  4, x10, 14, x9, 24, x8, 33, 1, 44, x6, 54, x5, 64, x4, 74, x3, 84, x2, 94, x1 ,
          34,  5, x10, 15, x9, 25, x8, 34, 1, 45, x6, 55, x5, 65, x4, 75, x3, 85, x2, 95, x1 ,
          35,  6, x10, 16, x9, 26, x8, 35, 1, 46, x6, 56, x5, 66, x4, 76, x3, 86, x2, 96, x1 ,
          36,  7, x10, 17, x9, 27, x8, 36, 1, 47, x6, 57, x5, 67, x4, 77, x3, 87, x2, 97, x1 ,
          37,  8, x10, 18, x9, 28, x8, 37, 1, 48, x6, 58, x5, 68, x4, 78, x3, 88, x2, 98, x1 ,
          38,  9, x10, 19, x9, 29, x8, 38, 1, 49, x6, 59, x5, 69, x4, 79, x3, 89, x2, 99, x1 ,
          39, 10, x10, 20, x9, 30, x8, 39, 1, 50, x6, 60, x5, 70, x4, 80, x3, 90, x2, 100, x1 ,
          40, 40, 1, 101, 1, 1,0, 1,0, 1,0, 1,0, 1,0, 1,0, 1,0, 1,0  ,
          41,  2, x10, 12, x9, 22, x8, 32, x7, 41, 1, 52, x5, 62, x4, 72, x3, 82, x2, 92, x1 ,
          42,  3, x10, 13, x9, 23, x8, 33, x7, 42, 1, 53, x5, 63, x4, 73, x3, 83, x2, 93, x1 ,
          43,  4, x10, 14, x9, 24, x8, 34, x7, 43, 1, 54, x5, 64, x4, 74, x3, 84, x2, 94, x1 ,
          44,  5, x10, 15, x9, 25, x8, 35, x7, 44, 1, 55, x5, 65, x4, 75, x3, 85, x2, 95, x1 ,
          45,  6, x10, 16, x9, 26, x8, 36, x7, 45, 1, 56, x5, 66, x4, 76, x3, 86, x2, 96, x1 ,
          46,  7, x10, 17, x9, 27, x8, 37, x7, 46, 1, 57, x5, 67, x4, 77, x3, 87, x2, 97, x1 ,
          47,  8, x10, 18, x9, 28, x8, 38, x7, 47, 1, 58, x5, 68, x4, 78, x3, 88, x2, 98, x1 ,
          48,  9, x10, 19, x9, 29, x8, 39, x7, 48, 1, 59, x5, 69, x4, 79, x3, 89, x2, 99, x1 ,
          49, 10, x10, 20, x9, 30, x8, 40, x7, 49, 1, 60, x5, 70, x4, 80, x3, 90, x2, 100, x1 ,
          50, 50, 1, 101, 1, 1,0, 1,0, 1,0, 1,0, 1,0, 1,0, 1,0, 1,0  ,
          51,  2, x10, 12, x9, 22, x8, 32, x7, 42, x6, 51, 1, 62, x4, 72, x3, 82, x2, 92, x1 ,
          52,  3, x10, 13, x9, 23, x8, 33, x7, 43, x6, 52, 1, 63, x4, 73, x3, 83, x2, 93, x1 ,
          53,  4, x10, 14, x9, 24, x8, 34, x7, 44, x6, 53, 1, 64, x4, 74, x3, 84, x2, 94, x1 ,
          54,  5, x10, 15, x9, 25, x8, 35, x7, 45, x6, 54, 1, 65, x4, 75, x3, 85, x2, 95, x1 ,
          55,  6, x10, 16, x9, 26, x8, 36, x7, 46, x6, 55, 1, 66, x4, 76, x3, 86, x2, 96, x1 ,
          56,  7, x10, 17, x9, 27, x8, 37, x7, 47, x6, 56, 1, 67, x4, 77, x3, 87, x2, 97, x1 ,
          57,  8, x10, 18, x9, 28, x8, 38, x7, 48, x6, 57, 1, 68, x4, 78, x3, 88, x2, 98, x1 ,
          58,  9, x10, 19, x9, 29, x8, 39, x7, 49, x6, 58, 1, 69, x4, 79, x3, 89, x2, 99, x1 ,
          59, 10, x10, 20, x9, 30, x8, 40, x7, 50, x6, 59, 1, 70, x4, 80, x3, 90, x2, 100, x1 ,
          60, 60, 1, 101, 1, 1,0, 1,0, 1,0, 1,0, 1,0, 1,0, 1,0, 1,0  ,
          61,  2, x10, 12, x9, 22, x8, 32, x7, 42, x6, 52, x5, 61,   1, 72, x3, 82, x2, 92, x1 ,
          62,  3, x10, 13, x9, 23, x8, 33, x7, 43, x6, 53, x5, 62,   1, 73, x3, 83, x2, 93, x1 ,
          63,  4, x10, 14, x9, 24, x8, 34, x7, 44, x6, 54, x5, 63,   1, 74, x3, 84, x2, 94, x1 ,
          64,  5, x10, 15, x9, 25, x8, 35, x7, 45, x6, 55, x5, 64,   1, 75, x3, 85, x2, 95, x1 ,
          65,  6, x10, 16, x9, 26, x8, 36, x7, 46, x6, 56, x5, 65,   1, 76, x3, 86, x2, 96, x1 ,
          66,  7, x10, 17, x9, 27, x8, 37, x7, 47, x6, 57, x5, 66,   1, 77, x3, 87, x2, 97, x1 ,
          67,  8, x10, 18, x9, 28, x8, 38, x7, 48, x6, 58, x5, 67,   1, 78, x3, 88, x2, 98, x1 ,
          68,  9, x10, 19, x9, 29, x8, 39, x7, 49, x6, 59, x5, 68,   1, 79, x3, 89, x2, 99, x1 ,
          69, 10, x10, 20, x9, 30, x8, 40, x7, 50, x6, 60, x5, 69,   1, 80, x3, 90, x2, 100, x1 ,
          70, 70, 1, 101, 1, 1,0, 1,0, 1,0, 1,0, 1,0, 1,0, 1,0, 1,0  ,
          71,  2, x10, 12, x9, 22, x8, 32, x7, 42, x6, 52, x5, 62, x4, 71,   1, 82, x2, 92, x1 ,
          72,  3, x10, 13, x9, 23, x8, 33, x7, 43, x6, 53, x5, 63, x4, 72,   1, 83, x2, 93, x1 ,
          73,  4, x10, 14, x9, 24, x8, 34, x7, 44, x6, 54, x5, 64, x4, 73,   1, 84, x2, 94, x1 ,
          74,  5, x10, 15, x9, 25, x8, 35, x7, 45, x6, 55, x5, 65, x4, 74,   1, 85, x2, 95, x1 ,
          75,  6, x10, 16, x9, 26, x8, 36, x7, 46, x6, 56, x5, 66, x4, 75,   1, 86, x2, 96, x1 ,
          76,  7, x10, 17, x9, 27, x8, 37, x7, 47, x6, 57, x5, 67, x4, 76,   1, 87, x2, 97, x1 ,
          77,  8, x10, 18, x9, 28, x8, 38, x7, 48, x6, 58, x5, 68, x4, 77,   1, 88, x2, 98, x1 ,
          78,  9, x10, 19, x9, 29, x8, 39, x7, 49, x6, 59, x5, 69, x4, 78,   1, 89, x2, 99, x1 ,
          79, 10, x10, 20, x9, 30, x8, 40, x7, 50, x6, 60, x5, 70, x4, 79,   1, 90, x2, 100, x1 ,
          80, 80, 1, 101, 1, 1,0, 1,0, 1,0, 1,0, 1,0, 1,0, 1,0, 1,0  ,
          81,  2, x10, 12, x9, 22, x8, 32, x7, 42, x6, 52, x5, 62, x4, 72, x3, 81,   1, 92, x1 ,
          82,  3, x10, 13, x9, 23, x8, 33, x7, 43, x6, 53, x5, 63, x4, 73, x3, 82,   1, 93, x1 ,
          83,  4, x10, 14, x9, 24, x8, 34, x7, 44, x6, 54, x5, 64, x4, 74, x3, 83,   1, 94, x1 ,
          84,  5, x10, 15, x9, 25, x8, 35, x7, 45, x6, 55, x5, 65, x4, 75, x3, 84,   1, 95, x1 ,
          85,  6, x10, 16, x9, 26, x8, 36, x7, 46, x6, 56, x5, 66, x4, 76, x3, 85,   1, 96, x1 ,
          86,  7, x10, 17, x9, 27, x8, 37, x7, 47, x6, 57, x5, 67, x4, 77, x3, 86,   1, 97, x1 ,
          87,  8, x10, 18, x9, 28, x8, 38, x7, 48, x6, 58, x5, 68, x4, 78, x3, 87,   1, 98, x1 ,
          88,  9, x10, 19, x9, 29, x8, 39, x7, 49, x6, 59, x5, 69, x4, 79, x3, 88,   1, 99, x1 ,
          89, 10, x10, 20, x9, 30, x8, 40, x7, 50, x6, 60, x5, 70, x4, 80, x3, 89,   1, 100, x1 ,
          90, 90, 1, 101, 1, 1,0, 1,0, 1,0, 1,0, 1,0, 1,0, 1,0, 1,0  ,
          91,  2, x10, 12, x9, 22, x8, 32, x7, 42, x6, 52, x5, 62, x4, 72, x3, 82, x2, 91,   1 ,
          92,  3, x10, 13, x9, 23, x8, 33, x7, 43, x6, 53, x5, 63, x4, 73, x3, 83, x2, 92,   1 ,
          93,  4, x10, 14, x9, 24, x8, 34, x7, 44, x6, 54, x5, 64, x4, 74, x3, 84, x2, 93,   1 ,
          94,  5, x10, 15, x9, 25, x8, 35, x7, 45, x6, 55, x5, 65, x4, 75, x3, 85, x2, 94,   1 ,
          95,  6, x10, 16, x9, 26, x8, 36, x7, 46, x6, 56, x5, 66, x4, 76, x3, 86, x2, 95,   1 ,
          96,  7, x10, 17, x9, 27, x8, 37, x7, 47, x6, 57, x5, 67, x4, 77, x3, 87, x2, 96,   1 ,
          97,  8, x10, 18, x9, 28, x8, 38, x7, 48, x6, 58, x5, 68, x4, 78, x3, 88, x2, 97,   1 ,
          98,  9, x10, 19, x9, 29, x8, 39, x7, 49, x6, 59, x5, 69, x4, 79, x3, 89, x2, 98,   1 ,
          99, 10, x10, 20, x9, 30, x8, 40, x7, 50, x6, 60, x5, 70, x4, 80, x3, 90, x2, 99,   1 ,
          100, 100, 1, 101, 1, 1,0, 1,0, 1,0, 1,0, 1,0, 1,0, 1,0, 1,0  ,
          101,  1, x10, 11, x9, 21, x8, 31, x7, 41, x6, 51, x5, 61, x4, 71, x3, 81, x2, 91, x1;

matrix m[101][101];
int i, j;
for (i = 1; i <= 101; i++)
   {
   for (j = 1; j <= 10; j++)
      {
      m[i, int(w[i, 2*j])] = w[i, 2*j+1];
      }
   }
tst_InitTimer();

poly result = det(m);

tst_ReportTimer("M2");

size(result);
lead(result);

map check = R, 2..nvars(R)+1;

det(check(m)) == check(result);

kill R, i, j;

tst_status(1); $

