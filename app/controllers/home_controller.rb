class HomeController < ApplicationController
  skip_before_action :authenticate_user!

  def index
		signer = Aws::S3::Presigner.new
		@url, @headers = signer.presigned_request(
			:get_object, bucket: "kinorails-static-assets", key: "cinema_paradiso.jpg"
		)
  end

end
