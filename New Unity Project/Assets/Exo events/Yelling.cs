using UnityEngine;
using System.Collections;
using UnityEngine.Events;

public class Yelling : MonoBehaviour {


	void Start (){
		
		GetComponent<VisibilityManager>().m_MyEvent += BlinkOrange;
		GetComponent<VisibilityManager>().m_MyEvent += ICU;

	}

	// Use this for initialization
	public void BlinkOrange () {

		GetComponent<MeshRenderer> ().material.color = Color.Lerp (Color.white, Color.red, Mathf.PingPong (Time.time, 1));
	
	}
	
	// Update is called once per frame
	public void ICU () {

		print ("I can see you~");
	
	}
}
