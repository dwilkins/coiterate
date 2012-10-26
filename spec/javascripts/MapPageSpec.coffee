
describe "MapPage", ->
  describe "constructor", ->
    beforeEach ->
      @rootPage = new MapPage "HomePage"

    it "should have a name", ->
      expect(@rootPage.name).toEqual("HomePage")
    it "should default to level 1", ->
      expect(@rootPage.level).toEqual(1)
  describe "children", ->
    beforeEach ->
      @rootPage = new MapPage "root"
      @level1child1 = new MapPage "level1child1"
      @level1child2 = new MapPage "level1child2"
    it "shouldn't have any children", ->
      expect(@rootPage.children.length).toEqual(0)
      expect(@level1child1.children.length).toEqual(0)
      expect(@level1child2.children.length).toEqual(0)
    it "shouldn't have a parent", ->
      expect(@rootPage.parent).toEqual(null)
      expect(@level1child1.parent).toEqual(null)
      expect(@level1child2.parent).toEqual(null)
    it "should accept a child", ->
      @rootPage.add_children @level1child1
      expect(@rootPage.children.length).toEqual(1)
    it "should accept children", ->
      @rootPage.add_children @level1child1,@level1child2
  describe "notes", ->
    beforeEach ->
      @rootPage = new MapPage "root"
      @rootNote = new MapNote "dwilkins@conecuh.com", "This is an awesome page"
      @anotherNote = new MapNote "dwilkins@conecuh.com", "srsly"

    it "can attach a note", ->
      @rootPage.add_note @rootNote
      expect(@rootPage.notes.length).toEqual(1)
    it " can attach notes", ->
      @rootPage.add_note @rootNote,@anotherNote
      expect(@rootPage.notes.length).toEqual(2)