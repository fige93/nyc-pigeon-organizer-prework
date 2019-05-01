require "pry"

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  # This initializes pigeon_list with all names
  pigeon_data[:gender].values.flatten.each do {|name| pigeon_list[name] = {} }
  # Now pigeon_list will be populated
  data.each do |attribute, specific|
    specific.each do |detail, names|
      names.each do |name|
        if pigeon_list[name][attribute].nil?
          pigeon_list[name][attribute] = []
        end
        pigeon_list[name][attribute].push(detail.to_s)
      end
    end
  end
  pigeon_list
end