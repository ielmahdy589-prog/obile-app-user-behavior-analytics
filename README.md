# Mobile App User Behavior Analytics Dashboard 📊📱

An end-to-end data analytics project using **SQL** and **Power BI** to evaluate user behavior, engagement levels, and device performance trends. This project translates raw data into executive-ready insights and actionable roadmaps to optimize application performance and user retention.

---

## 🚀 Project Overview & Context
Understanding user interaction patterns is critical for app optimization. This project delivers an interactive dashboard designed for executive leadership to monitor key performance indicators (KPIs), detect technical anomalies (such as device-specific battery drain or data usage spikes), and implement data-driven product strategies.

### 📌 Key Capabilities & Features:
- **Comprehensive KPI Tracking:** Monitors Total Users, Avg App Usage, Avg Screen Time, Avg Data Usage, and Avg Battery Drain.
- **User Segmentation & Behavioral Analysis:** Deep dives into behavior across Operating Systems (iOS vs. Android), Gender, and User Tiers (Heavy, Medium, Low Users).
- **Technical & Device Insights:** Identifies device-specific optimizations (e.g., OnePlus 9 high engagement vs. battery performance constraints).
- **Executive Action Plan:** Integrates a structured roadmap for targeted marketing campaigns, loyalty programs, and engineering sprints spanning Q2 to Q3 2025.

---

## 🛠️ Tech Stack & Tools Used
- **Database / Data Querying:** SQL (Data extraction, cleaning, and user segmentation transformation).
- **Business Intelligence & Visualization:** Power BI Desktop.
- **Design & UI:** Custom modern dark-theme dashboard design with responsive slicers.

---

## 📊 Dashboard Preview
*Insert a screenshot of your final dashboard here to instantly capture attention!*
![Dashboard Final Screenshot](<img width="2805" height="1423" alt="App" src="https://github.com/user-attachments/assets/70e8b53b-cf1c-4927-9414-20d05cbc5f70" />
)

---

## 💡 Key Insights & Business Recommendations

1. **High Data Consumption on iOS:** iOS users consume significantly more mobile data on average. 
   - *Recommendation:* Optimize data usage by compressing media files and refining background data refresh cycles to lower user infrastructure costs.
2. **Battery Drain Discrepancy:** Heavy users experience disproportionately high battery drain.
   - *Recommendation:* Launch an engineering sprint focused on background process optimization to reduce battery intensity and prevent churn.
3. **Medium Users Upsell Opportunity:** Medium users represent a highly balanced segment capable of moving into the Heavy Tier.
   - *Recommendation:* Target this segment with personalized incentive campaigns to boost conversion and lift lifetime value (LTV).

---

## 📁 Repository Structure
```text
├── Data/
│   └── (Optional) sample_dataset.csv  # Anonymized/Sample dataset
├── SQL_Scripts/
│   └── data_transformation.sql         # SQL queries used for data prep
├── PowerBI/
│   └── mobile_app_analytics.pbix      # Power BI project file
└── README.md                          # Project documentation
