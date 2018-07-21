class Application
  
  def call(env)
    resp = Rack::Response.new
    
    if DateTime.now.hour <= 12
      resp.write "Good Morning!"
    elsif DateTime.now.hour >= 12
      resp.write "Good Afternoon!"
    end
    
  end
end