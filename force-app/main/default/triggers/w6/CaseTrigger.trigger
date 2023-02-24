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
   /* //Week 5 1.2 Solutions
    if(trigger.isBefore && trigger.isUpdate){
            //  for(Case c : Trigger.new){
            //      System.debug('Case# '+ c.CaseNumber + 'with Id = '+c.Id+' was created on '+c.CreatedDate);
            // }
        }       
    if(trigger.isAfter && trigger.isInsert){
            for(Case c : Trigger.new){
            System.debug('Case# '+ c.CaseNumber + 'with Id = '+c.Id+' was created on '+c.CreatedDate);
         }
    }*/


    
    //Week 6 Question 2.1 Solution
    /*Whenever a case is created with origin as email then set status as new and Priority as Medium*/
    
    if(trigger.isBefore){
        //This block will run only for BEFORE triggers
        //System.debug('We are in the BEFORE triggers');
        if(trigger.isInsert){
            //This block will run only for INSERT operation
            //System.debug('We are in the BEFORE INSERT triggers');

            CaseTriggerHandler.setCaseStatusAndPriority(trigger.New);
        }
    }        

    // Week 6 Question 1.2 Solution
    //Show the message as 'Case origin is changed for [Case Number]' whenever case origin field value is changed.
    if(trigger.isAfter){
        //This block will run only for BEFORE triggers
        //System.debug('We are in the BEFORE triggers');
        if(trigger.isUpdate){
            //This block will run only for UPDATE operation
            //System.debug('We are in the BEFORE UPDATE triggers');
            /*Map<Id, case> caseOldRecsMap = Trigger.oldMap;
            for(Case c : Trigger.new){
                if (caseOldRecsMap.get(c.Id).Origin != c.Origin) {
                    System.debug('Case origin is changed for ' + c.CaseNumber);
                }
            }*/


            //ÇÖZÜM 2 
            //CaseTriggerHandler.handleCases(Trigger.new, Trigger.oldMap);
        }

        
    }
}  