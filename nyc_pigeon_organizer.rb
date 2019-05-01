require "pry"

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  # This initializes pigeon_list with all names
  data.each do |attribute, specific|
    specific.each do |detail, names|
      if attribute == :gender
        names.each do |name|
          pigeon_list[name] = {}
        end
      end
    end
  end
  # Now pigeon_list will be populated
  data.each do |attribute, specific|
    specific.each do |detail, names|
      names.each do |name|
        binding.pry
        if pigeon_list[name][attribute].nil?
          pigeon_list[name][attribute] = []
        end
        pigeon_list[name][attribute].push(detail.to_s)
      end
    end
  end
  binding.pry
  pigeon_list
end