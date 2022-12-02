public with sharing class AccountTriggerHandler extends TriggerHandlerBase {
    protected override void beforeInsert(List<Sobject> newRecords) {
        List<Account> newAccounts = (List<Account>) newRecords;
    }

    protected override void beforeUpdate(Map<Id, Sobject> oldRecordsMap, Map<Id, Sobject> newRecordsMap) {
        Map<Id, Account> oldAccountsMap = (Map<Id, Account>) oldRecordsMap;
        Map<Id, Account> newAccountsMap = (Map<Id, Account>) newRecordsMap;

        // Do something with the Account records.
        // Use private methods in this class to handle the work or
        // delegate it to a service class.
    }

    // Use private methods to handle the heavy lifting
}