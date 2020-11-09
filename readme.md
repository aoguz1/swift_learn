## Swift Learn

#### Swift kontrol yapısı 
- ###### if let kullanımı
if ve let swift içinde oldukça fazla kullanılan yapılardan 

- ###### guard kullanımı







1- UIKit Kütüphanesini kullanrak ekran nesne oluşturmak. 


```swift
let myLabel = UILabel() // UIKıt kütüphanesinden Label nesnesini çağırdık
myLabel.text = "My Label"
myLabel.textAlignment = .center
 myLabel.frame = CGRect.init(x: (width - width * 0.8) / 2  , y: height/2, width: width * 0.8, height: 50) // ekranin tam ortada durmasi icin ekran genisliginden yazi boyununu cikartip ortaladik. 
view.addSubview(myLabel)   // ekledigimiz elemani ekrana cizdirdik
```


2- butona aksiyon ekleme 

oluşturduğumu buton nesnesine addTarget ile ilgili aksiyonarı verip kontrol edebiliriz.

```swift
addTarget(self[içinde bulunduğumuz viewControlleri işaret ediyoruz.], action: #selector(ViewController.myAction)[sellector ile fonksiyonu işaret ediyoruz ViewController üzerinden myAction fonksiyonunun içinde yazanları işaret ediyoruz], for: UIControl.Event.touchUpInside [bu kısımda dokunma hareketini kontrol ediyoruz.])
```

```swift
{
 let myButton = UIButton()
  myButton.setTitle("Kaydet", for: UIControl.State.normal)
  myButton.setTitleColor(UIColor.blue, for: UIControl.State.normal) // butona tiklandiginda
  myButton.frame = CGRect.init(x: width * 0.5 - 100, y: height * 0.6, width: 200, height: 100) // butonu oluşacağı yeri ekran üzerinde belileme işlemi
  myButton.addTarget(self, action: #selector(ViewController.myAction), for: UIControl.Event.touchUpInside)
  view.addSubview(myButton)
}
 @objc func myAction(){
    myLabel.text = "Tapped"
    
}
```


3 -User Defaults ile küçük verileri (key, value) şeklinde telefon hafızasında saklama 

kontrol etmek için saklayacağımız değişkenleri User Defaults altında saklamalıyız bu yüzden onlara ulaşabilmek için key vereceğiz


**iki tane değerimiz olduğunu varsayalım**


```swift
let storedName = UserDefaults.standard.object(forKey: "name")
let storedSurname = UserDefaults.standard.object(forKey: "surname")
```


**UserDefaults içine eklerken** 

```swift
UserDefaults.standard.set(nameTextField.text, forKey: "name")
UserDefaults.standard.set(surnameTextField.text, forKey: "surname")
```
**UserDefaults'dan silme işlemi**

```swift
   UserDefaults.standard.removeObject(forKey: "name")
   UserDefaults.standard.removeObject(forKey: "surname")
```



#### Uygulama döngüsü 

```swift

 override func viewDidAppear(_ animated: Bool) {
  
        //görünüm gözüktüğünde çalıştırılcak kod bloğu
    }
    
    override func viewWillAppear(_ animated: Bool) {
       
        //görünüm gözükecekken çalıştırılcak kod bloğu
    }

    override func viewDidDisappear(_ animated: Bool) {
     
        //görünüm kaybolduğunda çalıştırılacak kod bloğu 
    }
    override func viewWillDisappear(_ animated: Bool) {

        // görünümün görünürlüğü kaybolacakken çalıştırılcak kod bloğu
    }
    
    override func viewDidLoad() {
        //görünüm yüklendiğinde çalıştırılcak kod bloğu
        super.viewDidLoad()
        
    }
```

### Ekranlar arasında geçiş yapmak 

performSegue kullanarak ekranlar arasında geçiş yapabiliriz.

perpareforsegue : segue olmadan hemen önceki işlemleri prepareforsegue yapar burada ilgili kontollerimizi yazabiliriz

```swift 
performSegue(withIdentifier:[geçmek istenilen ekranınIdentifieri], sender: [göndermek istediğimiz argumanlar])
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "secondVC"{
            let destination = segue.destination as! SecondViewController //destionation kullanarak geceçecğimiz ekran üzerindeki nesneleri alabiiriz. 
          
            destination.myName = userName
    }


```


### Alert gösterimi 
UIAlertController ile alert penceremizi oluşturabiliriz
UIAlertAction nesnesi ile alertin butonlarını oluşturup tıklandığında hangi aksiyonları vereceğini yazabiliriz.


```swift 

      let  alert = UIAlertController(title: "Error"[alert penceresinin başlığı] , message: "Hatalı tıklama yapıldı" , preferredStyle: UIAlertController.Style.alert [kullancağımız ilgili alert tipleri bu style attiributesinin altında]) 

      let okButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default) { (UIAlertAction) in
            print("tapped")
        }
        self.present(alert, animated: true [animasyon olup olamaycağını bool olarak belirtiyoruz], completion: nil [işlem olduktan sonra herhangi bir işlem yapılıp yapılmayacağını söylüyoruz])  // burada alert animasyonlarını belirleyebiliriz.
        
       
        alert.addAction(okButton) // oluştruduğumuz alerte oluşturduğumuz butonları addAction ile ekledik.


```





 


