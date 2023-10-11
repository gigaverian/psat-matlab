Bus.con = [ ... 
  1  11  1  0  1  1;
  2  11  1  0  3  1;
  3  11  1  0  2  1;
  4  11  1  0  4  1;
  5  11  1  0  5  1;
  6  11  1  0  1  1;
 ];

Line.con = [ ... 
  3  1  100  11  50  0  0  0.01  0.1  0.001  0  0  0  0  0  1;
  3  2  100  11  50  0  0  0.01  0.1  0.001  0  0  0  0  0  1;
  5  3  100  11  50  0  0  0.01  0.1  0.001  0  0  0  0  0  1;
  4  3  100  11  50  0  0  0.01  0.1  0.001  0  0  0  0  0  1;
  6  1  17.5  11  50  0  1.75  0.01  0.2  0  0  0  0  0  0  1;
 ];

Breaker.con = [ ... 
  1  3  100  11  50  1  0  0  1  1;
  2  3  100  11  50  1  0  0  1  1;
  3  3  100  11  50  1  0  0  1  1;
  4  3  100  11  50  1  0  0  1  1;
 ];

SW.con = [ ... 
  1  35  11  1.05  0  1.5  -1.5  1.1  0.9  0.8  1  1  1;
 ];

PQ.con = [ ... 
  5  40  11  0.8  0.6  1.2  0.8  1  1;
 ];

Syn.con = [ ... 
  6  17.5  11  50  3  0.05  0.001  1.9  0.302  0.204  8  0.04  1.7  0.5  0.3  0.8  0.02  10  0  0  0  1  1  0.002  0  0  1  1;
  1  17.5  11  50  3  0.05  0.001  1.9  0.302  0.204  8  0.04  1.7  0.5  0.3  0.8  0.02  10  0  0  0  1  1  0.002  0  0  1  1;
  2  17.5  11  50  3  0.05  0.001  1.9  0.302  0.204  8  0.04  1.7  0.5  0.3  0.8  0.02  10  0  0  0  1  1  0.002  0  0  1  1;
  2  17.5  11  50  3  0.05  0.001  1.9  0.302  0.204  8  0.04  1.7  0.5  0.3  0.8  0.02  10  0  0  0  1  1  0.002  0  0  1  1;
 ];

Ind.con = [ ... 
  4  40  11  50  3  0  0.01  0.15  0.05  0.15  0.001  0.04  5  3  0.25  0  0  1  0  1;
 ];

Bus.names = {... 
  'Bus 1'; 'Bus 2'; 'Bus 3'; 'Bus 4'; 'Bus 5'; 
  'Bus 6'};

