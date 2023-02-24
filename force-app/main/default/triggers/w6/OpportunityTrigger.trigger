// trigger OpportunityTrigger on Opportunity (after insert) {
//     //Week 5 Question 2.2 Solutions
//     if(trigger.isAfter && trigger.isInsert){
//         for(Opportunity op : Trigger.new){
//             System.debug( 'Opportunity Name : '+ Op.Name + ', Closed Date : '+op.closeDate+ ', Amount : '+op.Amount);
            
//         }
//         System.debug('Total opportunity : ' + Trigger.new.size());
//    }    
// }

//trigger OpportunityTrigger on Opportunity (after insert) {
//    //Week 5 Question 2.4 Solutions
//    if(trigger.isAfter && trigger.isInsert){
//        for(Opportunity op : Trigger.new){
//            System.debug('Stage Name : '+ Op.StageName + ', Value of Description : '+op.description+ ', Opp Name : '+op.Name);
//       }
//   }    
//}


//BATCH 13 EXTRA ASSİGNMENT WEEK 6
trigger OpportunityTrigger on Opportunity (before Update,after update) {
    //Week 6 Question 1.1 Solutions
    //Print the new and old field values for (Opportunity Name and Amount) fields whenever an opportunity is updated.

    if(Trigger.isAfter && Trigger.isUpdate){
        //ÇÖZÜM 1
        Map<Id, Opportunity> oppOldRecsMap = Trigger.oldMap;
        for(Opportunity opp : Trigger.new){
            System.debug('New Opportunity Name  ' + opp.Name);
            System.debug('Old Opportunity Name  ' + oppOldRecsMap.get(opp.Id).Name);
            System.debug('New Opportunity Amount ' + opp.Amount);
            System.debug('Old Opportunity Amount ' +  oppOldRecsMap.get(opp.Id).Amount);
        }

        //ÇÖZÜM 2 SORU 1.1
        //OpportunityTriggerHandler.oppUpdated(Trigger.new, Trigger.oldMap);

        //Week 6 Question 1.3 Solutions
        //When the StageName of an opportunity is updated, then print the value of description field and opportunity name.
            
             /*if (oppOldRecsMap.get(opp.Id).StageName != opp.StageName){
                 System.debug('Opportunity Name  ' + opp.Name);
                 System.debug('Opportunity Description  ' + opp.Description);                
             }*/


        //ÇÖZÜM 2 SORU 1.3
        OpportunityTriggerHandler.logOpportunityChanges(Trigger.new, Trigger.oldMap);     
    }
}