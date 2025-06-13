// ContactController.cls
public with sharing class ContactController {
    @AuraEnabled(cacheable=true)
    public static Contact getSingleContact(){
        System.debug('Fetching a single contact record');
        // Query to fetch a single contact record
        System.debug('Fetching a single contact record 2');
        return [SELECT Id, Name, Title, Phone, Email, has_picture_cont__c FROM Contact LIMIT 1];
    }

}