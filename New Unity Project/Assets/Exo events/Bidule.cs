using UnityEngine;
using System.Collections;
using UnityEngine.Events;

public class Bidule : MonoBehaviour {

	void Start (){

		GetComponent<VisibilityManager>().m_MyEvent += BlinkBlack;
		GetComponent<VisibilityManager>().m_MyEvent += ICU2;

	}

	// Use this for initialization
	public void BlinkBlack() {

		GetComponent<MeshRenderer> ().material.color = Color.Lerp (Color.white, Color.black, Mathf.PingPong (Time.time, 1));

	}

	// Update is called once per frame
	public void ICU2() {

		print ("There you are~");

	}
}
