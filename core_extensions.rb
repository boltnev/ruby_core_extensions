require 'unicode'

class Array

  def uniq_by(&mtd)
    transforms = []
    self.select do |el|
      should_keep = !transforms.include?(t=mtd[el])
      transforms << t
      should_keep
    end
  end

  def uniq_by!(&mtd)
    self.replace uniq_by(&mtd)
  end

  # Сортировка по методу &mtd элементов массива
  def sort_by(&mtd)
    self.sort { |a,b| mtd[a] <=> mtd[b] }
  end

  def sort_by!(&mtd)
    self.sort!{ |a,b| mtd[a] <=> mtd[b] }
  end

  # Элементы массива вперемешку
  def mix
    duplicated_original, new_array = self.dup, self.class.new
    new_array << duplicated_original.slice!(Kernel.rand(duplicated_original.size)) \
      until new_array.size.eql?(self.size)
    new_array
  end

  def mix!
    self.replace(mix)
  end

end

class Object

  # Объект - не nil?
  # Для упрощения записи некоторых условий
  def not_nil?
    !self.nil?
  end

end

class String

   def downcase_utf8
     Unicode::downcase(self)
   end

   def downcase_utf8!
     self.replace downcase_utf8
   end

   def upcase_utf8
     Unicode::upcase(self)
   end

   def upcase_utf8!
     self.replace upcase_utf8
   end

   def capitalize_utf8
     Unicode::capitalize(self)
   end

   def capitalize_utf8!
     self.replace capitalize_utf8
   end

end
