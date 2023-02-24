// trigger OpportunityTrigger on Opportunity (after insert) {
//     //Week 5 Question 2.2 Solutions
//     if(trigger.isAfter && trigger.isInsert){
//         for(Opportunity op : Trigger.new){
//             System.debug( 'Opportunity Name : '+ Op.Name + ', Closed Date : '+op.closeDate+ ', Amount : '+op.Amount);
            
//         }
//         System.debug('Total opportunity : ' + Trigger.new.size());
//    }    
// }

trigger OpportunityTrigger on Opportunity (after insert) {
    //Week 5 Question 2.4 Solutions
    if(trigger.isAfter && trigger.isInsert){
        for(Opportunity op : Trigger.new){
            System.debug('Stage Name : '+ Op.StageName + ', Value of Description : '+op.description+ ', Opp Name : '+op.Name);
       }
   }    
}