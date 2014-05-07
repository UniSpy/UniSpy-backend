module MenusHelper

def getMenus
    @url = "http://www.lounasaika.net/api/v1/menus.json"
    @response = HTTParty.get(@url)
  end
end
