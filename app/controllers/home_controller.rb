class HomeController < ApplicationController
  skip_before_action :authenticate_user!

  def index
		s3 = Aws::S3::Resource.new
		bucket = s3.bucket('kinorails-static-assets')
		bucket.objects.limit(50).each do |obj|
			puts "  #{obj.key} => #{obj.etag}"
		end
  end
end
