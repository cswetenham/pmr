function xyzhumanevaAnim(X,fid,fps,display)

% XYZHUMANEVAANIM
%
%	Description:
%	


%	Copyright (c) 2008 Carl Henrik Ek and Neil Lawrence
% 	xyzhumanevaAnim.m SVN version 119
% 	last update 2008-10-21T09:52:55.000000Z


if(nargin<4)
  display = false;
  if(nargin<3||isempty(fps))
    fps = 24;
    if(nargin<2||isempty(fid))
      fid = 1;
      if(nargin<1)
	error('To Few Arguments');
      end
    end
  end
end
  
for(i = 1:1:size(X,1))
  if(i==1)
    handle = xyzhumanevaVisualise(X(i,:),1);
  else
    xyzhumanevaModify(handle,X(i,:));
  end
  pause(1/fps);
  if(display)
    fprintf('Frame:\t%d\n',i);
  end
end