module Jekyll
    class YearPageGenerator < Generator
      safe true
  
      def generate(site)
        if site.layouts.key? 'years'
          years = site.collections['news'].docs.map { |post| post.date.year }.uniq
  
          years.each do |year|
            site.pages << YearPage.new(site, site.source, year)
          end
        end
      end
    end
  
    class YearPage < Page
      def initialize(site, base, year)
        @site = site
        @base = base
        @dir = "news/#{year}"
        @name = 'index.html'
  
        self.process(@name)
        self.read_yaml(File.join(base, '_layouts'), 'years.liquid')
        self.data['title'] = "#{year} News"
        self.data['year'] = year
      end
    end
  end
  