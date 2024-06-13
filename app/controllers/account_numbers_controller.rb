class AccountNumbersController < ApplicationController
    before_action :set_member

    def new
        @account_number = @member.account_numbers.build
    end

    def create 
        @account_number = @member.account_numbers.build(account_number_params)
        if @account_number.save
            redirect_to @member, 
            notice: "Account number was successfully added."
        else    
            render :new
        end
    end
    private
    def set_member
        @member = Member.find(params[:member_id])
    end
    def account_number_params
        params.require(:account_number).permit(:number, :member_id, :account_type)
    end
end
