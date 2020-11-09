class Author < ApplicationRecord
    def initialize(first_name, last_name, homepage)
        @author.first_name = first_name
        @author.last_name = last_name
        @author.homepage = homepage
    end

    def name
         @author.first_name + ' ' + @author.last_name
    end
end
