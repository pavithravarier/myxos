decl 

integer PID;
integer ret;

enddecl

integer main()
{	
	print ("In P5");
	PID = Getpid();
	print(PID);
	print ("Leaving P5");
	return 0;
}