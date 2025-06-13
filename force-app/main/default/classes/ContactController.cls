// ContactController.cls
public with sharing class ContactController {
    @AuraEnabled(cacheable=true)
    public static Contact getSingleContact(){
        System.debug('Fetching a single contact record');
        return [SELECT Id, Name, Title, Phone, Email, has_picture_contact__c FROM Contact LIMIT 1];
    }

}