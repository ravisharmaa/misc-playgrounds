//
//  RatingController.swift
//  FoodTracker
//
//  Created by Ravi Bastola on 12/16/18.
//  Copyright © 2018 Ravi Bastola. All rights reserved.
//

import UIKit

@IBDesignable class RatingController: UIStackView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    // MARK: Properties
    
    private var ratingButtons = [UIButton]()
    
    var rating: Int = 0 {
        didSet {
            updateButtonsState()
        }
    }
    
    @IBInspectable var starSize: CGSize = CGSize(width: 44.0, height: 44.0) {
        didSet {
            setUpButtons()
        }
    }
    
    @IBInspectable var starCount: Int = 5 {
        didSet {
            setUpButtons()
        }
    }
    
    
    // MARK: Initialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setUpButtons()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        
        setUpButtons()
        
    }
    
    // MARK: Private Action
    
    private func setUpButtons () {
        
        
        for button in ratingButtons {
            removeArrangedSubview(button)
            button.removeFromSuperview()
        }
        
        ratingButtons.removeAll()
        
        let bundle = Bundle(for: type(of: self))
        
        let filledStar = UIImage(named: "filledStar", in: bundle, compatibleWith: self.traitCollection)
        
        let emptyStar = UIImage(named: "emptyStar", in: bundle, compatibleWith: self.traitCollection)
        
        let highlightedStar = UIImage(named: "highlightedStar", in: bundle, compatibleWith: self.traitCollection)
        
        
        
        for _ in 0 ..< starCount {
            
            // Create a UI button
            let button = UIButton()
            
            // Assign a UIColor
            button.setImage(emptyStar, for: .normal)
            
            button.setImage(filledStar, for: .selected)
            
            button.setImage(highlightedStar, for: .highlighted)
            
            button.setImage(highlightedStar, for: [.highlighted, .selected])
            
            // Adding Constraints Programmatically
            
            button.translatesAutoresizingMaskIntoConstraints = false
            
            button.heightAnchor.constraint(equalToConstant: starSize.height).isActive = true
            
            button.widthAnchor.constraint(equalToConstant: starSize.width).isActive = true
            
            button.addTarget(self, action: #selector(RatingController.ratingButtonTapped(button:)), for: .touchUpInside)
            
            addArrangedSubview(button)
            
            ratingButtons.append(button)
            
        }
        
        
        updateButtonsState()
        
    }
    
    //MARK: Actions
    
    @objc func ratingButtonTapped (button: UIButton) {
        
        guard let index = ratingButtons.index(of: button) else {
            fatalError("the button is not in the \(button) in \(ratingButtons) array")
        }
        
        let selectedRating = index + 1
        
        if selectedRating == rating {
            rating = 0
        } else {
            rating = selectedRating
        }
    }
    
    
    private func updateButtonsState () {
        for (index, button) in ratingButtons.enumerated() {
            button.isSelected = index < rating
        }
    }
}
