using UnityEngine;
using System.Collections;

public class Inside : MonoBehaviour {

    public Transform player;

    public FMODUnity.StudioEventEmitter emitter;
    
    public float rayonMultiplyer = 1.0f;
    void Update() {
        float dist = Vector3.Distance(player.position, transform.position);
        float rayon = (transform.lossyScale.x + transform.lossyScale.y + transform.lossyScale.z) / 3;
        float str = dist / (rayon * rayonMultiplyer);
        str = 1 - str;
        emitter.SetParameter("Inside", str);
    }
}
