public with sharing class CaseTriggerHandler {
    //Question 1.2 Solution
    //Show the message as 'Case origin is changed for [Case Number]' whenever case origin field value is changed.

    public static void handleCases(List<Case> newCases, Map<Id, Case> oldCasesMap) {
                for (Case c : newCases) {
                    if (oldCasesMap.get(c.Id).Origin != c.Origin) {
                        System.debug('Case origin is changed for ' + c.CaseNumber);
                    }
                }
     }

    













     
    //Question 2.1 Solution
    /* Whenever a case is created with origin as email then set status as new and Priority as Medium */

    public static void setCaseStatusAndPriority(List<Case> triggerNew) {
        
        for(Case cs: triggerNew){
            if(cs.Origin=='Email'){
                cs.Status='New';
                cs.Priority='Medium';
            }
        }
        
    }
}