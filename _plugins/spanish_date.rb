module Jekyll
    module SpanishDateFilter
      def spanish_date(input, format)
        require 'time'
        t = Time.parse(input.to_s)
        formatted_date = t.strftime(format)
        months = {
          "January"   => "enero",
          "February"  => "febrero",
          "March"     => "marzo",
          "April"     => "abril",
          "May"       => "mayo",
          "June"      => "junio",
          "July"      => "julio",
          "August"    => "agosto",
          "September" => "septiembre",
          "October"   => "octubre",
          "November"  => "noviembre",
          "December"  => "diciembre"
        }
        months.each do |eng, esp|
          formatted_date.gsub!(eng, esp)
        end
        formatted_date
      end
    end
  end
  
  Liquid::Template.register_filter(Jekyll::SpanishDateFilter)
  