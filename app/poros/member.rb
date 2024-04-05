class Member
   attr_reader :name,
               :photo,
               :affiliation

   def initialize(attributes)
      @name = attributes[:name]
      @photo = attributes[:photoUrl]
      @allies = attributes[:allies] 
      @enemies = attributes[:enemies] 
      @affiliation = attributes[:affiliation]
   end

   def allies
      @allies.empty? ? ["None"] : @allies
   end

   def enemies
      @enemies.empty? ? ["None"] : @enemies
   end
end