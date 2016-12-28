using UnityEngine;
using System.Collections;

public class Teleporter : MonoBehaviour {

    public delegate void BasicEvent();

    BasicEvent e_PlayerEnteredZone;
    BasicEvent e_PlayerExitedZoneBeforeFullDuration;
    BasicEvent e_PlayerStayedInsideForFullDuration;

    public float timeToStayBeforeTeleport = 5f;

    public Transform player;
    public Transform target;

    public FMODUnity.StudioEventEmitter insideEmitter;
    public FMODUnity.StudioEventEmitter triggerEmitter;

    public class Counter {
        public BasicEvent e_CounterFinished;
        float time = 0;
        public float duration = 0;
        public void Step(float dt) {
            time += dt;
            if(time > duration) {
                // Counter finished
                if(e_CounterFinished != null) e_CounterFinished();
            }
        }
    }

    public Counter currentCounter = new Counter();

    private void Start() {
        e_PlayerEnteredZone += PlayerEnteredZoneHandler;
        e_PlayerExitedZoneBeforeFullDuration += PlayerExitedZoneBeforeFullDurationHandler;
        e_PlayerStayedInsideForFullDuration += PlayerStayedInsideForFullDurationHandler;

        insideEmitter.AllowFadeout = true;
    }

    private void Update() {
        if(currentCounter != null) currentCounter.Step(Time.deltaTime);
    }
        
    public void OnTriggerEnter(Collider other) {
        if(other.tag == "Player") {
            // Player entred the zone
            e_PlayerEnteredZone();
        }
    }

    public void OnTriggerExit(Collider other) {
        if (other.tag == "Player" && currentCounter != null) {
            // Player entred the zone
            e_PlayerExitedZoneBeforeFullDuration();
        }
    }

    private void PlayerEnteredZoneHandler() {
        Debug.Log("PlayerEnteredZoneHandler");
        currentCounter = new Counter();
        currentCounter.duration = timeToStayBeforeTeleport;
        currentCounter.e_CounterFinished += PlayerStayedInsideForFullDurationHandler;

        // Audio
        insideEmitter.Play();
    }

    private void PlayerExitedZoneBeforeFullDurationHandler() {
        Debug.Log("PlayerExitedZoneBeforeFullDurationHandler");
        // Reset counter
        currentCounter = null;

        // Audio
        insideEmitter.Stop();
    }

    private void PlayerStayedInsideForFullDurationHandler() {
        Debug.Log("PlayerStayedInsideForFullDurationHandler");
        // Reset counter
        currentCounter = null;
        // Teleport player
        TeleportPlayer();
    }

    private void TeleportPlayer() {
        player.transform.position = target.transform.position;
        player.transform.rotation = target.transform.rotation;

        // Audio
        triggerEmitter.Play();
    }
    
}
