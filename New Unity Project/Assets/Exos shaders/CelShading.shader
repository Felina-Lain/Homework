// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:5841,x:33605,y:32917,varname:node_5841,prsc:2|custl-8331-OUT;n:type:ShaderForge.SFN_Dot,id:5946,x:32199,y:32876,cmnt: Has to be positive,varname:node_5946,prsc:2,dt:1|A-3070-OUT,B-7825-OUT;n:type:ShaderForge.SFN_LightVector,id:3070,x:32035,y:32876,varname:node_3070,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:7825,x:32035,y:33000,prsc:2,pt:False;n:type:ShaderForge.SFN_Power,id:2501,x:32387,y:32876,varname:node_2501,prsc:2|VAL-5946-OUT,EXP-2711-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2711,x:32199,y:33106,ptovrint:False,ptlb:RampSharpness,ptin:_RampSharpness,varname:_RampSharpness,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5;n:type:ShaderForge.SFN_Posterize,id:3681,x:32387,y:32724,cmnt:Use Power or Posterize if you prefer banding,varname:node_3681,prsc:2|IN-5946-OUT,STPS-2711-OUT;n:type:ShaderForge.SFN_Multiply,id:3548,x:32711,y:32876,cmnt:This gives us a shaded area which has the same color as the Light Attenuation,varname:node_3548,prsc:2|A-9542-OUT,B-87-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:87,x:32545,y:32998,varname:node_87,prsc:2;n:type:ShaderForge.SFN_Clamp01,id:9542,x:32545,y:32876,varname:node_9542,prsc:2|IN-2501-OUT;n:type:ShaderForge.SFN_Add,id:402,x:32873,y:32876,varname:node_402,prsc:2|A-3548-OUT,B-1111-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1111,x:32711,y:33032,ptovrint:False,ptlb:ShadeIntensity,ptin:_ShadeIntensity,varname:_ShadeIntensity,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5;n:type:ShaderForge.SFN_Clamp01,id:6129,x:33045,y:32900,cmnt:Clamp above1 to 1 when adding shade to avoid overpowering the light color,varname:node_6129,prsc:2|IN-402-OUT;n:type:ShaderForge.SFN_Multiply,id:8331,x:33295,y:32950,varname:node_8331,prsc:2|A-6129-OUT,B-3314-RGB;n:type:ShaderForge.SFN_LightColor,id:3314,x:33045,y:33037,varname:node_3314,prsc:2;proporder:2711-1111;pass:END;sub:END;*/

Shader "Custom/CelShading" {
    Properties {
        _RampSharpness ("RampSharpness", Float ) = 0.5
        _ShadeIntensity ("ShadeIntensity", Float ) = 0.5
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        LOD 200
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float _RampSharpness;
            uniform float _ShadeIntensity;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                LIGHTING_COORDS(2,3)
                UNITY_FOG_COORDS(4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float node_5946 = max(0,dot(lightDirection,i.normalDir)); //  Has to be positive
                float3 finalColor = (saturate(((saturate(pow(node_5946,_RampSharpness))*attenuation)+_ShadeIntensity))*_LightColor0.rgb);
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float _RampSharpness;
            uniform float _ShadeIntensity;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                LIGHTING_COORDS(2,3)
                UNITY_FOG_COORDS(4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float node_5946 = max(0,dot(lightDirection,i.normalDir)); //  Has to be positive
                float3 finalColor = (saturate(((saturate(pow(node_5946,_RampSharpness))*attenuation)+_ShadeIntensity))*_LightColor0.rgb);
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
