class ProcessFile < ActiveRecord::Base
  def self.save(upload)
    directory = "public/data"
    # create the file path
    path = File.join(directory, upload.original_filename)
    # write the file
    File.open(path, "wb") { |f| f.write(upload.read) }
  end
end
