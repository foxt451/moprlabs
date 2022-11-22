subplot (3, 2, 1)
tx = ty = linspace (-5, 5, 41)';
[x1, x2] = meshgrid (tx, ty);
f1 = (x1 - x2) .^ 2 + 1 / 9 * (x1 + x2 - 10) .^ 2;
title1 = 'F=(x1-x2)^2+1/9*(x1+x2-10)^2';
function plotfunc (x1, x2, f, fname, titlename)
  mesh (x1, x2, f);
  xlabel({'x1'});
  ylabel({'x2'});
  zlabel({fname});
  title(titlename);
endfunction
plotfunc(x1, x2, f1, 'F1', title1);
subplot (3, 2, 2);
plotfunc(x1, x2, f1, 'F1', title1);
view(-45,90);

subplot (3, 2, 3);
f2 = 100 * (x2 - x1 .^ 2) .^ 2 + (1 - x1) .^ 2;
title2 = 'F=100(x2-x1^2)^2+(1-x1)^2';
plotfunc(x1, x2, f2, 'F2', title2);
view(3);
subplot (3, 2, 4);
plotfunc(x1, x2, f2, 'F2', title2);
view(-45,90);

subplot (3, 2, 5);
f3 = (sin (x1 - 0.6) - x2 - 1.6) .^ 2 + (3 * x1 - cos (x2) - 0.9) .^ 2;
title3 = 'F=(sin(x1 - 0.6) - x2 - 1.6) ^ 2 + (3 * x1 - cos(x2) - 0.9) ^ 2';
plotfunc(x1, x2, f3, 'F3', title3);
view(3);
subplot (3, 2, 6);
plotfunc(x1, x2, f3, 'F3', title3);
view(-45,90);

pause;