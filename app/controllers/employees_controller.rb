class EmployeesController < ApplicationController

def index
    @employees= Employee.all
end

def new
    @employee=Employee.new
end

def create
    @employee= Employee.new(employee_params)
    if @employee.save
        flash[:notice] = "Employee Created Sucessfully"
        redirect_to employee_path(@employee)
    else
        render 'new'
    end
end

def edit
    @employee=Employee.find(params[:id])
end

def update
    @employee=Employee.find(params[:id])
    if @employee.update(employee_params)
        flash[:notice] = "Employee Updated Sucessfully"
        redirect_to employee_path(@employee)
    else
        render 'edit'
    end
end

def show
    @employee = Employee.find(params[:id])
end

def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    flash[:notice] = "Employee Deleted Sucessfully"
    redirect_to employees_path 
end

private
def employee_params
    params.require(:employee).permit(:employeename, :designation, :phone)
end

end