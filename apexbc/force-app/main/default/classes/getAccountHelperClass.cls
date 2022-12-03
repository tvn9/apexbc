public class getAccountHelperClass {
  @AuraEnabled
  public static List<Account> getAccounts(){
      List<Account> accounts= [SELECT Id, Name FROM Account WHERE Name LIKE '%test%'];
      return accounts;
  }
  
  @AuraEnabled
  public static List<Opportunity> getOpportunities(String accountId){
      List<Opportunity> opportunities = [SELECT Id, Name, StageName, CloseDate
                                        FROM Opportunity
                                        WHERE AccountId =: accountId];
      return opportunities;
  }
}