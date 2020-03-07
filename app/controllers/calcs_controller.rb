class CalcsController < ApplicationController
  def show
    val1 = params[:val1].to_i
    calc = params[:calc]
    val2 = params[:val2].to_i

    @result = if calc == "addition"
                  val1 + val2
              elsif calc == "subtraction"
                  val1 - val2
              elsif calc == "multiplication"
                val1 * val2
              elsif calc == "division"
                val1 / val2
              else
                "計算できません"
              end
  end
end


# addition = val1 + val2
# subtraction = val1 - val2
# multiplication = val1 * val2
# division = val1 / val2

# if calc == "addition"
#   @result = val1 + val2
# elsif calc == "subtraction"
#   @result = val1 - val2
# elsif calc == "multiplication"
#   @result = val1 * val2
# elsif calc == "division"
#   @result = val1 / val2
# else
#   "計算できません"
# end
