//
//  CrearTareaViewController.swift
//  Tareas
//
//  Created by Jorge Fernández Oré on 9/19/19.
//  Copyright © 2019 Tecsup. All rights reserved.
//

import UIKit

class CrearTareaViewController: UIViewController {

    
    @IBOutlet weak var txtNombreTarea: UITextField!
    @IBOutlet weak var swImportante: UISwitch!
    
    var anteriorVC = ViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func agregar(_ sender: Any) {
        let tarea = Tarea()
        tarea.nombre = txtNombreTarea.text!
        tarea.importante = swImportante.isOn
        anteriorVC.tareas.append(tarea)
        anteriorVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
    }

}
