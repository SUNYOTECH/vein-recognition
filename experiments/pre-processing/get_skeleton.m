function [ skeleton, vein_branch ] = get_skeleton( image )
%get_skeleton Returns skeleton of the vein image
%   Detailed explanation goes here

skeleton = bwmorph (image, 'dilate');
skeleton = bwmorph (skeleton, 'thin', Inf);
skeleton = bwmorph (skeleton, 'fill');

% can do this a few times
% to do -> keep spurring until sum doesnt change anymore

%old_sum = sum ( sum ( skeleton) );
%new_sum = 0;

%while ( (old_sum - new_sum) ~= 0)
%   skeleton = bwmorph (skeleton, 'spur');
%   old_sum = new_sum;
%   new_sum = sum ( sum (skeleton) );    
%end

vein_branch = bwmorph (skeleton, 'branchpoints');

end

