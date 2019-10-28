
class Application

  def call(env)
    resp = Rack::Response.new

    # hour_of_day = Time.new
    time = Time.now

    # time.hour < 12 ? resp.write "Morning" : resp.write "Afternoon"

    if time.hour < 12
      resp.write "Morning"
    else
      resp.write "Afternoon"
    end

    resp.finish
  end

end