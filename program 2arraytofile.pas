program arraytofile;
type array1 = record
	data1 : string;
	data2 : string;
	end;

type array2 = record
	file1 : string;
	file2 : string;
	end;

var
	ar1 : array[1..10] of array1;
	ar2 : array[1..10] of array2;
	file_ar1 : file of array1;
	file_ar2 : file of array2;

begin
	assign(file_ar1,'testfile.dat');
	ReSet(file_ar1);
	Seek(file_ar1,1);
	assign(file_ar2,'testfile2.dat');
	ReSet(file_ar2);
	Seek(file_ar2,1);
	write('Input Data : '); readln(ar1[1].data1);
	write('Input Data 2 : '); readln(ar2[1].file1);
	write(file_ar1, ar1[1]);
	write(file_ar2, ar2[1]);
	close(file_ar1);
	close(file_ar2);
	readln();
end.


// begin
//    Assign(f,'students.dat');
//    Rewrite(f);
//    Student.s_name := 'John Smith';
//    Student.s_addr := 'United States of America';
//    Student.s_batchcode := 'Computer Science';
//    Write(f,Student);
//    Close(f)