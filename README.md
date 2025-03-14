
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
