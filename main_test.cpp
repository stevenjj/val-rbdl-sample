#include <iostream>

#include <Valkyrie/Valkyrie_Definition.h>
#include <Valkyrie/Valkyrie_Model.hpp>
#include <Utils/utilities.hpp>

int main(int argc, char **argv)
{
	std::cout << "Hello world" << std::endl;

	// (1) Construct Valkyrie model: 
	// Method 1
	// Valkyrie_Model robot_model;

	// Method 2: Make a pointer then construct it later
	Valkyrie_Model* robot_model;
	robot_model = new Valkyrie_Model();

	// (2) Specify Val's joint configuration
	// See RobotSystems/Valkyrie/Valkyrie_Definition.h

	// Initialize some containers
	dynacore::Vector m_q; 	// dynacore <-- is a namespace. It wraps Eigen. See Utils/wrap_eigen.hpp
	dynacore::Vector m_qdot;
	m_q = dynacore::Vector::Zero(valkyrie::num_q); // Initialize to size of number of valkyrie joints
	m_qdot = dynacore::Vector::Zero(valkyrie::num_qdot);

	// initialize Valkyrie to be standing Up
	
	// Set Virtual Joints
	// Linear components
	m_q[valkyrie_joint::virtual_X] = 0.0;
	m_q[valkyrie_joint::virtual_Y] = 0.0;
	m_q[valkyrie_joint::virtual_Z] = 1.121277; 

	
	// The w part of the quaternion is at the end of the joint  
	// Rotational Components. Set Pelvis quaternion to identity
	m_q[valkyrie_joint::virtual_Rx] = 0.0; // Pelvis Quaternion x = 0.0
	m_q[valkyrie_joint::virtual_Ry] = 0.0; // Pelvis Quaternion y = 0.0
	m_q[valkyrie_joint::virtual_Rz] = 0.0; // Pelvis Quaternion z = 0.0
	m_q[valkyrie_joint::virtual_Rw] = 1.0; // Pelvis Quaternion w = 1.0 // Note that the w component is at the end of the jiont list. See Valkyrie/Valkyrie_Definition.h

	// Initialize Joints
	m_q[valkyrie_joint::leftHipPitch] = -0.3; //r_joint_[r_joint_idx_map_.find("leftHipPitch"  )->second]->m_State.m_rValue[0] = -0.3;
	m_q[valkyrie_joint::rightHipPitch] = -0.3;  //r_joint_[r_joint_idx_map_.find("rightHipPitch" )->second]->m_State.m_rValue[0] = -0.3;
	m_q[valkyrie_joint::leftKneePitch] = 0.6;  //r_joint_[r_joint_idx_map_.find("leftKneePitch" )->second]->m_State.m_rValue[0] = 0.6;
	m_q[valkyrie_joint::rightKneePitch] = 0.6;//r_joint_[r_joint_idx_map_.find("rightKneePitch")->second]->m_State.m_rValue[0] = 0.6;
	m_q[valkyrie_joint::leftAnklePitch] = -0.3; //r_joint_[r_joint_idx_map_.find("leftAnklePitch")->second]->m_State.m_rValue[0] = -0.3;
	m_q[valkyrie_joint::rightAnklePitch] = -0.3; //r_joint_[r_joint_idx_map_.find("rightAnklePitch")->second]->m_State.m_rValue[0] = -0.3;

	m_q[valkyrie_joint::rightShoulderPitch] = 0.2; //r_joint_[r_joint_idx_map_.find("rightShoulderPitch")->second]->m_State.m_rValue[0] = 0.2;
	m_q[valkyrie_joint::rightShoulderRoll] = 1.1;  //r_joint_[r_joint_idx_map_.find("rightShoulderRoll" )->second]->m_State.m_rValue[0] = 1.1;
	m_q[valkyrie_joint::rightElbowPitch] = 0.4;  //r_joint_[r_joint_idx_map_.find("rightElbowPitch"   )->second]->m_State.m_rValue[0] = 0.4;
	m_q[valkyrie_joint::rightForearmYaw] = 1.5;  //r_joint_[r_joint_idx_map_.find("rightForearmYaw" )->second]->m_State.m_rValue[0] = 1.5;

	m_q[valkyrie_joint::leftShoulderPitch] = -0.2; //r_joint_[r_joint_idx_map_.find("rightShoulderPitch")->second]->m_State.m_rValue[0] = 0.2;
	m_q[valkyrie_joint::leftShoulderRoll] = -1.1;  //r_joint_[r_joint_idx_map_.find("rightShoulderRoll" )->second]->m_State.m_rValue[0] = 1.1;
	m_q[valkyrie_joint::leftElbowPitch] = -0.4;//0.4;  //r_joint_[r_joint_idx_map_.find("rightElbowPitch"   )->second]->m_State.m_rValue[0] = 0.4;
	m_q[valkyrie_joint::leftForearmYaw] = 1.5;  //r_joint_[r_joint_idx_map_.find("rightForearmYaw" )->second]->m_State.m_rValue[0] = 1.5;	


	// (3) Update the kinematics/dynamics of the robot
	robot_model->UpdateSystem(m_q, m_qdot);

	std::cout << "[Test] Robot Starting State Initialized" << std::endl;
	
	// (4) Example get end-effector state and Jacobians:

	// Get position of the left foot and right foot center-of-pressure (cop) frames:
	dynacore::Vect3 left_foot_cop_pos;
	dynacore::Vect3 right_foot_cop_pos;
	left_foot_cop_pos.setZero();
	right_foot_cop_pos.setZero();
	robot_model->getPos(valkyrie_link::leftCOP_Frame, left_foot_cop_pos);
	robot_model->getPos(valkyrie_link::rightCOP_Frame, right_foot_cop_pos);

	// Print out and expect the z component to be zero. 
	std::cout << "[Test] Left and right feet locations. Expect symmetrical x and y positions and z must be 0.0" << std::endl;
	dynacore::pretty_print(left_foot_cop_pos, std::cout, "Left Foot CoP Position"); 	// See Utils/utilities.cpp
	dynacore::pretty_print(right_foot_cop_pos, std::cout, "Right Foot CoP Position"); 	// See Utils/utilities.cpp

	// Get left and right foot orientations
	dynacore::Quaternion left_cop_quat;
	dynacore::Quaternion right_cop_quat;
	left_cop_quat.setIdentity();
	right_cop_quat.setIdentity();
	robot_model->getOri(valkyrie_link::leftCOP_Frame, left_cop_quat);
	robot_model->getOri(valkyrie_link::rightCOP_Frame, right_cop_quat);

	// Print out and expect the orientation to be identity. 
	std::cout << "[Test] Left and right feet orientations. Expect orientations to be identity since we are flat footed on the ground" << std::endl;
	dynacore::pretty_print(left_cop_quat, std::cout, "Left Foot CoP Orientation"); 	// See Utils/utilities.cpp
	dynacore::pretty_print(right_cop_quat, std::cout, "Right Foot CoP Orientation"); 	// See Utils/utilities.cpp


	// Get Jacobian of left foot. Expect Zeros at columns corresponding to arms and right foot joints
	// RBDL Jacobians have the convention that it is rotation elements first then linear positions.
	// So each column are typically [dwx/dq; dwy/dq; dwz/dq; dx/dq; dy/dq; dz/dq]
	dynacore::Matrix J_leftFootCoP;
	robot_model->getFullJacobian(valkyrie_link::leftCOP_Frame, J_leftFootCoP);

	std::cout << "[Test]Jacobian of left foot CoP frame. Expect zeros at columns corresponding to arms, neck, torso and right leg joints" << std::endl;
	dynacore::pretty_print(J_leftFootCoP, std::cout, "Left Foot CoP Jacobian"); // See Utils/utilities.cpp

	// Another way to print this info:
	// for(int i = 0; i < J_leftFootCoP.rows(); i++){
	// 	printf("row %i: ", i);
	// 	for(int j = 0; j < J_leftFootCoP.cols(); j++){
	// 		printf(" %0.3f ", J_leftFootCoP(i,j));
	// 	}
	// 	printf("\n");
	// }
	
	// Delete
	delete robot_model;

	return 0;
}