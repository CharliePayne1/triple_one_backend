class CasesController < ApplicationController

    def index
        cases = Case.where(decision: "awaiting decision")
        render json: { cases: cases }
    end

    def show
        show_case = Case.find_by(case_params[:id])
        render json: { cases: show_case}
    end

    def create
        new_case = Case.create(case_params)
    end

    def edit
        
    end

    def update
    
    end

    private

        def case_params
            params.require(:case).permit(:symptoms, :image_url, :email)
        end

end
