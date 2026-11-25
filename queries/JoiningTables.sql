--After renmaing all cols of data database they were combined so power bi could be used to full potential 
SELECT 
    s.SubscriptionID AS subscription_id,
    c.customer_id,
    c.signup_date,
    c.company_size,
    c.industry,
    c.acquisition_channel,
    c.country,
    p.plan_name,
    p.billing_cycle,
    p.price AS plan_price,
    s.StartDate AS subscription_start_date,
    s.Status AS subscription_status,
    i.invoice_id,
    i.issue_date,
    i.due_date,
    i.amount AS invoice_amount,
    i.status AS invoice_status,
    pay.payment_id,
    pay.payment_date,
    pay.payment_status,
    pay.notes
FROM dbo.subscriptions s
INNER JOIN dbo.customers c ON s.CustomerID = c.customer_id
INNER JOIN dbo.subscription_plans p ON s.PlanID = p.plan_id
LEFT JOIN dbo.invoices i ON s.SubscriptionID = i.subscription_id
LEFT JOIN dbo.payments pay ON i.invoice_id = pay.invoice_id;
