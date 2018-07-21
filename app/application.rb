class Application
  
  def call(env)
    resp = Rack::Response.new
    
    hour = Kernel.rand(1..18)
    
    resp.write "#{hour}\n"
    
    if DateTime.now.hour <= 12
      resp.write "Good Morning!"
    elsif DateTime.now.hour >= 12
      resp.write "Good Afternoon!"
    end
    resp.finish
  end
end