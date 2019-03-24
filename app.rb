require 'arena'
require 'open-uri'
require 'dotenv/load'
require 'fileutils'

Arena.configure do |config|
  config.access_token = ENV['ACCESS_TOKEN']
end

@channel = Arena.channel(ARGV[0])

@channel.contents.each do |connectable| 

  if connectable and connectable.attachment and connectable.attachment.extension === 'pdf'
    attachment = connectable.attachment


    dirname = "PDF/#{@channel.slug}"
    FileUtils.mkdir_p(dirname) unless Dir.exists?(dirname)

    open("#{dirname}/#{connectable.title}.pdf", 'wb') do |file|
      file << open(attachment.url).read
    end
  end
end 
