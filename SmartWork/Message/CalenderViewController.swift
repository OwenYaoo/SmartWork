import UIKit
import CalendarKit
import DateToolsSwift

class CalenderViewController: DayViewController {

  var data = [["Breakfast at Tiffany's",
               "New York, 5th avenue"],

              ["Workout",
               "Tufteparken"],

              ["Meeting with Alex",
               "Home",
               "Oslo, Tjuvholmen"],

              ["Beach Volleyball",
               "Ipanema Beach",
               "Rio De Janeiro"],

              ["WWDC",
               "Moscone West Convention Center",
               "747 Howard St"],

              ["Google I/O",
               "Shoreline Amphitheatre",
               "One Amphitheatre Parkway"],

              ["✈️️ to Svalbard ❄️️❄️️❄️️❤️️",
               "Oslo Gardermoen"],

              ["💻📲 Developing CalendarKit",
               "🌍 Worldwide"],

              ["Software Development Lecture",
               "Mikpoli MB310",
               "Craig Federighi"],

              ]

  var generatedEvents = [Date:[EventDescriptor]]()

  var colors = [UIColor.blue,
                UIColor.yellow,
                UIColor.green,
                UIColor.red]


  lazy var customCalendar: Calendar = {
    let customNSCalendar = NSCalendar(identifier: NSCalendar.Identifier.gregorian)!
    customNSCalendar.timeZone = TimeZone(abbreviation: "CEST")!
    let calendar = customNSCalendar as Calendar
    return calendar
  }()

  override func loadView() {
    calendar = customCalendar
    dayView = DayView(calendar: calendar)
    view = dayView
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    let date = Date()
    let calendar = Calendar.current
     
    let year = calendar.component(.year, from: date)
    let month = calendar.component(.month, from: date)
    title = "\(year)年\(month)月"
    navigationItem.rightBarButtonItem = UIBarButtonItem(title: "创建",
                                                        style: .done,
                                                        target: self,
                                                        action: #selector(self.createNotice))
//    navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Change Date",
//                                                       style: .plain,
//                                                       target: self,
//                                                       action: #selector(ExampleController.presentDatePicker))
    navigationController?.navigationBar.isTranslucent = false
    dayView.autoScrollToFirstEvent = true
    reloadData()
  }
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = false
        self.tabBarController?.tabBar.isHidden = true
    }
    
  @objc func createNotice(){
        
  }
    
    override func eventsForDate(_ date: Date) -> [EventDescriptor] {
      var date = date.add(TimeChunk.dateComponents(hours: Int(arc4random_uniform(10) + 5)))
      var events = [Event]()

      for i in 0...4 {
        let event = Event()
        let duration = Int(arc4random_uniform(160) + 60)
        let datePeriod = TimePeriod(beginning: date,
                                    chunk: TimeChunk.dateComponents(minutes: duration))

        event.startDate = datePeriod.beginning!
        event.endDate = datePeriod.end!

        var info = data[Int(arc4random_uniform(UInt32(data.count)))]
        
        let timezone = TimeZone.ReferenceType.default
        info.append(datePeriod.beginning!.format(with: "dd.MM.YYYY", timeZone: timezone))
        info.append("\(datePeriod.beginning!.format(with: "HH:mm", timeZone: timezone)) - \(datePeriod.end!.format(with: "HH:mm", timeZone: timezone))")
        event.text = info.reduce("", {$0 + $1 + "\n"})
        event.color = colors[Int(arc4random_uniform(UInt32(colors.count)))]
        event.isAllDay = Int(arc4random_uniform(2)) % 2 == 0
        
        // Event styles are updated independently from CalendarStyle
        // hence the need to specify exact colors in case of Dark style
        
        events.append(event)

        let nextOffset = Int(arc4random_uniform(250) + 40)
        date = date.add(TimeChunk.dateComponents(minutes: nextOffset))
        event.userInfo = String(i)
      }

      return events
    }

  
}

