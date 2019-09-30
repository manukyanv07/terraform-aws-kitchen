require 'aws-sdk'

s3 = Aws::S3::Resource.new

control "s3_bucket" do
  bucket = s3.bucket(input('bucket_name'))
  file1 = bucket.object(input('timestamp1'))
  file2 = bucket.object(input('timestamp2'))

  describe "Check s3 bucket was created" do # This line reads the value of the input
    describe(bucket) do
      it {should exist}
    end
    describe file1 do
      it {should exist}
    end
    describe file2 do
      it {should exist}
    end
  end
end