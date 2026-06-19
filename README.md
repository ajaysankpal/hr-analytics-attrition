# 👥 HR Analytics — Employee Attrition Analysis (SQL · Power BI · Tableau)

An end-to-end HR analytics project investigating **why employees leave** and which factors drive attrition, delivered across **SQL, Power BI and Tableau** with stakeholder-ready presentations.

## 📌 Business Problem
The organisation is experiencing high attrition. HR leadership needs to understand the drivers (department, income, work-life balance, promotions, tenure) and where to focus retention efforts.

## 🛠️ Tools & Tech
- **SQL** (MySQL) — KPI calculations and joins across two HR tables (`hr_1`, `hr_2`)
- **Power BI** — interactive attrition dashboard
- **Tableau** — KPI visualisations
- **PowerPoint** — KPI insight decks for stakeholders

## 📊 KPIs Analysed (see `sql/hr_attrition_kpis.sql`)
1. Average attrition rate by department
2. Average hourly rate of male Research Scientists
3. Attrition rate vs. monthly income group
4. Average working years by department
5. Job role vs. work-life balance
6. Attrition rate vs. years since last promotion

## 🔍 Selected Insights
- Attrition is **high (~50%) across every department** — a company-wide concern, not isolated to one team.
- **Income level shows no clear pattern** with attrition; pay alone doesn't explain who leaves.
- Most roles report **good/excellent work-life balance**, but pockets of "average/bad" ratings flag where to intervene.
- **Time since last promotion** is not a decisive attrition factor on its own.

## 🗂️ Repository Structure
```
├── sql/              # KPI queries with inline insights (MySQL)
├── dashboard/        # Power BI attrition dashboard (.pbix)
├── tableau/          # Tableau workbook (.twbx)
└── presentations/    # KPI insight decks (PPTX)
```
> **Note on data:** the raw HR dataset is large and is not committed here. The table schema (`hr_1`, `hr_2`) is documented through the queries in `sql/`.

## ▶️ How to View
- Open `dashboard/HR_Analytics_Dashboard.pbix` in **Power BI Desktop**.
- Open `tableau/HR_Analytics_Tableau.twbx` in **Tableau** (Reader/Public).
- Run the queries in `sql/hr_attrition_kpis.sql` against a MySQL database.

## 🔑 Key Skills Demonstrated
SQL (joins, aggregation, CTE-style KPIs) · Power BI · Tableau · KPI design · Insight communication

---
*Project completed as part of a guided data analytics bootcamp / internship.*
