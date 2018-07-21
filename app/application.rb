class Application
  
  def call(env)
    resp = Rack::Response.new
    
    hour = Kernel.rand(1..18)
    
    resp.write "#{hour}\n"
    
    if hour <= 12
      resp.write "Good Morning!"
    elsif hour >= 12 && hour <= 15
      resp.write "Good Afternoon!"
    end
    resp.finish
  end
end