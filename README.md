# Tech Company Fundings (2020-2021)

### About This Project
This project involves analyzing a comprehensive tech funding dataset to uncover trends and insights within the startup and investment ecosystem.
The main objective is to showcase how cloud-based tools can be integrated effectively for end-to-end data analysis, from data ingestion to visualization.The project aims to answer important questions such as how funding patterns evolve over time, the impact of company regions on funding, favored industry categories among investors, and overall funding distribution across different sectors.

### Dataset

**File Name: tech_fundings.csv  
This dataset contains up-to-date information about tech company fundings across the globe. It can be used to identify recent trends in tech companies and the investment space.The dataset contains information from January 2020 to 2021 for over 3500 company funding information. The data attributes include - index, company name, website, funding stage, funding date, funding amount in US Dollars, and the region.

###  Columns Description

| Column Name       | Description                                                   |
|-------------------|---------------------------------------------------------------|
| company           | Name of the funded startup or company                         |
| Funding_Amount_USD| Amount of funding received in US Dollars                      |
| Region            | Geographic region where the company is based or funded        |
| Funding_Stage     | Stage of funding (e.g., Seed, Series A, Series B, etc.)       |
| Funding_date      | Date of the funding event (format: YYYY-MM-DD)                |
| Vertical          | Industry or category the company operates in (e.g., Fintech)  |

## Tools & Technologies Used

| Tool            | Purpose                                  |
|-----------------|------------------------------------------|
| MS Excel        | Bacsic data cleaning and col formation   |
| Azure Databricks| Data cleaning, Spark & Pandas analysis   |
| Azure Synapse   | SQL querying and table creation          |
| Power BI        | Dashboard and visualization              |
| Pandas / Matplotlib | Intermediate plots and EDA           |

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


### Key findings 
  - Funding Trends Over Time
There has been a noticeable increase in funding activity in 2021 among most of the companies. This indicates growing interest in the tech startup ecosystem overtime.

  - Dominant Investment Categories
Categories like Business to Business Software,Cloud Computing , E-Commerce, and cyber security verticals consistently received higher funding amounts, suggesting strong investor confidence in these sectors.

  - Geographical Insights
Startups based in USA, India, and UK attracted the most funding.

  - Investor Behavior
Most investors prefer early-stage funding rounds (e.g., Seed, Series A amd Series B), showing a trend toward backing startups in their growth phase.

  - Average Deal Size
Later-stage funding rounds (Series C and above) had significantly higher average deal sizes, often 5–10x that of seed rounds.

  - Funding Gaps
Certain sectors, such as AgriTech and CleanTech, received comparatively less funding, highlighting potential areas for untapped investment.


### Challenges & Limitations
  - Incomplete or Missing Data
Several entries had missing fields (e.g., investor names, funding amounts, or locations), which limited the depth of       some analyses.
    - Dataset could have included some more data like profit margin, cities, profit and loss which limits in-depth         analysis of some major analysis.
    - There’s only two years of data included in this dataset, which is not enough to analyze and find the closest         future prediction.
  - Lack of resources
As this project was built using free subscription, azure connection and finding storage to build the cluster. 
  - Currency & Inflation Adjustments
The dataset does not standardize currency or adjust for inflation, which may slightly skew cross-year or cross-country comparisons.
  - Lack of Company Lifecycle Data
The dataset does not include whether startups failed, scaled, or were acquired, which would provide richer context for funding success.
Unstructured Categories
  - Static Dataset
As the data is not real-time, it may not reflect the latest market conditions or trends post-2025 or later.

### Conclusion
This project successfully demonstrates how modern data tools like Azure Databricks, Azure Synapse Analytics, and Power BI can be integrated to uncover meaningful insights from tech funding data. Through systematic data cleaning, advanced SQL analysis, and interactive visualizations, we were able to identify clear trends in investor behavior, dominant sectors, regional funding patterns, and potential gaps in the funding landscape.

The analysis reveals a dynamic and rapidly growing tech investment ecosystem, with a noticeable surge in activity during 2021. Investors show strong interest in sectors like B2B software, Cloud Computing, and Cybersecurity, while regions such as the USA, India, and the UK continue to lead in attracting capital. Meanwhile, less-funded areas like AgriTech and CleanTech present future opportunities for investment and innovation.

Overall, the project not only highlights key funding trends but also provides a scalable framework for analyzing similar datasets in the future.

### Author 
  - Takir Hossain
  - Takirhos@gmail.com


