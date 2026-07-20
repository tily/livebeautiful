Dir["*.jpg"].each do |path|
  base, ext = path.split(".")
  system %(magick "#{path}" -resize 10% "#{base}.thumb.#{ext}")
end
