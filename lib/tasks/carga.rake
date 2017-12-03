namespace :carga do
  desc "TODO"
  task personas: :environment do
          
    require 'csv'

	  CSV.foreach('/home/emiliano/Escritorio/Personas.csv', headers: true) do |row|

      Person.create({
        :first_name => row[1],
        :last_name => row[2],
        :sex => row[3],
      })

    end 
  end
end
