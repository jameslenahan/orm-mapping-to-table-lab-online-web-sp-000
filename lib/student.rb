class Student
  attr_accessor :name, :grade
  attr_reader :id
  
  def initialize (name,grade, id = nil)
    @name = name
    @grade = grade
    @id = id
    
    def self.create_table
      sql = <<-SQL
        CREATE TABLE IF NOT EXISTS students (
        id INTEGER PRIMARY KEY,
        name TEXT
        grade INTEGER
        )
      SQL
        DB[:conn].execute(sql)
      end
    end
  end
end
