program _;

var finp, fout: Text;
	start, stop, i, j, max, count: LongInt;

begin
	assign(finp, './cdck.inp');
	reset(finp);
	assign(fout, './cdck.out');
	rewrite(fout);

	read(finp, start, stop);

	for i := start to stop do
	begin
		j := i;
		count := 1;
		while j <> 1 do
		begin 
			if j mod 2 = 0 then
				j := j div 2
			else
				j := 3*j + 1;
			count := count + 1;
		end;
		if count > max then
			max := count;
	end;

	write(fout, start, ' ', stop, ' ', max);

	close(finp);
	close(fout);
end.