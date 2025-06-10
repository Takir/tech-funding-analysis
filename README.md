# Tech Company Fundings (2020-2021)

### About This Project
This project involves analyzing a comprehensive tech funding dataset to uncover trends and insights within the startup and investment ecosystem.
The main objective is to showcase how cloud-based tools can be integrated effectively for end-to-end data analysis, from data ingestion to visualization.The project aims to answer important questions such as how funding patterns evolve over time, the impact of company regions on funding, favored industry categories among investors, and overall funding distribution across different sectors.

### Dataset

**File Name:** `tech_fundings.csv`  
This dataset contains up-to-date information about tech company fundings across the globe. It can be used to identify recent trends in tech companies and the investment space.The dataset contains information from January 2020 to 2021 for over 3500 company funding information. The data attributes include - index, company name, website, funding stage, funding date, funding amount in US Dollars, and the region.

### Tech Stacks
- Microsoft Excel
- Azure Databricks
- Azure Synapse
- PowerBI

### Data Analysis (Azure DataBricks)
- I have used Python in Azure Databricks with Pandas and PySpark to
  - Loaded raw `.csv` file into **Spark DataFrame
  - Run some advance Data Cleaning
  - Cleaned nulls, standardized formats (e.g., funding dates, casting data etc.), and inferred schema
  - Converted Spark DataFrame to Pandas for graphing and intermediate analysis

##### Step 01: Configuration
  - Packages, and basic Configuration Code to make a connection with azure client, and Storage. 
![Screenshot 2025-06-07 215746](https://github.com/user-attachments/assets/4a8e19da-51f0-4d12-86fc-08f61a637a82)

  - Mounted to storage account Path where data gets stored
 ![Screenshot 2025-06-07 215902](https://github.com/user-attachments/assets/3499837c-bad1-40ee-a025-d10bfbd2b964)
 
  - Reading Raw data from storage
![Screenshot 2025-06-07 235238](https://github.com/user-attachments/assets/b2db0cbb-d294-4f65-8799-96d5e5a744c4)

#### Step 2: Top Findings
  - Top companies based on highest funding also top five regions and their total fundings in bn
![Screenshot 2025-06-07 235640](https://github.com/user-attachments/assets/0a617587-2dd9-4163-a7d2-9bac8cbc8c7f)

  - Top fundings based on year and verticals(type of companies)
![Screenshot 2025-06-07 235712](https://github.com/user-attachments/assets/372f53ee-e5ae-40d9-a035-3f40d3155f9f)

  -Top three companies with their total Investment count and stage of Investment in 2020-2021
![Screenshot 2025-06-10 141054](https://github.com/user-attachments/assets/473e5360-973b-4e41-b78e-81625c5acaac)

  - Top companies and their total Investment in a bar chart using matplot library
![Screenshot 2025-06-09 225506](https://github.com/user-attachments/assets/8e7f0cde-e15f-429e-b870-394fc5784f18)

  - Transfer cleaned dataset to transformed data folder located in azure storage account
    ![Screenshot 2025-06-08 002103](https://github.com/user-attachments/assets/3be28882-bc83-45a9-b71d-82d5d556b78c)
    

#### SQL Analytics (Azure Synapse)
    - Created azure synapse workspace and connected it with transfromed data in azure storage account
    - Registered cleaned dataset in Synapse SQL from data lek gen 2
    - Wrote SQL queries for aggregations (e.g., `SUM`, `COUNT`, `GROUP BY`, `ORDER BY`)
      - To find graphs for better understanding.
    - Generated result sets for Power BI consumption (verticals, years, regions, stages)

  - Top ten companise based on their total funding amount which shows, B2B software companies from US and Middle east are investing higest amount in 2020, mostly in their seed stage
![Screenshot 2025-06-10 143257](https://github.com/user-attachments/assets/f2d64896-6583-4e75-aa0b-526782d81485)
    - Adding a graph for better understanding
![Screenshot 2025-06-10 143921](https://github.com/user-attachments/assets/7e423aa0-3417-4a63-a024-9c163f7bd57b)

  - This graph shows the total funding of top ten companies in this dataset, where WestConnex invested the highest around 16 billion. This amount is almost 6 times higer than the SpaceX which in the second position in investment just bellow 2.5 billion of Investment in 2020
![Screenshot 2025-06-08 015547](https://github.com/user-attachments/assets/388d8bf7-8547-43fe-8237-425a4356cac4)

  - Here is a regional catch based on total Investment. It shows United States Invested the most among tech companies and
![Screenshot 2025-06-08 015627](https://github.com/user-attachments/assets/5aac24e6-e8f1-423a-8630-6b6214d7ef40)

### ✅ Step 4: Power BI Dashboard
- Connected **Power BI Desktop** to Synapse SQL views
- Created interactive visualizations:
  - 📈 Line chart: Funding over time
  - 📊 Bar chart: Top 10 Verticals by total funding
  - 🧭 Map: Regional funding distribution
  - 🧩 Filters: Funding Stage, Year, Region

_📷 **Add screenshot of full Power BI Dashboard:**_  

---

## 🖼 Dashboard & Visualizations

### 🔹 1. Funding Over Time (Line Chart)
_📷 Add your screenshot here:_  

---

### 🔹 2. Top 10 Verticals by Total Funding (Bar Chart)
_📷 Add your screenshot here:_  

---

### 🔹 3. Funding by Region (Map or Bar)
_📷 Add your screenshot here:_  

---

### 🔹 4. Funding Stage Distribution (Pie or Column)
_📷 Add your screenshot here:_  

---

## 📊 Columns Description

| Column Name         | Description                                                   |
|---------------------|---------------------------------------------------------------|
| `company`           | Name of the funded startup or company                         |
| `Funding_Amount_USD`| Amount of funding received in US Dollars                      |
| `Region`            | Geographic region where the company is based or funded        |
| `Funding_Stage`     | Stage of funding (e.g., Seed, Series A, Series B, etc.)       |
| `Funding_date`      | Date of the funding event (format: YYYY-MM-DD)                |
| `Vertical`          | Industry or category the company operates in (e.g., Fintech)  |

---

## 🧠 Key Insights

- **Top Verticals**: Fintech, Healthtech, and AI dominate investor interest
- **Peak Funding Years**: 2019 and 2021 saw the highest capital inflow
- **Regional Hotspots**: North America leads, followed by Europe and APAC
- **Stage Trends**: Series A and Seed are the most frequent funding stages

---

## 🛠 Tools & Technologies Used

| Tool            | Purpose                                  |
|-----------------|------------------------------------------|
| Azure Databricks| Data cleaning, Spark & Pandas analysis   |
| Azure Synapse   | SQL querying and table creation          |
| Power BI        | Dashboard and visualization              |
| Pandas / Matplotlib | Intermediate plots and EDA           |

---

## 📂 File Structure
tech-fundings-project/
├── tech_fundings.csv
├── notebooks/
│ └── databricks_analysis.ipynb # Spark & pandas analysis
├── synapse/
│ └── tech_funding_queries.sql # Final SQL queries for insights
├── dashboard/
│ └── tech_funding_dashboard.pbix
├── images/
│ ├── databricks_notebook.png
│ ├── powerbi_dashboard.png
│ ├── funding_over_time.png
│ ├── top_verticals.png
│ ├── regional_funding.png
│ └── funding_stage_distribution.png
└── README.md

