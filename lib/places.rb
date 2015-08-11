class Places
  @@places = []

  define_method(:initialize) do |place|
    @place = place
  end

  define_method(:description) do
    @place
  end

  define_singleton_method(:all) do
    @@places
  end

  # define_method(:save)
end
