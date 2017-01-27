Shader "Unlit/SimplestFlagmentShader" {

	Properties {
		_MainColor("Main Color", Color) = (1, 1, 1, 1)
	}

	SubShader {
		Tags {
			"Queue"="Geometry"
		}

		Pass {
			CGPROGRAM
			
			#include "UnityCG.cginc"

			#pragma vertex vert
			#pragma fragment frag

			float4 _MainColor;

			struct appdata {
				float4 vertex : POSITION;
			};

			struct v2f {
				float4 vertex : SV_POSITION;
			};
			
			v2f vert (appdata v) {
				v2f o;
				o.vertex = UnityObjectToClipPos(v.vertex);
				return o;
			}
			
			fixed4 frag (v2f i) : SV_Target {
				return _MainColor;
			}

			ENDCG
		}
	}
}
