trigger AccountTrigger on Account (before insert, after insert, before update, after update) {
    if (Trigger.isAfter && Trigger.isInsert) {
        AccountTriggerHandler.createAccount(trigger.new);
    }

    if (trigger.isBefore && trigger.isUpdate) {
        AccountTriggerHandler.checkOppOfAcc(trigger.new);
    }

    if (trigger.isAfter && trigger.isUpdate) {
        AccountTriggerHandler.updateContactPhone(trigger.new, trigger.newMap, trigger.oldMap);
    }
}