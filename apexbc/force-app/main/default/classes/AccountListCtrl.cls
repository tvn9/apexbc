public class AccountListCtrl {

    public ApexPages.StandardSetController acct {
        get{
          if (acct==null) 
          {
              acct = new ApexPages.StandardSetController(Database.getQueryLocator([Select Name,AccountNumber from Account]));
          }  
          return acct;
        }
        set;
    }

    public List<Account> getAccounts() {
        return (List<Account>)acct.getRecords();
    }

}