using UnityEngine;
using System.Collections;

public class ExoRPGObjetInv : MonoBehaviour{

	public string obj_name;
	public float Puissance;

	public float price;
	public float weight;

	public class ObjWeapon{

		public float _weaponPower;

		public ObjWeapon(){
		_weaponPower = 1;
		//_weaponPower = Puissance;

		}

	}

	public ObjWeapon thisWeap = new ObjWeapon();

	public class ObjArmur{

		enum BodySpot{Head,Neck,Torso,arms,hands,legs,feets,waist};

		enum ArmorType{leather,plate,mail,cloth};

	}

	public ObjArmur thisArmur = new ObjArmur();

}
