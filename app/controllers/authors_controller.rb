class AuthorsController < ApplicationController
    def show
        @author = Author.find(params[:id])
      end

    def new
      end

    def create
      # render plain: params[:author].inspect
      # end
      @author = Author.new(author_params)
      puts author_params.inspect

      @author.save
      redirect_to @author
      end

      private
        def author_params
          params.require(:author).permit(:first_name, :last_name, :homepage)
        end
end
