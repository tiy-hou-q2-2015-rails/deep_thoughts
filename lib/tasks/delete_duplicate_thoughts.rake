desc 'Delete duplicate rake files'
task :delete_duplicate_thoughts => :environment do

  # puts "Yo! Count of thoughts: #{Thought.count}"

  Thought.all.group_by{|t| t.content}.each do |content, thoughts|
    # puts "#{content} has #{thoughts.count} entries"

    if thoughts.count > 1
      # removing duplicates
      thoughts[1..-1].each do |thought|
        thought.destroy
      end
    end

  end

end
