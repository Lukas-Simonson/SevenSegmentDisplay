//
//  SevenSegmentDisplay.swift
//  Calculator ?
//
//  Created by Lukas Simonson on 1/21/22.
//

import SwiftUI

struct SevenSegmentDisplay: View {
	
	typealias values = SevenSegmentDisplayConstants
	
	var character : SevenSegmentDisplayCharacters
	var activeColor : Color = .blue
	var inactiveColor : Color = Color.init(red: 0.1, green: 0.1, blue: 0.1)
	var showDecimal : Bool = false
	
	var body: some View {
		
		GeometryReader { geometry in
			
			ZStack {
				VStack( spacing: .zero ) {
					createSegment(isActive: character.segmentLayout.segmentA, isHorizontal: true, in: geometry)
					HStack {
						createSegment(isActive: character.segmentLayout.segmentF, isHorizontal: false, in: geometry)
						Spacer()
						createSegment(isActive: character.segmentLayout.segmentB, isHorizontal: false, in: geometry)
					}
					createSegment(isActive: character.segmentLayout.segmentG, isHorizontal: true, in: geometry)
					HStack {
						createSegment(isActive: character.segmentLayout.segmentE, isHorizontal: false, in: geometry)
						Spacer()
						createSegment(isActive: character.segmentLayout.segmentC, isHorizontal: false, in: geometry)
					}
					createSegment( isActive: character.segmentLayout.segmentD, isHorizontal: true, in: geometry )
					
					// TODO:  Add Decimal Support
//						.overlay( alignment: .bottomTrailing ) {
//							HStack {
//								Circle()
//									.foregroundColor( showDecimal ? self.activeColor : self.inactiveColor )
//									.offset( x: (( geometry.size.width * values.horizontalSegmentWidthModifier ) / 1.25) )
//							}
//						}
				}
			}
		}
		.aspectRatio( values.screenAspectRatio, contentMode: .fit )
	}
	
	func createSegment( isActive : Bool, isHorizontal : Bool, in geometry : GeometryProxy ) -> some View {
		
		Segment( isActive: isActive, activeColor: self.activeColor, inactiveColor: self.inactiveColor )
			.frame(
				width: geometry.size.width * ( isHorizontal ? values.horizontalSegmentWidthModifier : values.verticalSegmentWidthModifier ),
				height: geometry.size.height * ( isHorizontal ? values.horizontalSegmentHeightModifier : values.verticalSegmentHeightModifier )
			)
	}
}

struct SevenSegmentDisplay_Previews: PreviewProvider {
	static var previews: some View {
		SevenSegmentDisplay( character: .six )
	}
}
