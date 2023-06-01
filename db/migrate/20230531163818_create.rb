class Create < ActiveRecord::Migration[7.0]
  def change

  reversible do |dir|
    dir.up do
      10.times do |i|
        puts "Creating demo #{i+1}"
      Student.create(
        first_name: "Demo name #{i+1}",
        last_name: "Demo description #{i+1}"
      )
      end
    end
  end
end
