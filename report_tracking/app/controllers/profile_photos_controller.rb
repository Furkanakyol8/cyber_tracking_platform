class ProfilePhotosController < ApplicationController
    def upload_profile_photo
       
        render json: { status: "success", message: "Profile photo uploaded successfully" }
      end
 
end
