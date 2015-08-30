
class SearchController < ApplicationController

	def train_search
		@trains = Train.where(:from => params[:f], :to => params[:t])
	end
end
