
# 📂 Kaggle Dataset Downloader

This project contains a **Python script** that downloads a dataset from Kaggle using the Kaggle API and saves it to the project folder. The dataset is then manually committed and uploaded to GitHub using **GitHub Desktop**.

## 🚀 Features
✔️ Downloads a dataset from Kaggle using the **Kaggle API** or **kagglehub**  
✔️ Saves the dataset inside the `datasets/` folder in the project directory  
✔️ Users manually **commit and upload changes** via **GitHub Desktop**  
# Azure
building first etl
## create Azure data lake
* hierachal box checked will ensure the creation of data lake otherwise account is a blob by default
* create three containers:
  1 is to load data from github to azure
  2 is to load data from container 1 to 2 using databricks
  3 is to load data from container 2 to 3 using azure sypase
  
## create ADF
## 🚀 Data Pipeline: Pulling Data from GitHub to Azure Storage

This project includes an automated pipeline that **retrieves data from a GitHub repository** and stores it in an **Azure Storage Account**. The pipeline is built using **Azure Data Factory (ADF)** and leverages an **HTTP linked service** to fetch files from GitHub.

---

## 📌 How the Pipeline Works
1. **GitHub as Data Source**  
   - The pipeline pulls data files directly from a **GitHub repository**.
   - It uses the **GitHub API** to fetch file contents dynamically.

2. **HTTP Linked Service in Azure Data Factory**  
   - The pipeline uses an **HTTP linked service** to make requests to GitHub.
   - The request is a **GET API request** that retrieves file contents from GitHub.

3. **Storing Data in Azure Storage**  
   - The retrieved data is transferred and stored in an **Azure Storage Account**.
   - This allows further data processing, analytics, or integration with other Azure services.

---
