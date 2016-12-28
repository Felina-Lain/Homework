using UnityEngine;
using System.Collections;

public class ModifyCamRender : MonoBehaviour {

	public Camera renderCam;
	private RenderTexture renderTexturabime;
	public RenderTexture renderTexturfinal;
	public Material modifier;

	void Start (){
	
		renderTexturabime = renderCam.targetTexture;

		OnRenderImage (renderTexturabime, renderTexturfinal);

	
	}
		
	void OnRenderImage (RenderTexture src, RenderTexture dest) {

		Graphics.Blit (src, dest, modifier);
	
	}

}
