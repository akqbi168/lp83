class FormsController < ApplicationController
  def new
    @form = Form.new
  end

  def create
    @form = Form.new(form_params)
    if @form.save
      redirect_to root_path
    else
      redirect_to kanri_path
    end
  end

  def index
    @forms = Form.all
  end

  def update
    @form = Form.find(params[:id])
    if @form.visible
      @form.visible = false
    else
      @form.visible = true
    end
    @form.save
    redirect_to kanri_forms_path
  end

  private

  def form_params
    params.require(:form).permit(:name, :email, :body, :visible)
    # params.permit(:name, :email, :body, :visible)
  end
end