//___FILEHEADER___

import UIKit

class ___FILEBASENAMEASIDENTIFIER___: UIView {

    static let nibName = "___FILEBASENAMEASIDENTIFIER___"
    //MARK: Outlets
    @IBOutlet var contentView: UIView!
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }

    private func commonInit() {
        Bundle.main.loadNibNamed(___FILEBASENAMEASIDENTIFIER___.nibName, owner: self, options: nil)
        addSubview(contentView)
        contentView.layer.masksToBounds = true
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight,.flexibleWidth]
    }
    
    func configure(_ view:UIView) {
           self.frame.size = view.frame.size
    }

}
