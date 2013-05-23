module Jekyll
  module AttributeFilter
    def attribute(name, type, optional=nil, notes=nil)
      "<dt>#{name}</dt>"
      "<dd>"
        "<strong>#{type}</strong>"
        ""
    end
  end
end

Liquid::Template.register_filter(Jekyll::AttributeFilter)