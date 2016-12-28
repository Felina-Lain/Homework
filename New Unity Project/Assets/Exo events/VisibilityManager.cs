using UnityEngine;
using System.Collections;
using UnityEngine.Events;

public class VisibilityManager : MonoBehaviour {

	public Transform _exposed;

	public delegate void YellingEventType(); 

	public event YellingEventType m_MyEvent;

	
	// Update is called once per frame
	void Update () {

		Vector3 fwd = _exposed.transform.position - transform.position;
		RaycastHit hit;
		if (Physics.Raycast (transform.position, fwd, out hit)) {
			if (hit.transform == _exposed.transform) {
				if (m_MyEvent != null) {
					
					m_MyEvent ();

				}
			}

		} 
			
	
	}
}
