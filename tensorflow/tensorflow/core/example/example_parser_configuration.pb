
�	
:tensorflow/core/example/example_parser_configuration.proto
tensorflow,tensorflow/core/framework/tensor_shape.proto&tensorflow/core/framework/tensor.proto%tensorflow/core/framework/types.proto"�
VarLenFeatureProto*
dtype (2.tensorflow.DataTypeRdtype9
values_output_tensor_name (	RvaluesOutputTensorName;
indices_output_tensor_name (	RindicesOutputTensorName9
shapes_output_tensor_name (	RshapesOutputTensorName"�
FixedLenFeatureProto*
dtype (2.tensorflow.DataTypeRdtype2
shape (2.tensorflow.TensorShapeProtoRshape<
default_value (2.tensorflow.TensorProtoRdefaultValue9
values_output_tensor_name (	RvaluesOutputTensorName"�
FeatureConfigurationN
fixed_len_feature (2 .tensorflow.FixedLenFeatureProtoH RfixedLenFeatureH
var_len_feature (2.tensorflow.VarLenFeatureProtoH RvarLenFeatureB
config"�
ExampleParserConfigurationW
feature_map (26.tensorflow.ExampleParserConfiguration.FeatureMapEntryR
featureMap_
FeatureMapEntry
key (	Rkey6
value (2 .tensorflow.FeatureConfigurationRvalue:8B?
org.tensorflow.exampleB ExampleParserConfigurationProtosP�bproto3