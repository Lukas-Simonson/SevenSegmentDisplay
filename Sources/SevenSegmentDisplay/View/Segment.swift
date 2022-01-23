//
//  Segment.swift
//  Calculator ?
//
//  Created by Lukas Simonson on 1/21/22.
//

import SwiftUI

struct Segment: View {
	
	var isActive : Bool = false
	var activeColor : Color = Color.red
	var inactiveColor : Color = Color.init(red: 0.1, green: 0.1, blue: 0.1)
	
	var body: some View {
		RoundedRectangle(cornerRadius: 10)
			.foregroundColor( isActive ? activeColor : inactiveColor )
	}
}

struct Segment_Previews: PreviewProvider {
	static var previews: some View {
		Segment()
	}
}
