class CasesController < ApplicationController

    def index
        cases = Case.all
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
            params.require(:case).permit(:symptoms, :symptoms, :image_url, :email, :decision, :doctor_id)
        end

end
