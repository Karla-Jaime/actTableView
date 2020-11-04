//
//  ViewController.swift
//  practicatableview
//
//  Created by Alumno on 11/3/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    var alumnos : [Alumno] = []
    
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return alumnos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaAlumno") as! CeldaAlumnoController
        
        celda.lblNombre.text = alumnos[indexPath.row].nombre
        celda.lblMatricula.text = alumnos[indexPath.row].matricula
        celda.lblCarrera.text = alumnos[indexPath.row].carrera
        
        return celda
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        alumnos.append(Alumno(nombre: "Jose González", matricula: "9867", carrera: "Lic. en Administración"))
        alumnos.append(Alumno(nombre: "Liz Báez", matricula: "917", carrera: "Lic. en Diseño"))
        alumnos.append(Alumno(nombre: "JDeni Alfaro", matricula: "9178", carrera: "Multi"))
        alumnos.append(Alumno(nombre: "Jose González", matricula: "9867", carrera: "Marcas"))
    }
    

}

