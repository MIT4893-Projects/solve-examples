program _;

var finp, fout: Text;
	nums: array of Integer;
	sum, max_sum: LongInt;
	num_of_nums, i, j, start, stop, m: Integer;

begin
	assign(finp, './daycon.inp');
	reset(finp);
	assign(fout, './daycon.out');
	rewrite(fout);

	read(finp, num_of_nums);
	setlength(nums, num_of_nums);
	for i := 0 to num_of_nums-1 do
		read(finp, nums[i]);
	read(finp, m);

	for i := 0 to num_of_nums-m do
	begin
		sum := 0;
		for j := i to i+m-1 do
			sum := sum + nums[j];
		if sum > max_sum then
		begin
			max_sum := sum;
			start := i;
			stop := j;
		end;
	end;

	for i := start to stop do
		write(fout, nums[i], ' ');

	close(finp);
	close(fout);

end.