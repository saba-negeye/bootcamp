class AuthorsController < ApplicationController
    http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]
    def index 
        @authors = Author.all
    end 

    def show
        @author = Author.find(params[:id])
    end 

    def new
        @author = Author.new
    end

    def create 
        @author = Author.new(author_params)
        if @author.save
            redirect_to @author
          else
            render :new, status: :unprocessable_entity     
        end
    end 

    def edit
        @author = Author.find(params[:id])
    end

    def update 
        @author = Author.find(params[:id])
        if author.update(author_params)
            redirect_to @author
            render :edit 
        end
    end 

    def destroy
        author = Author.find(params[:id])
        author.destroy

        redirect_to @author
      end

      private

      def author_params
        params.require(:author).permit(:name, :bio)
      end

    
end 
