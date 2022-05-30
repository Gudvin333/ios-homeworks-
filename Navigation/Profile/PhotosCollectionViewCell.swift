//
//  PhotosCollectionViewCell.swift
//  Navigation
//
//  Created by Валентин Буров on 21.05.2022.
//

import UIKit

class PhotosCollectionViewCell: UICollectionViewCell {
    
    private var photosImageView: UIImageView = {
        var photosImageView = UIImageView()
        photosImageView.translatesAutoresizingMaskIntoConstraints = false
        photosImageView.backgroundColor = .black
        photosImageView.contentMode = .scaleAspectFill
        photosImageView.layer.cornerRadius = 0
        photosImageView.clipsToBounds = true
        return photosImageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupCell(_ photo: Photos) {
        photosImageView.image = photo.image
    }
    
    private func setupLayout() {
        contentView.addSubview(photosImageView)
        
        NSLayoutConstraint.activate([
            photosImageView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            photosImageView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            photosImageView.widthAnchor.constraint(equalTo: contentView.widthAnchor),
            photosImageView.heightAnchor.constraint(equalTo: contentView.heightAnchor)
        ])
    }
}
