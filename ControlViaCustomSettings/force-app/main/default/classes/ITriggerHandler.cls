/*
@Author : Manish Tyagi
@CreatedDate : 20th Oct 2022
@Description : Trigger Handler Interface
*/
public interface ITriggerHandler{
     
    /*
@Author : Manish Tyagi
@CreatedDate : 20th Oct 2022
@Description : Called by the trigger framework before insert of the records
@Parameters : List<sObject> newList , Map<Id, sObject> newMap
*/
    void beforeInsert(List<sObject> newList);
     
    /*
@Author : Manish Tyagi
@CreatedDate : 20th Oct 2022
@Description : Called by the trigger framework after insert of the records
@Parameters : List<sObject> newList
*/
    void afterInsert(List<sObject> newList, Map<Id, sObject> newMap);
     
    /*
@Author : Manish Tyagi
@CreatedDate : 20th Oct 2022
@Description : Called by the trigger framework before update of the records
@Parameters : List<sObject> newList, Map<Id, sObject> newMap,  List<sObject> oldList, Map<Id, sObject> oldMap
*/
    void beforeUpdate(List<sObject> newList, Map<Id, sObject> newMap,  List<sObject> oldList, Map<Id, sObject> oldMap);
     
    /*
@Author : Manish Tyagi
@CreatedDate : 20th Oct 2022
@Description : Called by the trigger framework after update of the records
@Parameters : List<sObject> newList, Map<Id, sObject> newMap,  List<sObject> oldList, Map<Id, sObject> oldMap
*/
    void afterUpdate(List<sObject> newList, Map<Id, sObject> newMap,  List<sObject> oldList, Map<Id, sObject> oldMap);
     
    /*
@Author : Manish Tyagi
@CreatedDate : 20th Oct 2022
@Description : Called by the trigger framework before delete of the records
@Parameters : List<sObject> oldList , Map<Id, sObject> oldMap
*/           
    void beforeDelete(List<sObject> oldList , Map<Id, sObject> oldMap);
     
    /*
@Author : Manish Tyagi
@CreatedDate : 20th Oct 2022
@Description : Called by the trigger framework after delete of the records
@Parameters : Map<Id, sObject> oldMap
*/
    void afterDelete(List<sObject> oldList , Map<Id, sObject> oldMap);
     
    /*
@Author : Manish Tyagi
@CreatedDate : 20th Oct 2022
@Description : Called by the trigger framework after undelete of the records
@Parameters : List<sObject> newList, Map<Id, sObject> newMap
*/
    void afterUnDelete(List<sObject> newList, Map<Id, sObject> newMap);
     
    /*
@Author : Manish Tyagi
@CreatedDate : 20th Oct 2022
@Description : Called by the trigger framework to check the trigger for the object is enabled or disabled
@Parameters :
*/
    Boolean isDisabled();
}