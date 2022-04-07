# "Крутой" способ добавить метод инстансу
# =======================================

class Foo;end

foo = Foo.new

def foo.bar
  puts 'bar'
end

# Как сделать массив уникальным
# используя стандартные инструменты,
# но не используя алгоритмы и
# встроенные методы Ruby?
#
# Всё просто! Через хэш :)
# ===========================

hash = {}
[1, 1, 3, 3, 2, 2].each { |i| hash[i] = true }
set = hash.keys
set # => [1, 3, 2]

# Немножко про неймспейсы
# ========================

VAR = 'foo'

module A
  VAR = 'bar'
  module B
    def self.foo
      VAR
    end
  end
end

A::B.foo # <= Всё просто, bar

module A::B
  def self.foo
    VAR
  end
end

A::B.foo # <= Что вернёт? foo

# puts возвращает nil
# ===================

foo = ['foo', 'bar', 'baz'].map { |i| puts i }
foo # => [nil, nil, nil]

