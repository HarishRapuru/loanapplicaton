class LoanApplicationController < ApplicationController
  include Wicked::Wizard
  steps :personal, :company , :documents

  def show
    @user = current_user
    render_wizard
  end

  def update
    @user = current_user
    @user.update_attributes(user_params)

    render_wizard @user
  end

  private

  def user_params
    params.require(:user).permit(:name,:email, :pan_card ,:company_pan,:type_of_company , :annual_trunover, :funding_date,:pan_image,:aadhar_image,:address_image )
  end
end


