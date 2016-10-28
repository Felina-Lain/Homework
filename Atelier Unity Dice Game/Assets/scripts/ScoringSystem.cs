using UnityEngine;
using System.Collections;

public class ScoringSystem : MonoBehaviour {

	static int score_static;
	public GameObject[] gosred;
	public GameObject[] gosblue;
	public GameObject[] gosgreen;

	public int still_dice_red;
	public int still_dice_blue;
	public int still_dice_green;

	// Use this for initialization
	void Start () {
	

		gosred = GameObject.FindGameObjectsWithTag("Dice red");

		gosblue = GameObject.FindGameObjectsWithTag("Dice blue");

		gosgreen = GameObject.FindGameObjectsWithTag("Dice green");


	}
	
	// Update is called once per frame
	void Update () {

		foreach (GameObject gos in gosred)
		{
			float speed;
			speed = gos.GetComponent<Rigidbody>().velocity.magnitude;
			if (speed < 0.5 && gos.GetComponent<FaceUp> ().counted == false) {
				still_dice_red++;
				gos.GetComponent<FaceUp> ().counted = true;
				break;
			}   
		}

		foreach (GameObject gos in gosblue)
		{
			float speed;
			speed = gos.GetComponent<Rigidbody>().velocity.magnitude;
			if (speed < 0.5 && gos.GetComponent<FaceUp> ().counted == false) {
				still_dice_blue++;
				gos.GetComponent<FaceUp> ().counted = true;
				break;
			}   
		}

		foreach (GameObject gos in gosgreen)
		{
			float speed;
			speed = gos.GetComponent<Rigidbody>().velocity.magnitude;
			if (speed < 0.5 && gos.GetComponent<FaceUp> ().counted == false) {
				still_dice_green++;
				gos.GetComponent<FaceUp> ().counted = true;
				break;
			}   
		}


		if (still_dice_red == gosred.Length && still_dice_blue == gosblue.Length && still_dice_green == gosgreen.Length) {

			CalculateScore ();
			still_dice_red = 0;
			still_dice_blue = 0;
			still_dice_green = 0;
		}
	
	}


	public void CalculateScore(){

		int temp_score_red = 0;
		int temp_score_blue = 0;
		int temp_multi = 0;

		foreach (GameObject gos in gosred) {

			temp_score_red += gos.GetComponent<FaceUp> ().dValue;
			print ("tempr " + temp_score_red);

		}
		foreach (GameObject gos in gosblue) {
			
			temp_score_blue += gos.GetComponent<FaceUp> ().dValue;
			print ("tempb " + temp_score_blue);

		}
		foreach (GameObject gos in gosgreen) {

			temp_multi += gos.GetComponent<FaceUp> ().dValue;

		}
			
		if (temp_multi == 0)
			temp_multi = 1;

		print ("multi " + temp_multi);
		score_static = (temp_score_red - temp_score_blue) * temp_multi;
		print ("score " + score_static);

	}
}
