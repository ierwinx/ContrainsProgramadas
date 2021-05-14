import UIKit

class Clase2ViewController: UIViewController {
    
    private var tlLabel = UILabel()
    private var trLabel = UILabel()
    private var blLabel = UILabel()
    private var brLabel = UILabel()
    
    private var constrains = Array<NSLayoutConstraint>()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        label1()
        label2()
        label3()
        label4()
    }
    
    private func label1() -> Void {
        tlLabel.translatesAutoresizingMaskIntoConstraints = false
        tlLabel.backgroundColor = .red
        tlLabel.text = " TL"
        tlLabel.textColor = .white
        view.addSubview(tlLabel)
        
        let anchoContraint = tlLabel.widthAnchor.constraint(equalToConstant: 100)
        let altoContraint = tlLabel.heightAnchor.constraint(equalToConstant: 30)
        
        let izquierdaConstrain = tlLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20)
        let arribaConstrain = tlLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100)
        
        constrains.append(contentsOf: [anchoContraint, altoContraint, izquierdaConstrain, arribaConstrain])
        
        NSLayoutConstraint.activate(constrains)
    }
    
    private func label2() -> Void {
        trLabel.translatesAutoresizingMaskIntoConstraints = false
        trLabel.backgroundColor = .black
        trLabel.text = " TR"
        trLabel.textColor = .white
        view.addSubview(trLabel)
        
        let anchoContraint = trLabel.widthAnchor.constraint(equalToConstant: 100)
        let altoContraint = trLabel.heightAnchor.constraint(equalToConstant: 30)
        
        let derechaConstrain = trLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20)
        let arribaConstrain = trLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100)
        
        constrains.append(contentsOf: [anchoContraint, altoContraint, derechaConstrain, arribaConstrain])
        
        NSLayoutConstraint.activate(constrains)
    }
    
    private func label3() -> Void {
        blLabel.translatesAutoresizingMaskIntoConstraints = false
        blLabel.backgroundColor = .blue
        blLabel.text = " BL"
        blLabel.textColor = .white
        view.addSubview(blLabel)
        
        let anchoContraint = blLabel.widthAnchor.constraint(equalToConstant: 100)
        let altoContraint = blLabel.heightAnchor.constraint(equalToConstant: 30)
        
        let izquierdaConstrain = blLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20)
        let abajoConstrain = blLabel.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -25)
        
        constrains.append(contentsOf: [anchoContraint, altoContraint, izquierdaConstrain, abajoConstrain])
        
        NSLayoutConstraint.activate(constrains)
    }
    
    private func label4() -> Void {
        brLabel.translatesAutoresizingMaskIntoConstraints = false
        brLabel.backgroundColor = .green
        brLabel.text = " BR"
        brLabel.textColor = .white
        view.addSubview(brLabel)
        
        let anchoContraint = brLabel.widthAnchor.constraint(equalToConstant: 100)
        let altoContraint = brLabel.heightAnchor.constraint(equalToConstant: 30)
        
        let derechaConstrain = brLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20)
        let abajoConstrain = brLabel.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -25)
        
        constrains.append(contentsOf: [anchoContraint, altoContraint, derechaConstrain, abajoConstrain])
        
        NSLayoutConstraint.activate(constrains)
    }
    
}
