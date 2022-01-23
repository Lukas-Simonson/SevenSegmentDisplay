//
//  SevenSegmentDisplayModel.swift
//  Calculator ?
//
//  Created by Lukas Simonson on 1/21/22.
//

import Foundation

enum SevenSegmentDisplayCharacters {
	case A
	case B
	case C
	case D
	case E
	case F
	case G
	case H
	case I
	case J
	case K
	case L
	case M
	case N
	case n
	case O
	case P
	case Q
	case R
	case S
	case T
	case U
	case V
	case W
	case X
	case Y
	case Z
	
	case one
	case two
	case three
	case four
	case five
	case six
	case seven
	case eight
	case nine
	case zero
	
	case negative
	
	case decimal
	
	case blank
	
	var segmentLayout : ( segmentA : Bool, segmentB : Bool, segmentC : Bool, segmentD : Bool, segmentE : Bool, segmentF : Bool, segmentG : Bool ) {
		switch self {
			case .A : return ( segmentA : true, segmentB : true, segmentC : true, segmentD : false, segmentE : true, segmentF : true, segmentG : true )
			case .B  : return ( segmentA : false, segmentB : false, segmentC : true, segmentD : true, segmentE : true, segmentF : true, segmentG : true )
			case .C : return ( segmentA : true, segmentB : false, segmentC : false, segmentD : true, segmentE : true, segmentF : true, segmentG : false )
			case .D : return ( segmentA : false, segmentB : true, segmentC : true, segmentD : true, segmentE : true, segmentF : false, segmentG : true )
			case .E : return ( segmentA : true, segmentB : false, segmentC : false, segmentD : true, segmentE : true, segmentF : true, segmentG : true )
			case .F : return ( segmentA : true, segmentB : false, segmentC : false, segmentD : false, segmentE : true, segmentF : true, segmentG : true )
			case .G : return ( segmentA : true, segmentB : false, segmentC : true, segmentD : true, segmentE : true, segmentF : true, segmentG : false )
			case .H : return ( segmentA : false, segmentB : true, segmentC : true, segmentD : false, segmentE : true, segmentF : true, segmentG : true )
			case .I : return ( segmentA : false, segmentB : false, segmentC : false, segmentD : false, segmentE : true, segmentF : true, segmentG : false )
			case .J : return ( segmentA : false, segmentB : true, segmentC : true, segmentD : true, segmentE : true, segmentF : false, segmentG : false )
			case .K : return ( segmentA : true, segmentB : false, segmentC : true, segmentD : false, segmentE : true, segmentF : true, segmentG : true )
			case .L : return ( segmentA : false, segmentB : false, segmentC : false, segmentD : true, segmentE : true, segmentF : true, segmentG : false )
			case .M : return ( segmentA : true, segmentB : true, segmentC : false, segmentD : true, segmentE : false, segmentF : true, segmentG : false )
			case .N : return ( segmentA : true, segmentB : true, segmentC : true, segmentD : false, segmentE : true, segmentF : true, segmentG : false )
			case .n : return ( segmentA : false, segmentB : false, segmentC : true, segmentD : false, segmentE : true, segmentF : false, segmentG : true )
			case .O : return ( segmentA : false, segmentB : false, segmentC : true, segmentD : true, segmentE : true, segmentF : false, segmentG : true )
			case .P : return ( segmentA : true, segmentB : true, segmentC : false, segmentD : false, segmentE : true, segmentF : true, segmentG : true )
			case .Q : return ( segmentA : true, segmentB : true, segmentC : true, segmentD : false, segmentE : false, segmentF : true, segmentG : true )
			case .R : return ( segmentA : false, segmentB : false, segmentC : false, segmentD : false, segmentE : true, segmentF : false, segmentG : true )
			case .S : return ( segmentA : true, segmentB : false, segmentC : true, segmentD : true, segmentE : false, segmentF : true, segmentG : true )
			case .T : return ( segmentA : false, segmentB : false, segmentC : false, segmentD : true, segmentE : true, segmentF : true, segmentG : true )
			case .U : return ( segmentA : false, segmentB : true, segmentC : true, segmentD : true, segmentE : true, segmentF : true, segmentG : false )
			case .V : return ( segmentA : false, segmentB : true, segmentC : false, segmentD : true, segmentE : false, segmentF : true, segmentG : false )
			case .W : return ( segmentA : false, segmentB : true, segmentC : true, segmentD : true, segmentE : true, segmentF : true, segmentG : true )
			case .X : return ( segmentA : true, segmentB : false, segmentC : false, segmentD : true, segmentE : false, segmentF : false, segmentG : true )
			case .Y : return ( segmentA : false, segmentB : true, segmentC : true, segmentD : true, segmentE : false, segmentF : true, segmentG : true )
			case .Z : return ( segmentA : true, segmentB : true, segmentC : false, segmentD : true, segmentE : true, segmentF : false, segmentG : true )
			case .one : return ( segmentA : false, segmentB : true, segmentC : true, segmentD : false, segmentE : false, segmentF : false, segmentG : false )
			case .two : return ( segmentA : true, segmentB : true, segmentC : false, segmentD : true, segmentE : true, segmentF : false, segmentG : true )
			case .three : return ( segmentA : true, segmentB : true, segmentC : true, segmentD : true, segmentE : false, segmentF : false, segmentG : true )
			case .four : return ( segmentA : false, segmentB : true, segmentC : true, segmentD : false, segmentE : false, segmentF : true, segmentG : true )
			case .five : return ( segmentA : true, segmentB : false, segmentC : true, segmentD : true, segmentE : false, segmentF : true, segmentG : true )
			case .six : return ( segmentA : true, segmentB : false, segmentC : true, segmentD : true, segmentE : true, segmentF : true, segmentG : true )
			case .seven : return ( segmentA : true, segmentB : true, segmentC : true, segmentD : false, segmentE : false, segmentF : false, segmentG : false )
			case .eight : return ( segmentA : true, segmentB : true, segmentC : true, segmentD : true, segmentE : true, segmentF : true, segmentG : true )
			case .nine : return ( segmentA : true, segmentB : true, segmentC : true, segmentD : false, segmentE : false, segmentF : true, segmentG : true )
			case .zero : return ( segmentA : true, segmentB : true, segmentC : true, segmentD : true, segmentE : true, segmentF : true, segmentG : false )
			case .negative : return ( segmentA : false, segmentB : false, segmentC : false, segmentD : false, segmentE : false, segmentF : false, segmentG : true )
			default : return ( segmentA : false, segmentB : false, segmentC : false, segmentD : false, segmentE : false, segmentF : false, segmentG : false )
		}
	}
}
