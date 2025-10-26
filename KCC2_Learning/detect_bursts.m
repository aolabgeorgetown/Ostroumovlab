
%%Grace and Bunney 1984

function burst_all  = detect_bursts(data)%%
      i = 2;
    burst_all  ={}

    while i <= length(data)
        isi = data(i) - data(i-1);

        if isi < 0.080
            burst = [data(i-1), data(i)];
            i = i + 1;

            while i <= length(data) && data(i) - data(i-1) < 0.160
                burst = [burst, data(i)];
                i = i + 1;
            end
            if length(burst) > 2
                burst_all {end + 1} = burst;
            end 
        else
            i = i + 1;
        end
    end

    display("done");
end 

