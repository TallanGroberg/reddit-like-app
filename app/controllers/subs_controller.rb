class SubsController < ApplicationController
  # before_action :set_sub, except: [:index, :new, :create]
  before_action :set_sub, only: [:show, :edit, :update, :destroy]
  def index
    @subs = Sub.all
    # render: :index
  end

  def show

  end

  def new
    #render :new
    @sub = Sub.new
  end
  def edit

  end
  def update

    if @sub.update(sub_params)
      redirect_to sub_path(@sub.id)
    else
      render :edit
 end
  end
  def create
    @sub = Sub.new(sub_params)

    if @sub.save
      # redirect_to sub_path(@sub) same as below
      redirect_to @sub
    else
      render :new
    end
  end

  def destroy
    @sub.destroy
    redirect_to subs_path

  end


  private

  def set_sub
    @sub = Sub.find(params[:id])

  end
    def sub_params
      #params = { sub: { nae: "Sub Name"}}
      params.require(:sub).permit(:name)
    end
end
