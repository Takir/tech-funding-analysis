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

  - Here is a regional catch based on total Investment. It shows United States Invested the most among tech companies and India as a region gradually improving their tech investment significatly.
![Screenshot 2025-06-08 015842](https://github.com/user-attachments/assets/ad714109-298f-43dd-b438-88a8fd05f034)

  - List of companies Investted 3 and more times during this time are shown in this scatter flot with their mane highest to lowest.
![Screenshot 2025-06-08 015747](https://github.com/user-attachments/assets/dbba472a-d3db-4756-a499-2c492959ab00)

  - Table shows the number of deals for top verticals, and their total Investmet during this time.
![Screenshot 2025-06-08 020033](https://github.com/user-attachments/assets/2f7334cb-6d5e-4be2-beeb-2752efef6ed5)

  - Following graph represents the yearly funding trends in 2020 and 2021. Where clearly shows that Investment in tech industries vastly increased in 2021. 
![Screenshot 2025-06-10 152839](https://github.com/user-attachments/assets/fe083c73-e3fd-4818-8940-af826c7ccad6)

  - The table bellow shows that companies are more likely investment in series A, seed, and series B stage over other funding stage for the company.
![Screenshot 2025-06-08 185603](https://github.com/user-attachments/assets/ea257419-20b3-45f1-bf53-e8ed9ec21cac)

  - Bellow line chart shows top verticals in each regions by total investment amount. From this we can say most investmeted companies are coming from region in the west like America, UK, and Australia etc.
![Screenshot 2025-06-08 185711](https://github.com/user-attachments/assets/f74b3df3-0784-403b-8d1e-4fd01b7f63de)

  - Scatter view shows that the number of deals maked by company types. It is clear that tech industries based on B2B software, cloud computing, And developing artifical intelligence were on top in terms of more deals making and investment for their development.
![Screenshot 2025-06-09 231600](https://github.com/user-attachments/assets/cbb5888a-cfcb-4191-b3d9-3ee0aab1a35e)

### Power BI Dashboard
- Connected Power BI Desktop to Azure Synapse Analytics to
- Created interactive visualizations:
  There are some important analysis from this board are listed bellow
  -  Pie chart: Average Funding over time(Quaterly)
  -  Bar chart: Number of companies by vertical, also total funding by vartical
  -  Donut chart: Total fundings by stage
  -  Matrix: region wise companies and their name along with total funding 
  -  Q/A for question and answer session
  -  Filters: Total funding, Year, Region, investment count, also investment average 

Power BI Dashboard:
![Screenshot 2025-06-10 002256](https://github.com/user-attachments/assets/2be4f03a-4a09-4b35-819c-e2edd7caf15a) 

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

