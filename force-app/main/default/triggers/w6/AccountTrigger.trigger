trigger AccountTrigger on Account (before insert, after insert, after update, before update) {
    if(Trigger.isBefore){
        if(trigger.isUpdate){
             //TRIGGER PRACTICE QUESTIONS WEEK - 6 Extra Part -3 Question-1
             AccountTriggerHandler.validateAnnualRevenue(Trigger.new, Trigger.oldMap);
        }
    }

}