trigger CaseTrigger on Case (before insert, after insert, before update, after update) {
    if (trigger.isAfter && trigger.isInsert ) {
        CaseTriggerHandler.createdCase(trigger.new);
    }
}