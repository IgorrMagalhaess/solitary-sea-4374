class SearchService
   def conn
      conn = Faraday.new(url: "https://api.themoviedb.org/3") do |faraday|
         faraday.headers['Accept'] = 'application/json'
      end
   end

   def get_url(url)
      response = conn.get(url)

      JSON.parse(response.body, symbolize_names: true)
   end

   def get_members_by_nation(nation)
      get_url("https://last-airbender-api.fly.dev/api/v1/characters?affiliation=#{nation}")
   end
end