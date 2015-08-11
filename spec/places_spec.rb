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
  describe(".save") {
    it("saves places") {
      new_place = Places.new("Beijing").save()
      expect(Places.all()).to(eq(new_place))
    }
  }
  describe(".clear") {
    it("empties all saved places") {
      Places.new("Beijing").save()
      Places.clear()
      expect(Places.all()).to(eq([]))
    }
  }
}
