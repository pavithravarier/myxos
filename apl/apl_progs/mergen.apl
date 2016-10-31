integer main() {
integer a;
integer fd1;
integer fd2;
integer fd3;
string out;
integer i;

a=Fork();
if(a==-2)then
	a=Create("cd.dat");
	fd3=Open("cd.dat");
	fd1=Open("c.dat");
	fd2=Open("d.dat");
	i=0;
	while(i<25)do
		a=Read(fd1,out);
		a=Write(fd3,out);
		a=Read(fd2,out);
		a=Write(fd3,out);
		i=i+1;
	endwhile;
else
	a=Wait(a);
	a=Create("ab.dat");
	fd3=Open("ab.dat");
	fd1=Open("a.dat");
	fd2=Open("b.dat");
	i=0;
	while(i<25)do
		a=Read(fd1,out);
		a=Write(fd3,out);
		a=Read(fd2,out);
		a=Write(fd3,out);
		i=i+1;
	endwhile;
	a=Create("abcd.dat");
	fd3=Open("abcd.dat");
	fd1=Open("ab.dat");
	fd2=Open("cd.dat");
	i=0;
	while(i<25)do
		a=Read(fd1,out);
		a=Write(fd3,out);
		a=Read(fd1,out);
		a=Write(fd3,out);
		a=Read(fd2,out);
		a=Write(fd3,out);
		a=Read(fd2,out);
		a=Write(fd3,out);
		i=i+1;
	endwhile;
endif;
return 0;}
