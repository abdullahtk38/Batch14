public class week5Assignment {
     //Week 5 Question 3.1 Solutions
    public static void DummyDataCreation(integer n) {
        List<account> listAcc = new List<account>();
        for (Integer i = 0; i < n; i++) {
            account acc = new account();
            acc.Name = 'SoftInnovas'+ i;
            acc.Rating ='Hot';
            acc.Phone = '+1222330044' + i;
            acc.ShippingStreet= 'Malibu' +i;
            acc.BillingCity = ' San Francisco';
            listAcc.add(acc);
            
        }
        if(!listAcc.isEmpty()) {
            insert listAcc;
        }
        System.debug(listAcc);
    }
    //Week 5 Question 3.2 Solutions
    public static void createContact(integer n, List<Account> listAcc){
        List<Contact> listCon = new List<Contact>();
        for (Account eacAcc : listAcc) {
            for (Integer i = 1; i <= n; i++) {
                Contact con = new Contact();
                con.FirstName = 'Mahmut' +i;
                con.LastName ='Çakır' +i;
                con.Phone = '02125554333';
                con.MailingStreet ='İstanbul';
                con.MailingCity ='İstanbul';
                con.MailingPostalCode ='34000';
                con.OtherStreet ='GaziOsmaPaşa';
                con.OtherPostalCode ='34001';
                con.AccountId = eacAcc.Id;
                listCon.add(con);
                System.debug(listCon);
            }
        }
        if(!listAcc.isEmpty()) {
            insert listCon;
        }
    }

    //Week 5 Question 3.3 Solutions
    public static List<Case> createCase(List<Contact> listCon){
        List<case> caseList = new List<Case>();
        for (Contact eachCon : listCon) {
            Case cs = new Case();
            cs.contactId = eachCon.Id;
            cs.accountId = eachCon.AccountId;
            cs.subject = 'Burası yorum';
            cs.status = 'Working';
            cs.origin = 'Phone';
            caseList.add(cs);
        }
        if(!caseList.isEmpty()) {
            insert caseList;
    }
    return caseList;
    }
}