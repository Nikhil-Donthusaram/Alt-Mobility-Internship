# Alt Mobility Data Analyst Internship Tasks

## Alt Mobility Customer Retention Analysis

## Key Insights from SQL Queries

### Total Orders & Revenue
- **Total Orders**: 15,000 orders placed in total.
- **Total Revenue**: ₹3.8 million.
- **Average Monthly Orders**: ~200.
- **Average Monthly Revenue**: ~₹60,000.

### Order Status Breakdown
- **Delivered**: 5,057 orders (₹1.28M revenue)
- **Pending**: 5,069 orders (₹1.27M revenue)
- **Shipped**: 4,874 orders (₹1.24M revenue)

**High pending orders suggest operational delays**

### Customer Behavior
- **Average Orders per Customer**: 3
- **Repeat Customers**: 4,402
- **Customer Segments**:
  - **One-time**: 2,932
  - **Occasional (2–4 orders)**: 4,144
  - **Frequent (5+ orders)**: 258

**A good base of repeat customers shows customer satisfaction.**

### Payments Summary
- **Completed Payments**: 4,991
- **Pending Payments**: 5,006
- **Failed Payments**: 5,003

**Over 66% of payments are not completed – major revenue leakage!**

### Payment Methods
- Most failed payments occurred through **Bank Transfers**.

**Critical to optimize payment channels.**

---

## Observations from Customer Retention (Cohort Analysis)

### Drop After Month 1
- Most cohorts experience sharp drop-offs after their first month of activity.
  - E.g., **Jan 2020 cohort** started with 59 customers, only 6 remained after month 5.

### Early Cohorts Perform Better
- Customers who joined in early 2020 retained slightly better than later ones.
  - Possibly due to early product-market fit or stronger onboarding.

### 2021–2022 Cohorts
- These cohorts show lower long-term retention, with very few customers staying beyond 2–3 months.

### Inconsistent Customer Retention Trends
- No cohort shows sustained growth or retention beyond 6 months.
  - Suggests limited long-term customer value being captured.

---

## Recommendations for Alt Mobility

### Fix Payment Failures
- Prioritize resolving **Bank Transfer** issues.
- Introduce **UPI/Wallet** options or improve gateway reliability.
- Notify customers promptly on payment issues.

### Improve Fulfillment Process
- Resolve delays leading to high pending order counts.
- Track delivery/shipping KPIs more closely.

### Launch a Loyalty Program
- Encourage **one-time buyers** to come back.
- Reward **Frequent and Occasional** segments with personalized offers or discounts.

### Onboarding + Retention Campaigns
- Target new customers (Month 0–1) with **drip email/SMS flows**.
- Create re-engagement campaigns around months **2–3**, where most churn occurs.

### Customer Feedback Loop
- Collect **NPS** or feedback post-delivery to understand churn reasons.

### Monitor Cohort Health Monthly
- Use **cohort matrix** in Power BI to identify which acquisition months are performing best.
- Optimize marketing channels based on retention ROI, not just new signups.

---


