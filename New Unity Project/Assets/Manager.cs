using UnityEngine;
using System.Collections;
using UnityEngine.UI;

using System.IO;
using System.Runtime.Serialization.Formatters.Binary;

public class Manager : MonoBehaviour {

	public BinaryFormatter bf;

	public Text scoreText;
	public float score;
	public float highScore;
	public Text hightext;

	// Use this for initialization
	void Start () {

		UpdateText ();
		//LoadHigh ();
	
	}
	
	// Update is called once per frame
	void UpdateText () {

		scoreText.text = score.ToString ();
			
	}

	void UpdateHighText () {

		hightext.text = score.ToString ();

	}

	public void IncrementScore(){
	
		score += 1;

		if (highScore < score) {
		
			IncrementHigh ();
					
		}

		UpdateText ();
	
	}
	public void IncrementHigh(){

		highScore += 1;
		UpdateHighText ();

	}

	public void ResetScore(){

		score = 0;
		UpdateText ();

	}

		//public void SaveHigh(){
		//
		//if(!File.Exists(Path.Combine(Application.persistentDataPath, "highscore.dat"))){
		//		return;
		//
		//	}
		//
		//bf = new BinaryFormatter ();
		//FileStream fs = File.OpenWrite (Path.Combine(Application.persistentDataPath, "highscore.dat"));
		//
		//HighscoreData dataa = new HighscoreData();
		//dataa.highscore = highScore;
		//
		//bf.Serialize (Stream, dataa);
		//
		//}
	
	//public void LoadHigh(){
	//
	//	bf = new BinaryFormatter ();
	//	FileStream fs = File.OpenRead (Path.Combine(Application.persistentDataPath, "highscore.dat"));
	//
	//
	//	bf.Deserialize (Stream) as HighscoreData;
	//	highScore = dataa.highscore;
	//}
}
