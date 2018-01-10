Alertas Genericas
===

## Descripción

El uso de alertas en nuestras aplicaciones es muy importante, desde, mostrar un mensaje simple para notificar al usuario
hasta generar acciones en base a desiciones del usuario.

Lo que haremos aquí será facilitar la vida para que no nos tengamos que preocupar por volver a pensar en la sintaxis de una
Alerta.

## Lógica

1. Generar una *Clase Base* de tipo *ViewController* de la cual heredaran todos los *ViewController*

2. Escribir una función generica de alertas que contengan multiples *UIAlertAction*

3. Implementar

## Código

* Importamos UIKit ya que trabajamos con elementos gráficos *User Interface*

```swift
import UIKit

public class BaseViewController: UIViewController {
    //...some code here...
}
```
* Implementamos nuestra clase de alertas *genericas*

```swift
import UIKit

public class BaseViewController: UIViewController {
    func showAlert(_ viewController: UIViewController,
                   title: String?,
                   message: String?,
                   preferredStyle: UIAlertControllerStyle,
                   actions: UIAlertAction...
        ) {
        
        let alertController = UIAlertController(title: title,
                                                message: message, preferredStyle: preferredStyle)
        
        if actions.count == 0 {
            let noAction = UIAlertAction(title: "OK",
                                         style: .default,
                                         handler: nil)
            alertController.addAction(noAction)
        } else {
            for action in actions {
                alertController.addAction(action)
            }
        }
        viewController.present(alertController,
                               animated: true,
                               completion: nil)
    }
}

```

UIAlertAction... sería equivalente [UIAlertAction] 

* Heredamos e implementamos

```swift
import UIKit

class ViewController: BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    // MARK: - Actions
    
    @IBAction func someAction(_ sender: UIButton) {
        
        let okAction = UIAlertAction(title: "OK",
                                     style: .default) { (action) in
            print("action: \(action)")
            
        }
        let cancelAction = UIAlertAction(title: "Cancel",
                                         style: .cancel) { (action) in
            print("action: \(action)")
        }
        showAlert(self, title: "🚨 Alerta",
                  message: "This is an alert!!",
                  preferredStyle: .alert,
                  actions: okAction, cancelAction)
        
    }
}
```
