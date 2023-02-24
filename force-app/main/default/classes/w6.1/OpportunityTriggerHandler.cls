public with sharing class OpportunityTriggerHandler {

    //Week 6 Question 1.1 Solutions
    //Print the new and old field values for (Opportunity Name and Amount) fields whenever an opportunity is updated.
    public static void oppUpdated(List<Opportunity> newOpps, Map<Id, Opportunity> oldOppsMap){
        for (Opportunity opp : newOpps) {
            System.debug('New Opportunity Name: ' + opp.Name);
            System.debug('Old Opportunity Name: ' + oldOppsMap.get(opp.Id).Name);
            System.debug('New Opportunity Amount: ' + opp.Amount);
            System.debug('Old Opportunity Amount: ' + oldOppsMap.get(opp.Id).Amount);
        }
    }







    //Week 6 Question 1.3 Solutions
    //When the StageName of an opportunity is updated, then print the value of description field and opportunity name.

    public static void logOpportunityChanges(List<Opportunity> newOpps, Map<Id, Opportunity> oldOppsMap) {
        for (Opportunity opp : newOpps) {
            if (oldOppsMap.get(opp.Id).StageName != opp.StageName) {
                
                System.debug('Opportunity Name: ' + opp.Name);
                System.debug('Opportunity Description: ' + opp.Description);
            }
        }
    }
}