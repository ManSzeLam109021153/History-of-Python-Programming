import scrapy
from bs4 import BeautifulSoup

class ArticleSpider(scrapy.Spider):
    name='cna_news'
    
    def start_requests(self):
        urls=['https://www.cna.com.tw']
        return[scrapy.Request(url=url, callback=self.parse) for url in urls]
    
    def parse(self, response):
        bs=BeautifulSoup(response.body, 'html.parser')
        titleList=bs.findAll('div',{'class':'title'})
        print(title.get_text())
        
from twisted.internet import reactor
from scrapy.crawler import CrawlerRunner
crawler=CrawlerRunner()
d=crawler.crawl(ArticleSpider)
d.addBoth(lambda_: reactor.stop())
reactor.run()
    