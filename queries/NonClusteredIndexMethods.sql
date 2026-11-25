CREATE NONCLUSTERED INDEX IX_subscriptions_CustomerID ON dbo.subscriptions(CustomerID);
CREATE NONCLUSTERED INDEX IX_subscriptions_PlanID ON dbo.subscriptions(PlanID);
CREATE NONCLUSTERED INDEX IX_invoices_SubscriptionID ON dbo.invoices(subscription_id);
CREATE NONCLUSTERED INDEX IX_payments_invoice_id ON dbo.payments(invoice_id);
--Keys were made so join would function withouut it dataset was too big