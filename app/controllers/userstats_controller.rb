class UserstatsController < ApplicationController

  def index  
  	@user = User.count

  	number = mexico_states
  	state = Array.new

		number.each_with_index do |item, index|
			state.push(User.where("state = ?", mexico_states[index]).count)
		end
	
		 @state1 = state



@question = Question.new(params[:question])
if verify_recaptcha() and @question.save
redirect_to :action => 'show', :permalink => @question.permalink
else
render :action => 'new'
end

  end

  def show
  end
  

  def mexico_states
    @mexico_states = ['Aguascalientes', 'Baja California Norte', 'Baja California Sur', 'Campeche', 
              'Chiapas', 'Chiuahua', 'Coahuila', 'Colima', 'Distrito Federal', 'Durango', 'Guanajuato', 
              'Guerrero', 'Hidalgo', 'Jalisco', 'Mexico', 'Michoacan', 'Morelos', 'Nayarit',
              'Nuevo Leon', 'Oaxaca', 'Puebla', 'Queretaro', 'Quintana Roo', 'San Luis Potosi', 
              'Sinaloa', 'Sonora', 'Tabasco', 'Tamaulipas', 'Taxcala', 'Veracruz', 'Yucatan', 'Zacatecas'  ]
  end

  

end
