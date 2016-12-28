using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class ExoRPGCharacter : MonoBehaviour{

	public float current_health;
	public float max_health;
	public int _Lvl;
	public int _currentmana;
	public int _maxmana;


	public GameObject _drop;


	public struct ExoRPGClasse{

		public string _CharaClass;
		public enum _ThingWearable{Heavy=1, Medium=2, Weightless=3};
		_ThingWearable _allowedArmor;

		}
		
    ExoRPGClasse thisClass;

	public ExoRPGInventory _MyInv = new ExoRPGInventory();

	void Awake (){
	
		current_health = max_health;
		_currentmana = _maxmana;
	}
		

	public void GainLvl (){
	
		_Lvl++;
		max_health += (max_health / 10);
		current_health = max_health;
	
	}

	public void Healthgestion (float influence){

			current_health += influence;
		if (current_health > max_health) {

			current_health = max_health;
		}

		if (current_health <= 0) {
			Destroy (this.gameObject);
		}		


	}

	public void ManaGestion (int influence){

		if (_currentmana < _maxmana) {
			_currentmana += influence;
		}

	}



	void OnTriggerEnter (Collider other){

		if (other.gameObject.GetComponent<ExoRPGCharacter> ()){

			float _influ = 0;

			foreach (ExoRPGObjetInv temp in other.gameObject.GetComponent<ExoRPGCharacter> ()._MyInv._ObjList) {
				_influ -= temp.thisWeap._weaponPower;

			}
			Healthgestion (_influ);

		}


		if (other.gameObject.GetComponent<ExoRPGObjetInv> () == null)
			return;



		if (other.gameObject.GetComponent<ExoRPGObjetInv> ().obj_name == "heal") {

			Healthgestion (other.gameObject.GetComponent<ExoRPGObjetInv> ().Puissance);
			Destroy (other.gameObject);

		} else if (other.gameObject.GetComponent<ExoRPGObjetInv> ().obj_name == "level") {

			GainLvl ();
			Destroy (other.gameObject);

		} else if (other.gameObject.GetComponent<ExoRPGObjetInv> ().obj_name == "item") {

			if (_MyInv._ObjList.Count < ExoRPGInventory._nbObjMax) {
				_MyInv._ObjList.Add (other.gameObject.GetComponent<ExoRPGObjetInv> ());
				other.gameObject.SetActive(false);
			}

		} 
	}

	void OnDestroy(){

		GameObject dropped = Instantiate (_drop);
		dropped.transform.position = this.transform.position;

	}
		
}