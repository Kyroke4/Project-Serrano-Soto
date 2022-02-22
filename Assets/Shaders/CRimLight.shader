Shader "ulsa/CRimLight"
{
    Properties
    {
        _Albedo("Albedo", Color)= (1, 1, 1, 1)
        [HDR] _RimColor("Rim Color", Color)= (0.0, 0.0, 0.0, 0.0)
        _RimPower ("Rim Power", Range(0.1,8.0)) = 1

    }

    SubShader
    {
        Tags
        {
            "RenderType"="Opaque"
        }

        CGPROGRAM

        #pragma surface surf Lambert

        fixed4 _Albedo;
        fixed4 _RimColor;
        float _RimPower;

        struct Input
        {
            float2 uv_MainTex;
            float4 color: COLOR;
            float3 viewDir;
        }; //LLEVA ;

        void surf (Input IN, inout SurfaceOutput o)
        {
            o.Albedo=_Albedo.rgb;
            half rim= 1-saturate(dot(IN.viewDir, o.Normal));
            o.Emission= _RimColor.rgb*pow(rim,_RimPower);
        }

        ENDCG
    }

}