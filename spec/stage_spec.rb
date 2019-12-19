require('rspec')
require('stage')

describe '#Stage' do

  before(:each) do
    Stage.clear()
    Artist.clear()
  end

  describe('.all') do
    it("returns an empty array when there are no stages") do
      expect(Stage.all).to(eq([]))
    end
  end

  describe('#save') do
    it("saves a stage") do
      stage = Stage.new("North", nil)
      stage.save()
      stage2 = Stage.new("South", nil)
      stage2.save()
      expect(Stage.all).to(eq([stage, stage2]))
    end
  end

  describe('#==') do
    it("is the same stage if it has the same attributes as another stage") do
      stage = Stage.new("North", nil)
      stage2 = Stage.new("North", nil)
      expect(stage).to(eq(stage2))
    end
  end

  describe('.clear') do
    it("clears all stages") do
      stage = Stage.new("North", nil)
      stage.save()
      stage2 = Stage.new("South", nil)
      stage2.save()
      Stage.clear()
      expect(Stage.all).to(eq([]))
    end
  end

  describe('.find') do
    it("finds a stage by id") do
      stage = Stage.new("North", nil)
      stage.save()
      stage2 = Stage.new("South", nil)
      stage2.save()
      expect(Stage.find(stage.id)).to(eq(stage))
    end
  end

  describe('.search_by_name') do
    it("finds a stage by name") do
      stage = Stage.new("North", nil)
      stage.save()
      stage2 = Stage.new("South", nil)
      stage2.save()
      expect(Stage.search_by_name(stage.name)).to(eq([stage]))
    end
  end

  describe('#update') do
    it("updates a stage by id") do
      stage = Stage.new("North", nil)
      stage.save()
      stage.update("Northeast")
      expect(stage.name).to(eq("Northeast"))
    end
  end

  describe('#delete') do
    it("deletes a stage by id") do
      stage = Stage.new("North", nil)
      stage.save()
      stage2 = Stage.new("South", nil)
      stage2.save()
      stage.delete()
      expect(Stage.all).to(eq([stage2]))
    end
  end

  describe('#artists') do
    it("returns an stage's artists") do
      stage = Stage.new("North", nil)
      stage.save()
      puts stage.artists
      artist = Artist.new("Barney and Friends", stage.id, nil)
      artist.save()
      artist2 = Artist.new("Big Bird", stage.id, nil)
      artist2.save()
      expect(stage.artists).to(eq([artist, artist2]))
    end
  end

end
