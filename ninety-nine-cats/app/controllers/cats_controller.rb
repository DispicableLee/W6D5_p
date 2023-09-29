class CatsController < ApplicationController
    def index
        @cats = Cat.all
        render :index
    end

    def show
        @cat = Cat.find(params[:id])
        render :show
    end 

    def new
        render :new
    end

    def create
        new_cat = Cat.new(cat_params)
        if new_cat.save
            redirect_to cat_url(new_cat)
        else
            render :new
        end
    end

    def edit
        render :edit
    end

    def update
        cat = Cat.find(params[:id])
        if cat && cat.update(cat_params)
            redirect_to cat_url(cat)
        else
            render :edit
        end
    end

    def cat_params
        params.require(:cat).permit(:color, :birth_date, :name, :sex, :description)
    end

end
