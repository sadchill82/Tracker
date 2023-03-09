import UIKit

extension UIView {
    static func placeholderView(message: String, icon: ImageAsset) -> UIView {
        let label = UILabel()
        label.font = .makeFont(.ysDisplayMedium, size: 12)
        label.text = message
        
        let imageView = UIImageView()
        imageView.image = .asset(icon)
        
        let vStack = UIStackView()
        
        vStack.axis = .vertical
        vStack.spacing = 8
        vStack.alignment = .center
        
        vStack.addArrangedSubview(imageView)
        vStack.addArrangedSubview(label)
        
        vStack.translatesAutoresizingMaskIntoConstraints = false
        
        return vStack
    }
}
