% Inducción
% 1
natural(1).
/*
 2) n > 1, natural(n-1) -> natural(n).
*/
% 

% 2
%  n > 1, natural(n)  <- natural(n-1)
natural(N):- N > 1, N2 is N-1, natural(N2).
