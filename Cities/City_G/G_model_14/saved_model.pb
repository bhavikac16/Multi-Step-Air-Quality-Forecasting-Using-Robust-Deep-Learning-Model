цй
┐ј
D
AddV2
x"T
y"T
z"T"
Ttype:
2	ђљ
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ѕ
ђ
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
$
DisableCopyOnRead
resourceѕ
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
є
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( ѕ
?
Mul
x"T
y"T
z"T"
Ttype:
2	љ
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
dtypetypeѕ
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
list(type)(0ѕ
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
?
Select
	condition

t"T
e"T
output"T"	
Ttype
d
Shape

input"T&
output"out_typeіьout_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
┴
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
executor_typestring ѕе
@
StaticRegexFullMatch	
input

output
"
patternstring
э
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
░
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleіжУelement_dtype"
element_dtypetype"

shape_typetype:
2	
Ъ
TensorListReserve
element_shape"
shape_type
num_elements(
handleіжУelement_dtype"
element_dtypetype"

shape_typetype:
2	
ѕ
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint         
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
ќ
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ѕ
ћ
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
ѕ"serve*2.14.02v2.14.0-rc1-21-g4dacf3f368e8юђ
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
~
Adam/v/dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/v/dense_5/bias
w
'Adam/v/dense_5/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_5/bias*
_output_shapes
:*
dtype0
~
Adam/m/dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/m/dense_5/bias
w
'Adam/m/dense_5/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_5/bias*
_output_shapes
:*
dtype0
є
Adam/v/dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*&
shared_nameAdam/v/dense_5/kernel

)Adam/v/dense_5/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_5/kernel*
_output_shapes

:2*
dtype0
є
Adam/m/dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*&
shared_nameAdam/m/dense_5/kernel

)Adam/m/dense_5/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_5/kernel*
_output_shapes

:2*
dtype0
Љ
Adam/v/lstm_5/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:╚*-
shared_nameAdam/v/lstm_5/lstm_cell/bias
і
0Adam/v/lstm_5/lstm_cell/bias/Read/ReadVariableOpReadVariableOpAdam/v/lstm_5/lstm_cell/bias*
_output_shapes	
:╚*
dtype0
Љ
Adam/m/lstm_5/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:╚*-
shared_nameAdam/m/lstm_5/lstm_cell/bias
і
0Adam/m/lstm_5/lstm_cell/bias/Read/ReadVariableOpReadVariableOpAdam/m/lstm_5/lstm_cell/bias*
_output_shapes	
:╚*
dtype0
Г
(Adam/v/lstm_5/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2╚*9
shared_name*(Adam/v/lstm_5/lstm_cell/recurrent_kernel
д
<Adam/v/lstm_5/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp(Adam/v/lstm_5/lstm_cell/recurrent_kernel*
_output_shapes
:	2╚*
dtype0
Г
(Adam/m/lstm_5/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2╚*9
shared_name*(Adam/m/lstm_5/lstm_cell/recurrent_kernel
д
<Adam/m/lstm_5/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp(Adam/m/lstm_5/lstm_cell/recurrent_kernel*
_output_shapes
:	2╚*
dtype0
Ў
Adam/v/lstm_5/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	╚*/
shared_name Adam/v/lstm_5/lstm_cell/kernel
њ
2Adam/v/lstm_5/lstm_cell/kernel/Read/ReadVariableOpReadVariableOpAdam/v/lstm_5/lstm_cell/kernel*
_output_shapes
:	╚*
dtype0
Ў
Adam/m/lstm_5/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	╚*/
shared_name Adam/m/lstm_5/lstm_cell/kernel
њ
2Adam/m/lstm_5/lstm_cell/kernel/Read/ReadVariableOpReadVariableOpAdam/m/lstm_5/lstm_cell/kernel*
_output_shapes
:	╚*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
Ѓ
lstm_5/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:╚*&
shared_namelstm_5/lstm_cell/bias
|
)lstm_5/lstm_cell/bias/Read/ReadVariableOpReadVariableOplstm_5/lstm_cell/bias*
_output_shapes	
:╚*
dtype0
Ъ
!lstm_5/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2╚*2
shared_name#!lstm_5/lstm_cell/recurrent_kernel
ў
5lstm_5/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp!lstm_5/lstm_cell/recurrent_kernel*
_output_shapes
:	2╚*
dtype0
І
lstm_5/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	╚*(
shared_namelstm_5/lstm_cell/kernel
ё
+lstm_5/lstm_cell/kernel/Read/ReadVariableOpReadVariableOplstm_5/lstm_cell/kernel*
_output_shapes
:	╚*
dtype0
p
dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_5/bias
i
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
_output_shapes
:*
dtype0
x
dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*
shared_namedense_5/kernel
q
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel*
_output_shapes

:2*
dtype0
Є
serving_default_lstm_5_inputPlaceholder*+
_output_shapes
:         *
dtype0* 
shape:         
▓
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_5_inputlstm_5/lstm_cell/kernel!lstm_5/lstm_cell/recurrent_kernellstm_5/lstm_cell/biasdense_5/kerneldense_5/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8ѓ *-
f(R&
$__inference_signature_wrapper_218331

NoOpNoOp
¤,
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*і,
valueђ,B§+ BШ+
Д
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature
	optimizer

signatures*
┴
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec*
Ц
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator* 
д
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses

#kernel
$bias*
'
%0
&1
'2
#3
$4*
'
%0
&1
'2
#3
$4*
* 
░
(non_trainable_variables

)layers
*metrics
+layer_regularization_losses
,layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses*

-trace_0
.trace_1* 

/trace_0
0trace_1* 
* 
Ђ
1
_variables
2_iterations
3_learning_rate
4_index_dict
5
_momentums
6_velocities
7_update_step_xla*

8serving_default* 

%0
&1
'2*

%0
&1
'2*
* 
Ъ

9states
:non_trainable_variables

;layers
<metrics
=layer_regularization_losses
>layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
?trace_0
@trace_1
Atrace_2
Btrace_3* 
6
Ctrace_0
Dtrace_1
Etrace_2
Ftrace_3* 
* 
с
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses
M_random_generator
N
state_size

%kernel
&recurrent_kernel
'bias*
* 
* 
* 
* 
Љ
Onon_trainable_variables

Players
Qmetrics
Rlayer_regularization_losses
Slayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

Ttrace_0
Utrace_1* 

Vtrace_0
Wtrace_1* 
* 

#0
$1*

#0
$1*
* 
Њ
Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses*

]trace_0* 

^trace_0* 
^X
VARIABLE_VALUEdense_5/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_5/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUElstm_5/lstm_cell/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE!lstm_5/lstm_cell/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUElstm_5/lstm_cell/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1
2*

_0*
* 
* 
* 
* 
* 
* 
R
20
`1
a2
b3
c4
d5
e6
f7
g8
h9
i10*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
'
`0
b1
d2
f3
h4*
'
a0
c1
e2
g3
i4*
* 
* 
* 
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

%0
&1
'2*

%0
&1
'2*
* 
Њ
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses*

otrace_0
ptrace_1* 

qtrace_0
rtrace_1* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
8
s	variables
t	keras_api
	utotal
	vcount*
ic
VARIABLE_VALUEAdam/m/lstm_5/lstm_cell/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdam/v/lstm_5/lstm_cell/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUE(Adam/m/lstm_5/lstm_cell/recurrent_kernel1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUE(Adam/v/lstm_5/lstm_cell/recurrent_kernel1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEAdam/m/lstm_5/lstm_cell/bias1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEAdam/v/lstm_5/lstm_cell/bias1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_5/kernel1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_5/kernel1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/m/dense_5/bias1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_5/bias2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 

u0
v1*

s	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
№
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamedense_5/kerneldense_5/biaslstm_5/lstm_cell/kernel!lstm_5/lstm_cell/recurrent_kernellstm_5/lstm_cell/bias	iterationlearning_rateAdam/m/lstm_5/lstm_cell/kernelAdam/v/lstm_5/lstm_cell/kernel(Adam/m/lstm_5/lstm_cell/recurrent_kernel(Adam/v/lstm_5/lstm_cell/recurrent_kernelAdam/m/lstm_5/lstm_cell/biasAdam/v/lstm_5/lstm_cell/biasAdam/m/dense_5/kernelAdam/v/dense_5/kernelAdam/m/dense_5/biasAdam/v/dense_5/biastotalcountConst* 
Tin
2*
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
GPU 2J 8ѓ *(
f#R!
__inference__traced_save_219235
Ж
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_5/kerneldense_5/biaslstm_5/lstm_cell/kernel!lstm_5/lstm_cell/recurrent_kernellstm_5/lstm_cell/bias	iterationlearning_rateAdam/m/lstm_5/lstm_cell/kernelAdam/v/lstm_5/lstm_cell/kernel(Adam/m/lstm_5/lstm_cell/recurrent_kernel(Adam/v/lstm_5/lstm_cell/recurrent_kernelAdam/m/lstm_5/lstm_cell/biasAdam/v/lstm_5/lstm_cell/biasAdam/m/dense_5/kernelAdam/v/dense_5/kernelAdam/m/dense_5/biasAdam/v/dense_5/biastotalcount*
Tin
2*
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
GPU 2J 8ѓ *+
f&R$
"__inference__traced_restore_219301▓Џ
┬	
├
while_cond_218136
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_218136___redundant_placeholder04
0while_while_cond_218136___redundant_placeholder14
0while_while_cond_218136___redundant_placeholder24
0while_while_cond_218136___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         2:         2: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
є:
х
while_body_217953
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	╚E
2while_lstm_cell_matmul_1_readvariableop_resource_0:	2╚@
1while_lstm_cell_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	╚C
0while_lstm_cell_matmul_1_readvariableop_resource:	2╚>
/while_lstm_cell_biasadd_readvariableop_resource:	╚ѕб&while/lstm_cell/BiasAdd/ReadVariableOpб%while/lstm_cell/MatMul/ReadVariableOpб'while/lstm_cell/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ќ
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	╚*
dtype0┤
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Џ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Џ
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ћ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ъ
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Т
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:         2v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:         2ђ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:         2Ј
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         2ё
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         2v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:         2k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         2Њ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         2r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Ж
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2Б

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
╔
┤
'__inference_lstm_5_layer_call_fn_218375

inputs
unknown:	╚
	unknown_0:	2╚
	unknown_1:	╚
identityѕбStatefulPartitionedCallС
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_lstm_5_layer_call_and_return_conditional_losses_218222o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs:&"
 
_user_specified_name218367:&"
 
_user_specified_name218369:&"
 
_user_specified_name218371
п
c
E__inference_dropout_5_layer_call_and_return_conditional_losses_218234

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:         2[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:         2"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         2:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs
╣
з
*__inference_lstm_cell_layer_call_fn_219035

inputs
states_0
states_1
unknown:	╚
	unknown_0:	2╚
	unknown_1:	╚
identity

identity_1

identity_2ѕбStatefulPartitionedCallЦ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         2:         2:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_217750o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         2q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         2:         2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         2
"
_user_specified_name
states_0:QM
'
_output_shapes
:         2
"
_user_specified_name
states_1:&"
 
_user_specified_name219023:&"
 
_user_specified_name219025:&"
 
_user_specified_name219027
╔\
и
"__inference__traced_restore_219301
file_prefix1
assignvariableop_dense_5_kernel:2-
assignvariableop_1_dense_5_bias:=
*assignvariableop_2_lstm_5_lstm_cell_kernel:	╚G
4assignvariableop_3_lstm_5_lstm_cell_recurrent_kernel:	2╚7
(assignvariableop_4_lstm_5_lstm_cell_bias:	╚&
assignvariableop_5_iteration:	 *
 assignvariableop_6_learning_rate: D
1assignvariableop_7_adam_m_lstm_5_lstm_cell_kernel:	╚D
1assignvariableop_8_adam_v_lstm_5_lstm_cell_kernel:	╚N
;assignvariableop_9_adam_m_lstm_5_lstm_cell_recurrent_kernel:	2╚O
<assignvariableop_10_adam_v_lstm_5_lstm_cell_recurrent_kernel:	2╚?
0assignvariableop_11_adam_m_lstm_5_lstm_cell_bias:	╚?
0assignvariableop_12_adam_v_lstm_5_lstm_cell_bias:	╚;
)assignvariableop_13_adam_m_dense_5_kernel:2;
)assignvariableop_14_adam_v_dense_5_kernel:25
'assignvariableop_15_adam_m_dense_5_bias:5
'assignvariableop_16_adam_v_dense_5_bias:#
assignvariableop_17_total: #
assignvariableop_18_count: 
identity_20ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_10бAssignVariableOp_11бAssignVariableOp_12бAssignVariableOp_13бAssignVariableOp_14бAssignVariableOp_15бAssignVariableOp_16бAssignVariableOp_17бAssignVariableOp_18бAssignVariableOp_2бAssignVariableOp_3бAssignVariableOp_4бAssignVariableOp_5бAssignVariableOp_6бAssignVariableOp_7бAssignVariableOp_8бAssignVariableOp_9┼
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*в
valueрBяB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHў
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*;
value2B0B B B B B B B B B B B B B B B B B B B B ѓ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*d
_output_shapesR
P::::::::::::::::::::*"
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOpAssignVariableOpassignvariableop_dense_5_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_5_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_2AssignVariableOp*assignvariableop_2_lstm_5_lstm_cell_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:╦
AssignVariableOp_3AssignVariableOp4assignvariableop_3_lstm_5_lstm_cell_recurrent_kernelIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:┐
AssignVariableOp_4AssignVariableOp(assignvariableop_4_lstm_5_lstm_cell_biasIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0	*
_output_shapes
:│
AssignVariableOp_5AssignVariableOpassignvariableop_5_iterationIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:и
AssignVariableOp_6AssignVariableOp assignvariableop_6_learning_rateIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:╚
AssignVariableOp_7AssignVariableOp1assignvariableop_7_adam_m_lstm_5_lstm_cell_kernelIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:╚
AssignVariableOp_8AssignVariableOp1assignvariableop_8_adam_v_lstm_5_lstm_cell_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:м
AssignVariableOp_9AssignVariableOp;assignvariableop_9_adam_m_lstm_5_lstm_cell_recurrent_kernelIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_10AssignVariableOp<assignvariableop_10_adam_v_lstm_5_lstm_cell_recurrent_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:╔
AssignVariableOp_11AssignVariableOp0assignvariableop_11_adam_m_lstm_5_lstm_cell_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:╔
AssignVariableOp_12AssignVariableOp0assignvariableop_12_adam_v_lstm_5_lstm_cell_biasIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_13AssignVariableOp)assignvariableop_13_adam_m_dense_5_kernelIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_14AssignVariableOp)assignvariableop_14_adam_v_dense_5_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_15AssignVariableOp'assignvariableop_15_adam_m_dense_5_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_16AssignVariableOp'assignvariableop_16_adam_v_dense_5_biasIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_17AssignVariableOpassignvariableop_17_totalIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_18AssignVariableOpassignvariableop_18_countIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 ы
Identity_19Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_20IdentityIdentity_19:output:0^NoOp_1*
T0*
_output_shapes
: ║
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_20Identity_20:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(: : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:.*
(
_user_specified_namedense_5/kernel:,(
&
_user_specified_namedense_5/bias:73
1
_user_specified_namelstm_5/lstm_cell/kernel:A=
;
_user_specified_name#!lstm_5/lstm_cell/recurrent_kernel:51
/
_user_specified_namelstm_5/lstm_cell/bias:)%
#
_user_specified_name	iteration:-)
'
_user_specified_namelearning_rate:>:
8
_user_specified_name Adam/m/lstm_5/lstm_cell/kernel:>	:
8
_user_specified_name Adam/v/lstm_5/lstm_cell/kernel:H
D
B
_user_specified_name*(Adam/m/lstm_5/lstm_cell/recurrent_kernel:HD
B
_user_specified_name*(Adam/v/lstm_5/lstm_cell/recurrent_kernel:<8
6
_user_specified_nameAdam/m/lstm_5/lstm_cell/bias:<8
6
_user_specified_nameAdam/v/lstm_5/lstm_cell/bias:51
/
_user_specified_nameAdam/m/dense_5/kernel:51
/
_user_specified_nameAdam/v/dense_5/kernel:3/
-
_user_specified_nameAdam/m/dense_5/bias:3/
-
_user_specified_nameAdam/v/dense_5/bias:%!

_user_specified_nametotal:%!

_user_specified_namecount
»
М
%sequential_5_lstm_5_while_cond_217448D
@sequential_5_lstm_5_while_sequential_5_lstm_5_while_loop_counterJ
Fsequential_5_lstm_5_while_sequential_5_lstm_5_while_maximum_iterations)
%sequential_5_lstm_5_while_placeholder+
'sequential_5_lstm_5_while_placeholder_1+
'sequential_5_lstm_5_while_placeholder_2+
'sequential_5_lstm_5_while_placeholder_3F
Bsequential_5_lstm_5_while_less_sequential_5_lstm_5_strided_slice_1\
Xsequential_5_lstm_5_while_sequential_5_lstm_5_while_cond_217448___redundant_placeholder0\
Xsequential_5_lstm_5_while_sequential_5_lstm_5_while_cond_217448___redundant_placeholder1\
Xsequential_5_lstm_5_while_sequential_5_lstm_5_while_cond_217448___redundant_placeholder2\
Xsequential_5_lstm_5_while_sequential_5_lstm_5_while_cond_217448___redundant_placeholder3&
"sequential_5_lstm_5_while_identity
▓
sequential_5/lstm_5/while/LessLess%sequential_5_lstm_5_while_placeholderBsequential_5_lstm_5_while_less_sequential_5_lstm_5_strided_slice_1*
T0*
_output_shapes
: s
"sequential_5/lstm_5/while/IdentityIdentity"sequential_5/lstm_5/while/Less:z:0*
T0
*
_output_shapes
: "Q
"sequential_5_lstm_5_while_identity+sequential_5/lstm_5/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         2:         2: :::::^ Z

_output_shapes
: 
@
_user_specified_name(&sequential_5/lstm_5/while/loop_counter:d`

_output_shapes
: 
F
_user_specified_name.,sequential_5/lstm_5/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:[W

_output_shapes
: 
=
_user_specified_name%#sequential_5/lstm_5/strided_slice_1:

_output_shapes
:
р
Х
'__inference_lstm_5_layer_call_fn_218342
inputs_0
unknown:	╚
	unknown_0:	2╚
	unknown_1:	╚
identityѕбStatefulPartitionedCallТ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_lstm_5_layer_call_and_return_conditional_losses_217688o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs_0:&"
 
_user_specified_name218334:&"
 
_user_specified_name218336:&"
 
_user_specified_name218338
В
Ћ
(__inference_dense_5_layer_call_fn_218991

inputs
unknown:2
	unknown_0:
identityѕбStatefulPartitionedCallп
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_218068o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         2: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs:&"
 
_user_specified_name218985:&"
 
_user_specified_name218987
є:
х
while_body_218870
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	╚E
2while_lstm_cell_matmul_1_readvariableop_resource_0:	2╚@
1while_lstm_cell_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	╚C
0while_lstm_cell_matmul_1_readvariableop_resource:	2╚>
/while_lstm_cell_biasadd_readvariableop_resource:	╚ѕб&while/lstm_cell/BiasAdd/ReadVariableOpб%while/lstm_cell/MatMul/ReadVariableOpб'while/lstm_cell/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ќ
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	╚*
dtype0┤
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Џ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Џ
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ћ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ъ
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Т
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:         2v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:         2ђ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:         2Ј
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         2ё
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         2v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:         2k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         2Њ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         2r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Ж
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2Б

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
┬	
├
while_cond_218434
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_218434___redundant_placeholder04
0while_while_cond_218434___redundant_placeholder14
0while_while_cond_218434___redundant_placeholder24
0while_while_cond_218434___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         2:         2: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
¤J
ѕ
B__inference_lstm_5_layer_call_and_return_conditional_losses_218810

inputs;
(lstm_cell_matmul_readvariableop_resource:	╚=
*lstm_cell_matmul_1_readvariableop_resource:	2╚8
)lstm_cell_biasadd_readvariableop_resource:	╚
identityѕб lstm_cell/BiasAdd/ReadVariableOpбlstm_cell/MatMul/ReadVariableOpб!lstm_cell/MatMul_1/ReadVariableOpбwhileI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЅ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	╚*
dtype0љ
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ї
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0і
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ѓ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Є
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ї
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:         2j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:         2q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:         2}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         2r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         2j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:         2_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:         2Ђ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ▄
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         2:         2: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_218725*
condR
while_cond_218724*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   о
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         2Њ
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
б9
Э
B__inference_lstm_5_layer_call_and_return_conditional_losses_217688

inputs#
lstm_cell_217604:	╚#
lstm_cell_217606:	2╚
lstm_cell_217608:	╚
identityѕб!lstm_cell/StatefulPartitionedCallбwhileI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskТ
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_217604lstm_cell_217606lstm_cell_217608*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         2:         2:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_217603n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Љ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_217604lstm_cell_217606lstm_cell_217608*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         2:         2: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_217618*
condR
while_cond_217617*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   о
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         2N
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:&"
 
_user_specified_name217604:&"
 
_user_specified_name217606:&"
 
_user_specified_name217608
│
Ѓ
E__inference_lstm_cell_layer_call_and_return_conditional_losses_219067

inputs
states_0
states_11
matmul_readvariableop_resource:	╚3
 matmul_1_readvariableop_resource:	2╚.
biasadd_readvariableop_resource:	╚
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	╚*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ╚s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         2m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         2:         2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         2
"
_user_specified_name
states_0:QM
'
_output_shapes
:         2
"
_user_specified_name
states_1:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
═
c
*__inference_dropout_5_layer_call_fn_218960

inputs
identityѕбStatefulPartitionedCall└
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dropout_5_layer_call_and_return_conditional_losses_218057o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         222
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs
є:
х
while_body_218137
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	╚E
2while_lstm_cell_matmul_1_readvariableop_resource_0:	2╚@
1while_lstm_cell_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	╚C
0while_lstm_cell_matmul_1_readvariableop_resource:	2╚>
/while_lstm_cell_biasadd_readvariableop_resource:	╚ѕб&while/lstm_cell/BiasAdd/ReadVariableOpб%while/lstm_cell/MatMul/ReadVariableOpб'while/lstm_cell/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ќ
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	╚*
dtype0┤
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Џ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Џ
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ћ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ъ
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Т
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:         2v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:         2ђ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:         2Ј
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         2ё
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         2v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:         2k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         2Њ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         2r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Ж
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2Б

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
╚
м
H__inference_sequential_5_layer_call_and_return_conditional_losses_218242
lstm_5_input 
lstm_5_218223:	╚ 
lstm_5_218225:	2╚
lstm_5_218227:	╚ 
dense_5_218236:2
dense_5_218238:
identityѕбdense_5/StatefulPartitionedCallбlstm_5/StatefulPartitionedCall 
lstm_5/StatefulPartitionedCallStatefulPartitionedCalllstm_5_inputlstm_5_218223lstm_5_218225lstm_5_218227*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_lstm_5_layer_call_and_return_conditional_losses_218222█
dropout_5/PartitionedCallPartitionedCall'lstm_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dropout_5_layer_call_and_return_conditional_losses_218234ѕ
dense_5/StatefulPartitionedCallStatefulPartitionedCall"dropout_5/PartitionedCall:output:0dense_5_218236dense_5_218238*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_218068w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         e
NoOpNoOp ^dense_5/StatefulPartitionedCall^lstm_5/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         : : : : : 2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2@
lstm_5/StatefulPartitionedCalllstm_5/StatefulPartitionedCall:Y U
+
_output_shapes
:         
&
_user_specified_namelstm_5_input:&"
 
_user_specified_name218223:&"
 
_user_specified_name218225:&"
 
_user_specified_name218227:&"
 
_user_specified_name218236:&"
 
_user_specified_name218238
Ф
Ђ
E__inference_lstm_cell_layer_call_and_return_conditional_losses_217750

inputs

states
states_11
matmul_readvariableop_resource:	╚3
 matmul_1_readvariableop_resource:	2╚.
biasadd_readvariableop_resource:	╚
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	╚*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ╚s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         2m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         2:         2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         2
 
_user_specified_namestates:OK
'
_output_shapes
:         2
 
_user_specified_namestates:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
┬	
├
while_cond_218579
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_218579___redundant_placeholder04
0while_while_cond_218579___redundant_placeholder14
0while_while_cond_218579___redundant_placeholder24
0while_while_cond_218579___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         2:         2: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
¤J
ѕ
B__inference_lstm_5_layer_call_and_return_conditional_losses_218955

inputs;
(lstm_cell_matmul_readvariableop_resource:	╚=
*lstm_cell_matmul_1_readvariableop_resource:	2╚8
)lstm_cell_biasadd_readvariableop_resource:	╚
identityѕб lstm_cell/BiasAdd/ReadVariableOpбlstm_cell/MatMul/ReadVariableOpб!lstm_cell/MatMul_1/ReadVariableOpбwhileI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЅ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	╚*
dtype0љ
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ї
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0і
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ѓ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Є
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ї
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:         2j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:         2q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:         2}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         2r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         2j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:         2_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:         2Ђ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ▄
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         2:         2: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_218870*
condR
while_cond_218869*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   о
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         2Њ
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ў

d
E__inference_dropout_5_layer_call_and_return_conditional_losses_218977

inputs
identityѕR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:         2Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::ь¤ї
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:         2*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>д
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         2T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Њ
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:         2a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:         2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         2:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs
я%
╬
while_body_217765
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0+
while_lstm_cell_217789_0:	╚+
while_lstm_cell_217791_0:	2╚'
while_lstm_cell_217793_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor)
while_lstm_cell_217789:	╚)
while_lstm_cell_217791:	2╚%
while_lstm_cell_217793:	╚ѕб'while/lstm_cell/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0ц
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_217789_0while_lstm_cell_217791_0while_lstm_cell_217793_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         2:         2:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_217750r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Ђ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:00while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Ї
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         2Ї
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         2R

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"2
while_lstm_cell_217789while_lstm_cell_217789_0"2
while_lstm_cell_217791while_lstm_cell_217791_0"2
while_lstm_cell_217793while_lstm_cell_217793_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:&"
 
_user_specified_name217789:&	"
 
_user_specified_name217791:&
"
 
_user_specified_name217793
╔
┤
'__inference_lstm_5_layer_call_fn_218364

inputs
unknown:	╚
	unknown_0:	2╚
	unknown_1:	╚
identityѕбStatefulPartitionedCallС
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_lstm_5_layer_call_and_return_conditional_losses_218038o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs:&"
 
_user_specified_name218356:&"
 
_user_specified_name218358:&"
 
_user_specified_name218360
┬	
├
while_cond_217952
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_217952___redundant_placeholder04
0while_while_cond_217952___redundant_placeholder14
0while_while_cond_217952___redundant_placeholder24
0while_while_cond_217952___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         2:         2: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
я%
╬
while_body_217618
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0+
while_lstm_cell_217642_0:	╚+
while_lstm_cell_217644_0:	2╚'
while_lstm_cell_217646_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor)
while_lstm_cell_217642:	╚)
while_lstm_cell_217644:	2╚%
while_lstm_cell_217646:	╚ѕб'while/lstm_cell/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0ц
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_217642_0while_lstm_cell_217644_0while_lstm_cell_217646_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         2:         2:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_217603r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Ђ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:00while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Ї
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         2Ї
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         2R

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"2
while_lstm_cell_217642while_lstm_cell_217642_0"2
while_lstm_cell_217644while_lstm_cell_217644_0"2
while_lstm_cell_217646while_lstm_cell_217646_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:&"
 
_user_specified_name217642:&	"
 
_user_specified_name217644:&
"
 
_user_specified_name217646
ЫJ
і
B__inference_lstm_5_layer_call_and_return_conditional_losses_218665
inputs_0;
(lstm_cell_matmul_readvariableop_resource:	╚=
*lstm_cell_matmul_1_readvariableop_resource:	2╚8
)lstm_cell_biasadd_readvariableop_resource:	╚
identityѕб lstm_cell/BiasAdd/ReadVariableOpбlstm_cell/MatMul/ReadVariableOpб!lstm_cell/MatMul_1/ReadVariableOpбwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЅ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	╚*
dtype0љ
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ї
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0і
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ѓ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Є
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ї
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:         2j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:         2q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:         2}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         2r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         2j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:         2_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:         2Ђ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ▄
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         2:         2: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_218580*
condR
while_cond_218579*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   о
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         2Њ
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs_0:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
╣
з
*__inference_lstm_cell_layer_call_fn_219018

inputs
states_0
states_1
unknown:	╚
	unknown_0:	2╚
	unknown_1:	╚
identity

identity_1

identity_2ѕбStatefulPartitionedCallЦ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         2:         2:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_217603o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         2q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         2:         2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         2
"
_user_specified_name
states_0:QM
'
_output_shapes
:         2
"
_user_specified_name
states_1:&"
 
_user_specified_name219006:&"
 
_user_specified_name219008:&"
 
_user_specified_name219010
ЫJ
і
B__inference_lstm_5_layer_call_and_return_conditional_losses_218520
inputs_0;
(lstm_cell_matmul_readvariableop_resource:	╚=
*lstm_cell_matmul_1_readvariableop_resource:	2╚8
)lstm_cell_biasadd_readvariableop_resource:	╚
identityѕб lstm_cell/BiasAdd/ReadVariableOpбlstm_cell/MatMul/ReadVariableOpб!lstm_cell/MatMul_1/ReadVariableOpбwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЅ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	╚*
dtype0љ
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ї
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0і
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ѓ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Є
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ї
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:         2j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:         2q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:         2}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         2r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         2j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:         2_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:         2Ђ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ▄
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         2:         2: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_218435*
condR
while_cond_218434*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   о
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         2Њ
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs_0:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
є:
х
while_body_218435
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	╚E
2while_lstm_cell_matmul_1_readvariableop_resource_0:	2╚@
1while_lstm_cell_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	╚C
0while_lstm_cell_matmul_1_readvariableop_resource:	2╚>
/while_lstm_cell_biasadd_readvariableop_resource:	╚ѕб&while/lstm_cell/BiasAdd/ReadVariableOpб%while/lstm_cell/MatMul/ReadVariableOpб'while/lstm_cell/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ќ
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	╚*
dtype0┤
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Џ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Џ
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ћ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ъ
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Т
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:         2v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:         2ђ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:         2Ј
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         2ё
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         2v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:         2k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         2Њ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         2r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Ж
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2Б

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
Ш	
З
C__inference_dense_5_layer_call_and_return_conditional_losses_218068

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
р
Х
'__inference_lstm_5_layer_call_fn_218353
inputs_0
unknown:	╚
	unknown_0:	2╚
	unknown_1:	╚
identityѕбStatefulPartitionedCallТ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_lstm_5_layer_call_and_return_conditional_losses_217835o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs_0:&"
 
_user_specified_name218345:&"
 
_user_specified_name218347:&"
 
_user_specified_name218349
│R
х
%sequential_5_lstm_5_while_body_217449D
@sequential_5_lstm_5_while_sequential_5_lstm_5_while_loop_counterJ
Fsequential_5_lstm_5_while_sequential_5_lstm_5_while_maximum_iterations)
%sequential_5_lstm_5_while_placeholder+
'sequential_5_lstm_5_while_placeholder_1+
'sequential_5_lstm_5_while_placeholder_2+
'sequential_5_lstm_5_while_placeholder_3C
?sequential_5_lstm_5_while_sequential_5_lstm_5_strided_slice_1_0
{sequential_5_lstm_5_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_5_tensorarrayunstack_tensorlistfromtensor_0W
Dsequential_5_lstm_5_while_lstm_cell_matmul_readvariableop_resource_0:	╚Y
Fsequential_5_lstm_5_while_lstm_cell_matmul_1_readvariableop_resource_0:	2╚T
Esequential_5_lstm_5_while_lstm_cell_biasadd_readvariableop_resource_0:	╚&
"sequential_5_lstm_5_while_identity(
$sequential_5_lstm_5_while_identity_1(
$sequential_5_lstm_5_while_identity_2(
$sequential_5_lstm_5_while_identity_3(
$sequential_5_lstm_5_while_identity_4(
$sequential_5_lstm_5_while_identity_5A
=sequential_5_lstm_5_while_sequential_5_lstm_5_strided_slice_1}
ysequential_5_lstm_5_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_5_tensorarrayunstack_tensorlistfromtensorU
Bsequential_5_lstm_5_while_lstm_cell_matmul_readvariableop_resource:	╚W
Dsequential_5_lstm_5_while_lstm_cell_matmul_1_readvariableop_resource:	2╚R
Csequential_5_lstm_5_while_lstm_cell_biasadd_readvariableop_resource:	╚ѕб:sequential_5/lstm_5/while/lstm_cell/BiasAdd/ReadVariableOpб9sequential_5/lstm_5/while/lstm_cell/MatMul/ReadVariableOpб;sequential_5/lstm_5/while/lstm_cell/MatMul_1/ReadVariableOpю
Ksequential_5/lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       і
=sequential_5/lstm_5/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem{sequential_5_lstm_5_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_5_tensorarrayunstack_tensorlistfromtensor_0%sequential_5_lstm_5_while_placeholderTsequential_5/lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0┐
9sequential_5/lstm_5/while/lstm_cell/MatMul/ReadVariableOpReadVariableOpDsequential_5_lstm_5_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	╚*
dtype0­
*sequential_5/lstm_5/while/lstm_cell/MatMulMatMulDsequential_5/lstm_5/while/TensorArrayV2Read/TensorListGetItem:item:0Asequential_5/lstm_5/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚├
;sequential_5/lstm_5/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpFsequential_5_lstm_5_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0О
,sequential_5/lstm_5/while/lstm_cell/MatMul_1MatMul'sequential_5_lstm_5_while_placeholder_2Csequential_5/lstm_5/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Л
'sequential_5/lstm_5/while/lstm_cell/addAddV24sequential_5/lstm_5/while/lstm_cell/MatMul:product:06sequential_5/lstm_5/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚й
:sequential_5/lstm_5/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpEsequential_5_lstm_5_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0┌
+sequential_5/lstm_5/while/lstm_cell/BiasAddBiasAdd+sequential_5/lstm_5/while/lstm_cell/add:z:0Bsequential_5/lstm_5/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚u
3sequential_5/lstm_5/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :б
)sequential_5/lstm_5/while/lstm_cell/splitSplit<sequential_5/lstm_5/while/lstm_cell/split/split_dim:output:04sequential_5/lstm_5/while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitю
+sequential_5/lstm_5/while/lstm_cell/SigmoidSigmoid2sequential_5/lstm_5/while/lstm_cell/split:output:0*
T0*'
_output_shapes
:         2ъ
-sequential_5/lstm_5/while/lstm_cell/Sigmoid_1Sigmoid2sequential_5/lstm_5/while/lstm_cell/split:output:1*
T0*'
_output_shapes
:         2╝
'sequential_5/lstm_5/while/lstm_cell/mulMul1sequential_5/lstm_5/while/lstm_cell/Sigmoid_1:y:0'sequential_5_lstm_5_while_placeholder_3*
T0*'
_output_shapes
:         2ќ
(sequential_5/lstm_5/while/lstm_cell/ReluRelu2sequential_5/lstm_5/while/lstm_cell/split:output:2*
T0*'
_output_shapes
:         2╦
)sequential_5/lstm_5/while/lstm_cell/mul_1Mul/sequential_5/lstm_5/while/lstm_cell/Sigmoid:y:06sequential_5/lstm_5/while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         2└
)sequential_5/lstm_5/while/lstm_cell/add_1AddV2+sequential_5/lstm_5/while/lstm_cell/mul:z:0-sequential_5/lstm_5/while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         2ъ
-sequential_5/lstm_5/while/lstm_cell/Sigmoid_2Sigmoid2sequential_5/lstm_5/while/lstm_cell/split:output:3*
T0*'
_output_shapes
:         2Њ
*sequential_5/lstm_5/while/lstm_cell/Relu_1Relu-sequential_5/lstm_5/while/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         2¤
)sequential_5/lstm_5/while/lstm_cell/mul_2Mul1sequential_5/lstm_5/while/lstm_cell/Sigmoid_2:y:08sequential_5/lstm_5/while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         2є
Dsequential_5/lstm_5/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ║
>sequential_5/lstm_5/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem'sequential_5_lstm_5_while_placeholder_1Msequential_5/lstm_5/while/TensorArrayV2Write/TensorListSetItem/index:output:0-sequential_5/lstm_5/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмa
sequential_5/lstm_5/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :ў
sequential_5/lstm_5/while/addAddV2%sequential_5_lstm_5_while_placeholder(sequential_5/lstm_5/while/add/y:output:0*
T0*
_output_shapes
: c
!sequential_5/lstm_5/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :и
sequential_5/lstm_5/while/add_1AddV2@sequential_5_lstm_5_while_sequential_5_lstm_5_while_loop_counter*sequential_5/lstm_5/while/add_1/y:output:0*
T0*
_output_shapes
: Ћ
"sequential_5/lstm_5/while/IdentityIdentity#sequential_5/lstm_5/while/add_1:z:0^sequential_5/lstm_5/while/NoOp*
T0*
_output_shapes
: ║
$sequential_5/lstm_5/while/Identity_1IdentityFsequential_5_lstm_5_while_sequential_5_lstm_5_while_maximum_iterations^sequential_5/lstm_5/while/NoOp*
T0*
_output_shapes
: Ћ
$sequential_5/lstm_5/while/Identity_2Identity!sequential_5/lstm_5/while/add:z:0^sequential_5/lstm_5/while/NoOp*
T0*
_output_shapes
: ┬
$sequential_5/lstm_5/while/Identity_3IdentityNsequential_5/lstm_5/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^sequential_5/lstm_5/while/NoOp*
T0*
_output_shapes
: ▓
$sequential_5/lstm_5/while/Identity_4Identity-sequential_5/lstm_5/while/lstm_cell/mul_2:z:0^sequential_5/lstm_5/while/NoOp*
T0*'
_output_shapes
:         2▓
$sequential_5/lstm_5/while/Identity_5Identity-sequential_5/lstm_5/while/lstm_cell/add_1:z:0^sequential_5/lstm_5/while/NoOp*
T0*'
_output_shapes
:         2з
sequential_5/lstm_5/while/NoOpNoOp;^sequential_5/lstm_5/while/lstm_cell/BiasAdd/ReadVariableOp:^sequential_5/lstm_5/while/lstm_cell/MatMul/ReadVariableOp<^sequential_5/lstm_5/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "Q
"sequential_5_lstm_5_while_identity+sequential_5/lstm_5/while/Identity:output:0"U
$sequential_5_lstm_5_while_identity_1-sequential_5/lstm_5/while/Identity_1:output:0"U
$sequential_5_lstm_5_while_identity_2-sequential_5/lstm_5/while/Identity_2:output:0"U
$sequential_5_lstm_5_while_identity_3-sequential_5/lstm_5/while/Identity_3:output:0"U
$sequential_5_lstm_5_while_identity_4-sequential_5/lstm_5/while/Identity_4:output:0"U
$sequential_5_lstm_5_while_identity_5-sequential_5/lstm_5/while/Identity_5:output:0"ї
Csequential_5_lstm_5_while_lstm_cell_biasadd_readvariableop_resourceEsequential_5_lstm_5_while_lstm_cell_biasadd_readvariableop_resource_0"ј
Dsequential_5_lstm_5_while_lstm_cell_matmul_1_readvariableop_resourceFsequential_5_lstm_5_while_lstm_cell_matmul_1_readvariableop_resource_0"і
Bsequential_5_lstm_5_while_lstm_cell_matmul_readvariableop_resourceDsequential_5_lstm_5_while_lstm_cell_matmul_readvariableop_resource_0"ђ
=sequential_5_lstm_5_while_sequential_5_lstm_5_strided_slice_1?sequential_5_lstm_5_while_sequential_5_lstm_5_strided_slice_1_0"Э
ysequential_5_lstm_5_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_5_tensorarrayunstack_tensorlistfromtensor{sequential_5_lstm_5_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_5_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2x
:sequential_5/lstm_5/while/lstm_cell/BiasAdd/ReadVariableOp:sequential_5/lstm_5/while/lstm_cell/BiasAdd/ReadVariableOp2v
9sequential_5/lstm_5/while/lstm_cell/MatMul/ReadVariableOp9sequential_5/lstm_5/while/lstm_cell/MatMul/ReadVariableOp2z
;sequential_5/lstm_5/while/lstm_cell/MatMul_1/ReadVariableOp;sequential_5/lstm_5/while/lstm_cell/MatMul_1/ReadVariableOp:^ Z

_output_shapes
: 
@
_user_specified_name(&sequential_5/lstm_5/while/loop_counter:d`

_output_shapes
: 
F
_user_specified_name.,sequential_5/lstm_5/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:[W

_output_shapes
: 
=
_user_specified_name%#sequential_5/lstm_5/strided_slice_1:so

_output_shapes
: 
U
_user_specified_name=;sequential_5/lstm_5/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
І

Ш
-__inference_sequential_5_layer_call_fn_218272
lstm_5_input
unknown:	╚
	unknown_0:	2╚
	unknown_1:	╚
	unknown_2:2
	unknown_3:
identityѕбStatefulPartitionedCallі
StatefulPartitionedCallStatefulPartitionedCalllstm_5_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_sequential_5_layer_call_and_return_conditional_losses_218242o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
+
_output_shapes
:         
&
_user_specified_namelstm_5_input:&"
 
_user_specified_name218260:&"
 
_user_specified_name218262:&"
 
_user_specified_name218264:&"
 
_user_specified_name218266:&"
 
_user_specified_name218268
п
c
E__inference_dropout_5_layer_call_and_return_conditional_losses_218982

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:         2[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:         2"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         2:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs
є:
х
while_body_218580
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	╚E
2while_lstm_cell_matmul_1_readvariableop_resource_0:	2╚@
1while_lstm_cell_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	╚C
0while_lstm_cell_matmul_1_readvariableop_resource:	2╚>
/while_lstm_cell_biasadd_readvariableop_resource:	╚ѕб&while/lstm_cell/BiasAdd/ReadVariableOpб%while/lstm_cell/MatMul/ReadVariableOpб'while/lstm_cell/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ќ
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	╚*
dtype0┤
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Џ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Џ
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ћ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ъ
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Т
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:         2v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:         2ђ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:         2Ј
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         2ё
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         2v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:         2k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         2Њ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         2r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Ж
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2Б

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
Ъ
F
*__inference_dropout_5_layer_call_fn_218965

inputs
identity░
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dropout_5_layer_call_and_return_conditional_losses_218234`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         2:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs
│
Ѓ
E__inference_lstm_cell_layer_call_and_return_conditional_losses_219099

inputs
states_0
states_11
matmul_readvariableop_resource:	╚3
 matmul_1_readvariableop_resource:	2╚.
biasadd_readvariableop_resource:	╚
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	╚*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ╚s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         2m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         2:         2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         2
"
_user_specified_name
states_0:QM
'
_output_shapes
:         2
"
_user_specified_name
states_1:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
є:
х
while_body_218725
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	╚E
2while_lstm_cell_matmul_1_readvariableop_resource_0:	2╚@
1while_lstm_cell_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	╚C
0while_lstm_cell_matmul_1_readvariableop_resource:	2╚>
/while_lstm_cell_biasadd_readvariableop_resource:	╚ѕб&while/lstm_cell/BiasAdd/ReadVariableOpб%while/lstm_cell/MatMul/ReadVariableOpб'while/lstm_cell/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ќ
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	╚*
dtype0┤
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Џ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Џ
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ћ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ъ
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Т
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:         2v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:         2ђ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:         2Ј
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         2ё
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         2v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:         2k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         2Њ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         2r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Ж
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2Б

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
б9
Э
B__inference_lstm_5_layer_call_and_return_conditional_losses_217835

inputs#
lstm_cell_217751:	╚#
lstm_cell_217753:	2╚
lstm_cell_217755:	╚
identityѕб!lstm_cell/StatefulPartitionedCallбwhileI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskТ
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_217751lstm_cell_217753lstm_cell_217755*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         2:         2:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_217750n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Љ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_217751lstm_cell_217753lstm_cell_217755*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         2:         2: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_217765*
condR
while_cond_217764*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   о
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         2N
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:&"
 
_user_specified_name217751:&"
 
_user_specified_name217753:&"
 
_user_specified_name217755
¤J
ѕ
B__inference_lstm_5_layer_call_and_return_conditional_losses_218038

inputs;
(lstm_cell_matmul_readvariableop_resource:	╚=
*lstm_cell_matmul_1_readvariableop_resource:	2╚8
)lstm_cell_biasadd_readvariableop_resource:	╚
identityѕб lstm_cell/BiasAdd/ReadVariableOpбlstm_cell/MatMul/ReadVariableOpб!lstm_cell/MatMul_1/ReadVariableOpбwhileI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЅ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	╚*
dtype0љ
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ї
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0і
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ѓ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Є
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ї
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:         2j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:         2q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:         2}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         2r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         2j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:         2_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:         2Ђ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ▄
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         2:         2: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_217953*
condR
while_cond_217952*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   о
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         2Њ
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
БЏ
ј
__inference__traced_save_219235
file_prefix7
%read_disablecopyonread_dense_5_kernel:23
%read_1_disablecopyonread_dense_5_bias:C
0read_2_disablecopyonread_lstm_5_lstm_cell_kernel:	╚M
:read_3_disablecopyonread_lstm_5_lstm_cell_recurrent_kernel:	2╚=
.read_4_disablecopyonread_lstm_5_lstm_cell_bias:	╚,
"read_5_disablecopyonread_iteration:	 0
&read_6_disablecopyonread_learning_rate: J
7read_7_disablecopyonread_adam_m_lstm_5_lstm_cell_kernel:	╚J
7read_8_disablecopyonread_adam_v_lstm_5_lstm_cell_kernel:	╚T
Aread_9_disablecopyonread_adam_m_lstm_5_lstm_cell_recurrent_kernel:	2╚U
Bread_10_disablecopyonread_adam_v_lstm_5_lstm_cell_recurrent_kernel:	2╚E
6read_11_disablecopyonread_adam_m_lstm_5_lstm_cell_bias:	╚E
6read_12_disablecopyonread_adam_v_lstm_5_lstm_cell_bias:	╚A
/read_13_disablecopyonread_adam_m_dense_5_kernel:2A
/read_14_disablecopyonread_adam_v_dense_5_kernel:2;
-read_15_disablecopyonread_adam_m_dense_5_bias:;
-read_16_disablecopyonread_adam_v_dense_5_bias:)
read_17_disablecopyonread_total: )
read_18_disablecopyonread_count: 
savev2_const
identity_39ѕбMergeV2CheckpointsбRead/DisableCopyOnReadбRead/ReadVariableOpбRead_1/DisableCopyOnReadбRead_1/ReadVariableOpбRead_10/DisableCopyOnReadбRead_10/ReadVariableOpбRead_11/DisableCopyOnReadбRead_11/ReadVariableOpбRead_12/DisableCopyOnReadбRead_12/ReadVariableOpбRead_13/DisableCopyOnReadбRead_13/ReadVariableOpбRead_14/DisableCopyOnReadбRead_14/ReadVariableOpбRead_15/DisableCopyOnReadбRead_15/ReadVariableOpбRead_16/DisableCopyOnReadбRead_16/ReadVariableOpбRead_17/DisableCopyOnReadбRead_17/ReadVariableOpбRead_18/DisableCopyOnReadбRead_18/ReadVariableOpбRead_2/DisableCopyOnReadбRead_2/ReadVariableOpбRead_3/DisableCopyOnReadбRead_3/ReadVariableOpбRead_4/DisableCopyOnReadбRead_4/ReadVariableOpбRead_5/DisableCopyOnReadбRead_5/ReadVariableOpбRead_6/DisableCopyOnReadбRead_6/ReadVariableOpбRead_7/DisableCopyOnReadбRead_7/ReadVariableOpбRead_8/DisableCopyOnReadбRead_8/ReadVariableOpбRead_9/DisableCopyOnReadбRead_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/partЂ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : Њ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: w
Read/DisableCopyOnReadDisableCopyOnRead%read_disablecopyonread_dense_5_kernel"/device:CPU:0*
_output_shapes
 А
Read/ReadVariableOpReadVariableOp%read_disablecopyonread_dense_5_kernel^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:2*
dtype0i
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:2a

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes

:2y
Read_1/DisableCopyOnReadDisableCopyOnRead%read_1_disablecopyonread_dense_5_bias"/device:CPU:0*
_output_shapes
 А
Read_1/ReadVariableOpReadVariableOp%read_1_disablecopyonread_dense_5_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:ё
Read_2/DisableCopyOnReadDisableCopyOnRead0read_2_disablecopyonread_lstm_5_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 ▒
Read_2/ReadVariableOpReadVariableOp0read_2_disablecopyonread_lstm_5_lstm_cell_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	╚*
dtype0n

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	╚d

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
:	╚ј
Read_3/DisableCopyOnReadDisableCopyOnRead:read_3_disablecopyonread_lstm_5_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 ╗
Read_3/ReadVariableOpReadVariableOp:read_3_disablecopyonread_lstm_5_lstm_cell_recurrent_kernel^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	2╚*
dtype0n

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	2╚d

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:	2╚ѓ
Read_4/DisableCopyOnReadDisableCopyOnRead.read_4_disablecopyonread_lstm_5_lstm_cell_bias"/device:CPU:0*
_output_shapes
 Ф
Read_4/ReadVariableOpReadVariableOp.read_4_disablecopyonread_lstm_5_lstm_cell_bias^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:╚*
dtype0j

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:╚`

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes	
:╚v
Read_5/DisableCopyOnReadDisableCopyOnRead"read_5_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 џ
Read_5/ReadVariableOpReadVariableOp"read_5_disablecopyonread_iteration^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	f
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0	*
_output_shapes
: z
Read_6/DisableCopyOnReadDisableCopyOnRead&read_6_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 ъ
Read_6/ReadVariableOpReadVariableOp&read_6_disablecopyonread_learning_rate^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes
: І
Read_7/DisableCopyOnReadDisableCopyOnRead7read_7_disablecopyonread_adam_m_lstm_5_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 И
Read_7/ReadVariableOpReadVariableOp7read_7_disablecopyonread_adam_m_lstm_5_lstm_cell_kernel^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	╚*
dtype0o
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	╚f
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:	╚І
Read_8/DisableCopyOnReadDisableCopyOnRead7read_8_disablecopyonread_adam_v_lstm_5_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 И
Read_8/ReadVariableOpReadVariableOp7read_8_disablecopyonread_adam_v_lstm_5_lstm_cell_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	╚*
dtype0o
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	╚f
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
:	╚Ћ
Read_9/DisableCopyOnReadDisableCopyOnReadAread_9_disablecopyonread_adam_m_lstm_5_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 ┬
Read_9/ReadVariableOpReadVariableOpAread_9_disablecopyonread_adam_m_lstm_5_lstm_cell_recurrent_kernel^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	2╚*
dtype0o
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	2╚f
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:	2╚Ќ
Read_10/DisableCopyOnReadDisableCopyOnReadBread_10_disablecopyonread_adam_v_lstm_5_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 ┼
Read_10/ReadVariableOpReadVariableOpBread_10_disablecopyonread_adam_v_lstm_5_lstm_cell_recurrent_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	2╚*
dtype0p
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	2╚f
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
:	2╚І
Read_11/DisableCopyOnReadDisableCopyOnRead6read_11_disablecopyonread_adam_m_lstm_5_lstm_cell_bias"/device:CPU:0*
_output_shapes
 х
Read_11/ReadVariableOpReadVariableOp6read_11_disablecopyonread_adam_m_lstm_5_lstm_cell_bias^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:╚*
dtype0l
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:╚b
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes	
:╚І
Read_12/DisableCopyOnReadDisableCopyOnRead6read_12_disablecopyonread_adam_v_lstm_5_lstm_cell_bias"/device:CPU:0*
_output_shapes
 х
Read_12/ReadVariableOpReadVariableOp6read_12_disablecopyonread_adam_v_lstm_5_lstm_cell_bias^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:╚*
dtype0l
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:╚b
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes	
:╚ё
Read_13/DisableCopyOnReadDisableCopyOnRead/read_13_disablecopyonread_adam_m_dense_5_kernel"/device:CPU:0*
_output_shapes
 ▒
Read_13/ReadVariableOpReadVariableOp/read_13_disablecopyonread_adam_m_dense_5_kernel^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:2*
dtype0o
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:2e
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes

:2ё
Read_14/DisableCopyOnReadDisableCopyOnRead/read_14_disablecopyonread_adam_v_dense_5_kernel"/device:CPU:0*
_output_shapes
 ▒
Read_14/ReadVariableOpReadVariableOp/read_14_disablecopyonread_adam_v_dense_5_kernel^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:2*
dtype0o
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:2e
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes

:2ѓ
Read_15/DisableCopyOnReadDisableCopyOnRead-read_15_disablecopyonread_adam_m_dense_5_bias"/device:CPU:0*
_output_shapes
 Ф
Read_15/ReadVariableOpReadVariableOp-read_15_disablecopyonread_adam_m_dense_5_bias^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
:ѓ
Read_16/DisableCopyOnReadDisableCopyOnRead-read_16_disablecopyonread_adam_v_dense_5_bias"/device:CPU:0*
_output_shapes
 Ф
Read_16/ReadVariableOpReadVariableOp-read_16_disablecopyonread_adam_v_dense_5_bias^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
:t
Read_17/DisableCopyOnReadDisableCopyOnReadread_17_disablecopyonread_total"/device:CPU:0*
_output_shapes
 Ў
Read_17/ReadVariableOpReadVariableOpread_17_disablecopyonread_total^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_18/DisableCopyOnReadDisableCopyOnReadread_18_disablecopyonread_count"/device:CPU:0*
_output_shapes
 Ў
Read_18/ReadVariableOpReadVariableOpread_18_disablecopyonread_count^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes
: ┬
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*в
valueрBяB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЋ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*;
value2B0B B B B B B B B B B B B B B B B B B B B ѕ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *"
dtypes
2	љ
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:│
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_38Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_39IdentityIdentity_38:output:0^NoOp*
T0*
_output_shapes
: ј
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_39Identity_39:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*: : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:.*
(
_user_specified_namedense_5/kernel:,(
&
_user_specified_namedense_5/bias:73
1
_user_specified_namelstm_5/lstm_cell/kernel:A=
;
_user_specified_name#!lstm_5/lstm_cell/recurrent_kernel:51
/
_user_specified_namelstm_5/lstm_cell/bias:)%
#
_user_specified_name	iteration:-)
'
_user_specified_namelearning_rate:>:
8
_user_specified_name Adam/m/lstm_5/lstm_cell/kernel:>	:
8
_user_specified_name Adam/v/lstm_5/lstm_cell/kernel:H
D
B
_user_specified_name*(Adam/m/lstm_5/lstm_cell/recurrent_kernel:HD
B
_user_specified_name*(Adam/v/lstm_5/lstm_cell/recurrent_kernel:<8
6
_user_specified_nameAdam/m/lstm_5/lstm_cell/bias:<8
6
_user_specified_nameAdam/v/lstm_5/lstm_cell/bias:51
/
_user_specified_nameAdam/m/dense_5/kernel:51
/
_user_specified_nameAdam/v/dense_5/kernel:3/
-
_user_specified_nameAdam/m/dense_5/bias:3/
-
_user_specified_nameAdam/v/dense_5/bias:%!

_user_specified_nametotal:%!

_user_specified_namecount:=9

_output_shapes
: 

_user_specified_nameConst
┬	
├
while_cond_217617
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_217617___redundant_placeholder04
0while_while_cond_217617___redundant_placeholder14
0while_while_cond_217617___redundant_placeholder24
0while_while_cond_217617___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         2:         2: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
І

Ш
-__inference_sequential_5_layer_call_fn_218257
lstm_5_input
unknown:	╚
	unknown_0:	2╚
	unknown_1:	╚
	unknown_2:2
	unknown_3:
identityѕбStatefulPartitionedCallі
StatefulPartitionedCallStatefulPartitionedCalllstm_5_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_sequential_5_layer_call_and_return_conditional_losses_218075o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
+
_output_shapes
:         
&
_user_specified_namelstm_5_input:&"
 
_user_specified_name218245:&"
 
_user_specified_name218247:&"
 
_user_specified_name218249:&"
 
_user_specified_name218251:&"
 
_user_specified_name218253
¤J
ѕ
B__inference_lstm_5_layer_call_and_return_conditional_losses_218222

inputs;
(lstm_cell_matmul_readvariableop_resource:	╚=
*lstm_cell_matmul_1_readvariableop_resource:	2╚8
)lstm_cell_biasadd_readvariableop_resource:	╚
identityѕб lstm_cell/BiasAdd/ReadVariableOpбlstm_cell/MatMul/ReadVariableOpб!lstm_cell/MatMul_1/ReadVariableOpбwhileI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЅ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	╚*
dtype0љ
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ї
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0і
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ѓ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Є
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ї
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:         2j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:         2q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:         2}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         2r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         2j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:         2_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:         2Ђ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ▄
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         2:         2: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_218137*
condR
while_cond_218136*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   о
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         2Њ
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ы
Ш
H__inference_sequential_5_layer_call_and_return_conditional_losses_218075
lstm_5_input 
lstm_5_218039:	╚ 
lstm_5_218041:	2╚
lstm_5_218043:	╚ 
dense_5_218069:2
dense_5_218071:
identityѕбdense_5/StatefulPartitionedCallб!dropout_5/StatefulPartitionedCallбlstm_5/StatefulPartitionedCall 
lstm_5/StatefulPartitionedCallStatefulPartitionedCalllstm_5_inputlstm_5_218039lstm_5_218041lstm_5_218043*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_lstm_5_layer_call_and_return_conditional_losses_218038в
!dropout_5/StatefulPartitionedCallStatefulPartitionedCall'lstm_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dropout_5_layer_call_and_return_conditional_losses_218057љ
dense_5/StatefulPartitionedCallStatefulPartitionedCall*dropout_5/StatefulPartitionedCall:output:0dense_5_218069dense_5_218071*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_218068w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         Ѕ
NoOpNoOp ^dense_5/StatefulPartitionedCall"^dropout_5/StatefulPartitionedCall^lstm_5/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         : : : : : 2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2F
!dropout_5/StatefulPartitionedCall!dropout_5/StatefulPartitionedCall2@
lstm_5/StatefulPartitionedCalllstm_5/StatefulPartitionedCall:Y U
+
_output_shapes
:         
&
_user_specified_namelstm_5_input:&"
 
_user_specified_name218039:&"
 
_user_specified_name218041:&"
 
_user_specified_name218043:&"
 
_user_specified_name218069:&"
 
_user_specified_name218071
┬	
├
while_cond_218724
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_218724___redundant_placeholder04
0while_while_cond_218724___redundant_placeholder14
0while_while_cond_218724___redundant_placeholder24
0while_while_cond_218724___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         2:         2: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
ъn
▀
!__inference__wrapped_model_217541
lstm_5_inputO
<sequential_5_lstm_5_lstm_cell_matmul_readvariableop_resource:	╚Q
>sequential_5_lstm_5_lstm_cell_matmul_1_readvariableop_resource:	2╚L
=sequential_5_lstm_5_lstm_cell_biasadd_readvariableop_resource:	╚E
3sequential_5_dense_5_matmul_readvariableop_resource:2B
4sequential_5_dense_5_biasadd_readvariableop_resource:
identityѕб+sequential_5/dense_5/BiasAdd/ReadVariableOpб*sequential_5/dense_5/MatMul/ReadVariableOpб4sequential_5/lstm_5/lstm_cell/BiasAdd/ReadVariableOpб3sequential_5/lstm_5/lstm_cell/MatMul/ReadVariableOpб5sequential_5/lstm_5/lstm_cell/MatMul_1/ReadVariableOpбsequential_5/lstm_5/whilec
sequential_5/lstm_5/ShapeShapelstm_5_input*
T0*
_output_shapes
::ь¤q
'sequential_5/lstm_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)sequential_5/lstm_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)sequential_5/lstm_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:х
!sequential_5/lstm_5/strided_sliceStridedSlice"sequential_5/lstm_5/Shape:output:00sequential_5/lstm_5/strided_slice/stack:output:02sequential_5/lstm_5/strided_slice/stack_1:output:02sequential_5/lstm_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"sequential_5/lstm_5/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2»
 sequential_5/lstm_5/zeros/packedPack*sequential_5/lstm_5/strided_slice:output:0+sequential_5/lstm_5/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:d
sequential_5/lstm_5/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    е
sequential_5/lstm_5/zerosFill)sequential_5/lstm_5/zeros/packed:output:0(sequential_5/lstm_5/zeros/Const:output:0*
T0*'
_output_shapes
:         2f
$sequential_5/lstm_5/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2│
"sequential_5/lstm_5/zeros_1/packedPack*sequential_5/lstm_5/strided_slice:output:0-sequential_5/lstm_5/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_5/lstm_5/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    «
sequential_5/lstm_5/zeros_1Fill+sequential_5/lstm_5/zeros_1/packed:output:0*sequential_5/lstm_5/zeros_1/Const:output:0*
T0*'
_output_shapes
:         2w
"sequential_5/lstm_5/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Џ
sequential_5/lstm_5/transpose	Transposelstm_5_input+sequential_5/lstm_5/transpose/perm:output:0*
T0*+
_output_shapes
:         z
sequential_5/lstm_5/Shape_1Shape!sequential_5/lstm_5/transpose:y:0*
T0*
_output_shapes
::ь¤s
)sequential_5/lstm_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_5/lstm_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_5/lstm_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┐
#sequential_5/lstm_5/strided_slice_1StridedSlice$sequential_5/lstm_5/Shape_1:output:02sequential_5/lstm_5/strided_slice_1/stack:output:04sequential_5/lstm_5/strided_slice_1/stack_1:output:04sequential_5/lstm_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
/sequential_5/lstm_5/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ­
!sequential_5/lstm_5/TensorArrayV2TensorListReserve8sequential_5/lstm_5/TensorArrayV2/element_shape:output:0,sequential_5/lstm_5/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмџ
Isequential_5/lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ю
;sequential_5/lstm_5/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor!sequential_5/lstm_5/transpose:y:0Rsequential_5/lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмs
)sequential_5/lstm_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_5/lstm_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_5/lstm_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:═
#sequential_5/lstm_5/strided_slice_2StridedSlice!sequential_5/lstm_5/transpose:y:02sequential_5/lstm_5/strided_slice_2/stack:output:04sequential_5/lstm_5/strided_slice_2/stack_1:output:04sequential_5/lstm_5/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask▒
3sequential_5/lstm_5/lstm_cell/MatMul/ReadVariableOpReadVariableOp<sequential_5_lstm_5_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	╚*
dtype0╠
$sequential_5/lstm_5/lstm_cell/MatMulMatMul,sequential_5/lstm_5/strided_slice_2:output:0;sequential_5/lstm_5/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚х
5sequential_5/lstm_5/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp>sequential_5_lstm_5_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0к
&sequential_5/lstm_5/lstm_cell/MatMul_1MatMul"sequential_5/lstm_5/zeros:output:0=sequential_5/lstm_5/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚┐
!sequential_5/lstm_5/lstm_cell/addAddV2.sequential_5/lstm_5/lstm_cell/MatMul:product:00sequential_5/lstm_5/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚»
4sequential_5/lstm_5/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp=sequential_5_lstm_5_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0╚
%sequential_5/lstm_5/lstm_cell/BiasAddBiasAdd%sequential_5/lstm_5/lstm_cell/add:z:0<sequential_5/lstm_5/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚o
-sequential_5/lstm_5/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :љ
#sequential_5/lstm_5/lstm_cell/splitSplit6sequential_5/lstm_5/lstm_cell/split/split_dim:output:0.sequential_5/lstm_5/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitљ
%sequential_5/lstm_5/lstm_cell/SigmoidSigmoid,sequential_5/lstm_5/lstm_cell/split:output:0*
T0*'
_output_shapes
:         2њ
'sequential_5/lstm_5/lstm_cell/Sigmoid_1Sigmoid,sequential_5/lstm_5/lstm_cell/split:output:1*
T0*'
_output_shapes
:         2Г
!sequential_5/lstm_5/lstm_cell/mulMul+sequential_5/lstm_5/lstm_cell/Sigmoid_1:y:0$sequential_5/lstm_5/zeros_1:output:0*
T0*'
_output_shapes
:         2і
"sequential_5/lstm_5/lstm_cell/ReluRelu,sequential_5/lstm_5/lstm_cell/split:output:2*
T0*'
_output_shapes
:         2╣
#sequential_5/lstm_5/lstm_cell/mul_1Mul)sequential_5/lstm_5/lstm_cell/Sigmoid:y:00sequential_5/lstm_5/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         2«
#sequential_5/lstm_5/lstm_cell/add_1AddV2%sequential_5/lstm_5/lstm_cell/mul:z:0'sequential_5/lstm_5/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         2њ
'sequential_5/lstm_5/lstm_cell/Sigmoid_2Sigmoid,sequential_5/lstm_5/lstm_cell/split:output:3*
T0*'
_output_shapes
:         2Є
$sequential_5/lstm_5/lstm_cell/Relu_1Relu'sequential_5/lstm_5/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         2й
#sequential_5/lstm_5/lstm_cell/mul_2Mul+sequential_5/lstm_5/lstm_cell/Sigmoid_2:y:02sequential_5/lstm_5/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         2ѓ
1sequential_5/lstm_5/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   r
0sequential_5/lstm_5/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Ђ
#sequential_5/lstm_5/TensorArrayV2_1TensorListReserve:sequential_5/lstm_5/TensorArrayV2_1/element_shape:output:09sequential_5/lstm_5/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмZ
sequential_5/lstm_5/timeConst*
_output_shapes
: *
dtype0*
value	B : w
,sequential_5/lstm_5/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         h
&sequential_5/lstm_5/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : З
sequential_5/lstm_5/whileWhile/sequential_5/lstm_5/while/loop_counter:output:05sequential_5/lstm_5/while/maximum_iterations:output:0!sequential_5/lstm_5/time:output:0,sequential_5/lstm_5/TensorArrayV2_1:handle:0"sequential_5/lstm_5/zeros:output:0$sequential_5/lstm_5/zeros_1:output:0,sequential_5/lstm_5/strided_slice_1:output:0Ksequential_5/lstm_5/TensorArrayUnstack/TensorListFromTensor:output_handle:0<sequential_5_lstm_5_lstm_cell_matmul_readvariableop_resource>sequential_5_lstm_5_lstm_cell_matmul_1_readvariableop_resource=sequential_5_lstm_5_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         2:         2: : : : : *%
_read_only_resource_inputs
	
*1
body)R'
%sequential_5_lstm_5_while_body_217449*1
cond)R'
%sequential_5_lstm_5_while_cond_217448*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations Ћ
Dsequential_5/lstm_5/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   њ
6sequential_5/lstm_5/TensorArrayV2Stack/TensorListStackTensorListStack"sequential_5/lstm_5/while:output:3Msequential_5/lstm_5/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype0*
num_elements|
)sequential_5/lstm_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         u
+sequential_5/lstm_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: u
+sequential_5/lstm_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:в
#sequential_5/lstm_5/strided_slice_3StridedSlice?sequential_5/lstm_5/TensorArrayV2Stack/TensorListStack:tensor:02sequential_5/lstm_5/strided_slice_3/stack:output:04sequential_5/lstm_5/strided_slice_3/stack_1:output:04sequential_5/lstm_5/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_masky
$sequential_5/lstm_5/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          м
sequential_5/lstm_5/transpose_1	Transpose?sequential_5/lstm_5/TensorArrayV2Stack/TensorListStack:tensor:0-sequential_5/lstm_5/transpose_1/perm:output:0*
T0*+
_output_shapes
:         2o
sequential_5/lstm_5/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    І
sequential_5/dropout_5/IdentityIdentity,sequential_5/lstm_5/strided_slice_3:output:0*
T0*'
_output_shapes
:         2ъ
*sequential_5/dense_5/MatMul/ReadVariableOpReadVariableOp3sequential_5_dense_5_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0х
sequential_5/dense_5/MatMulMatMul(sequential_5/dropout_5/Identity:output:02sequential_5/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ю
+sequential_5/dense_5/BiasAdd/ReadVariableOpReadVariableOp4sequential_5_dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0х
sequential_5/dense_5/BiasAddBiasAdd%sequential_5/dense_5/MatMul:product:03sequential_5/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         t
IdentityIdentity%sequential_5/dense_5/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         Й
NoOpNoOp,^sequential_5/dense_5/BiasAdd/ReadVariableOp+^sequential_5/dense_5/MatMul/ReadVariableOp5^sequential_5/lstm_5/lstm_cell/BiasAdd/ReadVariableOp4^sequential_5/lstm_5/lstm_cell/MatMul/ReadVariableOp6^sequential_5/lstm_5/lstm_cell/MatMul_1/ReadVariableOp^sequential_5/lstm_5/while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         : : : : : 2Z
+sequential_5/dense_5/BiasAdd/ReadVariableOp+sequential_5/dense_5/BiasAdd/ReadVariableOp2X
*sequential_5/dense_5/MatMul/ReadVariableOp*sequential_5/dense_5/MatMul/ReadVariableOp2l
4sequential_5/lstm_5/lstm_cell/BiasAdd/ReadVariableOp4sequential_5/lstm_5/lstm_cell/BiasAdd/ReadVariableOp2j
3sequential_5/lstm_5/lstm_cell/MatMul/ReadVariableOp3sequential_5/lstm_5/lstm_cell/MatMul/ReadVariableOp2n
5sequential_5/lstm_5/lstm_cell/MatMul_1/ReadVariableOp5sequential_5/lstm_5/lstm_cell/MatMul_1/ReadVariableOp26
sequential_5/lstm_5/whilesequential_5/lstm_5/while:Y U
+
_output_shapes
:         
&
_user_specified_namelstm_5_input:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
┬	
├
while_cond_217764
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_217764___redundant_placeholder04
0while_while_cond_217764___redundant_placeholder14
0while_while_cond_217764___redundant_placeholder24
0while_while_cond_217764___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         2:         2: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
┬	
├
while_cond_218869
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_218869___redundant_placeholder04
0while_while_cond_218869___redundant_placeholder14
0while_while_cond_218869___redundant_placeholder24
0while_while_cond_218869___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         2:         2: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
Ф
Ђ
E__inference_lstm_cell_layer_call_and_return_conditional_losses_217603

inputs

states
states_11
matmul_readvariableop_resource:	╚3
 matmul_1_readvariableop_resource:	2╚.
biasadd_readvariableop_resource:	╚
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	╚*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ╚s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         2m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         2:         2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         2
 
_user_specified_namestates:OK
'
_output_shapes
:         2
 
_user_specified_namestates:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ш	
З
C__inference_dense_5_layer_call_and_return_conditional_losses_219001

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
█	
ь
$__inference_signature_wrapper_218331
lstm_5_input
unknown:	╚
	unknown_0:	2╚
	unknown_1:	╚
	unknown_2:2
	unknown_3:
identityѕбStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCalllstm_5_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8ѓ **
f%R#
!__inference__wrapped_model_217541o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
+
_output_shapes
:         
&
_user_specified_namelstm_5_input:&"
 
_user_specified_name218319:&"
 
_user_specified_name218321:&"
 
_user_specified_name218323:&"
 
_user_specified_name218325:&"
 
_user_specified_name218327
Ў

d
E__inference_dropout_5_layer_call_and_return_conditional_losses_218057

inputs
identityѕR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:         2Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::ь¤ї
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:         2*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>д
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         2T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Њ
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:         2a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:         2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         2:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs"ДL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*И
serving_defaultц
I
lstm_5_input9
serving_default_lstm_5_input:0         ;
dense_50
StatefulPartitionedCall:0         tensorflow/serving/predict:на
┴
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
┌
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec"
_tf_keras_rnn_layer
╝
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator"
_tf_keras_layer
╗
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses

#kernel
$bias"
_tf_keras_layer
C
%0
&1
'2
#3
$4"
trackable_list_wrapper
C
%0
&1
'2
#3
$4"
trackable_list_wrapper
 "
trackable_list_wrapper
╩
(non_trainable_variables

)layers
*metrics
+layer_regularization_losses
,layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses"
_generic_user_object
═
-trace_0
.trace_12ќ
-__inference_sequential_5_layer_call_fn_218257
-__inference_sequential_5_layer_call_fn_218272х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z-trace_0z.trace_1
Ѓ
/trace_0
0trace_12╠
H__inference_sequential_5_layer_call_and_return_conditional_losses_218075
H__inference_sequential_5_layer_call_and_return_conditional_losses_218242х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z/trace_0z0trace_1
ЛB╬
!__inference__wrapped_model_217541lstm_5_input"ў
Љ▓Ї
FullArgSpec
argsџ

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ю
1
_variables
2_iterations
3_learning_rate
4_index_dict
5
_momentums
6_velocities
7_update_step_xla"
experimentalOptimizer
,
8serving_default"
signature_map
5
%0
&1
'2"
trackable_list_wrapper
5
%0
&1
'2"
trackable_list_wrapper
 "
trackable_list_wrapper
╣

9states
:non_trainable_variables

;layers
<metrics
=layer_regularization_losses
>layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
▄
?trace_0
@trace_1
Atrace_2
Btrace_32ы
'__inference_lstm_5_layer_call_fn_218342
'__inference_lstm_5_layer_call_fn_218353
'__inference_lstm_5_layer_call_fn_218364
'__inference_lstm_5_layer_call_fn_218375╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z?trace_0z@trace_1zAtrace_2zBtrace_3
╚
Ctrace_0
Dtrace_1
Etrace_2
Ftrace_32П
B__inference_lstm_5_layer_call_and_return_conditional_losses_218520
B__inference_lstm_5_layer_call_and_return_conditional_losses_218665
B__inference_lstm_5_layer_call_and_return_conditional_losses_218810
B__inference_lstm_5_layer_call_and_return_conditional_losses_218955╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zCtrace_0zDtrace_1zEtrace_2zFtrace_3
"
_generic_user_object
Э
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses
M_random_generator
N
state_size

%kernel
&recurrent_kernel
'bias"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Г
Onon_trainable_variables

Players
Qmetrics
Rlayer_regularization_losses
Slayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
╗
Ttrace_0
Utrace_12ё
*__inference_dropout_5_layer_call_fn_218960
*__inference_dropout_5_layer_call_fn_218965Е
б▓ъ
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zTtrace_0zUtrace_1
ы
Vtrace_0
Wtrace_12║
E__inference_dropout_5_layer_call_and_return_conditional_losses_218977
E__inference_dropout_5_layer_call_and_return_conditional_losses_218982Е
б▓ъ
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zVtrace_0zWtrace_1
"
_generic_user_object
.
#0
$1"
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
 "
trackable_list_wrapper
Г
Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses"
_generic_user_object
Р
]trace_02┼
(__inference_dense_5_layer_call_fn_218991ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z]trace_0
§
^trace_02Я
C__inference_dense_5_layer_call_and_return_conditional_losses_219001ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z^trace_0
 :22dense_5/kernel
:2dense_5/bias
*:(	╚2lstm_5/lstm_cell/kernel
4:2	2╚2!lstm_5/lstm_cell/recurrent_kernel
$:"╚2lstm_5/lstm_cell/bias
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
'
_0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ыBЬ
-__inference_sequential_5_layer_call_fn_218257lstm_5_input"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ыBЬ
-__inference_sequential_5_layer_call_fn_218272lstm_5_input"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
їBЅ
H__inference_sequential_5_layer_call_and_return_conditional_losses_218075lstm_5_input"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
їBЅ
H__inference_sequential_5_layer_call_and_return_conditional_losses_218242lstm_5_input"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
n
20
`1
a2
b3
c4
d5
e6
f7
g8
h9
i10"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
C
`0
b1
d2
f3
h4"
trackable_list_wrapper
C
a0
c1
e2
g3
i4"
trackable_list_wrapper
х2▓»
д▓б
FullArgSpec*
args"џ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 0
┌BО
$__inference_signature_wrapper_218331lstm_5_input"ъ
Ќ▓Њ
FullArgSpec
argsџ 
varargs
 
varkw
 
defaults
 !

kwonlyargsџ
jlstm_5_input
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЭBш
'__inference_lstm_5_layer_call_fn_218342inputs_0"й
Х▓▓
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЭBш
'__inference_lstm_5_layer_call_fn_218353inputs_0"й
Х▓▓
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ШBз
'__inference_lstm_5_layer_call_fn_218364inputs"й
Х▓▓
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ШBз
'__inference_lstm_5_layer_call_fn_218375inputs"й
Х▓▓
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЊBљ
B__inference_lstm_5_layer_call_and_return_conditional_losses_218520inputs_0"й
Х▓▓
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЊBљ
B__inference_lstm_5_layer_call_and_return_conditional_losses_218665inputs_0"й
Х▓▓
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЉBј
B__inference_lstm_5_layer_call_and_return_conditional_losses_218810inputs"й
Х▓▓
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЉBј
B__inference_lstm_5_layer_call_and_return_conditional_losses_218955inputs"й
Х▓▓
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
5
%0
&1
'2"
trackable_list_wrapper
5
%0
&1
'2"
trackable_list_wrapper
 "
trackable_list_wrapper
Г
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses"
_generic_user_object
┼
otrace_0
ptrace_12ј
*__inference_lstm_cell_layer_call_fn_219018
*__inference_lstm_cell_layer_call_fn_219035│
г▓е
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zotrace_0zptrace_1
ч
qtrace_0
rtrace_12─
E__inference_lstm_cell_layer_call_and_return_conditional_losses_219067
E__inference_lstm_cell_layer_call_and_return_conditional_losses_219099│
г▓е
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zqtrace_0zrtrace_1
"
_generic_user_object
 "
trackable_list_wrapper
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
ЯBП
*__inference_dropout_5_layer_call_fn_218960inputs"ц
Ю▓Ў
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЯBП
*__inference_dropout_5_layer_call_fn_218965inputs"ц
Ю▓Ў
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
чBЭ
E__inference_dropout_5_layer_call_and_return_conditional_losses_218977inputs"ц
Ю▓Ў
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
чBЭ
E__inference_dropout_5_layer_call_and_return_conditional_losses_218982inputs"ц
Ю▓Ў
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
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
мB¤
(__inference_dense_5_layer_call_fn_218991inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ьBЖ
C__inference_dense_5_layer_call_and_return_conditional_losses_219001inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
N
s	variables
t	keras_api
	utotal
	vcount"
_tf_keras_metric
/:-	╚2Adam/m/lstm_5/lstm_cell/kernel
/:-	╚2Adam/v/lstm_5/lstm_cell/kernel
9:7	2╚2(Adam/m/lstm_5/lstm_cell/recurrent_kernel
9:7	2╚2(Adam/v/lstm_5/lstm_cell/recurrent_kernel
):'╚2Adam/m/lstm_5/lstm_cell/bias
):'╚2Adam/v/lstm_5/lstm_cell/bias
%:#22Adam/m/dense_5/kernel
%:#22Adam/v/dense_5/kernel
:2Adam/m/dense_5/bias
:2Adam/v/dense_5/bias
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
■Bч
*__inference_lstm_cell_layer_call_fn_219018inputsstates_0states_1"«
Д▓Б
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
■Bч
*__inference_lstm_cell_layer_call_fn_219035inputsstates_0states_1"«
Д▓Б
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЎBќ
E__inference_lstm_cell_layer_call_and_return_conditional_losses_219067inputsstates_0states_1"«
Д▓Б
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЎBќ
E__inference_lstm_cell_layer_call_and_return_conditional_losses_219099inputsstates_0states_1"«
Д▓Б
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
.
u0
v1"
trackable_list_wrapper
-
s	variables"
_generic_user_object
:  (2total
:  (2countџ
!__inference__wrapped_model_217541u%&'#$9б6
/б,
*і'
lstm_5_input         
ф "1ф.
,
dense_5!і
dense_5         ф
C__inference_dense_5_layer_call_and_return_conditional_losses_219001c#$/б,
%б"
 і
inputs         2
ф ",б)
"і
tensor_0         
џ ё
(__inference_dense_5_layer_call_fn_218991X#$/б,
%б"
 і
inputs         2
ф "!і
unknown         г
E__inference_dropout_5_layer_call_and_return_conditional_losses_218977c3б0
)б&
 і
inputs         2
p
ф ",б)
"і
tensor_0         2
џ г
E__inference_dropout_5_layer_call_and_return_conditional_losses_218982c3б0
)б&
 і
inputs         2
p 
ф ",б)
"і
tensor_0         2
џ є
*__inference_dropout_5_layer_call_fn_218960X3б0
)б&
 і
inputs         2
p
ф "!і
unknown         2є
*__inference_dropout_5_layer_call_fn_218965X3б0
)б&
 і
inputs         2
p 
ф "!і
unknown         2╦
B__inference_lstm_5_layer_call_and_return_conditional_losses_218520ё%&'OбL
EбB
4џ1
/і,
inputs_0                  

 
p

 
ф ",б)
"і
tensor_0         2
џ ╦
B__inference_lstm_5_layer_call_and_return_conditional_losses_218665ё%&'OбL
EбB
4џ1
/і,
inputs_0                  

 
p 

 
ф ",б)
"і
tensor_0         2
џ ║
B__inference_lstm_5_layer_call_and_return_conditional_losses_218810t%&'?б<
5б2
$і!
inputs         

 
p

 
ф ",б)
"і
tensor_0         2
џ ║
B__inference_lstm_5_layer_call_and_return_conditional_losses_218955t%&'?б<
5б2
$і!
inputs         

 
p 

 
ф ",б)
"і
tensor_0         2
џ ц
'__inference_lstm_5_layer_call_fn_218342y%&'OбL
EбB
4џ1
/і,
inputs_0                  

 
p

 
ф "!і
unknown         2ц
'__inference_lstm_5_layer_call_fn_218353y%&'OбL
EбB
4џ1
/і,
inputs_0                  

 
p 

 
ф "!і
unknown         2ћ
'__inference_lstm_5_layer_call_fn_218364i%&'?б<
5б2
$і!
inputs         

 
p

 
ф "!і
unknown         2ћ
'__inference_lstm_5_layer_call_fn_218375i%&'?б<
5б2
$і!
inputs         

 
p 

 
ф "!і
unknown         2я
E__inference_lstm_cell_layer_call_and_return_conditional_losses_219067ћ%&'ђб}
vбs
 і
inputs         
KбH
"і
states_0         2
"і
states_1         2
p
ф "ЅбЁ
~б{
$і!

tensor_0_0         2
SџP
&і#
tensor_0_1_0         2
&і#
tensor_0_1_1         2
џ я
E__inference_lstm_cell_layer_call_and_return_conditional_losses_219099ћ%&'ђб}
vбs
 і
inputs         
KбH
"і
states_0         2
"і
states_1         2
p 
ф "ЅбЁ
~б{
$і!

tensor_0_0         2
SџP
&і#
tensor_0_1_0         2
&і#
tensor_0_1_1         2
џ ▒
*__inference_lstm_cell_layer_call_fn_219018ѓ%&'ђб}
vбs
 і
inputs         
KбH
"і
states_0         2
"і
states_1         2
p
ф "xбu
"і
tensor_0         2
OџL
$і!

tensor_1_0         2
$і!

tensor_1_1         2▒
*__inference_lstm_cell_layer_call_fn_219035ѓ%&'ђб}
vбs
 і
inputs         
KбH
"і
states_0         2
"і
states_1         2
p 
ф "xбu
"і
tensor_0         2
OџL
$і!

tensor_1_0         2
$і!

tensor_1_1         2─
H__inference_sequential_5_layer_call_and_return_conditional_losses_218075x%&'#$Aб>
7б4
*і'
lstm_5_input         
p

 
ф ",б)
"і
tensor_0         
џ ─
H__inference_sequential_5_layer_call_and_return_conditional_losses_218242x%&'#$Aб>
7б4
*і'
lstm_5_input         
p 

 
ф ",б)
"і
tensor_0         
џ ъ
-__inference_sequential_5_layer_call_fn_218257m%&'#$Aб>
7б4
*і'
lstm_5_input         
p

 
ф "!і
unknown         ъ
-__inference_sequential_5_layer_call_fn_218272m%&'#$Aб>
7б4
*і'
lstm_5_input         
p 

 
ф "!і
unknown         «
$__inference_signature_wrapper_218331Ё%&'#$IбF
б 
?ф<
:
lstm_5_input*і'
lstm_5_input         "1ф.
,
dense_5!і
dense_5         