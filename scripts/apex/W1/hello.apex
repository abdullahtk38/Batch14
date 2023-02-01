// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

string tempvar = 'Enter_your_name_here';
System.debug('Hello World!');
System.debug('My name is ' + tempvar);



set<string> myStrings = new set<string>{'a', 'b'};
boolean result = myStrings.contains('z');
system.debug(result);
//false

Set<Integer> myInteger = new Set<ınteger>{1,2,3};
Integer result = myInteger.size();
System.debug(result);
//3



