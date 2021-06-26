import UIKit

class calculateResultVC: UIViewController {

    var horoscopeName = String()
    
    @IBOutlet weak var horoscopeNameLabel: UILabel!
    @IBOutlet weak var horoscopeImage: UIImageView!
    @IBOutlet weak var horoscopeMessageLabel: UILabel!
    
    var horoscopeMessage = String()
    override func viewDidLoad() {
        super.viewDidLoad()
        horoscopeNameLabel.text = horoscopeName.capitalized
        horoscopeImage.image = UIImage(named: horoscopeName)
        switch horoscopeName {
        case "aquarius":
            horoscopeMessage = "Donec vitae tincidunt magna. Maecenas non pharetra enim. Fusce ac varius ipsum, vel dignissim urna. Donec vulputate tempor eleifend. Nunc vel lorem finibus, scelerisque libero eget, lobortis lectus. Mauris id odio consectetur, pellentesque elit ut, faucibus orci. Sed faucibus convallis massa, vel commodo odio volutpat sed. Nulla facilisi. Morbi fringilla felis quis lacinia placerat."
        case "pisces":
            horoscopeMessage = "Sed mollis, lacus quis laoreet ultrices, nunc ligula fringilla lorem, egestas lacinia sapien mi et tortor. Etiam ut risus et neque imperdiet commodo. Etiam ut odio dolor. Duis elementum efficitur nisl eu tempus. In commodo ante purus, at aliquet lectus hendrerit a. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Quisque ac enim augue. Pellentesque molestie sodales sollicitudin. Fusce at pretium augue. Curabitur ac velit nunc. In consequat accumsan imperdiet. Duis sit amet gravida nisl. Nulla dictum dolor ac est hendrerit eleifend. Nullam pharetra sapien sit amet massa interdum, a porttitor est vestibulum."
        case "aries":
            horoscopeMessage = "Donec a placerat mauris. Curabitur in arcu quis massa posuere rhoncus vitae vitae tellus. Pellentesque non magna congue, fermentum mi id, rhoncus orci. Aenean leo leo, varius quis pharetra et, egestas eu justo. Etiam elit nunc, egestas vitae turpis varius, pellentesque sollicitudin tellus. Aliquam erat volutpat. In interdum nunc sit amet egestas maximus. Praesent magna neque, vehicula at convallis sed, rhoncus dictum justo."
        case "taurus":
            horoscopeMessage = "Sed et commodo augue. Etiam nec molestie ex, eget tempus neque. Aliquam mattis est vel massa dictum, mattis bibendum arcu ultricies. Phasellus convallis vel risus a pellentesque. Sed suscipit, lectus sit amet maximus molestie, ante mi blandit ante, sit amet elementum nibh ipsum et diam. Nunc porta aliquam maximus. Suspendisse potenti. Aliquam erat volutpat."
        case "gemini":
            horoscopeMessage = "Aenean magna est, hendrerit posuere lectus vitae, accumsan ornare urna. Curabitur sodales pharetra magna at malesuada. Donec vel pharetra eros, nec consectetur elit. Morbi eu hendrerit risus. Suspendisse sit amet dolor ligula. Curabitur rutrum quis ligula in ullamcorper. Maecenas at laoreet mi, suscipit dictum nibh. Praesent luctus odio velit. Suspendisse convallis viverra vehicula. Fusce malesuada laoreet ullamcorper. Suspendisse mollis, nibh eget ornare placerat, enim sem fringilla metus, ac consequat risus enim quis lacus. Nunc viverra neque odio."
        case "cancer":
            horoscopeMessage = "Sed non consectetur enim. Nulla dictum arcu fermentum dolor aliquam mattis. Nunc ex diam, bibendum eget ultricies nec, luctus at turpis. Ut a tincidunt lacus. Donec a augue ac massa aliquam ornare. Duis vulputate efficitur sem, consectetur auctor sem fermentum eu. Quisque quis elementum nisi, sagittis tempus mauris. Suspendisse blandit ornare sapien in eleifend. Proin feugiat commodo tortor, eget ullamcorper neque tempus vitae."
        case "leo":
            horoscopeMessage = "Nam quis ligula eget dolor finibus faucibus. Mauris rhoncus aliquet augue in elementum. In efficitur non risus a feugiat. Nam a diam mattis, lacinia lectus in, efficitur magna. Cras eleifend, justo nec tincidunt pharetra, nisl felis cursus sapien, a consequat velit leo nec elit. Etiam auctor, lacus quis pharetra porttitor, lorem dui blandit sapien, at placerat orci justo nec sem. In fringilla justo in eleifend feugiat. In quis tincidunt nisi. Aliquam posuere pretium risus, non laoreet risus ultricies sed."
        case "virgo":
            horoscopeMessage = "Donec vitae tortor leo. Etiam sodales odio quis ipsum eleifend lacinia. Sed libero lacus, dapibus sit amet justo interdum, aliquet aliquet nisi. Nullam tincidunt enim eros, id gravida lorem feugiat et. Vivamus et feugiat eros. Fusce bibendum malesuada nisi, nec cursus lectus rutrum quis. Donec vehicula tortor ac lacus imperdiet scelerisque vitae sed urna."
        case "libra":
            horoscopeMessage = "Mauris purus nisl, suscipit in risus in, pellentesque aliquam arcu. Suspendisse ut pharetra nisl, congue laoreet justo. In porta placerat tellus, nec bibendum turpis condimentum vel. Duis sed nulla vehicula, tempor lorem non, blandit nisi. Fusce imperdiet purus quis porttitor blandit. Cras consequat eget turpis eget maximus. Vivamus dictum velit a tellus cursus aliquam. Duis bibendum lorem a orci tincidunt luctus. In mollis urna a arcu semper porttitor."
        case "scorpio":
            horoscopeMessage = "Pellentesque nulla dolor, mattis at vulputate eu, tincidunt in sem. Curabitur nec ex eu tortor pharetra consequat at a lacus. Proin nunc quam, elementum vitae convallis eget, faucibus eu purus. Cras pretium purus sit amet maximus lobortis. Nulla vel dui leo. Mauris ornare eu mi in sagittis. In lobortis fringilla ultrices."
        case "sagittarius":
            horoscopeMessage = "Maecenas vitae enim eget tortor sodales venenatis. Sed nibh nisi, mollis nec metus nec, efficitur fringilla nisi. Fusce porta accumsan tellus, at sodales massa tincidunt eget. Vivamus nec commodo neque, a vehicula nibh. Morbi semper diam in mauris eleifend placerat at in nisi. In hac habitasse platea dictumst. Aenean malesuada tellus non lectus vulputate varius. Etiam sapien mi, sodales eget justo id, sagittis posuere mi. Duis dolor odio, consequat id libero et, vestibulum venenatis elit. Duis non porttitor ante. Pellentesque lacinia consectetur consectetur. Fusce posuere sem eget dui dapibus porta."
        case "capricorn":
            horoscopeMessage = "Vivamus elementum augue nec nisl vehicula, at commodo enim vulputate. Pellentesque a facilisis quam, at ultrices nibh. In hac habitasse platea dictumst. Fusce ullamcorper in tellus sed venenatis. Nam feugiat, sapien id sodales lobortis, dui justo viverra justo, et cursus metus velit at diam. Donec hendrerit pellentesque lacus, eget pharetra dolor finibus vitae. Maecenas nec odio libero. Vestibulum ut ante orci. Cras feugiat ornare velit quis porttitor. Integer at ante iaculis, pellentesque lacus a, tempus tortor. Aliquam quis risus luctus, euismod sem luctus, mattis enim. Morbi sem libero, luctus a libero non, porttitor pharetra justo."
        default:
            horoscopeMessage = "Error!"
        }
        horoscopeMessageLabel.text = horoscopeMessage
    }
}
