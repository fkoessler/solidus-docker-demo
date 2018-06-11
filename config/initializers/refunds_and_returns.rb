# Make RMA optional for Customer Returns
Spree::ReturnItem::EligibilityValidator::Default.permitted_eligibility_validators = [
    Spree::ReturnItem::EligibilityValidator::OrderCompleted,
    Spree::ReturnItem::EligibilityValidator::TimeSincePurchase,
    # Spree::ReturnItem::EligibilityValidator::RMARequired,
    Spree::ReturnItem::EligibilityValidator::InventoryShipped,
    Spree::ReturnItem::EligibilityValidator::NoReimbursements
]
