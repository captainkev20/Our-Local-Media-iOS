import Foundation

struct Constants {
    
    struct imageViewURLs {
        static let URLList = [ "http://ourlocalmedia.com/wp-content/uploads/OurLocalMobile1.png","http://ourlocalmedia.com/wp-content/uploads/OurLocalMobile2.png","http://ourlocalmedia.com/wp-content/uploads/OurLocalMobile3.png","http://ourlocalmedia.com/wp-content/uploads/OurLocalMobile4.png","http://ourlocalmedia.com/wp-content/uploads/OurLocalMobile5.png","http://ourlocalmedia.com/wp-content/uploads/OurLocalMobile6.png"]
    }
    
    struct ImageViewWebLinks {
        static let Link1 = "http://ourlocalmedia.com/promo1/"
        static let Link2 = "http://ourlocalmedia.com/promo2/"
        static let Link3 = "http://ourlocalmedia.com/promo3/"
        static let Link4 = "http://ourlocalmedia.com/promo4/"
        static let Link5 = "http://ourlocalmedia.com/promo5/"
        static let Link6 = "http://ourlocalmedia.com/promo6/"
    }
    
    struct FontNames {
        static let OurLocalFont = "icomoon"
    }
    
    struct ViewControllerIdentifiers {
        static let CalendarVC = "CalendarViewController"
        static let CouponVC = "CouponViewController"
        static let TappedCraftedVC = "tappedCraftedViewController"
        static let DirectoryVC = "directoryViewController"
        static let SportsVC = "sportsViewController"
        static let CarouselWebView = "carouselWebView"
    }
    
    struct CellIdentifiers {
        static let SportsCell = "sportsCell"
        static let DirectoryCell = "directoryCell"
        static let HomePageCell = "cell"
        static let CalendarCell = "calendarTableCell"
    }
    
    struct FirebaseAnalyticsEvents {
        static let HomePageCarouselView1 = "homepage_carousel_view_1"
        static let HomePageCarouselView2 = "homepage_carousel_view_2"
        static let HomePageCarouselView3 = "homepage_carousel_view_3"
        static let HomePageCarouselView4 = "homepage_carousel_view_4"
        static let HomePageCarouselView5 = "homepage_carousel_view_5"
        static let HomePageCarouselView6 = "homepage_carousel_view_6"
        
        static let HomePageCalendarCard = "homepage_calendar_card"
        static let HomePageCouponCard = "homepage_coupon_card"
        static let HomePageTappedCard = "homepage_tapped_crafted_card"
        static let HomePageDirectoryCard = "homepage_directory_card"
        static let HomePageSportsCard = "homepage_sports_card"
        
        static let DirectoryAllBusinesses = "directory_all_businesses"
        static let DirectoryCoupons = "directory_coupons"
        static let DirectoryDining = "directory_dining"
        static let DirectoryNightlife = "directory_nightlife"
        static let DirectoryTourism = "directory_tourism"
        static let DirectoryShopping = "directory_shopping"
        static let DirectoryArts = "directory_arts"
        static let DirectoryAutomotive = "directory_automotive"
        static let DirectoryFashion = "directory_fashion"
        static let DirectoryNailsSkin = "directory_nails_and_skin"
        static let DirectoryPropertyRepair = "directory_property_repair"
        
        static let CalendarAllRegional = "calendar_all_regional_events"
        static let CalendarArtsCulture = "calendar_arts_and_culture"
        static let CalendarBusinessNetworking = "calendar_business_networking"
        static let CalendarCommunityFamily = "calendar_community_and_family"
        static let CalendarFestivals = "calendar_festivals"
        static let CalendarSportsRecreation = "calendar_sports_and_recreation"
        static let CalendarWineBrew = "calendar_wine_brew_spirits"
        static let CalendarFoodDrink = "calendar_food_drink_specials"
        static let CalendarFoodTrucks = "calendar_food_trucks"
        static let CalendarNightlife = "calendar_nightlife"
        static let CalendarLiveMusic = "calendar_live_music"
        static let CalendarKaraoke = "calendar_karaoke_and_dj"
        static let CalendarPostEvent = "calendar_post_an_event"
        
        static let SportsNFL = "sports_nfl_schedule"
        static let SportsNHL = "sports_nhl_schedule"
        static let SportsNCAA = "sports_ncaa_sports"
        static let SportsNBA = "sports_nba_schedule"
        static let SportsMLB = "sports_mlb_schedule"
    }
    
    struct SegueIdentifiers {
        static let DirectoryWebViewSegue = "directoryWebViewSegue"
        static let SportsWebViewSegue = "sportsSegue"
        static let CalendarWebViewSegue = "webViewSegue"
    }
    
    struct CalendarCardView {
        static let CalendarSubtopics = ["All Regional Events","Arts & Culture","Business & Networking","Community & Family","Festivals","Sports & Recreation","Wine, Brew & Spirits","Food & Drink Specials","Food Trucks","Nightlife","Live Music","Karaoke & DJ","Post an Event"]
        static let CalendarLinks = ["http://336events.spingo.com/mobile/events?sections=&amp;radius_miles=100","http://336events.spingo.com/mobile/events?sections=38472,38479&amp;radius_miles=100","http://336events.spingo.com/mobile/events?sections=38473,38483&amp;radius_miles=100","http://336events.spingo.com/mobile/events?sections=38475,38476,38484&amp;radius_miles=100","http://336events.spingo.com/mobile/events?sections=38476,38490&amp;radius_miles=100","http://336events.spingo.com/mobile/events?sections=38482,38484&amp;radius_miles=100","http://336events.spingo.com/mobile/events?sections=71811,71812,71813&amp;radius_miles=100","http://336events.spingo.com/mobile/events?sections=38917,38490,38492,38493&amp;radius_miles=100","http://336events.spingo.com/mobile/events?sections=71651&amp;radius_miles=100","http://336events.spingo.com/mobile/events?sections=38487,38488,38489,38490,38491,38917&amp;radius_miles=100","http://336events.spingo.com/mobile/events?sections=38490&amp;radius_miles=100","http://336events.spingo.com/mobile/events?sections=38488,38489&amp;radius_miles=100","http://4info.org/mobiledirectory?mode=businesses&amp;categories=216058"]
        
        static let CalendarIcons = ["\u{e91b}","\u{e91c}","\u{e902}","\u{e912}","\u{e916}","\u{e905}",
            "\u{e910}","\u{e91a}","\u{e91a}","\u{e90e}","\u{e916}","\u{e916}","\u{e904}"]
        
    }
    
    struct DirectoryCardView {
        static let DirectorySubtopics = ["All Businesses"
            ,"Coupons"
            ,"Dining"
            ,"Nightlife","Tourism","Shopping","Arts","Automotive","Fashion","Nails & Skin","Property Repair"]
        static let DirectoryLinks = ["http://ourlocalsearch.com/mobiledirectory?mode=businesses&categories=215477"
            ,"http://ourlocalsearch.com/mobiledirectory?mode=businesses&categories=216058"
            ,"http://ourlocalsearch.com/dining"
            ,"http://ourlocalsearch.com/mobiledirectory?mode=businesses&categories=215393"
            ,"http://ourlocalsearch.com/mobiledirectory?mode=businesses&categories=215480"
            ,"http://ourlocalsearch.com/shopping"
            ,"http://ourlocalsearch.com/mobiledirectory?mode=businesses&categories=215389"
            ,"http://ourlocalsearch.com/mobiledirectory?mode=businesses&categories=215187"
            ,"http://ourlocalsearch.com/mobiledirectory?mode=businesses&categories=215390"
            ,"http://ourlocalsearch.com/mobiledirectory?mode=businesses&categories=215181"
            ,"http://ourlocalsearch.com/mobiledirectory?mode=businesses&categories=215485"]
        static let DirectoryIcons = ["\u{e914}","\u{e90f}","\u{e91a}","\u{e90e}","\u{e91b}","\u{e919}","\u{e91c}","\u{e91d}","\u{e91e}","\u{e91f}","\u{e90b}"]
    }
    
    struct SportsCardView {
        static let SportsSubtopics = ["NFL Schedule","NHL Schedule","NCAA Sports","NBA Schedule","MLB Schedule"]
        static let SportsLinks = ["http://www.nfl.com/schedules/2018/REG1","https://www.nhl.com/schedule","https://www.ncaa.com","http://stats.nba.com/schedule","http://m.mlb.com/schedule"]
    }
    
    struct HomePageCardView {
        static let HomepageTopics = ["CALENDAR","COUPONS","TAPPED INTO CRAFT","DIRECTORY","SPORTS"]
        static let HomepageDescriptions = ["All Regional Events   Arts/Culture                Nightlife     Food & Drink Specials", "Great deals on local fare!", "Breweries, Wineries and Distillers", "Everything the Triad has to offer", "Catch a local ball game..."]
        static let HomepageIcons = ["\u{e904}","\u{e90f}","\u{e910}","\u{e903}","\u{e905}"]
        
    }
    
}
