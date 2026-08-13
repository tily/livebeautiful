Dir["*.jpg"].each do |path|
  next if path =~ /thumb\.jpg$/
  base, ext = path.split(".")
  system %(magick "#{path}" -resize 25% "#{base}.thumb.#{ext}")
end
