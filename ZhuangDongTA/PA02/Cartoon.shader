// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:34031,y:32813,varname:node_3138,prsc:2|emission-9268-OUT;n:type:ShaderForge.SFN_NormalVector,id:8182,x:32337,y:32756,prsc:2,pt:False;n:type:ShaderForge.SFN_LightVector,id:5065,x:32337,y:32947,varname:node_5065,prsc:2;n:type:ShaderForge.SFN_Dot,id:3695,x:32547,y:32876,varname:node_3695,prsc:2,dt:0|A-8182-OUT,B-5065-OUT;n:type:ShaderForge.SFN_Multiply,id:5354,x:32759,y:33058,varname:node_5354,prsc:2|A-3695-OUT,B-5908-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5908,x:32547,y:33111,ptovrint:False,ptlb:node_5908,ptin:_node_5908,varname:node_5908,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5;n:type:ShaderForge.SFN_Add,id:8669,x:32953,y:33058,varname:node_8669,prsc:2|A-5354-OUT,B-470-OUT;n:type:ShaderForge.SFN_ValueProperty,id:470,x:32715,y:33239,ptovrint:False,ptlb:node_470,ptin:_node_470,varname:node_470,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5;n:type:ShaderForge.SFN_ValueProperty,id:7724,x:32942,y:33239,ptovrint:False,ptlb:node_7724,ptin:_node_7724,varname:node_7724,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Append,id:6280,x:33273,y:33063,varname:node_6280,prsc:2|A-8669-OUT,B-7724-OUT;n:type:ShaderForge.SFN_Tex2d,id:8574,x:33432,y:33292,ptovrint:False,ptlb:node_8574,ptin:_node_8574,varname:node_8574,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:c99c4bcdcad9f1d4096570d41590f9da,ntxv:0,isnm:False|UVIN-6280-OUT;n:type:ShaderForge.SFN_ViewVector,id:3925,x:32337,y:32584,varname:node_3925,prsc:2;n:type:ShaderForge.SFN_Dot,id:1433,x:32547,y:32621,varname:node_1433,prsc:2,dt:0|A-3925-OUT,B-8182-OUT;n:type:ShaderForge.SFN_If,id:6579,x:33029,y:32541,varname:node_6579,prsc:2|A-2273-OUT,B-1433-OUT,GT-7149-RGB,EQ-7149-RGB,LT-6223-RGB;n:type:ShaderForge.SFN_ValueProperty,id:2273,x:32580,y:32517,ptovrint:False,ptlb:node_2273,ptin:_node_2273,varname:node_2273,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.2;n:type:ShaderForge.SFN_Color,id:7149,x:32742,y:32652,ptovrint:False,ptlb:node_7149,ptin:_node_7149,varname:node_7149,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Color,id:6223,x:32742,y:32814,ptovrint:False,ptlb:node_6223,ptin:_node_6223,varname:node_6223,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_OneMinus,id:868,x:33232,y:32541,varname:node_868,prsc:2|IN-6579-OUT;n:type:ShaderForge.SFN_OneMinus,id:3332,x:33535,y:32907,varname:node_3332,prsc:2|IN-8574-RGB;n:type:ShaderForge.SFN_Add,id:5236,x:33730,y:32725,varname:node_5236,prsc:2|A-868-OUT,B-3332-OUT;n:type:ShaderForge.SFN_OneMinus,id:9268,x:33910,y:32670,varname:node_9268,prsc:2|IN-5236-OUT;proporder:5908-470-7724-8574-2273-6223-7149;pass:END;sub:END;*/

Shader "CustomShader/Cartoon" {
    Properties {
        _node_5908 ("node_5908", Float ) = 0.5
        _node_470 ("node_470", Float ) = 0.5
        _node_7724 ("node_7724", Float ) = 1
        _node_8574 ("node_8574", 2D) = "white" {}
        _node_2273 ("node_2273", Float ) = 0.2
        _node_6223 ("node_6223", Color) = (1,1,1,1)
        _node_7149 ("node_7149", Color) = (0,0,0,1)
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
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma target 3.0
            uniform sampler2D _node_8574; uniform float4 _node_8574_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _node_5908)
                UNITY_DEFINE_INSTANCED_PROP( float, _node_470)
                UNITY_DEFINE_INSTANCED_PROP( float, _node_7724)
                UNITY_DEFINE_INSTANCED_PROP( float, _node_2273)
                UNITY_DEFINE_INSTANCED_PROP( float4, _node_7149)
                UNITY_DEFINE_INSTANCED_PROP( float4, _node_6223)
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
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
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
                float _node_2273_var = UNITY_ACCESS_INSTANCED_PROP( Props, _node_2273 );
                float node_6579_if_leA = step(_node_2273_var,dot(viewDirection,i.normalDir));
                float node_6579_if_leB = step(dot(viewDirection,i.normalDir),_node_2273_var);
                float4 _node_6223_var = UNITY_ACCESS_INSTANCED_PROP( Props, _node_6223 );
                float4 _node_7149_var = UNITY_ACCESS_INSTANCED_PROP( Props, _node_7149 );
                float _node_5908_var = UNITY_ACCESS_INSTANCED_PROP( Props, _node_5908 );
                float _node_470_var = UNITY_ACCESS_INSTANCED_PROP( Props, _node_470 );
                float _node_7724_var = UNITY_ACCESS_INSTANCED_PROP( Props, _node_7724 );
                float2 node_6280 = float2(((dot(i.normalDir,lightDirection)*_node_5908_var)+_node_470_var),_node_7724_var);
                float4 _node_8574_var = tex2D(_node_8574,TRANSFORM_TEX(node_6280, _node_8574));
                float3 emissive = (1.0 - ((1.0 - lerp((node_6579_if_leA*_node_6223_var.rgb)+(node_6579_if_leB*_node_7149_var.rgb),_node_7149_var.rgb,node_6579_if_leA*node_6579_if_leB))+(1.0 - _node_8574_var.rgb)));
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
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma target 3.0
            uniform sampler2D _node_8574; uniform float4 _node_8574_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _node_5908)
                UNITY_DEFINE_INSTANCED_PROP( float, _node_470)
                UNITY_DEFINE_INSTANCED_PROP( float, _node_7724)
                UNITY_DEFINE_INSTANCED_PROP( float, _node_2273)
                UNITY_DEFINE_INSTANCED_PROP( float4, _node_7149)
                UNITY_DEFINE_INSTANCED_PROP( float4, _node_6223)
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
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
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
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
