program _;

var i, j, a, b, sum: Integer;
	finp, fout: Text; // Biến đại diện cho file inp, out
	int_a, int_b: array[0..9] of Integer; // mảng gồm các số đã được tách

begin
	assign(finp, './2mult.inp');
	reset(finp);
	assign(fout, './2mult.out');
	rewrite(fout);

	// đọc file
	read(finp, a, b);

	// Tách các số trong a, b và cho vào mảng
	i := 0;
	while a <> 0 do
	begin
		int_a[i] := a mod 10;
		a := a div 10;
		i := i + 1;
	end;

	i := 0;
	while b <> 0 do
	begin
		int_b[i] := b mod 10;
		b := b div 10;
		i := i + 1;
	end;

	// Tính tổng
	sum := 0;
	for i in int_a do
		for j in int_b do
			sum := sum + i*j;

	// Ghi kết quả ra file out
	write(fout, sum);

	// Đóng tệp
	close(finp);
	close(fout);

end.