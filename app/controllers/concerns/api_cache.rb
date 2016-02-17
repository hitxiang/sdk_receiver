module ApiCache 
  # five minutes 
  CACHE_EXPIRY = 3600*5
  # Rails cache store if production?
  def cache_storage(key=nil, &block)
    key = key.join('.') if key.is_a?(Array)
    result = unless Rails.env.development?
      Rails.cache.fetch key, timeToLive: CACHE_EXPIRY do
        yield if block_given?
      end
    else
      yield if block_given?
    end
    return result
  end
end  