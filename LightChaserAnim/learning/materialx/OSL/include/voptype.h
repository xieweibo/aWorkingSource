/*
 * PROPRIETARY INFORMATION.  This software is proprietary to
 * Side Effects Software Inc., and is not to be reproduced,
 * transmitted, or disclosed in any way without written permission.
 *
 * Produced by:
 *	Side Effects Software Inc
 *	477 Richmond Street West
 *	Toronto, Ontario
 *	Canada   M5V 3E7
 *	416-504-9876
 *
 * NAME:	voptype.h ( VOP Library, C++)
 *
 * COMMENTS:
 *	This header file defines some "generic" types which can be used 
 *	in code generated by VOPs.  There is a corresponding voptype.h file
 *	included in vex/include (for compiling VEX code).
 */

#ifndef __voptype__
#define __voptype__

//
// Some type defines which can be used in code intended to be compiled for OSL.
//
#define VOPvector4	<error>	// Unsupported type
#define VOPvector	vector
#define VOPfloat	float
#define VOPint		int
#define VOPstring	string
#define VOPmatrix3	<error>	// Unsupported type
#define VOPmatrix4	matrix
#define VOPpoint	point
#define VOPnormal	normal
#define VOPcolor	color
#define VOPbsdf		color closure

#define VOPuniform	uniform
#define VOPoutput	output

// How to declare a constant
#define VOP_C_COLOR(r,g,b)	color(r,g,b)
#define VOP_C_VECTOR(x,y,z)	vector(x,y,z)
#define VOP_C_POINT(x,y,z)	point(x,y,z)
#define VOP_C_NORMAL(x,y,z)	normal(x,y,z)

// How to declare a varying value
#define VOP_V_COLOR(r,g,b)	color(r,g,b)
#define VOP_V_VECTOR(x,y,z)	vector(x,y,z)
#define VOP_V_POINT(x,y,z)	point(x,y,z)
#define VOP_V_NORMAL(x,y,z)	normal(x,y,z)

// How to cast a variable
#define VOP_CAST_FLOAT(x)	(float)(x)

#define VOP_TRUE(condition)	((condition) != 0)
#define VOP_FALSE(condition)	((condition) == 0)

#endif
