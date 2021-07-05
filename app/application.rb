class Application
    

    def call(env)
        respond = Rack::Response.new
        time = Time.now

        if time.hour < 12
            respond.write "Good Morning"
        else
            respond.write "Good Afternoon"
        end
        respond.finish
    end
end