# Download the AWS package
$ curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"

# Install downloaded package
sudo installer -pkg ./AWSCLIV2.pkg -target /

# Setup AWS CLI credentials
AWS configure
# Enter AWS Access Key ID
# Enter AWS Secret Access Key
# Enter Default region name

# Go to the folder of dataset
# Copy JSON reference files to S3
aws s3 cp . s3://de-on-youtube-raw-apsoutheast1-dev-kunanya/youtube/raw_statistics_reference_data/ --recursive --exclude "*" --include "*.json"
# Copy CSV files to s3
aws s3 cp CAvideos.csv s3://de-on-youtube-raw-apsoutheast1-dev-kunanya/youtube/raw_statistics/region=ca/
aws s3 cp DEvideos.csv s3://de-on-youtube-raw-apsoutheast1-dev-kunanya/youtube/raw_statistics/region=de/
aws s3 cp FRvideos.csv s3://de-on-youtube-raw-apsoutheast1-dev-kunanya/youtube/raw_statistics/region=fr/
aws s3 cp GBvideos.csv s3://de-on-youtube-raw-apsoutheast1-dev-kunanya/youtube/raw_statistics/region=gb/
aws s3 cp INvideos.csv s3://de-on-youtube-raw-apsoutheast1-dev-kunanya/youtube/raw_statistics/region=in/
aws s3 cp JPvideos.csv s3://de-on-youtube-raw-apsoutheast1-dev-kunanya/youtube/raw_statistics/region=jp/
aws s3 cp KRvideos.csv s3://de-on-youtube-raw-apsoutheast1-dev-kunanya/youtube/raw_statistics/region=kr/
aws s3 cp MXvideos.csv s3://de-on-youtube-raw-apsoutheast1-dev-kunanya/youtube/raw_statistics/region=mx/
aws s3 cp RUvideos.csv s3://de-on-youtube-raw-apsoutheast1-dev-kunanya/youtube/raw_statistics/region=ru/
aws s3 cp USvideos.csv s3://de-on-youtube-raw-apsoutheast1-dev-kunanya/youtube/raw_statistics/region=us/
