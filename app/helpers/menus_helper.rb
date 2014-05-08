module MenusHelper

def getMenus
    Menu.destroy_all
    @url = "http://www.lounasaika.net/api/v1/menus.json"
    @response = HTTParty.get(@url)
    @ret = @response.parsed_response
    @ret.each do |item|
    @menu = Menu.new
      @menu.name = item["name"]
      @menu.address = item["address"]
      @menu.campus = item["campus"]
      @menu.open = item["open"]
      @menu.location = getLocation(item)
      @menu.url = getUrl(item)
      @menu.meal = getMeals(item)
      @menu.save
    end
    @response
    end

  def getLocation(item)
    @location = Location.new
    @location.lat = item["location"]["lat"]
    @location.lng = item["location"]["lng"]
    if @location.save
      @location
    else
      nil
    end
end

  def getUrl(item)
      @url = Url.new
      @url.fi = item["url"]["fi"]
      @url.en = item["url"]["en"]
      if @url.save
        @url
      else
        nil
      end
    end
  end

def getMeals(item)
  @meal = Meal.new
     @meal.fi = item["meals"]["fi"] unless item["meals"].nil?
     @meal.en = item["meals"]["en"] unless item["meals"].nil?
  if @meal.save
    @meal
  else
    nil
  end
end

def returnStaticJson
  @@menus = File.read('app/assets/menus.json');
end
