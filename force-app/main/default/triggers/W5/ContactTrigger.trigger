trigger ContactTrigger on Contact (after insert) {
    //Week 5 Question 2.3 Solutions
    if(Trigger.isAfter){
        if (Trigger.isInsert) {
            for(Contact con : Trigger.New){
                if(con.AccountId == null){
                    System.debug(con.LastName + ' contact created WITHOUT Account');
                } else {
                    System.debug(con.LastName + ' contact created WITH Account');
                }
            }
        }
    }
}