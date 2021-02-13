
function z = fitness(x1,x2)
    z=10000./(((1-x1.^2)+100*(x2-x1.^2).^2)+1);
end