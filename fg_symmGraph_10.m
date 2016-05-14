function xU = fg_symmGraph_10( x )
% lets obtain a symmetric graph from directed one
% ----- Summary of this function goes here
% Prepare symmetric matrix - undirected graph from directed original
% We suppose original Directed SIMPLE graph, i.e. we have zeroes on the
% main diagonal (graph without self loops and multiple edges)
% INPUT:
%   x - original Directed graph connectivity matrix (Weighted/Unweighted)
% OUTPUT:
%   xU- induced UnDirected graph connectivity matrix
%   Detailed explanation goes here
    A = triu(x);    B = triu(x');    
    U = bsxfun(@max,A,B);    
    xU = U+U';
return
end
