require "image_processing/mini_magick"

class ImageUploader < Shrine
    plugin :processing
    plugin :versions, names: [:medium, :thumb] # enable Shrine to handle a hash of files
    plugin :delete_raw # delete processed files after uploading

    process(:store) do |io, context|
        original = io.download
        pipeline = ImageProcessing::MiniMagick.source(original)

        size_80 = pipeline.resize_to_limit!(80, 80)
        size_300 = pipeline.resize_to_limit!(300, 300)

        original.close!

        # return hash of 2 sizes of the same image
        { medium: size_300, thumb: size_80 }
    end
end