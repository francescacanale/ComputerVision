% This function computes the mAP for a given set of returned results.
%
% Usage: map = compute_map (idx, gnd);
%
% Notes:
% 1) ranks starts from 1
% 2) The top result (the query itself) should be filtered externally
function map = compute_map (idx, gnd, verbose)

if nargin < 3
  verbose = false;
end

map = 0;
nq = size (gnd, 1);   % number of queries

for i = 1:nq
  qgnd = gnd{i}(2:end);
  nres = length (qgnd); % number of groundtruth results
  tp = [];

  for j = 2:length(gnd{i})
    
    pos = find (gnd{i}(j) == idx (:, i));
    if ~isempty(pos)
      tp = [tp pos];
    end
  end
  tp = sort (tp);
  ap = score_ap_from_ranks1 (tp, nres);

  if verbose
    fprintf ('query no %d -> gnd = ', i);
    fprintf ('%d ', qgnd);
    fprintf ('\n              tp ranks = ');
    fprintf ('%d ', tp);
    fprintf (' -> ap=%.3f\n', ap);
  end
  map = map + ap;
end
map = map / nq;



