class SearchController < ApplicationController

    def search
        if params[:query].present?
            @members = Member.where("first_name LIKE ? OR last_name LIKE ?", "%#{params[:query]}%", "%#{params[:query]}%")
            @numbers = AccountNumber.where(number: params[:query])
        else
            @members = Member.none
        end
    end

end
