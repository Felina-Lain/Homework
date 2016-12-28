using UnityEngine;
using System.Collections;

public class NewBehaviourScript : MonoBehaviour {

	public float speed;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {

		GetComponent<MeshRenderer> ().material.color = Color.Lerp (Color.white, Color.red, Mathf.PingPong (Time.time * speed, 1));
	
	}
}
