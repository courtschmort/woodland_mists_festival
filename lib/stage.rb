class Stage

  attr_accessor :name, :id

  # Class Variables
  @@stages = {}
  @@total_rows = 0

  # Instance Variables
  def initialize(name, id)
    @name = name
    @id = id || @@total_rows += 1
  end

  # Class Methods
  def self.clear
    @@stages = {}
    @@total_rows = 0
  end

  def self.find(id)
    @@stages[id]
  end

  def self.all
    @@stages.values
  end

  def self.search_by_name(name)
    @@stages.values.select { |stage| /#{name}/i.match? stage.name }
  end

  # Instance Methods
  def save
    @@stages[self.id] = Stage.new(self.name, self.id)
  end

  def update(name)
    # @name = name
    self.name = name
    @@stages[self.id] = Stage.new(self.name, self.id)
  end

  def delete
    @@stages.delete(self.id)
  end

  def artists
    Artist.find_by_stage(self.id)
  end

  def ==(stage_to_compare)
    self.name == stage_to_compare.name
  end

end
