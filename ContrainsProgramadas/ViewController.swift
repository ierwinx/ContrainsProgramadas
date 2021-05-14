import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var vista: UIView!
    @IBOutlet weak var vista2: UIView!
    
    private var constrains = Array<NSLayoutConstraint>()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupAutoLayout()
        anchoAlto()
    }
    
    private func setupAutoLayout() -> Void {
        vista.translatesAutoresizingMaskIntoConstraints = false
        vista.backgroundColor = .red
        //constrains
        let izquierdaConstrain = vista.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0)
        let derechaConstrain = vista.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0)
        
        let arribaConstrain = vista.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 30)
        let abajoConstrain = vista.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 100)
        
        constrains.append(contentsOf: [izquierdaConstrain, derechaConstrain, arribaConstrain, abajoConstrain])
        
        NSLayoutConstraint.activate(constrains)
    }
    
    private func anchoAlto() -> Void {
        vista2.translatesAutoresizingMaskIntoConstraints = false
        vista2.backgroundColor = .blue
        let anchoContraint = vista2.widthAnchor.constraint(equalToConstant: 200)
        let altoContraint = vista2.heightAnchor.constraint(equalToConstant: 200)
        
        let centrarXContraint = vista2.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0)
        let centrarYContraint = vista2.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 0)
        
        constrains.append(contentsOf: [anchoContraint, altoContraint, centrarXContraint, centrarYContraint])
        NSLayoutConstraint.activate(constrains)
    }

}

