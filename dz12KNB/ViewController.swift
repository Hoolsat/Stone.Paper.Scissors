//
//  ViewController.swift
//  dz12KNB
//
//  Created by Кирилл Ерашевич on 7.09.21.
//

import UIKit

class ViewController: UIViewController {
    
    var label = UILabel()
    var kamen = UIButton()
    var noj = UIButton()
    var A4 = UIButton()
    var picture = UIImageView()
    var picture2 = UIImageView()
    var picture3 = UIImageView()
    var pictureResultBot = UIImageView()
    var pictureResultGamer = UIImageView()
    var nameRandom: String = ""
    var game: Game = Game.shared

    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        view.backgroundColor = UIColor(red: 255/255, green: 219/255, blue: 201/255, alpha: 1)
        
        
        view.addSubview(picture)
        picture.translatesAutoresizingMaskIntoConstraints = false
        picture.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5).isActive = true
        picture.topAnchor.constraint(equalTo: view.topAnchor, constant: 80).isActive = true
        picture.frame.size = CGSize(width: 128, height: 128)
        self.picture.image = #imageLiteral(resourceName: "kaya")
//        picture.image = UIImage(named: "kaya")
        picture.layer.masksToBounds = true
        
        view.addSubview(picture2)
        picture2.translatesAutoresizingMaskIntoConstraints = false
        picture2.leadingAnchor.constraint(equalTo: picture.trailingAnchor, constant: 5).isActive = true
        picture2.topAnchor.constraint(equalTo: view.topAnchor, constant: 80).isActive = true
        picture2.frame.size = CGSize(width: 128, height: 128)
        self.picture2.image = #imageLiteral(resourceName: "scissor")
//        picture.image = UIImage(named: "kaya")
        picture2.layer.masksToBounds = true
        
        view.addSubview(picture3)
        picture3.translatesAutoresizingMaskIntoConstraints = false
        picture3.leadingAnchor.constraint(equalTo: picture2.trailingAnchor, constant: 5).isActive = true
        picture3.topAnchor.constraint(equalTo: view.topAnchor, constant: 80).isActive = true
        picture3.frame.size = CGSize(width: 128, height: 128)
        self.picture3.image = #imageLiteral(resourceName: "paper")
//        picture.image = UIImage(named: "kaya")
        picture3.layer.masksToBounds = true
        
        
        
        view.addSubview(pictureResultBot)
        pictureResultBot.translatesAutoresizingMaskIntoConstraints = false
        pictureResultBot.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 135).isActive = true
        pictureResultBot.topAnchor.constraint(equalTo: picture2.bottomAnchor, constant: 10).isActive = true
        pictureResultBot.frame.size = CGSize(width: 128, height: 128)
        pictureResultBot.image = UIImage(named: "RPS")
        pictureResultBot.layer.masksToBounds = true
        
        view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false //берем управоение на себя
        label.topAnchor.constraint(equalTo: pictureResultBot.bottomAnchor, constant: 10).isActive = true
        label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        label.heightAnchor.constraint(equalToConstant: 70).isActive = true
        label.text = ""
        label.backgroundColor = .orange
        label.textAlignment = .center
        label.font = label.font.withSize(30)
        label.layer.cornerRadius = 20
        label.layer.masksToBounds = true
        
        view.addSubview(pictureResultGamer)
        pictureResultGamer.translatesAutoresizingMaskIntoConstraints = false
        pictureResultGamer.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 135).isActive = true
        pictureResultGamer.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 10).isActive = true
        pictureResultGamer.frame.size = CGSize(width: 128, height: 128)
        pictureResultGamer.image = UIImage(named: "RPS")
        pictureResultGamer.layer.masksToBounds = true
        
        
        view.addSubview(kamen)
        kamen.backgroundColor = .white
        kamen.setImage(#imageLiteral(resourceName: "kaya"), for: .normal)
        kamen.translatesAutoresizingMaskIntoConstraints = false
        kamen.topAnchor.constraint(equalTo: pictureResultGamer.bottomAnchor, constant: 10).isActive = true
        kamen.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        kamen.heightAnchor.constraint(equalToConstant: 128).isActive = true
        kamen.widthAnchor.constraint(equalToConstant: 128).isActive = true
        kamen.layer.cornerRadius = 20
        kamen.layer.masksToBounds = true
        kamen.addTarget(self, action: #selector(clickKamen), for: .touchUpInside)
        
        view.addSubview(noj)
        noj.backgroundColor = .white
        noj.setImage(#imageLiteral(resourceName: "scissor"), for: .normal)
        noj.translatesAutoresizingMaskIntoConstraints = false
        noj.topAnchor.constraint(equalTo: pictureResultGamer.bottomAnchor, constant: 10).isActive = true
        noj.leadingAnchor.constraint(equalTo: kamen.trailingAnchor, constant: 5).isActive = true
        noj.heightAnchor.constraint(equalToConstant: 128).isActive = true
        noj.widthAnchor.constraint(equalToConstant: 128).isActive = true
        noj.layer.cornerRadius = 20
        noj.layer.masksToBounds = true
        noj.addTarget(self, action: #selector(clickNoj), for: .touchUpInside)
        
        view.addSubview(A4)
        A4.backgroundColor = .white
        A4.setImage(#imageLiteral(resourceName: "paper"), for: .normal)
        A4.translatesAutoresizingMaskIntoConstraints = false
        A4.topAnchor.constraint(equalTo: pictureResultGamer.bottomAnchor, constant: 10).isActive = true
        A4.leadingAnchor.constraint(equalTo: noj.trailingAnchor, constant: 5).isActive = true
        A4.heightAnchor.constraint(equalToConstant: 128).isActive = true
        A4.widthAnchor.constraint(equalToConstant: 128).isActive = true
        A4.layer.cornerRadius = 20
        A4.layer.masksToBounds = true
        A4.addTarget(self, action: #selector(clickA4), for: .touchUpInside)

    }
    @objc func clickKamen()
    {
        var numberBot: Int
        let numberGamer: Int = 0
        numberBot = Int.random(in: 0...2)
        let random = game.resultBot(number: numberBot)
        let random1 = game.resultBot(number: numberGamer)
        pictureResultBot.image = UIImage(named: random)
        pictureResultGamer.image = UIImage(named: random1)
        kamen.backgroundColor = UIColor(red: 16/255, green: 178/255, blue: 251/255, alpha: 1)
        noj.backgroundColor = .white
        A4.backgroundColor = .white
        label.text = game.labelResult1(numberGamer: numberGamer, numberBot: numberBot)
        
        
    }
    @objc func clickNoj()
    {
        var numberBot: Int
        let numberGamer: Int = 1
        numberBot = Int.random(in: 0...2)
        let random = game.resultBot(number: numberBot)
        let random1 = game.resultBot(number: numberGamer)
        pictureResultBot.image = UIImage(named: random)
        pictureResultGamer.image = UIImage(named: random1)
        kamen.backgroundColor = .white
        A4.backgroundColor = .white
        noj.backgroundColor = UIColor(red: 16/255, green: 178/255, blue: 251/255, alpha: 1)
        label.text = game.labelResult2(numberGamer: numberGamer, numberBot: numberBot)
        
        
    }
    @objc func clickA4()
    {
        var numberBot: Int
        let numberGamer: Int = 2
        numberBot = Int.random(in: 0...2)
        let random = game.resultBot(number: numberBot)
        let random1 = game.resultBot(number: numberGamer)
        pictureResultBot.image = UIImage(named: random)
        pictureResultGamer.image = UIImage(named: random1)
        A4.backgroundColor = UIColor(red: 16/255, green: 178/255, blue: 251/255, alpha: 1)
        noj.backgroundColor = .white
        kamen.backgroundColor = .white
        label.text = game.labelResult3(numberGamer: numberGamer, numberBot: numberBot)
        
    }

}

