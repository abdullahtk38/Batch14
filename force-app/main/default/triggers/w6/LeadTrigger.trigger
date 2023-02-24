trigger LeadTrigger on Lead (after insert) {
   /* //Week 5 Question 2.1 Solutions
    if(Trigger.isAfter){
        if (Trigger.isInsert) {
            for(Lead ld : Trigger.New){
                if(ld.LeadSource == 'Web'){
                    System.debug('Rating should be Cold');
                } else {
                    System.debug('Rating should be hot');
                }
            }
        }
    }*/
}