
# Azure Data Pipeline Project

## 📌 Project Overview

This project demonstrates an **end-to-end data pipeline** using **Microsoft Azure** services to ingest, transform, store, and visualise data. The pipeline follows best practices in **data engineering** and **business intelligence**, enabling seamless movement of data from a **source system** to **Power BI for reporting**.

## 📊 Architecture Diagram



The pipeline consists of the following stages:

1. **Data Extraction**: Downloading the **Northwind dataset** from Kaggle (Orders and Order\_Details CSV files) using **Python (Kaggle API or kagglehub)**.
2. **Data Ingestion**: Using **Azure Data Factory (ADF)** to retrieve and store files dynamically in **Azure Data Lake Gen2 (Container1)**.
3. **Data Transformation**: Processing data using **Azure Databricks (Apache Spark)** to analyse and visualise data.
4. **Processed Data Storage**: Storing transformed data as **Parquet files** in **Azure Data Lake Gen2 (Container2)**.
5. **Data Warehousing**: Creating **Azure Synapse Analytics**, scripting views in **SQL**, and storing **Parquet files in Container3**.
6. **Visualisation & Reporting**: Connecting **Power BI** to Synapse Analytics to build reports and dashboards.

---

## 🛠️ Technologies Used

- **Python (Kaggle API, kagglehub)** – Downloading data from Kaggle.
- **GitHub Desktop** – Committing and uploading project files.
- **Azure Data Factory (ADF)** – Dynamic file retrieval and storage.
- **Azure Data Lake Gen2** – Cloud storage for raw, processed, and warehouse data.
- **Azure Databricks** – Data analysis, transformations, and visualisation with Apache Spark.
- **Azure Synapse Analytics** – SQL-based data warehousing and querying.
- **Power BI** – Business intelligence, dashboard creation, and reporting.
- **Parquet Format** – Efficient storage and retrieval format.

---

## 📂 Kaggle Dataset Downloader

This project contains a **Python script** that downloads a dataset from Kaggle using the Kaggle API and saves it to the project folder. The dataset is then manually committed and uploaded to GitHub using **GitHub Desktop**.

### 🚀 Features

✔️ Downloads a dataset from Kaggle using the **Kaggle API** or **kagglehub**\
✔️ Saves the dataset inside the `datasets/` folder in the project directory\
✔️ Users manually **commit and upload changes** via **GitHub Desktop**

---

## ⚙️ Pipeline Breakdown

### 1️⃣ Data Extraction & GitHub Integration

- Download the **Northwind dataset** (Orders & Order\_Details) from Kaggle using **Python (Kaggle API or kagglehub)**.
- Save the CSV files in the project's **data folder**.
- Use **GitHub Desktop** to commit and push files to the GitHub repository.

### 2️⃣ Azure Data Lake Setup

- Ensure **Hierarchical Namespace** is enabled for **Azure Data Lake**.
- Create **three containers**:
  1. **Container1**: Load data from **GitHub** to **Azure Data Lake**.
  2. **Container2**: Load transformed data from **Databricks**.
  3. **Container3**: Load final processed data from **Synapse Analytics**.

### 3️⃣ Data Ingestion (Azure Data Factory)

- ADF retrieves the CSV files from **GitHub** and loads them into **Azure Data Lake Storage (Container1)**.
- Uses **Lookup Activity** (JSON file) to dynamically fetch **filenames** and iterate over files.
- Executes **For Each iteration** to dynamically **copy** files into the Data Lake.
- Utilises **HTTP Linked Service** to pull data dynamically from **GitHub API**.

### 4️⃣ Data Transformation (Azure Databricks)

- **Create Databricks Workspace** with:
  - **Subscription, Resource Group, Workspace Name, Region, and Pricing Tier**.
  - **Compute cluster setup** (Unrestricted, single node, shared mode, LTS runtime, general-purpose node).
- Use **Apache Spark (PySpark)** for **data analysis and transformation**.
- Generate **graphs/charts** for visualisation inside **Databricks**.
- Save transformed data in **Parquet format** in **Azure Data Lake (Container2)**.

### 5️⃣ s (Azure Synapse Analytics)

- Create **Azure Synapse Analytics** to unify SQL database operations.
- Develop SQL scripts to **create views** and **convert them into external tables**.
- Store data in **Parquet format in Container3** within Data Lake.

### 6️⃣ Visualisation & Reporting (Power BI)

- Establish a **Power BI connection** to **Azure Synapse Analytics**.
- Load structured data from **Synapse into Power BI**.
- Create **interactive dashboards and reports** based on the transformed data.

---

## 🚀 How to Set Up and Run the Project

### Prerequisites

- An **Azure Subscription**.
- **GitHub Desktop** for repository management.
- Access to **Azure Data Factory, Databricks, Synapse Analytics, and Power BI**.
- **Python (for Kaggle API data download)**.

### Steps

1. **Clone the repository**
   ```bash
   git clone https://github.com/your-username/azure-data-pipeline.git
   cd azure-data-pipeline
   ```
2. **Download Kaggle Dataset** using Python:
   ```python
   from kaggle.api.kaggle_api_extended import KaggleApi
   api = KaggleApi()
   api.authenticate()
   api.dataset_download_files('username/dataset-name', path='./data', unzip=True)
   ```
3. **Commit & Upload Files to GitHub** using **GitHub Desktop**.
4. **Deploy Azure Data Factory Pipelines** to ingest data into **Azure Data Lake**.
5. **Set Up Azure Databricks & Notebooks** to transform and visualise data.
6. **Load Transformed Data into Azure Synapse Analytics** and create **external tables**.
7. **Connect Power BI to Synapse Analytics** and generate **dashboards**.

---

## 📈 Power BI Integration

- Power BI connects to **Azure Synapse Analytics**.
- Reports are built using **DAX and Power Query**.
- Dashboards display insights from **transformed datasets**.

---

## 🔥 Future Enhancements

- Automate pipeline deployment with **Terraform/Bicep**.
- Implement **CI/CD with Azure DevOps**.
- Enable **real-time streaming** using **Azure Stream Analytics**.

---

## 📜 Licence

This project is licensed under the **MIT Licence**. See `LICENCE` for details.

---

### 💡 Author

- **Amy Law**
- **ThunderDog22**



