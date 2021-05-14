import UIKit

class Clase3ViewController: UIViewController {
    
    @IBOutlet weak var barra: UINavigationItem!
    
    private var constrains = Array<NSLayoutConstraint>()
    private var nombreLabel = UILabel()
    private var imagenImage = UIImageView()
    private var puestoLabel = UILabel()
    private var emailLabel = UILabel()
    private var telefonoLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        generaImagen()
        generaNombre()
        generaPuesto()
        generaEmail()
        generaTelefono()
    }
    
    private func generaNombre() -> Void {
        nombreLabel.translatesAutoresizingMaskIntoConstraints = false
        nombreLabel.text = "Gabriela Meza"
        nombreLabel.textColor = .black
        nombreLabel.textAlignment = .center
        nombreLabel.font = UIFont(name: "Avenir Next", size: 25)
        self.view.addSubview(nombreLabel)
        
        let altoContraint = nombreLabel.heightAnchor.constraint(equalToConstant: 30)
        let izquierdaConstrain = nombreLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0)
        let arribaConstrain = nombreLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100)
        let derechaConstrain = nombreLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0)
        
        constrains.append(contentsOf: [altoContraint, izquierdaConstrain, arribaConstrain, derechaConstrain])
        NSLayoutConstraint.activate(constrains)
    }
    
    private func generaImagen() -> Void {
        imagenImage.translatesAutoresizingMaskIntoConstraints = false
        imagenImage.image = UIImage(named: "mujer")
        imagenImage.contentMode = UIView.ContentMode.scaleAspectFill
        imagenImage.clipsToBounds = true
        self.view.addSubview(imagenImage)
        
        let anchoContraint = imagenImage.widthAnchor.constraint(equalToConstant: 200)
        let altoContraint = imagenImage.heightAnchor.constraint(equalToConstant: 200)
        let centrarXContraint = imagenImage.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0)
        let centrarYContraint = imagenImage.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 0)
        constrains.append(contentsOf: [anchoContraint, altoContraint, centrarXContraint, centrarYContraint])
        NSLayoutConstraint.activate(constrains)
        
        imagenImage.layer.cornerRadius = altoContraint.constant / 2
    }
    
    private func generaPuesto() -> Void {
        puestoLabel.translatesAutoresizingMaskIntoConstraints = false
        puestoLabel.text = "iOS Developer"
        puestoLabel.textColor = .black
        puestoLabel.textAlignment = .center
        puestoLabel.font = UIFont(name: "Avenir Next", size: 20)
        self.view.addSubview(puestoLabel)
        
        let altoContraint = puestoLabel.heightAnchor.constraint(equalToConstant: 30)
        let derechaConstrain = puestoLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0)
        let izquierdaConstrain = puestoLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0)
        let arribaConstrain = puestoLabel.topAnchor.constraint(equalTo: self.imagenImage.bottomAnchor, constant: 10)
        
        constrains.append(contentsOf: [altoContraint, arribaConstrain, derechaConstrain, izquierdaConstrain])
        NSLayoutConstraint.activate(constrains)
    }
    
    private func generaEmail() -> Void {
        emailLabel.translatesAutoresizingMaskIntoConstraints = false
        emailLabel.text = "eluz@bancoazteca.com"
        emailLabel.textColor = .black
        emailLabel.textAlignment = .right
        emailLabel.font = UIFont(name: "Avenir Next", size: 15)
        self.view.addSubview(emailLabel)
        
        let altoContraint = emailLabel.heightAnchor.constraint(equalToConstant: 30)
        let derechaConstrain = emailLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20)
        let abajoConstrain = emailLabel.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -30)
        
        constrains.append(contentsOf: [altoContraint, abajoConstrain, derechaConstrain])
        NSLayoutConstraint.activate(constrains)
    }
    
    private func generaTelefono() -> Void {
        telefonoLabel.translatesAutoresizingMaskIntoConstraints = false
        telefonoLabel.text = "5519669393"
        telefonoLabel.textColor = .black
        telefonoLabel.textAlignment = .left
        telefonoLabel.font = UIFont(name: "Avenir Next", size: 15)
        self.view.addSubview(telefonoLabel)
        
        let altoContraint = telefonoLabel.heightAnchor.constraint(equalToConstant: 30)
        let izquierdaConstrain = telefonoLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20)
        let abajoConstrain = telefonoLabel.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -30)
        
        constrains.append(contentsOf: [altoContraint, abajoConstrain, izquierdaConstrain])
        NSLayoutConstraint.activate(constrains)
    }

}
