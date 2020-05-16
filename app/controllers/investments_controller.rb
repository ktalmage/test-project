class InvestmentsController < ApplicationController
    before_action :authenticate_user!

    def index
        @user = current_user.email
        @investments = Investment.all
    end

    def show
        find_inv
        redirect_to user_investment_path
    end

    def new
    end

    def create
    end
    
    def edit 
    end

    def destroy
    end

    private

    def find_inv
        @investment = Investment.find_by_id(params[:id])
    end

    def invest_params
        params.require(:investment).permit(:name,:type,:income,:expense,:ein)
    end
end
