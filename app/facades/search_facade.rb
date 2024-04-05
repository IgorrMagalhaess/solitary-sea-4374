class SearchFacade
   def initialize(params, service = SearchService.new)
      @params = params
      @service = service
      @members_by_nation = nil
   end

   def members_by_nation
      @members_by_nation ||= begin
         member_json = @service.get_members_by_nation(@params)
         @members_by_nation = member_json.map { |member_data| Member.new(member_data) }
      end
   end
end