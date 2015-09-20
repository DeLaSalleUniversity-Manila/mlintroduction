function y = rms(v)
  % rms Root mean square
  % rms(v) returns the root mean square of the elements
  % of column vector v. If v is a matrix then
  % rms(v) returns a row vector such that each element
  % is the root mean square of the elements in the corresponding
  % column of v.
  vs = v.^2;
  s = size(v);
  y = sqrt(sum(vs)/s(1));
