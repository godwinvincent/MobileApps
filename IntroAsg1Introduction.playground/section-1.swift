class Class
{
    var className:String
    var roomNumber:String
    var subject:String
    init (className:String, roomNumber:String, subject:String)
    {
        self.className = className
        self.roomNumber = roomNumber
        self.subject = subject
    }
    func toString() -> String
    {
        return "You have a \(subject) class titled \(className) at \(roomNumber)"
    }
}

var myClasses:[Int:Class] = [1:Class(className: "The Jouney of the Hero", roomNumber: "M105", subject: "English"),2:Class(className: "AP Stats", roomNumber: "L111", subject: "Math"),3:Class(className: "Physics C AP", roomNumber: "C117", subject: "Science"),4:Class(className: "Acting 2", roomNumber: "Theater", subject: "Arts"),5:Class(className: "Gov AP", roomNumber: "M100", subject: "Social Science"),6:Class(className: "Calc AB AP", roomNumber: "L211", subject: "Math"),7:Class(className: "Mobile Apps", roomNumber: "OD003", subject: "Elective")]
for (key,value) in myClasses
{
    println(value.toString())
}