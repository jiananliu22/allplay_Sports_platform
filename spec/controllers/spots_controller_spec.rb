require "rails_helper"

RSpec.describe SpotsController, type: :controller do
	before (:each) do
        @user=FactoryGirl.create(:user)
        sign_in @user
    end

	it "#index" do
		get :index
		expect(response).to have_http_status(200)
        #expect(response).to render_template(index)
    end

    it "#new" do
    	get :new
    	expect(response).to have_http_status(200)
    end

    # it "edit" do
    # 	get :edit

end