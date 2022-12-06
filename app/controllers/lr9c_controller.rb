class Lr9cController < ApplicationController
  def input
    render layout: false
  end

  def view
    @number = params[:num].to_i
    @result = Lr9cController.result_array(@number)

    respond_to do |format|
      format.html
      format.json do
        render json:
          {type: @result.class.to_s, value: @result}
      end
    end
  end

  private
  def self.result_array(num)
    arr = (0..num).select do |elem|
        ((elem**2) % (10**elem.to_s.length)).to_s == elem.to_s
    end
    Array(arr)
  end
end
