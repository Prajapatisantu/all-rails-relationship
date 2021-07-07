class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end

  def new
    @employee = Employee.new
    @employee.comments.build

  end
  
  def create
    @employee = Employee.create(employee_params)
     if @employee.save
       flash[:notice] = "Your employee created successfully"
       redirect_to employees_path
     end 
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])
  
      if @employee.update(employee_params)
      flash[:notice] = "Your employee updated successfully"
       redirect_to employees_path
      else
        render :edit
      end
    end

    def show
      @emp = Employee.find(params[:id])
      @projects = @emp.projects
    end

    def destroy
      @destroy = Employee.find(params[:id])
      @destroy.destroy
      flash[:notice] = "Your employee deleted successfully"
      redirect_to employees_path
    end


  private
   def employee_params
    params.require(:employee).permit(:name,:skill,:company_id, project_ids: [],comments_attributes: [:body])
   end
  
end
