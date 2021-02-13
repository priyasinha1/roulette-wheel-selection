%roulettewheelselection
function indices = roulette_sel(z)
    cumulative=cumsum(z);
    cumulative=cumulative./cumulative(length(z));
    indices=[];
    for i=1:length(z)
        target=rand();
       
        index=1;
        while target>cumulative(index)
            index=index+1;
        end
        indices=[indices,index];  
    end
    
end