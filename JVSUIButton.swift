//
//  JVSUIButton.swift
//  JVSUIButton
//
//  Created by Joris Vervuurt on 30-06-15.
//  Copyright (c) 2015 Joris Vervuurt Software. All rights reserved.
//

//  The MIT License (MIT)
//
//  Copyright (c) 2015 Joris Vervuurt Software
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.

import UIKit

/// Subclass of UIButton, adding the ability to set a minimum hit target size.
class JVSUIButton: UIButton {
	
	// MARK: - Properties
	
	/// A value that indicates whether the hit target should be extended in case it is smaller than the minimum hit target size.
	@IBInspectable var extendHitTargetIfNeeded: Bool = false
	
	/// The minimum hit target width.
	@IBInspectable var minimumHitTargetWidth: CGFloat = 44
	
	/// The minimum hit target height.
	@IBInspectable var minimumHitTargetHeight: CGFloat = 44
	
	// MARK: - Functions
	
	override func pointInside(point: CGPoint, withEvent event: UIEvent?) -> Bool {
		if !self.extendHitTargetIfNeeded {
			return super.pointInside(point, withEvent: event)
		} else {
			let initialBounds: CGRect = self.bounds
			let additionalHitTargetWidth: CGFloat = self.bounds.width < self.minimumHitTargetWidth ? self.minimumHitTargetWidth - self.bounds.width : 0
			let additionalHitTargetHeight: CGFloat = self.bounds.height < self.minimumHitTargetHeight ? self.minimumHitTargetHeight - self.bounds.height : 0
			let extendedBounds: CGRect = CGRectInset(self.bounds, -(additionalHitTargetWidth / 2), -(additionalHitTargetHeight / 2))
			
			return CGRectContainsPoint(extendedBounds, point)
		}
	}
	
}
