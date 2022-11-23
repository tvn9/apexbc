public class AccountCustomContrller {

    public PageReference saveTheRecord() {
        update account;
        return null;
    }


   private final Account account;
   
   public AccountCustomContrller() 
   {
       account=[select id, Name, Site from Account where Id=: ApexPages.currentPage().getParameters().get('id')];
   }
   
   public Account getAccount() {
       return account;
   }
}