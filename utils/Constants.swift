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
        static let AboutVC = "AboutViewController"
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
        
        static let AboutUs = "about_us"
    }
    
    struct SegueIdentifiers {
        static let DirectoryWebViewSegue = "directoryWebViewSegue"
        static let SportsWebViewSegue = "sportsSegue"
        static let CalendarWebViewSegue = "webViewSegue"
    }
    
    struct DirectoryURLs {
        static let DirectoryURL = "https://ourlocalsearch.com/"
    }
    
    struct TappedIntoCraftedURLs {
        static let TappedIntoCraftedURL = "https://ourlocalsearch.com/category/craft-beverages-food/"
    }
    
    struct CouponURLs {
        static let CouponURL = "https://ourlocalsearch.com/tag/coupons/"
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
        static let HomepageTopics = ["CALENDAR","COUPONS","TAPPED INTO CRAFT","DIRECTORY","SPORTS","ABOUT US"]
        static let HomepageDescriptions = ["All Regional Events   Arts/Culture                Nightlife     Food & Drink Specials", "Great deals on local fare!", "Breweries, Wineries and Distillers", "Everything the Triad has to offer", "Catch a local ball game...","Privacy Policy and Terms"]
        static let HomepageIcons = ["\u{e904}","\u{e90f}","\u{e910}","\u{e903}","\u{e905}","\u{e90c}"]
        
    }
    
    struct AboutCardView {
        static let PrivacyPolicy = "<h2>Privacy Policy</h2>\n" +
            "<p> Droid Rocks built the Our Local app as Free app. This SERVICE is provided by\n" +
            "Droid Rocks at no cost and is intended for use as is.\n" +
            "</p>\n" +
            "<p>This page is used to inform visitors regarding our policies with the collection, use, and disclosure\n" +
            "of Personal Information if anyone decided to use our Service.\n" +
            "</p>\n" +
            "<p>If you choose to use our Service, then you agree to the collection and use of information in\n" +
            "relation to this policy. The Personal Information that we collect is used for providing and improving\n" +
            "the Service. We will not use or share your information with anyone except as described\n" +
            "in this Privacy Policy.\n" +
            "</p>\n" +
            "<p>The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which is\n" +
            "accessible at Our Local unless otherwise defined in this Privacy Policy.\n" +
            "</p>\n" +
            "<p><strong>Information Collection and Use</strong></p>\n" +
            "<p>For a better experience, while using our Service, we may require you to provide us with certain\n" +
            "personally identifiable information, including but not limited to none. The information that we request will be retained by us.\n" +
            "</p>\n" +
            "<p>The app does use third party services that may collect information used to identify you.</p>\n" +
            "\n" +
            "<div v-if=\"gps || admob || firebase_analytics || facebook || piwik || fabric || crashlytics\">\n" +
            "<p>Link to privacy policy of third party service providers used by the app</p>\n" +
            "<ul>\n" +
            "<li><a href=\"https://www.google.com/policies/privacy/\" target=\"_blank\">Google Play Services</a></li>\n" +
            "<li><a href=\"https://firebase.google.com/policies/analytics\" target=\"_blank\">Firebase Analytics</a></li>\n" +
            "</li>\n" +
            "</ul>\n" +
            "</div>\n" +
            "<p><strong>Log Data</strong></p>\n" +
            "<p> We want to inform you that whenever you use our Service, in a case of\n" +
            "an error in the app we collect data and information (through third party products) on your phone\n" +
            "called Log Data. This Log Data may include information such as your device Internet Protocol (“IP”) address,\n" +
            "device name, operating system version, the configuration of the app when utilizing our Service,\n" +
            "the time and date of your use of the Service, and other statistics.\n" +
            "</p>\n" +
            "<p><strong>Cookies</strong></p>\n" +
            "<p>Cookies are files with a small amount of data that are commonly used as anonymous unique identifiers.\n" +
            "These are sent to your browser from the websites that you visit and are stored on your device's internal\n" +
            "memory.\n" +
            "</p>\n" +
            "<p>This Service does not use these “cookies” explicitly. However, the app may use third party code and\n" +
            "libraries that use “cookies” to collect information and improve their services. You have the option to\n" +
            "either accept or refuse these cookies and know when a cookie is being sent to your device. If you choose\n" +
            "to refuse our cookies, you may not be able to use some portions of this Service.\n" +
            "</p>\n" +
            "<p><strong>Service Providers</strong></p>\n" +
            "<p> We may employ third-party companies and individuals due to the following reasons:</p>\n" +
            "<ul>\n" +
            "<li>To facilitate our Service;</li>\n" +
            "<li>To provide the Service on our behalf;</li>\n" +
            "<li>To perform Service-related services; or</li>\n" +
            "<li>To assist us in analyzing how our Service is used.</li>\n" +
            "</ul>\n" +
            "<p> We want to inform users of this Service that these third parties have access to\n" +
            "your Personal Information. The reason is to perform the tasks assigned to them on our behalf. However,\n" +
            "they are obligated not to disclose or use the information for any other purpose.\n" +
            "</p>\n" +
            "<p><strong>Security</strong></p>\n" +
            "<p> We value your trust in providing us your Personal Information, thus we are striving\n" +
            "to use commercially acceptable means of protecting it. But remember that no method of transmission over\n" +
            "the internet, or method of electronic storage is 100% secure and reliable, and we cannot guarantee\n" +
            "its absolute security.\n" +
            "</p>\n" +
            "<p><strong>Links to Other Sites</strong></p>\n" +
            "<p>This Service may contain links to other sites. If you click on a third-party link, you will be directed\n" +
            "to that site. Note that these external sites are not operated by us. Therefore, we strongly\n" +
            "advise you to review the Privacy Policy of these websites. We have no control over\n" +
            "and assume no responsibility for the content, privacy policies, or practices of any third-party sites\n" +
            "or services.\n" +
            "</p>\n" +
            "<p><strong>Children’s Privacy</strong></p>\n" +
            "<p>These Services do not address anyone under the age of 13. We do not knowingly collect\n" +
            "personally identifiable information from children under 13. In the case we discover that a child\n" +
            "under 13 has provided us with personal information, we immediately delete this from\n" +
            "our servers. If you are a parent or guardian and you are aware that your child has provided us with personal\n" +
            "information, please contact us so that we will be able to do necessary actions.\n" +
            "</p>\n" +
            "<p><strong>Changes to This Privacy Policy</strong></p>\n" +
            "<p> We may update our Privacy Policy from time to time. Thus, you are advised to review\n" +
            "this page periodically for any changes. We will notify you of any changes by posting\n" +
            "the new Privacy Policy on this page. These changes are effective immediately after they are posted on\n" +
            "this page.\n" +
            "</p>\n" +
            "<p><strong>Contact Us</strong></p>\n" +
            "<p>If you have any questions or suggestions about our Privacy Policy, do not hesitate to contact\n" +
            "us.\n" +
            "</p>\n" +
            "<p>This privacy policy page was created at <a href=\"https://privacypolicytemplate.net\" target=\"_blank\">privacypolicytemplate.net</a>\n" +
            "and modified/generated by <a href=\"https://app-privacy-policy-generator.firebaseapp.com/\" target=\"_blank\">App\n" +
        "Privacy Policy Generator</a></p>\n"
    }
    
}
