class SearchController < ApplicationController
   def index
      @facade = SearchFacade.new(params[:nation])
      @members = @facade.members_by_nation.take(25)
      @nation = params[:nation].gsub('+', ' ').titleize
   end
end