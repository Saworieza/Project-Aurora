class Teacher < ActiveRecord::Base
	has_attached_file :image, styles: { large: "300x350#", medium: "200x250#", thumb: "100x100#", avatar: "25x25#" }
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

    has_many :students

  	def self.to_csv(options = {})
  		CSV.generate(options) do |csv|
  			csv << column_names #or you can be more specific with the names if you want to
  			all.each do |teacher|
  				csv << teacher.attributes.values_at(*column_names)
  			end
  		end
  	end

    def self.import(file)
      CSV.foreach(file.path, headers: true) do |row|
        teacher = find_by_id(row["id"]) || new
        teacher.attributes = row.to_hash.slice #(*accessible_attributes)
        teacher.save!
      end
    end

end
