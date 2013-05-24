module Jekyll
  class ParamTag < Liquid::Tag
    # {% param attribute type required "Content about this thing" "Example value" %}
    #
    #     <div class="param row-fluid">
    #       <div class="param-key span4">
    #         <div class="param-name">
    #           <strong>message</strong>
    #         </div>
    #         <div class="param-need">
    #           <small>required</small>
    #         </div>
    #         <div class="param-need">
    #           <small class="muted">required</small>
    #         </div>
    #       </div>
    #       <div class="param-value span8">
    #         <div class="param-desc">The content of the notification sent to the current user on-call</div>
    #         <div class="param-example">
    #           <strong>Example value:</strong> load average alert on host.example.com
    #         </div>
    #       </div>
    #     </div>
    #
    def initialize(tag_name, markup, tokens)
      attributes = [ 'name', 'type', 'need', 'desc', 'example' ]
      # if text =~ /(?<name>\S*)\s+(?<type>\S*)\s+(?<need>\S*)\s+\"(?<desc>\S.*)\"\s+\"(?<example>\S.*)\"/
      if markup =~ /^(?<name>\S*)\s+(?<type>\S*)\s+(?<need>\S.*\s+)?\"(?<desc>\S.*)\"\s+\"(?<example>\S.*)\"/
        @param = attributes.reduce({}) { |param, attr| param[attr] = $~[attr].strip if $~[attr]; param}

        @param['need'] ||= "optional"
      end

      super
    end

    def render(context)
      if @param
        param_name = "<div class='param-name'><strong>#{@param['name']}</strong></div>"
        param_type = "<span class='param-type'><small class='muted'>#{@param['type']},</small></span>"
        param_need = "<span class='param-need'><small class='muted'>#{@param['need']}</small></span>"
        param_key = "<div class='param-key span4'>#{param_name} #{param_type} #{param_need}</div>"

        param_desc  = "<div class='param-desc'>#{@param['desc']}</div>" #if @param['example']
        param_example = "<div class='param-example'><strong>Example:</strong> <code>#{@param['example']}</code></div>" #if @param['example']
        param_value = "<div class='param-value span8'>#{param_desc}<br>#{param_example}</div>"

        "<div class='param row-fluid'>#{param_key}#{param_value}</div>"
      else
        'Error processing input, expected syntax: {% param [name] [type] [need] ["description"] ["example"] %}'
      end
    end

  end
end

Liquid::Template.register_tag('param', Jekyll::ParamTag)


