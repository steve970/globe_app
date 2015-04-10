# class GettyAPI
#
#   def initialize
#     @conn = Faraday.new(:url => 'https://api.gettyimages.com/v3')
#   end
#
#   def landscape(token)
#     response = @conn.get do |req|
#       req.url "/search/images?fields=id,title,high_res_comp,referral_destinations&sort_order=best&phrase=natural landscape"
#       req.headers['Content-Type'] = 'application/json'
#       req.headers['Api-Key'] = token
#     end
#
#     JSON.parse(response.body, symbolize_names: true)
#   end
#
#
# end
