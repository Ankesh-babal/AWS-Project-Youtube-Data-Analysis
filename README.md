# AWS-Project-Youtube-Data-Analysis

This project is a hands-on implementation using AWS cloud services to understand how to work with data on the cloud. I used the Trending YouTube Video Statistics dataset, which contains daily trending videos from different regions such as the US, GB, DE, CA, FR, RU, MX, KR, JP, and IN.
Each region has a separate file with information like video title, channel name, views, likes, comments, and category ID. The dataset also includes category mapping JSON files.

## Project Diagram
<img width="1536" height="1024" alt="Image Nov 20, 2025, 06_28_26 PM" src="https://github.com/user-attachments/assets/2fa4ec5f-01ec-47da-90a2-80ef3c02d835" />

## AWS Implementation
Firstly, I set up my AWS account and configured the necessary roles and permissions using AWS IAM to ensure secure access throughout the project. Once the setup was complete, I used the AWS CLI to upload the Trending YouTube dataset from Kaggle into Amazon S3, which served as the main storage location for all the files.

To understand the structure of the dataset, especially the nested JSON category files, I used the AWS Glue Data Catalog along with a Crawler. The crawler automatically extracted metadata and helped me analyze the schema, making it easier to identify how the data was organized. After reviewing the schema, I moved to Amazon Athena to query the dataset directly from S3. Running SQL queries helped me get an initial overview of the data and identify fields that were unnecessary or required cleaning before further processing.

For data cleaning, I created a Python function using AWS Lambda. This function filtered out unwanted fields, reformatted the dataset, and handled the JSON structure. The cleaned output was stored in a new S3 bucket. After this step, I used AWS Glue ETL to automate additional transformations and streamline the processing workflow.

Once the data was fully cleansed, I built an ETL pipeline using AWS Glue’s visual interface. In this pipeline, I joined the trending video data with the category mapping dataset using the category_id field to create a complete, structured output. The final processed dataset was then stored in another S3 bucket, ready for analysis and visualization.

<img width="1267" height="617" alt="image" src="https://github.com/user-attachments/assets/fd81654b-e965-4f5d-a332-1fa519c308c3" />
<img width="1271" height="672" alt="image" src="https://github.com/user-attachments/assets/ceb7d24d-9806-4a89-8b06-41ea8468bf87" />
