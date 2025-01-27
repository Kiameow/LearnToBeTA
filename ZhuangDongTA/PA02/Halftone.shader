// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33475,y:32821,varname:node_3138,prsc:2|emission-5664-OUT;n:type:ShaderForge.SFN_NormalVector,id:8182,x:32337,y:32756,prsc:2,pt:False;n:type:ShaderForge.SFN_LightVector,id:5065,x:32351,y:32945,varname:node_5065,prsc:2;n:type:ShaderForge.SFN_Dot,id:3695,x:32547,y:32876,varname:node_3695,prsc:2,dt:0|A-8182-OUT,B-5065-OUT;n:type:ShaderForge.SFN_Multiply,id:5354,x:32759,y:33058,varname:node_5354,prsc:2|A-3695-OUT,B-7747-OUT;n:type:ShaderForge.SFN_Add,id:8669,x:32945,y:33058,varname:node_8669,prsc:2|A-5354-OUT,B-8806-OUT;n:type:ShaderForge.SFN_Depth,id:3020,x:32223,y:33422,varname:node_3020,prsc:2;n:type:ShaderForge.SFN_ScreenPos,id:3481,x:32223,y:33263,varname:node_3481,prsc:2,sctp:0;n:type:ShaderForge.SFN_Multiply,id:5498,x:32398,y:33364,varname:node_5498,prsc:2|A-3481-UVOUT,B-3020-OUT;n:type:ShaderForge.SFN_Tex2d,id:4226,x:32582,y:33327,ptovrint:False,ptlb:node_4226,ptin:_node_4226,varname:node_4226,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:04b6a2a4f0944d845acb96276a50656f,ntxv:0,isnm:False|UVIN-5498-OUT;n:type:ShaderForge.SFN_Vector1,id:7747,x:32562,y:33133,varname:node_7747,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Vector1,id:8806,x:32759,y:33194,varname:node_8806,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Step,id:5664,x:33160,y:33169,varname:node_5664,prsc:2|A-6761-OUT,B-8669-OUT;n:type:ShaderForge.SFN_RemapRange,id:6761,x:32807,y:33348,varname:node_6761,prsc:2,frmn:0,frmx:1,tomn:0.2,tomx:0.8|IN-4226-RGB;proporder:4226;pass:END;sub:END;*/

Shader "CustomShader/Halftone" {
    Properties {
        _node_4226 ("node_4226", 2D) = "white" {}
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma target 3.0
            uniform sampler2D _node_4226; uniform float4 _node_4226_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float4 projPos : TEXCOORD2;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
////// Lighting:
////// Emissive:
                float2 node_5498 = ((sceneUVs * 2 - 1).rg*partZ);
                float4 _node_4226_var = tex2D(_node_4226,TRANSFORM_TEX(node_5498, _node_4226));
                float3 emissive = step((_node_4226_var.rgb*0.6+0.2),((dot(i.normalDir,lightDirection)*0.5)+0.5));
                float3 finalColor = emissive;
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
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma target 3.0
            uniform sampler2D _node_4226; uniform float4 _node_4226_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float4 projPos : TEXCOORD2;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
////// Lighting:
                float3 finalColor = 0;
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
