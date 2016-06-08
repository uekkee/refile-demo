class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
    @user.build_cover_image
    @user.build_skill_sheet
  end

  def create
    @user = User.create!(create_params)
#    @user.save!

    redirect_to action: :index
  end

  private

  def create_params
    attributes = params.permit(user: [:name, :profile_image,
                                      cover_image_attributes: [:file],
                                      skill_sheet_attributes: [:file] ])[:user]
    attributes.delete(:cover_image_attributes) unless attributes.dig(:cover_image_attributes, :file).is_a?(ActionDispatch::Http::UploadedFile)
    attributes.delete(:skill_sheet_attributes) unless attributes.dig(:skill_sheet_attributes, :file).is_a?(ActionDispatch::Http::UploadedFile)
    attributes
  end
end