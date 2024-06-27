module Jekyll
    class GroupByYear < Generator
      safe true
      priority :lowest
  
      def generate(site)
        site.collections["news"].docs.each do |news|
          year = news.data["date"].year
          news.data["year"] = year
  
          site.pages << YearPage.new(site, site.source, File.join("news", year.to_s), year)
        end
      end
    end
  
    class YearPage < Page
      def initialize(site, base, dir, year)
        @site = site
        @base = base
        @dir = dir
        @name = 'index.html'
  
        self.process(@name)
        self.read_yaml(File.join(base, '_layouts'), 'news_year.html')
        self.data['year'] = year
        self.data['title'] = "News for #{year}"
        self.data['posts'] = site.collections["news"].docs.select { |post| post.data["year"] == year }
      end
    end
  end
  