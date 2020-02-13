require 'fileutils'

module Jekyll
  class SchemaTypeCsvGenerator < Generator
    def generate(site)
      csv_root = File.join(site.source, 'csv')
      FileUtils.mkdir_p(csv_root)

      site.data.each do |name, data_content|
        next if data_content['properties'].length == 0

        csv_path = File.join(csv_root, name) + '.csv'
        CSV.open(csv_path, 'wb') do |csv|
          csv << ['Name', 'Type', 'Description']
          data_content['properties'].each do |prop|
            csv << [prop['name'], prop['type'], prop['description']]
          end
        end
        site.static_files << Jekyll::StaticFile.new(
          site, 
          site.source,
          'csv',
          name + '.csv'
        )
      end
    end
  end
end
