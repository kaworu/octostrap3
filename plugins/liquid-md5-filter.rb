# Add a md5 Liquid filter (can be used for Gravatar)

module LiquidMD5Filter
  require 'digest/md5'
  def md5(input)
    Digest::MD5.hexdigest(input)
  end
end

Liquid::Template.register_filter LiquidMD5Filter
