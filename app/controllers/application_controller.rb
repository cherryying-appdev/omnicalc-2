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

  def blank_subtract_form
    render({ :template => "math_templates/subtract_form.html.erb"})
  end

  def subtract_results
    @first = params.fetch("first_num").to_f
    @second = params.fetch("second_num").to_f
    @result = @second - @first

    render({ :template => "math_templates/subtract_results.html.erb"})
  end

  def blank_multiply_form
    render({ :template => "math_templates/multiply_form.html.erb"})
  end

  def multiply_results
    @first = params.fetch("first_num").to_f
    @second = params.fetch("second_num").to_f
    @result = @first * @second

    render({ :template => "math_templates/multiply_results.html.erb"})
  end

  def blank_divide_form
    render({ :template => "math_templates/divide_form.html.erb"})
  end

  def divide_results
    @first = params.fetch("first_num").to_f
    @second = params.fetch("second_num").to_f
    @result = @first / @second

    render({ :template => "math_templates/divide_results.html.erb"})
  end
end
