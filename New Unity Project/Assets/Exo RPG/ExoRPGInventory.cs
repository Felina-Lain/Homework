using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class ExoRPGInventory : MonoBehaviour{

	public int _nbObjcurrent;
	public const int _nbObjMax = 10;
	public List<ExoRPGObjetInv> _ObjList = new List<ExoRPGObjetInv>();


	public ExoRPGObjetInv GetItemNb (int objNum){

		if (objNum <= _nbObjMax){
			return _ObjList [objNum];
		}
		else {
			return null;
		}

	}

	public ExoRPGObjetInv  GetItemName (string objName)
	{

		for(int i=0; i<_ObjList.Count; i++){
			if(_ObjList[i].name == objName) {

				return _ObjList [i];
				
					}
				}
		return null;
			}

}