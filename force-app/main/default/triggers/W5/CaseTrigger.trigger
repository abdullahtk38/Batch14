// trigger CaseTrigger on Case (before insert, before update, after insert, after update) {
//     //Week 5 1.1 Solutions
//     System.debug('--------------- START ---------------');
//     System.debug('We are in the triggers');
//     if(trigger.isBefore){
//         System.debug('We are in the BEFORE triggers');
//         if(trigger.isInsert){
//             System.debug('We are in the BEFORE INSERT triggers'); 
//         }
//         if(trigger.isUpdate){
//             System.debug('We are in the BEFORE UPDATE triggers');
            
//              }
//         }
//     if(trigger.isAfter){
//         System.debug('We are in the AFTER triggers');
//         if(trigger.isInsert){
//             System.debug('We are in the AFTER INSERT triggers');
//         }
//         if(trigger.isUpdate){
//             System.debug('We are in the AFTER UPDATE triggers');
//         }
//     }
//     System.debug('--------------- END ---------------'); 
// }


trigger CaseTrigger on Case (before insert, before update, after insert, after update) {
    //Week 5 1.2 Solutions
    if(trigger.isBefore && trigger.isUpdate){
            //  for(Case c : Trigger.new){
            //      System.debug('Case# '+ c.CaseNumber + 'with Id = '+c.Id+' was created on '+c.CreatedDate);
            // }
        }       
    if(trigger.isAfter && trigger.isInsert){
            for(Case c : Trigger.new){
            System.debug('Case# '+ c.CaseNumber + 'with Id = '+c.Id+' was created on '+c.CreatedDate);
         }
    }
}

