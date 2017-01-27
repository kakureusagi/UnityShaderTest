Shader "Custom/SimplestSurfaceShader" {

	Properties {
		_MainColor("Main Color", Color) = (1,1,1,1)
	}

	SubShader {
		Tags {
			"Queue"="Geometry"
		}
		
		CGPROGRAM

		float4 _MainColor;

		#pragma surface surf Lambert

		struct Input {
			float4 vertexColor : COLOR;
		};

		void surf (Input IN, inout SurfaceOutput o) {
			o.Albedo = _MainColor.rgb;
		}

		ENDCG
	}
}
