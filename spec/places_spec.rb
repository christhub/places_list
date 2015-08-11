require('rspec')
require('places')


describe(Places) {
  describe('#description') {
    it("lets you write the name of a place") {
      new_place = Places.new("Portland")
      expect(new_place.description).to(eq("Portland"))
    }
  }

  describe(".all") {
    it("is empty at first") {
      expect(Places.all).to(eq([]))
    }
  }
}
