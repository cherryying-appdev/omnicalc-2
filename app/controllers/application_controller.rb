class ApplicationController < ActionController::Base
  def addition_results
    # Parameters: {"first_num"=>"20", "second_num"=>"4"}

    @first = params.fetch("first_num").to_f
    @second = params.fetch("second_num").to_f
    @result = @first + @second

    render({ :template => "math_templates/add_results.html.erb"})
  end

  def blank_add_form
    render({ :template => "math_templates/add_form.html.erb"})
  end
end
