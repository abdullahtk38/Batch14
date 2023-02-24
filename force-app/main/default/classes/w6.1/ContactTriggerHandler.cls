public class ContactTriggerHandler {

    //Week 6 Question 2.2 Solutions
    //When a new contact is created for an existing account then set contact other phone as account phone
    public static void updateContactPhone(List<Contact> contNewRecsList){
        //first collect all the AccountIds in a set from contNewRecsList
        Set<Id> accIdsSet = new Set<Id>();//bütün account ların bağlı olduğu contactları alabilmek için
        for(Contact con : contNewRecsList){//parametre olarak 
            if(con.accountId!=null){
                accIdsSet.add(con.AccountId);//accidsset in içine contact ın bağlı olduğu id leri koyduk
            } 
        }
        //Find all the Account Records and Prepare a Map
        if(!accIdsSet.isEmpty()){//set imiz boş değilse
            List<Account> accRecsList = [Select Id, Phone from Account Where Id IN : accIdsSet];
            Map<Id, Account> accRecMap =  new Map<Id, Account>(/*[Select Id, Phone from Account Where Id IN : accIdsSet]*/);
            for(Account acc : accRecsList){
                accRecMap.put(acc.Id, acc);
            }
            //Now Iterate over contact recs and update Other phone field value
            for(Contact con : contNewRecsList){
                if(accRecMap.ContainsKey(con.AccountId)){
                    con.OtherPhone = accRecMap.get(con.AccountId).Phone;
                }
            }   
        }   
    }
}