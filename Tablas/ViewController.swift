//
//  ViewController.swift
//  Tablas
//
//  Created by Mobdev on 23-03-22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var lableView:UILabel!
    
  

    struct Movie{
        let name : String
        let director: String
        let year: String
         
    }
    let movie1 = Movie(name: "Cenicienta", director: "kennet", year: "2015")
    let movie2 = Movie(name: "Piratas del Caribe", director: "Gore Verbinski", year: "2003")
    let movie3 = Movie(name: "Capitán América", director: "Joe", year: "2011")
    let movie4 = Movie(name: "Iron Man", director: "Jon Favreau", year: "2008")
    
    var datasource : [Movie] = []

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        datasource.append(movie1)
        datasource.append(movie2)
        datasource.append(movie3)
        datasource.append(movie4)
        
        lableView.text = "Películas"
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.tableFooterView =  UIView()
    }


}


extension ViewController: UITableViewDataSource {
    
//    indica cuantas celdas queremos que tenga nuestra tabla
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datasource.count
        
    }
//    indica cual es el contenido de cada una de las celdas
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        recuperar la celda
        var cell = tableView.dequeueReusableCell(withIdentifier: "mycell")
//        se define el estilo e identificador de reuso , es un id para volver a utilizar la celda.
        if cell == nil {
         cell = UITableViewCell (style: .default, reuseIdentifier: "mycell")
           
            cell?.textLabel?.font = UIFont.systemFont(ofSize: 20)
        }
//        los datos que estarán en la celda
        let cellContent = datasource[indexPath.row]
        cell!.textLabel?.text = cellContent.name
        return cell!
    }
}

//extension para que al dar tap, cambie el label
    
    extension ViewController: UITableViewDelegate{
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//            print(myMovies[indexPath.row])
            
            if (indexPath.row) % 2 == 0{
            let vcSecond = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController

//                vcSecond.parametro1 = parametronombre
                vcSecond.dataDetails = datasource[indexPath.row].name
                vcSecond.dataDetailsDirector = datasource[indexPath.row].director
                vcSecond.dataDetailsYear = datasource[indexPath.row].year
                print(datasource[indexPath.row].name)
              
            navigationController?.pushViewController(vcSecond, animated: true)
            }else{
                let vcThird = storyboard?.instantiateViewController(withIdentifier: "ThirdViewController") as! ThirdViewController
                vcThird.dataDetails = datasource[indexPath.row].name
                vcThird.dataDetailsDirector = datasource[indexPath.row].director
                vcThird.dataDetailsYear = datasource[indexPath.row].year
        
               
                navigationController?.pushViewController(vcThird, animated: true)
                
            }
            
        }
        
    }
    
    

