Shader "ulsa/ALimpio"
{
    Properties
    {
        
    }
    SubShader
    {
        CGPROGRAM

        #pragma surface surf Lambert

        struct Input
        {
            float3 color;
        }; //LLEVA ; AL FINAL

        void surf (Input In, inout SurfaceOutput o)
        {
            o.Albedo =fixed4(1, 1, 1, 1); //COLOR BLANCO RGBA
        }

        ENDCG
    }
}