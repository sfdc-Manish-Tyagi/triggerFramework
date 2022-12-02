public with sharing class LeadTriggerHandler  extends TriggerHandler{
	List<Lead> newLeads;
    
    public LeadTriggerHandler(){
        newLeads = (List<Lead>) Trigger.new;
    }
    
    protected override void beforeInsert() {
        Set<String> companyNames = new Set<String>();
        Map<String, ID> accountNamesToId = new Map<String, ID>();
        List<Case> newCases = new List<Case>();
        for(Lead l : newLeads){
            companyNames.add(l.Company);
        }
        
        //Get all existing Accounts with the same anems as the Leads being inserted
        List<Account> existingAccounts = [SELECT Name FROM Account WHERE Name IN :companyNames];
        for(Account a : existingAccounts){
            accountNamesToId.put(a.Name, a.Id);
        }
        
        for(Lead l : newLeads){
            if(accountNamesToId.keySet().contains(l.Company)){
                Case c = new Case();
                c.AccountId = accountNamesToId.get(l.Company);
                c.subject = 'Account already exists for ' + l.Company;
                c.Status = 'New';
                newCases.add(c);
            }
        }
        insert newCases;
    }
}