// ********************** Week 4 ***************************
AccConAndOppOperations.fetchAllAccounts();
List<Account> acc = AccConAndOppOperations.fetchAllAccounts();
system.debug(acc);
AccConAndOppOperations.fetchOpportunities('Closed Lost', 'Web');
AccConAndOppOperations.printOppAndAccDetails('Customer - Direct', 'Closed Won');
AccConAndOppOperations.createAccount(null, 10000, 'Customer - Direct');




// ********************** Week 5 *************************** extra QUESTION 1
AccConAndOppOperations.oppsSum();

decimal sum = AccConAndOppOperations.oppsSum();
System.debug('sum = ' + sum);

List<Account> accList = AccConAndOppOperations.accountsWithAtLeastOneOpp('Closed Won');
System.debug(accList);

List<Account> accList3 = AccConAndOppOperations.accountsWithAtLeastOneContact();
System.debug(accList3.size());

List<Account> accList2 = AccConAndOppOperations.accountsWithAtLeastOneContact1();
System.debug(accList2.size());

// ********************** Week 5 *************************** extra QUESTION 2
AccConAndOppOperations.createContact('0018d000005rdQZAAY');   //ACCOUNT ID

AccConAndOppOperations.oppTop10();

AccConAndOppOperations.createNOpp(3 , '0018d000005rdQZAAY');   // Account ID

AccConAndOppOperations.method_12();

AccConAndOppOperations.deleteOpp();