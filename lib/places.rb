class Places
  define_method(:initialize) do |place|
    @place = place
  end

  define_method(:description) do
    @place
  end

  # define_singleton_method(:all) do
  #
  # define_method(:save)
end
