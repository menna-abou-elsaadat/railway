class BuyController < ApplicationController

before_filter :check, except: [:noseats]


	def buy_ticket
		
		Ticket.create(:train_id => params[:i])		
	end
	def noseats
		
	end
	private
	def check
		@number=Train.where(id: params[:i]).select(:number_seats)
		unless @number
			redirect_to no_seats_path
			end
	end
	
end
	

