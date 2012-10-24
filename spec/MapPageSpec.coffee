
describe "MapPage", ->
  beforeEach -> 
    mapPage = new MapPage("HomePage",1);

  it "should have a name", ->
    expect(mapPage.name).toEqual("HomePage");
