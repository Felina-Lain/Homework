using UnityEngine;
using System.Collections;

public class FaceUp : MonoBehaviour {

	float speed;
	public int dValue;

	[HideInInspector]public bool counted = false;


	void Update ()
	{
		speed = GetComponent<Rigidbody>().velocity.magnitude;
		if (speed < 0.5) {
			gameObject.GetComponent<Rigidbody>().velocity = new Vector3 (0, 0, 0);
			WhichFaceOn ();
		}
	}
		
	public void WhichFaceOn (){

		if (Vector3.Dot (transform.forward, Vector3.up) > 0.5) {
			dValue = 3;
		}
		else if (Vector3.Dot (-transform.forward, Vector3.up) > 0.5) {
			dValue = 4;
		}
		else if (Vector3.Dot (transform.up, Vector3.up) > 0.5) {
			dValue = 2;
		}
		else if (Vector3.Dot (-transform.up, Vector3.up) > 0.5) {
			dValue = 5;
		}
		else if (Vector3.Dot (transform.right, Vector3.up) > 0.5) {
			dValue = 6;
		}
		else if (Vector3.Dot (-transform.right, Vector3.up) > 0.5) {
			dValue = 1;
		}
		Debug.Log ("dValue :" + dValue);
		//Debug.Log ("transform.up" + transform.up);
		//Debug.Log ("transform.direction" + transform.TransformDirection(transform.up));
	}

}
