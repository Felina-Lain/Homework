// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:33210,y:32613,varname:node_3138,prsc:2|custl-541-OUT,olwid-4962-OUT;n:type:ShaderForge.SFN_Multiply,id:4750,x:32701,y:32836,varname:node_4750,prsc:2|A-9831-OUT,B-5164-OUT;n:type:ShaderForge.SFN_Multiply,id:9831,x:32591,y:32425,varname:node_9831,prsc:2|A-6968-RGB,B-6516-OUT;n:type:ShaderForge.SFN_Tex2d,id:2736,x:31942,y:32876,ptovrint:False,ptlb:Ramp,ptin:_Ramp,varname:node_2736,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:6205c27cc031f4e66b8ea90d1bfaa158,ntxv:1,isnm:False|UVIN-4627-OUT;n:type:ShaderForge.SFN_Append,id:4627,x:31642,y:32953,varname:node_4627,prsc:2|A-8729-OUT,B-4431-OUT;n:type:ShaderForge.SFN_Dot,id:8729,x:31368,y:32797,varname:node_8729,prsc:2,dt:0|A-6245-OUT,B-450-OUT;n:type:ShaderForge.SFN_LightColor,id:6968,x:32389,y:32372,varname:node_6968,prsc:2;n:type:ShaderForge.SFN_LightAttenuation,id:832,x:31692,y:32566,varname:node_832,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:450,x:31165,y:32909,prsc:2,pt:False;n:type:ShaderForge.SFN_LightVector,id:6245,x:31165,y:32763,varname:node_6245,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:4431,x:31346,y:33089,ptovrint:False,ptlb:Light form,ptin:_Lightform,varname:node_4431,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.2;n:type:ShaderForge.SFN_Lerp,id:5164,x:32214,y:33001,varname:node_5164,prsc:2|A-2736-RGB,B-4606-RGB,T-3333-OUT;n:type:ShaderForge.SFN_Append,id:4718,x:31718,y:33168,varname:node_4718,prsc:2|A-4627-OUT,B-4431-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3333,x:32126,y:33284,ptovrint:False,ptlb:Light strenght,ptin:_Lightstrenght,varname:node_3333,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.75;n:type:ShaderForge.SFN_Multiply,id:541,x:32909,y:32836,varname:node_541,prsc:2|A-4750-OUT,B-1461-OUT;n:type:ShaderForge.SFN_Tex2d,id:4045,x:32627,y:33120,ptovrint:False,ptlb:Main,ptin:_Main,varname:node_4045,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:4e2f32e9a1fefc24092337ae061f3dbc,ntxv:0,isnm:False|UVIN-8949-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:8949,x:32437,y:33120,varname:node_8949,prsc:2,uv:0;n:type:ShaderForge.SFN_Tex2d,id:4606,x:31921,y:33137,ptovrint:False,ptlb:stroke,ptin:_stroke,varname:node_4606,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:7a632f967e8ad42f5bd275898151ab6a,ntxv:0,isnm:False|UVIN-4718-OUT;n:type:ShaderForge.SFN_Clamp01,id:6516,x:32332,y:32518,varname:node_6516,prsc:2|IN-8936-OUT;n:type:ShaderForge.SFN_Add,id:8936,x:32114,y:32482,varname:node_8936,prsc:2|A-1354-OUT,B-1030-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1030,x:31901,y:32654,ptovrint:False,ptlb:intensity,ptin:_intensity,varname:node_1030,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:1354,x:31890,y:32460,varname:node_1354,prsc:2|A-4572-OUT,B-832-OUT;n:type:ShaderForge.SFN_Clamp01,id:4572,x:31692,y:32426,varname:node_4572,prsc:2|IN-9049-OUT;n:type:ShaderForge.SFN_Posterize,id:9049,x:31457,y:32426,varname:node_9049,prsc:2|IN-8729-OUT,STPS-4296-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4296,x:31235,y:32355,ptovrint:False,ptlb:sharpness,ptin:_sharpness,varname:node_4296,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:1461,x:32857,y:33120,varname:node_1461,prsc:2|A-4045-RGB,B-9506-RGB;n:type:ShaderForge.SFN_Color,id:9506,x:32548,y:33352,ptovrint:False,ptlb:texture color,ptin:_texturecolor,varname:node_9506,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Slider,id:4962,x:32778,y:33317,ptovrint:False,ptlb:node_4962,ptin:_node_4962,varname:node_4962,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:0.005;proporder:2736-4431-3333-4045-4606-1030-4296-9506-4962;pass:END;sub:END;*/

Shader "Shader Forge/Toon1" {
    Properties {
        _Ramp ("Ramp", 2D) = "gray" {}
        _Lightform ("Light form", Float ) = 0.2
        _Lightstrenght ("Light strenght", Float ) = 0.75
        _Main ("Main", 2D) = "white" {}
        _stroke ("stroke", 2D) = "white" {}
        _intensity ("intensity", Float ) = 0.5
        _sharpness ("sharpness", Float ) = 0.5
        _texturecolor ("texture color", Color) = (1,0,0,1)
        _node_4962 ("node_4962", Range(0, 0.005)) = 0
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "Outline"
            Tags {
            }
            Cull Front
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float _node_4962;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = mul(UNITY_MATRIX_MVP, float4(v.vertex.xyz + v.normal*_node_4962,1) );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                return fixed4(float3(0,0,0),0);
            }
            ENDCG
        }
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
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _Ramp; uniform float4 _Ramp_ST;
            uniform float _Lightform;
            uniform float _Lightstrenght;
            uniform sampler2D _Main; uniform float4 _Main_ST;
            uniform sampler2D _stroke; uniform float4 _stroke_ST;
            uniform float _intensity;
            uniform float _sharpness;
            uniform float4 _texturecolor;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
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
                float node_8729 = dot(lightDirection,i.normalDir);
                float2 node_4627 = float2(node_8729,_Lightform);
                float4 _Ramp_var = tex2D(_Ramp,TRANSFORM_TEX(node_4627, _Ramp));
                float3 node_4718 = float3(node_4627,_Lightform);
                float4 _stroke_var = tex2D(_stroke,TRANSFORM_TEX(node_4718, _stroke));
                float4 _Main_var = tex2D(_Main,TRANSFORM_TEX(i.uv0, _Main));
                float3 finalColor = (((_LightColor0.rgb*saturate(((saturate(floor(node_8729 * _sharpness) / (_sharpness - 1))*attenuation)+_intensity)))*lerp(_Ramp_var.rgb,_stroke_var.rgb,_Lightstrenght))*(_Main_var.rgb*_texturecolor.rgb));
                return fixed4(finalColor,1);
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
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _Ramp; uniform float4 _Ramp_ST;
            uniform float _Lightform;
            uniform float _Lightstrenght;
            uniform sampler2D _Main; uniform float4 _Main_ST;
            uniform sampler2D _stroke; uniform float4 _stroke_ST;
            uniform float _intensity;
            uniform float _sharpness;
            uniform float4 _texturecolor;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
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
                float node_8729 = dot(lightDirection,i.normalDir);
                float2 node_4627 = float2(node_8729,_Lightform);
                float4 _Ramp_var = tex2D(_Ramp,TRANSFORM_TEX(node_4627, _Ramp));
                float3 node_4718 = float3(node_4627,_Lightform);
                float4 _stroke_var = tex2D(_stroke,TRANSFORM_TEX(node_4718, _stroke));
                float4 _Main_var = tex2D(_Main,TRANSFORM_TEX(i.uv0, _Main));
                float3 finalColor = (((_LightColor0.rgb*saturate(((saturate(floor(node_8729 * _sharpness) / (_sharpness - 1))*attenuation)+_intensity)))*lerp(_Ramp_var.rgb,_stroke_var.rgb,_Lightstrenght))*(_Main_var.rgb*_texturecolor.rgb));
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
