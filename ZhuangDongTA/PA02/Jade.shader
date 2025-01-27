// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2619,x:33584,y:32739,varname:node_2619,prsc:2|emission-4015-OUT;n:type:ShaderForge.SFN_LightVector,id:8042,x:32144,y:32666,varname:node_8042,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:4586,x:32144,y:32805,prsc:2,pt:False;n:type:ShaderForge.SFN_Dot,id:2921,x:32305,y:32730,varname:node_2921,prsc:2,dt:0|A-8042-OUT,B-4586-OUT;n:type:ShaderForge.SFN_Vector1,id:1584,x:32305,y:32903,varname:node_1584,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Vector1,id:5634,x:32497,y:32903,varname:node_5634,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:2384,x:32478,y:32770,varname:node_2384,prsc:2|A-2921-OUT,B-1584-OUT;n:type:ShaderForge.SFN_Add,id:5885,x:32682,y:32826,varname:node_5885,prsc:2|A-2384-OUT,B-5634-OUT;n:type:ShaderForge.SFN_ViewVector,id:3288,x:31737,y:32971,varname:node_3288,prsc:2;n:type:ShaderForge.SFN_LightVector,id:8965,x:31737,y:33120,varname:node_8965,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:906,x:32056,y:33224,prsc:2,pt:False;n:type:ShaderForge.SFN_Add,id:1762,x:31891,y:33040,varname:node_1762,prsc:2|A-3288-OUT,B-8965-OUT;n:type:ShaderForge.SFN_Normalize,id:5908,x:32056,y:33040,varname:node_5908,prsc:2|IN-1762-OUT;n:type:ShaderForge.SFN_Dot,id:904,x:32249,y:33107,varname:node_904,prsc:2,dt:0|A-5908-OUT,B-906-OUT;n:type:ShaderForge.SFN_Step,id:4663,x:32519,y:33150,varname:node_4663,prsc:2|A-9268-OUT,B-904-OUT;n:type:ShaderForge.SFN_Slider,id:9268,x:32199,y:33023,ptovrint:False,ptlb:highlight1 radius,ptin:_highlight1radius,varname:node_9268,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.95,cur:0.9917721,max:1;n:type:ShaderForge.SFN_ViewVector,id:8898,x:31733,y:33364,varname:node_8898,prsc:2;n:type:ShaderForge.SFN_LightVector,id:9876,x:31520,y:33520,varname:node_9876,prsc:2;n:type:ShaderForge.SFN_Add,id:6858,x:31887,y:33433,varname:node_6858,prsc:2|A-8898-OUT,B-3566-OUT;n:type:ShaderForge.SFN_Normalize,id:3572,x:32052,y:33433,varname:node_3572,prsc:2|IN-6858-OUT;n:type:ShaderForge.SFN_NormalVector,id:7821,x:32052,y:33617,prsc:2,pt:False;n:type:ShaderForge.SFN_Dot,id:4190,x:32245,y:33500,varname:node_4190,prsc:2,dt:0|A-3572-OUT,B-7821-OUT;n:type:ShaderForge.SFN_Slider,id:1588,x:32211,y:33400,ptovrint:False,ptlb:highlight2 radius,ptin:_highlight2radius,varname:_highlightradius_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.95,cur:0.9972293,max:1;n:type:ShaderForge.SFN_Step,id:2409,x:32515,y:33543,varname:node_2409,prsc:2|A-1588-OUT,B-4190-OUT;n:type:ShaderForge.SFN_Vector4Property,id:3636,x:31520,y:33678,ptovrint:False,ptlb:light bias,ptin:_lightbias,varname:node_3636,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5,v2:0.1,v3:0,v4:0;n:type:ShaderForge.SFN_Add,id:7530,x:31672,y:33612,varname:node_7530,prsc:2|A-9876-OUT,B-3636-XYZ;n:type:ShaderForge.SFN_Add,id:9354,x:32675,y:33261,varname:node_9354,prsc:2|A-4663-OUT,B-2409-OUT;n:type:ShaderForge.SFN_Normalize,id:3566,x:31838,y:33612,varname:node_3566,prsc:2|IN-7530-OUT;n:type:ShaderForge.SFN_Clamp01,id:4834,x:32848,y:33099,varname:node_4834,prsc:2|IN-9354-OUT;n:type:ShaderForge.SFN_Tex2d,id:2502,x:33026,y:32701,ptovrint:False,ptlb:texture,ptin:_texture,varname:node_2502,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:c99c4bcdcad9f1d4096570d41590f9da,ntxv:2,isnm:False|UVIN-9087-OUT;n:type:ShaderForge.SFN_Append,id:9087,x:32838,y:32731,varname:node_9087,prsc:2|A-5885-OUT,B-5885-OUT;n:type:ShaderForge.SFN_Fresnel,id:4595,x:33051,y:33405,varname:node_4595,prsc:2|EXP-9045-OUT;n:type:ShaderForge.SFN_Slider,id:9045,x:32712,y:33521,ptovrint:False,ptlb:Fresnel radius,ptin:_Fresnelradius,varname:node_9045,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:3.992846,max:10;n:type:ShaderForge.SFN_Add,id:4015,x:33411,y:32972,varname:node_4015,prsc:2|A-1337-OUT,B-4595-OUT;n:type:ShaderForge.SFN_Color,id:2452,x:32838,y:32952,ptovrint:False,ptlb:hightlight color,ptin:_hightlightcolor,varname:node_2452,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.995283,c2:0.965732,c3:0.8685253,c4:1;n:type:ShaderForge.SFN_Lerp,id:1337,x:33209,y:32945,varname:node_1337,prsc:2|A-2502-RGB,B-2452-RGB,T-4834-OUT;proporder:9268-1588-3636-2502-9045-2452;pass:END;sub:END;*/

Shader "Unlit/Jade" {
    Properties {
        _highlight1radius ("highlight1 radius", Range(0.95, 1)) = 0.9917721
        _highlight2radius ("highlight2 radius", Range(0.95, 1)) = 0.9972293
        _lightbias ("light bias", Vector) = (0.5,0.1,0,0)
        _texture ("texture", 2D) = "black" {}
        _Fresnelradius ("Fresnel radius", Range(0, 10)) = 3.992846
        _hightlightcolor ("hightlight color", Color) = (0.995283,0.965732,0.8685253,1)
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        LOD 100
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma target 3.0
            uniform sampler2D _texture; uniform float4 _texture_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _highlight1radius)
                UNITY_DEFINE_INSTANCED_PROP( float, _highlight2radius)
                UNITY_DEFINE_INSTANCED_PROP( float4, _lightbias)
                UNITY_DEFINE_INSTANCED_PROP( float, _Fresnelradius)
                UNITY_DEFINE_INSTANCED_PROP( float4, _hightlightcolor)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                LIGHTING_COORDS(2,3)
                UNITY_FOG_COORDS(4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
////// Lighting:
////// Emissive:
                float node_5885 = ((dot(lightDirection,i.normalDir)*0.5)+0.5);
                float2 node_9087 = float2(node_5885,node_5885);
                float4 _texture_var = tex2D(_texture,TRANSFORM_TEX(node_9087, _texture));
                float4 _hightlightcolor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _hightlightcolor );
                float _highlight1radius_var = UNITY_ACCESS_INSTANCED_PROP( Props, _highlight1radius );
                float _highlight2radius_var = UNITY_ACCESS_INSTANCED_PROP( Props, _highlight2radius );
                float4 _lightbias_var = UNITY_ACCESS_INSTANCED_PROP( Props, _lightbias );
                float node_4834 = saturate((step(_highlight1radius_var,dot(normalize((viewDirection+lightDirection)),i.normalDir))+step(_highlight2radius_var,dot(normalize((viewDirection+normalize((lightDirection+_lightbias_var.rgb)))),i.normalDir))));
                float _Fresnelradius_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Fresnelradius );
                float3 emissive = (lerp(_texture_var.rgb,_hightlightcolor_var.rgb,node_4834)+pow(1.0-max(0,dot(normalDirection, viewDirection)),_Fresnelradius_var));
                float3 finalColor = emissive;
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
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma target 3.0
            uniform sampler2D _texture; uniform float4 _texture_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _highlight1radius)
                UNITY_DEFINE_INSTANCED_PROP( float, _highlight2radius)
                UNITY_DEFINE_INSTANCED_PROP( float4, _lightbias)
                UNITY_DEFINE_INSTANCED_PROP( float, _Fresnelradius)
                UNITY_DEFINE_INSTANCED_PROP( float4, _hightlightcolor)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                LIGHTING_COORDS(2,3)
                UNITY_FOG_COORDS(4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
////// Lighting:
                float3 finalColor = 0;
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
