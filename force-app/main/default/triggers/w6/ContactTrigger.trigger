trigger ContactTrigger on Contact (before insert, before Update, after insert, after Update) {
    /*//Week 5 Question 2.3 Solutions
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
    }*/

    //Part 2 – Triggerrrr…Same Record Update
    //Week 6 Extra Question 2.2 Solutions
    if(Trigger.isBefore){
        if(Trigger.isInsert){
            ContactTriggerHandler.updateContactPhone(Trigger.New);
        }
    }


}