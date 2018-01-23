#include <ai.h>


AI_SHADER_NODE_EXPORT_METHODS(LcAniPreviewMethods);


enum Params
{
      p_color,
      p_opacity,
      p_mint,
      p_maxt,
      p_spread,
      p_falloff,
      p_nsamples,
      p_ndim,
};

node_parameters
{
      AiParameterRGB("color", 1.0f,1.0f,1.0f);
      AiParameterRGB("opacity", 1.0f,1.0f,1.0f);
      AiParameterFlt("mint",0.0f)
      AiParameterFlt("maxt",2.0f)
      AiParameterFlt("spread",1.0f)
      AiParameterFlt("falloff",0.0f)
      AiParameterFlt("nsamples",6)
      AiParameterFlt("ndim",2)
}


node_initialize
{

}

node_update
{
   
}

node_finish
{

}

shader_evaluate
{

      // old
      AtRGB color = AiShaderEvalParamRGB(p_color);
      AtRGB opacity = AiShaderEvalParamRGB(p_opacity);

      AtVector N = sg->Nf;
      AtVector Ng = sg->Ngf;

      float mint = AiShaderEvalParamFlt(p_mint);
      float maxt = AiShaderEvalParamFlt(p_maxt);
      float spread = AiShaderEvalParamFlt(p_spread);
      float falloff = AiShaderEvalParamFlt(p_falloff);
      float nsamples = AiShaderEvalParamFlt(p_nsamples);
      float ndim = AiShaderEvalParamFlt(p_ndim);

      static const uint32_t seed = static_cast<uint32_t>(AiNodeEntryGetNameAtString(AiNodeGetNodeEntry(node)).hash());
      AtSampler* sampler = AiSampler(seed, nsamples, ndim);
      AtVector Nbent;

      // caculate occlusion
      AtRGB occlusion = AI_RGB_WHITE - AiOcclusion(N,Ng,sg,mint,maxt,spread,falloff,sampler,&Nbent);

      AtVector EYE = sg->Ro - sg->P;

     float NDotEye = AiV3Dot(AiV3Normalize(Ng),AiV3Normalize(EYE));

      //alpha is specified through its own closure
      AtRGB cacul_color = color * NDotEye;

      // new, opacity must be premultiplied into other closures
      AtClosureList closures;
      closures.add(AiClosureEmission(sg, opacity * cacul_color));
      closures.add(AiClosureTransparent(sg, 1 - opacity));
      sg->out.CLOSURE() = closures;
}


node_loader
{
   if (i > 0)
      return false;

   node->methods     = LcAniPreviewMethods;
   node->output_type = AI_TYPE_CLOSURE;
   node->name        = "lc_ani_preview";
   node->node_type   = AI_NODE_SHADER;
   strcpy(node->version, AI_VERSION);
   return true;
}