import kagglehub
import os

# Download latest version
#path = kagglehub.dataset_download("emmanueltugbeh/northwind-orders-and-order-details")
DATASET_NAME = "emmanueltugbeh/northwind-orders-and-order-details"
#GITHUB_REPO = ""

dataset_path = kagglehub.dataset_download(DATASET_NAME)
print(dataset_path)
project_path = os.path.basename(dataset_path)
print(project_path)
os.rename(dataset_path, f"datasets/{project_path}")
