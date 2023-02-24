public class AccountTriggerHandler {
/*  1. Whenever a New Account Record is created, an associated Contact Record must be created automatically. Contact record fields as below:
    - Account name as Contact last name
    - Account phone as contact phone           */
    public static void createAccount(List<Account> triggerNew) {
        List<Contact> contList = new List<Contact>();
        for (Account eachAcc : triggerNew) {
            contact con = new Contact();
            con.LastName = eachAcc.Name;
            con.Phone = eachAcc.Phone;
            con.AccountId = eachAcc.Id;
            contList.add(con);
        }
        if (!contList.isEmpty()) {
            insert contList;
        }
    }
/* Write a trigger on the Account when the Account is updated, check all opportunities related to
the account. Update all Opportunity Stage to closed lost if stage name not already set to closed
won.  */
    public static void checkOppOfAcc (List<Account> triggerNew){
        Set<id> accountIDs = new Set<id>();
        for (Account eachAcc : triggerNew) {
             accountIDs.add(eachAcc.Id);               
            }
    
    List<Opportunity> needsToUpdate = [SELECT id, StageName FROM Opportunity WHERE AccountId =:accountIDs AND StageName != 'Closed Won' AND StageName != 'Closed Lost'];
            for (Opportunity eachOpp : needsToUpdate) {
                eachOpp.StageName = 'Closed Lost';
            }
        update needsToUpdate;
    }

    /* Whenever an Account phone number is modified, update all the contacts of the Account as follows:
    - Contacts otherPhone as Old phone no of account
    - Contacts mobilePhone as New phone no of Account.  */

    public static void updateContactPhone (List<Account> triggerNew, Map<id,Account> newMap, Map<Id,Account> oldMap){
        set<Id> accountIDs = new set<id>();
        for (Account eachAcc : triggerNew) {
            if (eachAcc.Phone != oldMap.get(eachAcc.Id).Phone) {
                accountIDs.add(eachAcc.Id);  
            } 
        }

        if (!accountIDs.isEmpty()) {
            list<contact> contactsNeedsToUpdate = [SELECT id, AccountId, OtherPhone, MobilePhone FROM Contact WHERE AccountId =: accountIDs];  
        
        
            for (Contact eachCon : contactsNeedsToUpdate) {

                Account accOld = oldMap.get(eachCon.AccountId);
                Account accNew = newMap.get(eachCon.AccountId);
                eachCon.MobilePhone = accNew.Phone;
                eachCon.OtherPhone = accOld.Phone;      
            } 
            update contactsNeedsToUpdate;
        }
    }
}
