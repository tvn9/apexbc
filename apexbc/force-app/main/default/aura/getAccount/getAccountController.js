({
    getAccountList: function (component) {
        //action calls the apex method getAccounts
        var action = component.get("c.getAccounts");
        //setCallback gets the response from apex call
        action.setCallback(this, function (response) {
            var state = response.getState();
            console.log("response state: " + state);
            //if response is successful set attribute value
            if (state === "SUCCESS") {
                component.set("v.responseSuccess", true);
                component.set("v.accountList", response.getReturnValue());
            }
        });
        $A.enqueueAction(action);
    },

    hideAccounts: function (component) {
        component.set("v.responseSuccess", false);
    },

    getOpportunityList: function (component) {
        component.set("v.columns", [
            { label: 'Opportunity Name', fieldName: 'Name', type: 'text' },
            { label: 'Stage', fieldName: 'StageName', type: 'text' },
            { label: 'CloseDate', fieldName: 'CloseDate', type: 'text' }
        ]);

        var accountRecordId = component.get("v.recordId");
        var action = component.get("c.getOpportunities");
        action.setParams({
            accountId: accountRecordId
        });
        action.setCallback(this, function (response) {
            var state = response.getState();
            console.log("response state: " + state);
            if (state === "SUCCESS") {
                component.set("v.responseSuccess", false);
                component.set("v.oppList", response.getReturnValue());
            }
        });
        $A.enqueueAction(action);
    }
})