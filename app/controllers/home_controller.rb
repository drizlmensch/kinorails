class HomeController < ApplicationController
  skip_before_action :authenticate_user!

  def index
		@img_urls = []
		bucket = Aws::S3::Resource.new.bucket(ENV['S3_BUCKET_NAME'])
		signer = Aws::S3::Presigner.new
		
		bucket.objects.each do |obj|
			url, headers = signer.presigned_request(
				:get_object, bucket: "kinorails-static-assets", key: obj.key
			)
			@img_urls.push(url)
		end
  end

end
