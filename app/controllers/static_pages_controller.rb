class StaticPagesController < ApplicationController
    def privacy
        if params[:lang] =='pl'
            render 'privacy_pl'
        elsif params[:lang] =='es'
            render 'privacy_es'
        end
    end
end
