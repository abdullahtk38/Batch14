public with sharing class PaymentsTriggerHandler {

    /* Create a field in Customer object called ‘Total Amount’ - this field should be auto-updated
when payments are created/updated/deleted (NO UNDELETE SCENARIO). */


    /*-------------------CREATE SCENARIO-------------------------------------------*/
    public static void updateAmountOnPaymentInsert(List<Payment__c> triggerNew) {
        Set<Id> customersIdSet  = new Set<Id>();
        for(Payment__c p : triggerNew){
            customersIdSet.add(p.Customer_c__c);
        }
        if(!customersIdSet.isEmpty()){
            updateAmountOnCustomer(customersIdSet);
        }
    }

    /*-------------------UPDATE SCENARIO-------------------------------------------*/
    public static void updateAmountOnPaymentUpdate(List<Payment__c> triggerNew, Map<Id, Payment__c> oldPaymentRecsMap) {
        Set<Id> customersIdSet  = new Set<Id>();
        for(Payment__c p : triggerNew){
            Payment__c oldPRec = oldPaymentRecsMap.get(p.Id);
            //When Reparenting is done
            if(p.Customer_c__c != oldPRec.Customer_c__c || p.Amount__c!= oldPRec.Amount__c){//Reparenting scenario
                customersIdSet.add(p.Customer_c__c);//new customer Id added
                customersIdSet.add(oldPRec.Customer_c__c);//Old customer Id added
            }
        }
        if(!customersIdSet.isEmpty()){
            updateAmountOnCustomer(customersIdSet);
        }
    }

    /*-------------------DELETE SCENARIO-------------------------------------------*/
    public static void updateAmountOnPaymentDelete(List<Payment__c> triggerOld) {
        Set<Id> customersIdSet  = new Set<Id>();
        for(Payment__c p : triggerOld){
            customersIdSet.add(p.Customer_c__c);
        }
        if(!customersIdSet.isEmpty()){
            updateAmountOnCustomer(customersIdSet);
        }
    }
    // public static void updateAmountOnPaymentUnDelete(List<Payment__c> triggerNew) {
    //     Set<Id> customersIdSet  = new Set<Id>();
    //     for(Payment__c p : triggerNew){
    //         customersIdSet.add(p.Customer_c__c);
    //     }
    //     if(!customersIdSet.isEmpty()){
    //         updateAmountOnCustomer(customersIdSet);
    //     }
    // }

    /* UPDATION OF TOTAL AMOUNT*/
    public static void updateAmountOnCustomer(Set<Id> customersIdSet) {
        List<Customer__c> customerWithPayments = new List<Customer__c>();
        customerWithPayments = [Select Id, total_Amount__c, (Select Id, Amount__c from Payments__r) from Customer__c Where Id =: customersIdSet];
        List<Customer__c> updatedCustomerList = new List<Customer__c>();//New place holder for storing updated values
        for(Customer__c c : customerWithPayments){
            decimal totalAmount = 0;
            for(Payment__c p :c.Payments__r){
                totalAmount = totalAmount + p.Amount__c;
            }
            c.total_Amount__c = totalAmount;
            updatedCustomerList.add(c);
        }
        if(!updatedCustomerList.isEmpty()){
            Update updatedCustomerList;
        }
    }
}
