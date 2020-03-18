// All signals. Format:
// When the signal is called: (signal arguments)
// All signals send the source datum of the signal as the first argument

// global signals
// These are signals which can be listened to by any component on any parent
// start global signals with "!", this used to be necessary but now it's just a formatting choice
#define COMSIG_GLOB_NEW_Z "!new_z"								//from base of datum/controller/subsystem/mapping/proc/add_new_zlevel(): (list/args)
#define COMSIG_GLOB_VAR_EDIT "!var_edit"						//called after a successful var edit somewhere in the world: (list/args)
#define COMSIG_GLOB_LIVING_SAY_SPECIAL "!say_special"			//global living say plug - use sparingly: (mob/speaker , message)

// signals from globally accessible objects
/// from SSsun when the sun changes position : (azimuth)
#define COMSIG_SUN_MOVED "sun_moved"
//////////////////////////////////////////////////////////////////

// /datum signals
#define COMSIG_COMPONENT_ADDED "component_added"				//sent to the new datum parent when a component is added to them: (/datum/component)
#define COMSIG_COMPONENT_REMOVING "component_removing"			//sent to the datum parent before a component is removed from them because of RemoveComponent: (/datum/component)
#define COMSIG_COMPONENT_UNREGISTER_PARENT "component_unregister_parent" //sent to the component itself when unregistered from a parent
#define COMSIG_COMPONENT_REGISTER_PARENT "component_register_parent"	 //sent to the component itself when registered to a parent
#define COMSIG_PARENT_PREQDELETED "parent_preqdeleted"			//before a datum's Destroy() is called: (force), returning a nonzero value will cancel the qdel operation
#define COMSIG_PARENT_QDELETING "parent_qdeleting"				//just before a datum's Destroy() is called: (force), at this point none of the other components chose to interrupt qdel and Destroy will be called
