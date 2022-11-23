public class OpportunityListControl {
    
    public ApexPages.StandardSetController opps{
        get{
            if (opps==null) {
                opps = new ApexPages.StandardSetController(Database.getQueryLocator([Select Name,CloseDate,Amount from Opportunity]));
            }
            return opps;
        }
        set;
    
    }
    public List<Opportunity> getOpportunities() {
        return (List<Opportunity>)opps.getRecords();
    }

}