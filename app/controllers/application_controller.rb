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

  def street_to_coords_results
    @user_input = params.fetch("user_street_address")
    url = "https://maps.googleapis.com/maps/api/geocode/json?address=" + @user_input + "&key=" + ENV.fetch("GMAPS_KEY")
    raw_data = open(url).read
    parsed_data = JSON.parse(raw_data)
    results_array = parsed_data.fetch("results")
    first_result = results_array.at(0)
    geometry_hash = first_result.fetch("geometry")
    location_hash = geometry_hash.fetch("location")
    @latitude = location_hash.fetch("lat")
    @longitude = location_hash.fetch("lng")

    render({ :template => "meterologist/street_to_coords_results.html.erb"})
  end

  def blank_street_to_coords_form
    render({ :template => "meterologist/street_to_coords_form.html.erb"})
  end
end
