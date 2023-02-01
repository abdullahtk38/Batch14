

//validateaddrss apex
ValidateAddress vd = new ValidateAddress();
vd.validateHomeAddress();



//students apex
Students stdns = new Students();
stdns.firstName = 'Abdullah';
stdns.lastName = 'Aydogdu';
stdns.classYear = 2020;
stdns.major = 'IT';
string reportReturn = stdns.generateReport();
system.debug('report returned --> ' + reportReturn);



Students stdns2 = new Students();
stdns2.firstName = 'Salih';
stdns2.lastName = 'Yazar';
stdns2.classYear = 2018;
stdns2.major = 'IT';

string reportReturn2 = stdns2.generateReport();
system.debug('report Returned2 --> ' + reportReturn2);