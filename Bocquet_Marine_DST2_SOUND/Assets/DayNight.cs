using UnityEngine;
using System.Collections;

public class DayNight : MonoBehaviour {

    public Transform player;

    public FMODUnity.StudioEventEmitter emitter;

    [Range(0, 1)]
    public float dayNight = 0;

    public float dayNightSmooth = 0;

    public float timeToSwich = 1.0f;
    void Update() {
        dayNightSmooth = timeToSwich > 0 ? Mathf.MoveTowards(dayNightSmooth, dayNight, 1 / timeToSwich * Time.deltaTime) : dayNight;
        emitter.SetParameter("Day/Night", dayNightSmooth);
    }

    private void FixedUpdate() {
        if(player.transform.position.y > transform.position.y - 4) {
            // Player is over
            dayNight = 1;
        } else {
            // Player is under
            dayNight = 0;
        }
    }
}
