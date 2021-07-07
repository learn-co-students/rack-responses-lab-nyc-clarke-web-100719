class Application

    def call(env)
        resp = Rack::Response.new

        num_1 = Time.new(2015,11,27,9,30)
        num_2 = Time.new(2015,11,27,12,00)
        num_3 = Time.now 
        
        
        if num_3 < num_2
            resp.write "Good Morning!"
        else
            resp.write "Good Afternoon!"
        end 

        resp.finish
    end 
end 

        
        
        
        
        
        
        
        
        
#         describe "App" do

#             it 'wishes user a good morning in the morning' do
#               allow(Time).to receive(:now){
#                 Time.new(2015,11,27,9,30)
#               }
#               get '/'
#               expect(last_response.body).to include("Morning")
#             end
          
#             it 'wishes user a good afternoon in the afternoon' do
#               allow(Time).to receive(:now){
#                 Time.new(2015,11,27,14,30)
#               }
#               get '/'
#               expect(last_response.body).to include("Afternoon")
#             end
#           end
          

#           1. If it's before noon, greet the user with "Good Morning!"
#   2. If it's after noon, greet the user with "Good Afternoon!". Remember that getting the time may return results in 24 hour time! Anytime after 12 is the afternoon.