// ***************************************************************************
//
//   Generated automatically by genwrapper.
//   Please DO NOT EDIT this file!
//
// ***************************************************************************

#include <osgIntrospection/ReflectionMacros>
#include <osgIntrospection/TypedMethodInfo>
#include <osgIntrospection/StaticMethodInfo>
#include <osgIntrospection/Attributes>

#include <osgART/GenericVideoShader>

// Must undefine IN and OUT macros defined in Windows headers
#ifdef IN
#undef IN
#endif
#ifdef OUT
#undef OUT
#endif

BEGIN_ABSTRACT_OBJECT_REFLECTOR(osgART::GenericVideoShader)
	I_Constructor0();
	I_Method1(void, Apply, IN, osg::StateSet &, x);
	I_PublicMemberProperty(osg::Program *, program);
	I_PublicMemberProperty(osg::Shader *, m_vp);
	I_PublicMemberProperty(osg::Shader *, m_fp);
END_REFLECTOR
