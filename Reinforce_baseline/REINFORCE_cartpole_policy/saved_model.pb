´

B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
¾
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.5.02unknown8¢¨
~
relu_layer/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*"
shared_namerelu_layer/kernel
w
%relu_layer/kernel/Read/ReadVariableOpReadVariableOprelu_layer/kernel*
_output_shapes

:@*
dtype0
v
relu_layer/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_namerelu_layer/bias
o
#relu_layer/bias/Read/ReadVariableOpReadVariableOprelu_layer/bias*
_output_shapes
:@*
dtype0

linear_layer/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*$
shared_namelinear_layer/kernel
{
'linear_layer/kernel/Read/ReadVariableOpReadVariableOplinear_layer/kernel*
_output_shapes

:@*
dtype0
z
linear_layer/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_namelinear_layer/bias
s
%linear_layer/bias/Read/ReadVariableOpReadVariableOplinear_layer/bias*
_output_shapes
:*
dtype0

NoOpNoOp

ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Ó
valueÉBÆ B¿
°
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
regularization_losses
trainable_variables
	variables
	keras_api

signatures
h

kernel
	bias

regularization_losses
trainable_variables
	variables
	keras_api
h

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
 

0
	1
2
3

0
	1
2
3
­
layer_metrics
regularization_losses
layer_regularization_losses
trainable_variables
	variables
non_trainable_variables
metrics

layers
 
][
VARIABLE_VALUErelu_layer/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUErelu_layer/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
	1

0
	1
­
layer_metrics

regularization_losses
layer_regularization_losses
trainable_variables
	variables
non_trainable_variables
metrics

layers
_]
VARIABLE_VALUElinear_layer/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUElinear_layer/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
­
layer_metrics
regularization_losses
layer_regularization_losses
trainable_variables
	variables
 non_trainable_variables
!metrics

"layers
 
 
 
 

0
1
 
 
 
 
 
 
 
 
 
 
z
serving_default_input_1Placeholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ

StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1relu_layer/kernelrelu_layer/biaslinear_layer/kernellinear_layer/bias*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *.
f)R'
%__inference_signature_wrapper_5414210
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
¼
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%relu_layer/kernel/Read/ReadVariableOp#relu_layer/bias/Read/ReadVariableOp'linear_layer/kernel/Read/ReadVariableOp%linear_layer/bias/Read/ReadVariableOpConst*
Tin

2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__traced_save_5414344
ç
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamerelu_layer/kernelrelu_layer/biaslinear_layer/kernellinear_layer/bias*
Tin	
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference__traced_restore_5414366
¯

ø
G__inference_relu_layer_layer_call_and_return_conditional_losses_5414060

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ð
Ì
(__inference_policy_layer_call_fn_5414167
input_1
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_policy_layer_call_and_return_conditional_losses_54141432
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
Õ	
ú
I__inference_linear_layer_layer_call_and_return_conditional_losses_5414300

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
î
Â
C__inference_policy_layer_call_and_return_conditional_losses_5414083

inputs$
relu_layer_5414061:@ 
relu_layer_5414063:@&
linear_layer_5414077:@"
linear_layer_5414079:
identity¢$linear_layer/StatefulPartitionedCall¢"relu_layer/StatefulPartitionedCall¡
"relu_layer/StatefulPartitionedCallStatefulPartitionedCallinputsrelu_layer_5414061relu_layer_5414063*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_relu_layer_layer_call_and_return_conditional_losses_54140602$
"relu_layer/StatefulPartitionedCallÐ
$linear_layer/StatefulPartitionedCallStatefulPartitionedCall+relu_layer/StatefulPartitionedCall:output:0linear_layer_5414077linear_layer_5414079*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_linear_layer_layer_call_and_return_conditional_losses_54140762&
$linear_layer/StatefulPartitionedCallÍ
IdentityIdentity-linear_layer/StatefulPartitionedCall:output:0%^linear_layer/StatefulPartitionedCall#^relu_layer/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2L
$linear_layer/StatefulPartitionedCall$linear_layer/StatefulPartitionedCall2H
"relu_layer/StatefulPartitionedCall"relu_layer/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ù
æ
C__inference_policy_layer_call_and_return_conditional_losses_5414227

inputs;
)relu_layer_matmul_readvariableop_resource:@8
*relu_layer_biasadd_readvariableop_resource:@=
+linear_layer_matmul_readvariableop_resource:@:
,linear_layer_biasadd_readvariableop_resource:
identity¢#linear_layer/BiasAdd/ReadVariableOp¢"linear_layer/MatMul/ReadVariableOp¢!relu_layer/BiasAdd/ReadVariableOp¢ relu_layer/MatMul/ReadVariableOp®
 relu_layer/MatMul/ReadVariableOpReadVariableOp)relu_layer_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02"
 relu_layer/MatMul/ReadVariableOp
relu_layer/MatMulMatMulinputs(relu_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
relu_layer/MatMul­
!relu_layer/BiasAdd/ReadVariableOpReadVariableOp*relu_layer_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!relu_layer/BiasAdd/ReadVariableOp­
relu_layer/BiasAddBiasAddrelu_layer/MatMul:product:0)relu_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
relu_layer/BiasAddy
relu_layer/ReluRelurelu_layer/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
relu_layer/Relu´
"linear_layer/MatMul/ReadVariableOpReadVariableOp+linear_layer_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02$
"linear_layer/MatMul/ReadVariableOp±
linear_layer/MatMulMatMulrelu_layer/Relu:activations:0*linear_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
linear_layer/MatMul³
#linear_layer/BiasAdd/ReadVariableOpReadVariableOp,linear_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#linear_layer/BiasAdd/ReadVariableOpµ
linear_layer/BiasAddBiasAddlinear_layer/MatMul:product:0+linear_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
linear_layer/BiasAdd
IdentityIdentitylinear_layer/BiasAdd:output:0$^linear_layer/BiasAdd/ReadVariableOp#^linear_layer/MatMul/ReadVariableOp"^relu_layer/BiasAdd/ReadVariableOp!^relu_layer/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2J
#linear_layer/BiasAdd/ReadVariableOp#linear_layer/BiasAdd/ReadVariableOp2H
"linear_layer/MatMul/ReadVariableOp"linear_layer/MatMul/ReadVariableOp2F
!relu_layer/BiasAdd/ReadVariableOp!relu_layer/BiasAdd/ReadVariableOp2D
 relu_layer/MatMul/ReadVariableOp relu_layer/MatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ð
Ì
(__inference_policy_layer_call_fn_5414094
input_1
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_policy_layer_call_and_return_conditional_losses_54140832
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
¯

ø
G__inference_relu_layer_layer_call_and_return_conditional_losses_5414281

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ñ
Ã
C__inference_policy_layer_call_and_return_conditional_losses_5414181
input_1$
relu_layer_5414170:@ 
relu_layer_5414172:@&
linear_layer_5414175:@"
linear_layer_5414177:
identity¢$linear_layer/StatefulPartitionedCall¢"relu_layer/StatefulPartitionedCall¢
"relu_layer/StatefulPartitionedCallStatefulPartitionedCallinput_1relu_layer_5414170relu_layer_5414172*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_relu_layer_layer_call_and_return_conditional_losses_54140602$
"relu_layer/StatefulPartitionedCallÐ
$linear_layer/StatefulPartitionedCallStatefulPartitionedCall+relu_layer/StatefulPartitionedCall:output:0linear_layer_5414175linear_layer_5414177*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_linear_layer_layer_call_and_return_conditional_losses_54140762&
$linear_layer/StatefulPartitionedCallÍ
IdentityIdentity-linear_layer/StatefulPartitionedCall:output:0%^linear_layer/StatefulPartitionedCall#^relu_layer/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2L
$linear_layer/StatefulPartitionedCall$linear_layer/StatefulPartitionedCall2H
"relu_layer/StatefulPartitionedCall"relu_layer/StatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
î
Â
C__inference_policy_layer_call_and_return_conditional_losses_5414143

inputs$
relu_layer_5414132:@ 
relu_layer_5414134:@&
linear_layer_5414137:@"
linear_layer_5414139:
identity¢$linear_layer/StatefulPartitionedCall¢"relu_layer/StatefulPartitionedCall¡
"relu_layer/StatefulPartitionedCallStatefulPartitionedCallinputsrelu_layer_5414132relu_layer_5414134*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_relu_layer_layer_call_and_return_conditional_losses_54140602$
"relu_layer/StatefulPartitionedCallÐ
$linear_layer/StatefulPartitionedCallStatefulPartitionedCall+relu_layer/StatefulPartitionedCall:output:0linear_layer_5414137linear_layer_5414139*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_linear_layer_layer_call_and_return_conditional_losses_54140762&
$linear_layer/StatefulPartitionedCallÍ
IdentityIdentity-linear_layer/StatefulPartitionedCall:output:0%^linear_layer/StatefulPartitionedCall#^relu_layer/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2L
$linear_layer/StatefulPartitionedCall$linear_layer/StatefulPartitionedCall2H
"relu_layer/StatefulPartitionedCall"relu_layer/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ù
æ
C__inference_policy_layer_call_and_return_conditional_losses_5414244

inputs;
)relu_layer_matmul_readvariableop_resource:@8
*relu_layer_biasadd_readvariableop_resource:@=
+linear_layer_matmul_readvariableop_resource:@:
,linear_layer_biasadd_readvariableop_resource:
identity¢#linear_layer/BiasAdd/ReadVariableOp¢"linear_layer/MatMul/ReadVariableOp¢!relu_layer/BiasAdd/ReadVariableOp¢ relu_layer/MatMul/ReadVariableOp®
 relu_layer/MatMul/ReadVariableOpReadVariableOp)relu_layer_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02"
 relu_layer/MatMul/ReadVariableOp
relu_layer/MatMulMatMulinputs(relu_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
relu_layer/MatMul­
!relu_layer/BiasAdd/ReadVariableOpReadVariableOp*relu_layer_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!relu_layer/BiasAdd/ReadVariableOp­
relu_layer/BiasAddBiasAddrelu_layer/MatMul:product:0)relu_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
relu_layer/BiasAddy
relu_layer/ReluRelurelu_layer/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
relu_layer/Relu´
"linear_layer/MatMul/ReadVariableOpReadVariableOp+linear_layer_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02$
"linear_layer/MatMul/ReadVariableOp±
linear_layer/MatMulMatMulrelu_layer/Relu:activations:0*linear_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
linear_layer/MatMul³
#linear_layer/BiasAdd/ReadVariableOpReadVariableOp,linear_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#linear_layer/BiasAdd/ReadVariableOpµ
linear_layer/BiasAddBiasAddlinear_layer/MatMul:product:0+linear_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
linear_layer/BiasAdd
IdentityIdentitylinear_layer/BiasAdd:output:0$^linear_layer/BiasAdd/ReadVariableOp#^linear_layer/MatMul/ReadVariableOp"^relu_layer/BiasAdd/ReadVariableOp!^relu_layer/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2J
#linear_layer/BiasAdd/ReadVariableOp#linear_layer/BiasAdd/ReadVariableOp2H
"linear_layer/MatMul/ReadVariableOp"linear_layer/MatMul/ReadVariableOp2F
!relu_layer/BiasAdd/ReadVariableOp!relu_layer/BiasAdd/ReadVariableOp2D
 relu_layer/MatMul/ReadVariableOp relu_layer/MatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Õ	
ú
I__inference_linear_layer_layer_call_and_return_conditional_losses_5414076

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¡
þ
"__inference__wrapped_model_5414042
input_1B
0policy_relu_layer_matmul_readvariableop_resource:@?
1policy_relu_layer_biasadd_readvariableop_resource:@D
2policy_linear_layer_matmul_readvariableop_resource:@A
3policy_linear_layer_biasadd_readvariableop_resource:
identity¢*policy/linear_layer/BiasAdd/ReadVariableOp¢)policy/linear_layer/MatMul/ReadVariableOp¢(policy/relu_layer/BiasAdd/ReadVariableOp¢'policy/relu_layer/MatMul/ReadVariableOpÃ
'policy/relu_layer/MatMul/ReadVariableOpReadVariableOp0policy_relu_layer_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02)
'policy/relu_layer/MatMul/ReadVariableOpª
policy/relu_layer/MatMulMatMulinput_1/policy/relu_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
policy/relu_layer/MatMulÂ
(policy/relu_layer/BiasAdd/ReadVariableOpReadVariableOp1policy_relu_layer_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(policy/relu_layer/BiasAdd/ReadVariableOpÉ
policy/relu_layer/BiasAddBiasAdd"policy/relu_layer/MatMul:product:00policy/relu_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
policy/relu_layer/BiasAdd
policy/relu_layer/ReluRelu"policy/relu_layer/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
policy/relu_layer/ReluÉ
)policy/linear_layer/MatMul/ReadVariableOpReadVariableOp2policy_linear_layer_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02+
)policy/linear_layer/MatMul/ReadVariableOpÍ
policy/linear_layer/MatMulMatMul$policy/relu_layer/Relu:activations:01policy/linear_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
policy/linear_layer/MatMulÈ
*policy/linear_layer/BiasAdd/ReadVariableOpReadVariableOp3policy_linear_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*policy/linear_layer/BiasAdd/ReadVariableOpÑ
policy/linear_layer/BiasAddBiasAdd$policy/linear_layer/MatMul:product:02policy/linear_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
policy/linear_layer/BiasAdd¦
IdentityIdentity$policy/linear_layer/BiasAdd:output:0+^policy/linear_layer/BiasAdd/ReadVariableOp*^policy/linear_layer/MatMul/ReadVariableOp)^policy/relu_layer/BiasAdd/ReadVariableOp(^policy/relu_layer/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2X
*policy/linear_layer/BiasAdd/ReadVariableOp*policy/linear_layer/BiasAdd/ReadVariableOp2V
)policy/linear_layer/MatMul/ReadVariableOp)policy/linear_layer/MatMul/ReadVariableOp2T
(policy/relu_layer/BiasAdd/ReadVariableOp(policy/relu_layer/BiasAdd/ReadVariableOp2R
'policy/relu_layer/MatMul/ReadVariableOp'policy/relu_layer/MatMul/ReadVariableOp:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1

ñ
#__inference__traced_restore_5414366
file_prefix4
"assignvariableop_relu_layer_kernel:@0
"assignvariableop_1_relu_layer_bias:@8
&assignvariableop_2_linear_layer_kernel:@2
$assignvariableop_3_linear_layer_bias:

identity_5¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_2¢AssignVariableOp_3
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B B 2
RestoreV2/shape_and_slicesÄ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*(
_output_shapes
:::::*
dtypes	
22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity¡
AssignVariableOpAssignVariableOp"assignvariableop_relu_layer_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1§
AssignVariableOp_1AssignVariableOp"assignvariableop_1_relu_layer_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2«
AssignVariableOp_2AssignVariableOp&assignvariableop_2_linear_layer_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3©
AssignVariableOp_3AssignVariableOp$assignvariableop_3_linear_layer_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpº

Identity_4Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_4¬

Identity_5IdentityIdentity_4:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3*
T0*
_output_shapes
: 2

Identity_5"!

identity_5Identity_5:output:0*
_input_shapes

: : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_3:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
í
Ë
(__inference_policy_layer_call_fn_5414257

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_policy_layer_call_and_return_conditional_losses_54140832
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ñ
Ã
C__inference_policy_layer_call_and_return_conditional_losses_5414195
input_1$
relu_layer_5414184:@ 
relu_layer_5414186:@&
linear_layer_5414189:@"
linear_layer_5414191:
identity¢$linear_layer/StatefulPartitionedCall¢"relu_layer/StatefulPartitionedCall¢
"relu_layer/StatefulPartitionedCallStatefulPartitionedCallinput_1relu_layer_5414184relu_layer_5414186*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_relu_layer_layer_call_and_return_conditional_losses_54140602$
"relu_layer/StatefulPartitionedCallÐ
$linear_layer/StatefulPartitionedCallStatefulPartitionedCall+relu_layer/StatefulPartitionedCall:output:0linear_layer_5414189linear_layer_5414191*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_linear_layer_layer_call_and_return_conditional_losses_54140762&
$linear_layer/StatefulPartitionedCallÍ
IdentityIdentity-linear_layer/StatefulPartitionedCall:output:0%^linear_layer/StatefulPartitionedCall#^relu_layer/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2L
$linear_layer/StatefulPartitionedCall$linear_layer/StatefulPartitionedCall2H
"relu_layer/StatefulPartitionedCall"relu_layer/StatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
Ì
É
%__inference_signature_wrapper_5414210
input_1
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:
identity¢StatefulPartitionedCallí
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__wrapped_model_54140422
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
ò
µ
 __inference__traced_save_5414344
file_prefix0
,savev2_relu_layer_kernel_read_readvariableop.
*savev2_relu_layer_bias_read_readvariableop2
.savev2_linear_layer_kernel_read_readvariableop0
,savev2_linear_layer_bias_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpoints
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard¦
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameý
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B B 2
SaveV2/shape_and_slicesö
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_relu_layer_kernel_read_readvariableop*savev2_relu_layer_bias_read_readvariableop.savev2_linear_layer_kernel_read_readvariableop,savev2_linear_layer_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes	
22
SaveV2º
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes¡
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*7
_input_shapes&
$: :@:@:@:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::

_output_shapes
: 
í
Ë
(__inference_policy_layer_call_fn_5414270

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_policy_layer_call_and_return_conditional_losses_54141432
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¥

.__inference_linear_layer_layer_call_fn_5414309

inputs
unknown:@
	unknown_0:
identity¢StatefulPartitionedCallù
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_linear_layer_layer_call_and_return_conditional_losses_54140762
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¡

,__inference_relu_layer_layer_call_fn_5414290

inputs
unknown:@
	unknown_0:@
identity¢StatefulPartitionedCall÷
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_relu_layer_layer_call_and_return_conditional_losses_54140602
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs"ÌL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*¯
serving_default
;
input_10
serving_default_input_1:0ÿÿÿÿÿÿÿÿÿ@
linear_layer0
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:^

layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
regularization_losses
trainable_variables
	variables
	keras_api

signatures
#_default_save_signature
*$&call_and_return_all_conditional_losses
%__call__"
_tf_keras_sequentialò{"name": "policy", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "policy", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 4]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}}, {"class_name": "Dense", "config": {"name": "relu_layer", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "linear_layer", "trainable": true, "dtype": "float32", "units": 2, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 7, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 4}}, "shared_object_id": 8}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 4]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 4]}, "float32", "input_1"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "policy", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 4]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "shared_object_id": 0}, {"class_name": "Dense", "config": {"name": "relu_layer", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3}, {"class_name": "Dense", "config": {"name": "linear_layer", "trainable": true, "dtype": "float32", "units": 2, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 6}]}}}
Ð

kernel
	bias

regularization_losses
trainable_variables
	variables
	keras_api
*&&call_and_return_all_conditional_losses
'__call__"«
_tf_keras_layer{"name": "relu_layer", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "relu_layer", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 4}}, "shared_object_id": 8}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 4]}}
×

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
*(&call_and_return_all_conditional_losses
)__call__"²
_tf_keras_layer{"name": "linear_layer", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "linear_layer", "trainable": true, "dtype": "float32", "units": 2, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 6, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}, "shared_object_id": 9}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
 "
trackable_list_wrapper
<
0
	1
2
3"
trackable_list_wrapper
<
0
	1
2
3"
trackable_list_wrapper
Ê
layer_metrics
regularization_losses
layer_regularization_losses
trainable_variables
	variables
non_trainable_variables
metrics

layers
%__call__
#_default_save_signature
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
,
*serving_default"
signature_map
#:!@2relu_layer/kernel
:@2relu_layer/bias
 "
trackable_list_wrapper
.
0
	1"
trackable_list_wrapper
.
0
	1"
trackable_list_wrapper
­
layer_metrics

regularization_losses
layer_regularization_losses
trainable_variables
	variables
non_trainable_variables
metrics

layers
'__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses"
_generic_user_object
%:#@2linear_layer/kernel
:2linear_layer/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
­
layer_metrics
regularization_losses
layer_regularization_losses
trainable_variables
	variables
 non_trainable_variables
!metrics

"layers
)__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
à2Ý
"__inference__wrapped_model_5414042¶
²
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *&¢#
!
input_1ÿÿÿÿÿÿÿÿÿ
Ú2×
C__inference_policy_layer_call_and_return_conditional_losses_5414227
C__inference_policy_layer_call_and_return_conditional_losses_5414244
C__inference_policy_layer_call_and_return_conditional_losses_5414181
C__inference_policy_layer_call_and_return_conditional_losses_5414195À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
î2ë
(__inference_policy_layer_call_fn_5414094
(__inference_policy_layer_call_fn_5414257
(__inference_policy_layer_call_fn_5414270
(__inference_policy_layer_call_fn_5414167À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ñ2î
G__inference_relu_layer_layer_call_and_return_conditional_losses_5414281¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ö2Ó
,__inference_relu_layer_layer_call_fn_5414290¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ó2ð
I__inference_linear_layer_layer_call_and_return_conditional_losses_5414300¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ø2Õ
.__inference_linear_layer_layer_call_fn_5414309¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ÌBÉ
%__inference_signature_wrapper_5414210input_1"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
"__inference__wrapped_model_5414042u	0¢-
&¢#
!
input_1ÿÿÿÿÿÿÿÿÿ
ª ";ª8
6
linear_layer&#
linear_layerÿÿÿÿÿÿÿÿÿ©
I__inference_linear_layer_layer_call_and_return_conditional_losses_5414300\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
.__inference_linear_layer_layer_call_fn_5414309O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿ®
C__inference_policy_layer_call_and_return_conditional_losses_5414181g	8¢5
.¢+
!
input_1ÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ®
C__inference_policy_layer_call_and_return_conditional_losses_5414195g	8¢5
.¢+
!
input_1ÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ­
C__inference_policy_layer_call_and_return_conditional_losses_5414227f	7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ­
C__inference_policy_layer_call_and_return_conditional_losses_5414244f	7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
(__inference_policy_layer_call_fn_5414094Z	8¢5
.¢+
!
input_1ÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
(__inference_policy_layer_call_fn_5414167Z	8¢5
.¢+
!
input_1ÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
(__inference_policy_layer_call_fn_5414257Y	7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
(__inference_policy_layer_call_fn_5414270Y	7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ§
G__inference_relu_layer_layer_call_and_return_conditional_losses_5414281\	/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 
,__inference_relu_layer_layer_call_fn_5414290O	/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ@ª
%__inference_signature_wrapper_5414210	;¢8
¢ 
1ª.
,
input_1!
input_1ÿÿÿÿÿÿÿÿÿ";ª8
6
linear_layer&#
linear_layerÿÿÿÿÿÿÿÿÿ