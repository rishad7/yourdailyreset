require 'active_support/concern'

module Base64ImageActiveStorage
  extend ActiveSupport::Concern

  def attach_base64(attribute, payload)
    split = split_payload(payload)
    if split
      filename = "#{SecureRandom.uuid}.#{split[:extension]}"
      begin
        File.open("#{Rails.root}/tmp/images/#{filename}", 'wb') do |file|
          file.write(Base64.decode64(split[:data]))
        end
        if self.respond_to?(attribute)
          self.send(attribute).attach(io: File.open("#{Rails.root}/tmp/images/#{filename}"), filename: filename)
        end
      ensure
        FileUtils.rm("#{Rails.root}/tmp/images/#{filename}")
      end
    end
  end

  private
    def split_payload(payload)
      if payload.match(%r{^data:(.*?);(.*?),(.*)$})
        data = Hash.new
        data[:type] = $1 # "image/gif"
        data[:encoder] = $2 # "base64"
        data[:data] = $3 # base 64 data string
        data[:extension] = $1.split('/')[1] # "gif"
        return data
      else
        return nil
      end
    end

end
