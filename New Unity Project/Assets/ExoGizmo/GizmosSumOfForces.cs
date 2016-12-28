using UnityEngine;
using System.Collections;
using UnityEditor;

public class GizmosSumOfForces : MonoBehaviour {

	[Range (-1,1)]
	public float ga = 0;


	// Use this for initialization
	void OnDrawGizmos() {

		Gizmos.color = Color.red;
		Gizmos.DrawLine (transform.position, transform.position + GetComponent<Rigidbody> ().velocity);
	
	}
	

}
