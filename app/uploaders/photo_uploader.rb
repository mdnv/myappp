class PhotoUploader < CarrierWave::Uploader::Base
  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def default_url
    "default-avatar.png"
  end

  def extension_whitelist
    %w(jpg jpeg gif png)
  end
end
