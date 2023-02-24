public with sharing class AccountTriggerHandler {

    //Week 6 Question 3 Solutions
    /*When the Annual revenue value of an Account is reduced from the previous value then show the
    following message:
    ‘Annual Revenue for an account cannot be reduced’. And do not allow the user to save the
    record.*/
    public static void validateAnnualRevenue(List<Account> newList, Map<Id,Account> oldMap){
        for(Account newAcc : newList){
            Account oldAcc = oldMap.get(newAcc.Id);
            //Checking if Annual revenue is updated or not
            if(newAcc.AnnualRevenue != oldAcc.AnnualRevenue){
                System.debug('We are line to 12!!!');
                if(newAcc.AnnualRevenue < oldAcc.AnnualRevenue || newAcc.AnnualRevenue == null){
                    newAcc.AnnualRevenue.addError('Annual revenue cannot be reduced');
                    //newAcc.addError('Annual revenue cannot be reduced');
                }else {
                    system.debug('Successfuly!!');
                }
            }
        }
    }
}
