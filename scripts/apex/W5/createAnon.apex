//Week 5 Question 3.1 Solutions apex

week5Assignment.DummyDataCreation(2);

//Week 5 Question 3.2 Solutions apex
List<Account> listAcc = new List<Account>();
    Account acc1 = new Account();
    acc1.Name='Halil Pazarlama';
    listAcc.add(acc1);

    Account acc2 = new Account();
    acc2.Name='Hepsiburada';
    listAcc.add(acc2);

    Account acc3 = new Account();
    acc3.Name='Amazon';
    listAcc.add(acc3);

    insert listAcc;

week5Assignment.createContact(3, listAcc);



//Week 5 Question 3.3 Solutions apex
List<Contact> listContact = [SELECT id, name,accountId from Contact where accountId != null and id Not in (Select contactID from Case) limit 3];
System.debug(week5Assignment.createCase(listContact));