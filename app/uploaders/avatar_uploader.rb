class AvatarUploader < CarrierWave::Uploader::Base

  #include mini_magic for image processing
  include CarrierWave::MiniMagick

  #storage option
  storage :file

  #directory for storing image
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  #Create different versions of your upload files
  version :thumb do
    process :resize_to_fit => [50, 50]
  end

  version :medium do 
    process :resize_to_fit => [300, 300]
  end

  version :small do 
    process :resize_to_fit => [140, 140]
  end

  #Add a white list of extensions which are allowed to be updated.
  def extention_white_list
    %w(jpg jpeg gif png)
  end

end
