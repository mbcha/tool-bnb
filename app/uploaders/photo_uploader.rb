class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  version :avatar do
    cloudinary_transformation effect: "brightness:30", radius: 20,
      width: 150, height: 150, crop: :thumb, gravity: :face
  end
end
