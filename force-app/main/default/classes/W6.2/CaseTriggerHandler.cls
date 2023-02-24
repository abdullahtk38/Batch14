public with sharing class CaseTriggerHandler {
/* When a case is created, check the description field of the newly created case - if the description
field contains the word ‘password’, then create a child case with the following field values
- subject = ‘Parent Case may contain secret info, do something NOW’
- parentId = _______ (newly create case id)
- priority = ‘High’
- Description = ‘Secret info not allowed in case’ 
*/
    public static void createdCase(List<Case> triggerNew) {
        List<case> childCaseList = new List <Case>();
        for (Case eachCase : triggerNew) {
            if (eachCase.Description.contains('password')) {
                case childCase = new Case();
                childCase.Subject = 'Parent Case may contain secret info, do something NOW';
                childCase.ParentId = eachCase.Id;
                childCase.Priority = 'High';
                childCase.Description = 'Secret info not allowed in case';
                childCaseList.add(childCase);
            }
        }
        if (!childCaseList.isEmpty()) {
            insert childCaseList;
        }
    }
}