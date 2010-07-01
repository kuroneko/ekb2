DBDUMP = "tyr101-sqlite3-v1.db"
DBDUMPURL = "http://zofu.no-ip.de/tyr101/tyr101-sqlite3-v1.db.bz2"

# decompress the dump from the tmp directory into the database directory
file "#{Rails.root}/db/#{DBDUMP}" => ["#{Rails.root}/tmp/#{DBDUMP}.bz2"] do |t|
  begin
    sh "bzip2 -dc #{t.prerequisites.join(" ")} > #{t.name}"
  rescue
    rm t.name
    raise
  end
end

file "#{Rails.root}/tmp/#{DBDUMP}.bz2" => ["#{Rails.root}/tmp"] do |t|
  begin
    sh "curl -o #{t.name} #{DBDUMPURL}"
  rescue
    rm t.name
    raise
  end
end

file "#{Rails.root}/tmp" do |t|
  mkdir t.name
end

desc "Installs DB dump from eve-id"
task :install_eve_dump => ["#{Rails.root}/db/#{DBDUMP}"]
