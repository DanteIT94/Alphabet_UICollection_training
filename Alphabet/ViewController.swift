//
//  ViewController.swift
//  Alphabet
//
//  Created by Денис on 17.06.2023.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - Private Properties
    private let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    
    private let letters = [
                "а", "б", "в", "г", "д", "е", "ё", "ж", "з", "и", "й", "к",
                "л", "м", "н", "о", "п", "р", "с", "т", "у", "ф", "х", "ц",
                "ч", "ш" , "щ", "ъ", "ы", "ь", "э", "ю", "я"
            ]
    
    //MARK: -LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        collectionView.delegate = self
        
        createCollectionView()
        collectionView.dataSource = self
        ///Регистрируем ячейку
        collectionView.register(LetterCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        ///регистрируем хеадер
        collectionView.register(SupplementaryView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "header")
        ///Регистрируем футер (для инфо)
//        collectionView.register(SupplementaryView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: "footer")
        
        
        
    }

    //MARK: -Private Methods
    ///Создаем UICollectionView
    private func createCollectionView() {
        collectionView.translatesAutoresizingMaskIntoConstraints = false
    
        view.addSubview(collectionView)
        
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }

}

extension ViewController: UICollectionViewDelegateFlowLayout {
    
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return letters.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? LetterCollectionViewCell
        cell?.titleLabel.text = letters[indexPath.row]
        
        return cell!
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        var id = 
    }
    
    
}

