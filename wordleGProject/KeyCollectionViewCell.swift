//
//  KeyCollectionViewCell.swift
//  wordleGProject
//
//  Created by Viren Rakholiya on 24/06/22.
//

import UIKit

class KeyCollectionViewCell: UICollectionViewCell {
    static let identifier = "KeyCollectionViewCell"
    
    let label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 18, weight: .medium)
        return label
    }()
      
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .gray
        contentView.addSubview(label)
        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            label.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            label.topAnchor.constraint(equalTo: contentView.topAnchor),
            label.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
        ])
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        label.text = nil
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    func configure(with letter: Character) {
        label.text = String(letter).uppercased()
    }
}
