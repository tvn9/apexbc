public class AccountCustomController {
    public Pagereference savetheRecord() {
        update account;
        return null;
    }

    private final Account account;
    public AccountCustomController()
    {
        account=[select id,Name,Site from Account where id=: ApexPages.currentPage().getParameters().get('id')];
    }
    public Account getAccount() {
        return account;
    }
}