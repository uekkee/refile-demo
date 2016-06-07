if ENV['REFILE_BACKEND'] == 'S3'
  require 'refile/s3'

  aws = {
    access_key_id: ENV['BUCKET_ACCESS_KEY'],
    secret_access_key: ENV['BUCKET_SECRET_ACCESS_KEY'],
    region: ENV['BUCKET_REGION'],
    bucket: ENV['BUCKET_NAME'],
  }
  Refile.cache = Refile::S3.new(prefix: 'cache', **aws)
  Refile.store = Refile::S3.new(prefix: 'store', **aws)
end