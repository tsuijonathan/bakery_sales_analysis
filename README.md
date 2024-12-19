# Veronica's Bakery and Pasta Shop: Sales Analysis

## **Business Description**

Veronica's Bakery and Pasta Shop is based on a real brick-and-mortar bakery located in a Canadian city with a population of 785,000. The shop offers a variety of products, including:

- **Breads and Pastries**: Freshly baked daily.  
- **Sandwiches and Coffee**: Available for dine-in or takeaway.  
- **House-Made Fresh Pasta**: Produced on-site.  
- **Prepared Meals**: Ready-to-go options for convenience.  
- **Gourmet Pantry Items**: Specialty goods for home cooking.

## **Project Overview**

This project focuses on helping Veronica's Bakery enhance **revenue** and **operational efficiency** by analyzing sales data in relation to **holidays, weather conditions, and historical trends**. Key steps included **data cleaning**, **exploratory data analysis**, **hypothesis testing**, **machine learning modeling**, and delivering **actionable recommendations** through visualizations and KPIs.

## Table of Contents

- [Business Problem](#business-problem)
- [Data](#data)
- [Process](#process)
- [Tools Used](#tools-used)
- [Results](#results)
- [Recommendations](#recommendations)
- [How to Navigate Through the Project](#how-to-navigate-through-the-project)
- [Links](#links)

## **Business Problem**

As a former chef and baker, making decisions about **staffing** and **food preparation** during holidays or specific weather conditions was often a challenge. These decisions frequently felt like a gamble, with the risk of being **over-prepared** or **under-prepared**. This analysis aims to solve these challenges by providing insights into how **sales patterns** are influenced by **holidays** and **weather conditions**.

### **Key Questions to Answer:**

1. Which **days, months, and seasons** have the highest sales?  
2. How do **rainfall, snowfall, and temperature** affect sales?  
3. How do sales fluctuate around the **holidays** compared to regular days?

## **Data**

- **Sales Data**: Gathered from the point-of-sale app at the shop covering **February 2023 to November 2024**.  
- **Weather Data**: Retrieved from the **Government of Canada Climate Weather Website**.
- **Holiday Data**: Imported using the **Python `holidays` library**.

## **Process**

### **Outline of Steps:**

1. **Data Collection**  
   - Collected sales, weather, and holiday data.

2. **Data Cleaning**  
   - Merged datasets, standardized column names, and filtered relevant dates.

3. **Relational Database Setup**  
   - Designed an ERD, created a MySQL schema, and implemented a relational database for organized data storage.

4. **Exploratory Data Analysis (EDA)**  
   - Identified patterns and trends in the data using visualizations.

5. **Feature Engineering**  
   - Created new features like `temp_category`, `season`, and holiday proximity indicators.

6. **Statistical Testing**  
   - Conducted hypothesis tests to validate insights:
     - **ANOVA**: Average sales by day of the week  
     - **Mann-Whitney U Test**: Sales on rainy vs. non-rainy days  
     - **t-test**: Sales on snowy vs. non-snowy days  
     - **Mann-Whitney U Test**: Sales on holidays vs. non-holidays  
     - **Kruskal-Wallis Test**: Sales across seasons  

7. **Calculate Key Performance Indicators (KPIs)**  
   - Derived insights from metrics like average sales, sales growth, and holiday impact.

8. **Model Building**  
   - **Trained five models**:
     1. **Linear Regression**  
     2. **Decision Tree Regressor**  
     3. **Random Forest Regressor**  
     4. **Gradient Boosting Regressor**  
     5. **XGBoost Regressor**  

9. **Visualization and Dashboarding**  
   - **Python**: Created plots and charts for data exploration.  
   - **Tableau**: Developed interactive dashboards for customer behavior, weather and holiday trends, and KPIs.

10. **Creation of Presentation Slides**  
    - Summarized the analysis, findings, and recommendations.

## **Tools Used**

- **Visual Studio Code**
- **Python Libraries**:  
  - `pandas`  
  - `numpy`  
  - `matplotlib.pyplot`  
  - `seaborn`  
  - `scipy.stats`  
  - `sklearn`  
  - `xgboost`  
  - `holidays`  
  - `datetime`  
  - `yaml`  
- **MySQL**
- **Tableau**

## **Results**

### **Brief Summary of Key Findings:**

1. **Customer Behavior**:  
   - **Highest Sales**: Fridays and Saturdays | November and December.
   - **Lowest Sales**: Mondays and Tuesdays | February and March.  
   - **Gift Card Sales** peak in **November and December**.

2. **Weather Impact**:  
   - **Warmer Temperatures** correlate with higher sales.  
   - **Rainfall** does not significantly impact sales.  
   - **Snowfall** correlates with **lower sales** on snowy days.

3. **Holiday Trends**:  
   - Sales are **lower on holidays** compared to regular days.  
   - Sales rebound **two days after holidays**.  
   - **Good Friday** has the highest average sales.

4. **Statistical Tests**

| **Hypothesis**                | **Test**       | **p-Value**  | **Conclusion**            |
|-------------------------------|----------------|--------------|---------------------------|
| **Sales by Day of the Week**  | ANOVA          | 5.99e-91     | ✅ Significant Difference |
| **Rainy vs. Non-Rainy Days**  | Mann-Whitney U | 0.7983       | ❌ No Difference          |
| **Snowy vs. Non-Snowy Days**  | t-test         | 0.02895      | ✅ Significant Difference |
| **Holidays vs. Non-Holidays** | Mann-Whitney U | 0.02177      | ✅ Significant Difference |
| **Sales Across Seasons**      | Kruskal-Wallis | 0.06363      | ❌ No Difference          |

---

These findings highlight the **significant patterns** in sales behavior based on days of the week, holidays, and weather conditions. They provide a solid foundation for the recommendations aimed at optimizing **staffing, inventory planning, and promotions**.

5. **Model Performance**:  
   - **Linear Regression**:  
     - **MSE**: 1,120,112.41 | **R²**: 50.2%  
   - **Gradient Boosting**:  
     - **MSE**: 1,172,775.89 | **R²**: 47.9%

## **Recommendations**

1. **Daily Sales Targets**: Aim for a benchmark of **$3,125.42** in daily sales.  
2. **Promotions and Discounts**: Offer specials on **Mondays and Tuesdays** and **February and March** and around holidays.  
3. **Weather-Specific Strategies**: Adjust offerings based on temperature and weather patterns.  
4. **Cost-Benefit Analysis**: Evaluate the profitability of opening on holidays.  
5. **Enhanced Data Collection**: Improve the POS system to track more detailed data.  
6. **Customer Insights App**: Develop a loyalty app or membership card program to gather customer behaviour data.

## **How to Navigate Through the Project Files**

1. **Data**: Contains cleaned datasets used for analysis.  
2. **SQL**: Entity Relationship Diagram (ERD) diagram. Schema and queries for database creation and management.  
3. **Notebooks**: Code for data cleaning, EDA, statistical tests, and model building.  
4. **Dashboards**: Tableau workbooks for interactive visualizations.  
6. **Figures**: Plots created on Python.
5. **Presentation Slides**: Summary of findings and recommendations.

## **Links**

### **Tableau Dashboards**

- **Sales Insights**: [View Dashboard](https://public.tableau.com/app/profile/jonathan.tsui8842/viz/Veronicas_dashboards/Insights?publish=yes)  
- **Holiday and Weather Trends**: [View Dashboard](https://public.tableau.com/app/profile/jonathan.tsui8842/viz/Veronicas_dashboards/Trends?publish=yes)  
- **Key Performance Indicators**: [View Dashboard](https://public.tableau.com/app/profile/jonathan.tsui8842/viz/Veronicas_dashboards/KPI?publish=yes)  

### **Presentation Slides**

- **Canva Presentation**: [View Slides](https://www.canva.com/design/DAGY4JwLixI/NAUGFlzB71_zhHyAeLsrAw/edit?utm_content=DAGY4JwLixI&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton)
