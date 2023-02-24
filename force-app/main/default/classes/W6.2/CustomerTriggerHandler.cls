public with sharing class CustomerTriggerHandler {
/*  a. Whenever a new Customer is created, create following default Payment records
- Amount = $0.1, Mode = Online
- Amount = $1, Mode = Crypto */
    
    public static void createDefaultPayments(List<Customer__c> triggerNew){
        
        List<Payment__c> defaultPaymentsList = new List<Payment__c>();
        
        for(Customer__c c : triggerNew){

            Payment__c pCrypto = new Payment__c();
            pCrypto.Mode__c = 'Crypto';
            pCrypto.Customer_c__c = c.id;
            pCrypto.Amount__c = 1;
            defaultPaymentsList.add(pCrypto);

            Payment__c pOnline = new Payment__c();
            pOnline.Mode__c = 'Online';
            pOnline.Customer_c__c = c.id;
            pOnline.Amount__c = 0.1;
            defaultPaymentsList.add(pOnline);
        }
        if(!defaultPaymentsList.isEmpty()){
            Insert defaultPaymentsList;
        }
    }
        /*  b. Whenever Active Customers are deleted, all the corresponding payments should be deleted.
        c. Whenever In Active Customers are deleted, all the corresponding online payment records
        should be deleted.  */
    public static void updateRelatedPayments(List<Customer__c> triggerOld){
        Set<Id> active =new Set<Id>();
        Set<id> inactive=new Set<Id>();
        //Collecting active and inactive account Ids seperately
        for(Customer__c c: triggerOld){
            if(c.active__c ==true){
                active.add(c.id);
            }else{
                inactive.add(c.id);
            }
        }
        //Find all the related payment records of all active Customer records
        if(!active.isEmpty()){
            List<Payment__c> payments1 =[select id FROM Payment__c where Customer_c__c in :active];
            if(!payments1.isEmpty())
                delete payments1;
        }
        //Find all the related 'Online' payment records of all inactive Customer records
        if(!Inactive.isEmpty()){
            List<Payment__c> onlines=[select id FROM Payment__c WHERE Customer_c__c in :inactive and Mode__c='Online'];
            if(!onlines.isEmpty())
                delete onlines;
        }
    }

}