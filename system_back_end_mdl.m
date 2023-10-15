Bus.con = [ ... 
  1  33  1  0  1  1;
  2  33  1  0  1  1;
  3  7  1  0  1  1;
  4  12  1  0  1  1;
  5  13  1  0  1  1;
  6  14  1  0  1  1;
  7  15  1  0  1  1;
  8  6.6  1  0  1  1;
  9  6.6  1  0  1  1;
  10  6.6  1  0  1  1;
  11  6.6  1  0  1  1;
 ];

Line.con = [ ... 
  1  3  40  33  50  0  4.71429  0.01  0.2  0  0  0  0  0  0  1;
  2  3  40  33  50  0  4.71429  0.01  0.2  0  0  0  0  0  0  1;
  4  1  40  11  50  0  0.55  0.01  0.2  0  0  0  0  0  0  1;
  5  1  40  11  50  0  0.55  0.01  0.2  0  0  0  0  0  0  1;
  6  2  40  11  50  0  0.55  0.01  0.2  0  0  0  0  0  0  1;
  7  2  40  11  50  0  0.55  0.01  0.2  0  0  0  0  0  0  1;
  3  10  40  6.6  50  0  0  0.01  0.1  0.001  0  0  0  0  0  1;
  3  8  40  6.6  50  0  0  0.01  0.1  0.001  0  0  0  0  0  1;
  3  9  40  6.6  50  0  0  0.01  0.1  0.001  0  0  0  0  0  1;
  3  11  40  6.6  50  0  0  0.01  0.1  0.001  0  0  0  0  0  1;
 ];

Breaker.con = [ ... 
  3  1  40  34.5  50  1  0  0  1  1;
  4  1  40  34.5  50  1  0  0  1  1;
  9  3  40  6.6  50  1  0  0  1  1;
  10  3  40  6.6  50  1  0  0  1  1;
  5  2  40  34.5  50  1  0  0  1  1;
  6  2  40  34.5  50  1  0  0  1  1;
  1  1  40  34.5  50  1  0  0  1  1;
  2  2  40  34.5  50  1  0  0  1  1;
  1  3  40  6.6  50  1  0  0  1  1;
  2  3  40  6.6  50  1  0  0  1  1;
  7  3  40  6.6  50  1  0  0  1  1;
  8  3  40  6.6  50  1  0  0  1  1;
 ];

SW.con = [ ... 
  1  40  33  1  0  1.5  -1.5  1.1  0.9  0.8  1  1  1;
 ];

Syn.con = [ ... 
  7  37.5  11  50  3  0.05  0.001  1.9  0.302  0.204  8  0.04  1.7  0.5  0.3  0.8  0.02  10  0  0  0  1  1  0.002  0  0  1  1;
  4  37.5  11  50  3  0.05  0.001  1.9  0.302  0.204  8  0.04  1.7  0.5  0.3  0.8  0.02  10  0  0  0  1  1  0.002  0  0  1  1;
  5  37.5  11  50  3  0.05  0.001  1.9  0.302  0.204  8  0.04  1.7  0.5  0.3  0.8  0.02  10  0  0  0  1  1  0.002  0  0  1  1;
  6  37.5  11  50  3  0.05  0.001  1.9  0.302  0.204  8  0.04  1.7  0.5  0.3  0.8  0.02  10  0  0  0  1  1  0.002  0  0  1  1;
 ];

Ind.con = [ ... 
  8  1  6.6  50  3  0  0.01  0.15  0.05  0.15  0.001  0.04  5  3  1  0  0  0  0  1;
  9  1  6.6  50  3  0  0.01  0.15  0.05  0.15  0.001  0.04  5  3  1  0  0  0  0  1;
  10  1  6.6  50  3  0  0.01  0.15  0.05  0.15  0.001  0.04  5  3  1  0  0  0  0  1;
  11  1  6.6  50  3  0  0.01  0.15  0.05  0.15  0.001  0.04  5  3  1  0  0  0  0  1;
 ];

Bus.names = {... 
  '101-HSW-A02'; '101-HSW-A03'; '101-HSW-C01A&B'; 'Gen 1 Bus'; 'Gen 2 Bus'; 
  'Gen 3 Bus'; 'Gen 4 Bus'; 'K1 Bus'; 'K2 Bus'; 'K3 Bus'; 
  'K4 Bus'};

