??
??
:
Add
x"T
y"T
z"T"
Ttype:
2	
?
ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
E
AssignAddVariableOp
resource
value"dtype"
dtypetype?
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
8
DivNoNan
x"T
y"T
z"T"
Ttype:	
2
B
Equal
x"T
y"T
z
"
Ttype:
2	
?
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
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
delete_old_dirsbool(?
=
Mul
x"T
y"T
z"T"
Ttype:
2	?
.
Neg
x"T
y"T"
Ttype:

2	
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
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
6
Pow
x"T
y"T
z"T"
Ttype:

2	
L
PreventGradient

input"T
output"T"	
Ttype"
messagestring 
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	?
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
?
ResourceApplyAdam
var
m
v
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( ?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
?
#SparseSoftmaxCrossEntropyWithLogits
features"T
labels"Tlabels	
loss"T
backprop"T"
Ttype:
2"
Tlabelstype0	:
2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
?
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape?
9
VarIsInitializedOp
resource
is_initialized
?
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.14.02unknown??
n
	fc1_inputPlaceholder*
shape:??????????*
dtype0*(
_output_shapes
:??????????
?
+fc1/kernel/Initializer/random_uniform/shapeConst*
valueB"  @   *
_class
loc:@fc1/kernel*
dtype0*
_output_shapes
:
?
)fc1/kernel/Initializer/random_uniform/minConst*
valueB
 *?D??*
_class
loc:@fc1/kernel*
dtype0*
_output_shapes
: 
?
)fc1/kernel/Initializer/random_uniform/maxConst*
valueB
 *?D?=*
_class
loc:@fc1/kernel*
dtype0*
_output_shapes
: 
?
3fc1/kernel/Initializer/random_uniform/RandomUniformRandomUniform+fc1/kernel/Initializer/random_uniform/shape*

seed *
T0*
_class
loc:@fc1/kernel*
seed2 *
dtype0*
_output_shapes
:	?@
?
)fc1/kernel/Initializer/random_uniform/subSub)fc1/kernel/Initializer/random_uniform/max)fc1/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@fc1/kernel*
_output_shapes
: 
?
)fc1/kernel/Initializer/random_uniform/mulMul3fc1/kernel/Initializer/random_uniform/RandomUniform)fc1/kernel/Initializer/random_uniform/sub*
T0*
_class
loc:@fc1/kernel*
_output_shapes
:	?@
?
%fc1/kernel/Initializer/random_uniformAdd)fc1/kernel/Initializer/random_uniform/mul)fc1/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@fc1/kernel*
_output_shapes
:	?@
?

fc1/kernelVarHandleOp*
shared_name
fc1/kernel*
_class
loc:@fc1/kernel*
	container *
shape:	?@*
dtype0*
_output_shapes
: 
e
+fc1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp
fc1/kernel*
_output_shapes
: 
?
fc1/kernel/AssignAssignVariableOp
fc1/kernel%fc1/kernel/Initializer/random_uniform*
_class
loc:@fc1/kernel*
dtype0
?
fc1/kernel/Read/ReadVariableOpReadVariableOp
fc1/kernel*
_class
loc:@fc1/kernel*
dtype0*
_output_shapes
:	?@
?
fc1/bias/Initializer/zerosConst*
valueB@*    *
_class
loc:@fc1/bias*
dtype0*
_output_shapes
:@
?
fc1/biasVarHandleOp*
shared_name
fc1/bias*
_class
loc:@fc1/bias*
	container *
shape:@*
dtype0*
_output_shapes
: 
a
)fc1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpfc1/bias*
_output_shapes
: 
s
fc1/bias/AssignAssignVariableOpfc1/biasfc1/bias/Initializer/zeros*
_class
loc:@fc1/bias*
dtype0
~
fc1/bias/Read/ReadVariableOpReadVariableOpfc1/bias*
_class
loc:@fc1/bias*
dtype0*
_output_shapes
:@
e
fc1/MatMul/ReadVariableOpReadVariableOp
fc1/kernel*
dtype0*
_output_shapes
:	?@
?

fc1/MatMulMatMul	fc1_inputfc1/MatMul/ReadVariableOp*
transpose_b( *
T0*'
_output_shapes
:?????????@*
transpose_a( 
_
fc1/BiasAdd/ReadVariableOpReadVariableOpfc1/bias*
dtype0*
_output_shapes
:@
?
fc1/BiasAddBiasAdd
fc1/MatMulfc1/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:?????????@
O
fc1/ReluRelufc1/BiasAdd*
T0*'
_output_shapes
:?????????@
?
+fc2/kernel/Initializer/random_uniform/shapeConst*
valueB"@   @   *
_class
loc:@fc2/kernel*
dtype0*
_output_shapes
:
?
)fc2/kernel/Initializer/random_uniform/minConst*
valueB
 *׳]?*
_class
loc:@fc2/kernel*
dtype0*
_output_shapes
: 
?
)fc2/kernel/Initializer/random_uniform/maxConst*
valueB
 *׳]>*
_class
loc:@fc2/kernel*
dtype0*
_output_shapes
: 
?
3fc2/kernel/Initializer/random_uniform/RandomUniformRandomUniform+fc2/kernel/Initializer/random_uniform/shape*

seed *
T0*
_class
loc:@fc2/kernel*
seed2 *
dtype0*
_output_shapes

:@@
?
)fc2/kernel/Initializer/random_uniform/subSub)fc2/kernel/Initializer/random_uniform/max)fc2/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@fc2/kernel*
_output_shapes
: 
?
)fc2/kernel/Initializer/random_uniform/mulMul3fc2/kernel/Initializer/random_uniform/RandomUniform)fc2/kernel/Initializer/random_uniform/sub*
T0*
_class
loc:@fc2/kernel*
_output_shapes

:@@
?
%fc2/kernel/Initializer/random_uniformAdd)fc2/kernel/Initializer/random_uniform/mul)fc2/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@fc2/kernel*
_output_shapes

:@@
?

fc2/kernelVarHandleOp*
shared_name
fc2/kernel*
_class
loc:@fc2/kernel*
	container *
shape
:@@*
dtype0*
_output_shapes
: 
e
+fc2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp
fc2/kernel*
_output_shapes
: 
?
fc2/kernel/AssignAssignVariableOp
fc2/kernel%fc2/kernel/Initializer/random_uniform*
_class
loc:@fc2/kernel*
dtype0
?
fc2/kernel/Read/ReadVariableOpReadVariableOp
fc2/kernel*
_class
loc:@fc2/kernel*
dtype0*
_output_shapes

:@@
?
fc2/bias/Initializer/zerosConst*
valueB@*    *
_class
loc:@fc2/bias*
dtype0*
_output_shapes
:@
?
fc2/biasVarHandleOp*
shared_name
fc2/bias*
_class
loc:@fc2/bias*
	container *
shape:@*
dtype0*
_output_shapes
: 
a
)fc2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpfc2/bias*
_output_shapes
: 
s
fc2/bias/AssignAssignVariableOpfc2/biasfc2/bias/Initializer/zeros*
_class
loc:@fc2/bias*
dtype0
~
fc2/bias/Read/ReadVariableOpReadVariableOpfc2/bias*
_class
loc:@fc2/bias*
dtype0*
_output_shapes
:@
d
fc2/MatMul/ReadVariableOpReadVariableOp
fc2/kernel*
dtype0*
_output_shapes

:@@
?

fc2/MatMulMatMulfc1/Relufc2/MatMul/ReadVariableOp*
transpose_b( *
T0*'
_output_shapes
:?????????@*
transpose_a( 
_
fc2/BiasAdd/ReadVariableOpReadVariableOpfc2/bias*
dtype0*
_output_shapes
:@
?
fc2/BiasAddBiasAdd
fc2/MatMulfc2/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:?????????@
O
fc2/ReluRelufc2/BiasAdd*
T0*'
_output_shapes
:?????????@
?
.output/kernel/Initializer/random_uniform/shapeConst*
valueB"@   
   * 
_class
loc:@output/kernel*
dtype0*
_output_shapes
:
?
,output/kernel/Initializer/random_uniform/minConst*
valueB
 *iʑ?* 
_class
loc:@output/kernel*
dtype0*
_output_shapes
: 
?
,output/kernel/Initializer/random_uniform/maxConst*
valueB
 *iʑ>* 
_class
loc:@output/kernel*
dtype0*
_output_shapes
: 
?
6output/kernel/Initializer/random_uniform/RandomUniformRandomUniform.output/kernel/Initializer/random_uniform/shape*

seed *
T0* 
_class
loc:@output/kernel*
seed2 *
dtype0*
_output_shapes

:@

?
,output/kernel/Initializer/random_uniform/subSub,output/kernel/Initializer/random_uniform/max,output/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@output/kernel*
_output_shapes
: 
?
,output/kernel/Initializer/random_uniform/mulMul6output/kernel/Initializer/random_uniform/RandomUniform,output/kernel/Initializer/random_uniform/sub*
T0* 
_class
loc:@output/kernel*
_output_shapes

:@

?
(output/kernel/Initializer/random_uniformAdd,output/kernel/Initializer/random_uniform/mul,output/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@output/kernel*
_output_shapes

:@

?
output/kernelVarHandleOp*
shared_nameoutput/kernel* 
_class
loc:@output/kernel*
	container *
shape
:@
*
dtype0*
_output_shapes
: 
k
.output/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpoutput/kernel*
_output_shapes
: 
?
output/kernel/AssignAssignVariableOpoutput/kernel(output/kernel/Initializer/random_uniform* 
_class
loc:@output/kernel*
dtype0
?
!output/kernel/Read/ReadVariableOpReadVariableOpoutput/kernel* 
_class
loc:@output/kernel*
dtype0*
_output_shapes

:@

?
output/bias/Initializer/zerosConst*
valueB
*    *
_class
loc:@output/bias*
dtype0*
_output_shapes
:

?
output/biasVarHandleOp*
shared_nameoutput/bias*
_class
loc:@output/bias*
	container *
shape:
*
dtype0*
_output_shapes
: 
g
,output/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpoutput/bias*
_output_shapes
: 

output/bias/AssignAssignVariableOpoutput/biasoutput/bias/Initializer/zeros*
_class
loc:@output/bias*
dtype0
?
output/bias/Read/ReadVariableOpReadVariableOpoutput/bias*
_class
loc:@output/bias*
dtype0*
_output_shapes
:

j
output/MatMul/ReadVariableOpReadVariableOpoutput/kernel*
dtype0*
_output_shapes

:@

?
output/MatMulMatMulfc2/Reluoutput/MatMul/ReadVariableOp*
transpose_b( *
T0*'
_output_shapes
:?????????
*
transpose_a( 
e
output/BiasAdd/ReadVariableOpReadVariableOpoutput/bias*
dtype0*
_output_shapes
:

?
output/BiasAddBiasAddoutput/MatMuloutput/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:?????????

[
output/SoftmaxSoftmaxoutput/BiasAdd*
T0*'
_output_shapes
:?????????

^
PlaceholderPlaceholder*
shape:	?@*
dtype0*
_output_shapes
:	?@
J
AssignVariableOpAssignVariableOp
fc1/kernelPlaceholder*
dtype0
m
ReadVariableOpReadVariableOp
fc1/kernel^AssignVariableOp*
dtype0*
_output_shapes
:	?@
V
Placeholder_1Placeholder*
shape:@*
dtype0*
_output_shapes
:@
L
AssignVariableOp_1AssignVariableOpfc1/biasPlaceholder_1*
dtype0
j
ReadVariableOp_1ReadVariableOpfc1/bias^AssignVariableOp_1*
dtype0*
_output_shapes
:@
^
Placeholder_2Placeholder*
shape
:@@*
dtype0*
_output_shapes

:@@
N
AssignVariableOp_2AssignVariableOp
fc2/kernelPlaceholder_2*
dtype0
p
ReadVariableOp_2ReadVariableOp
fc2/kernel^AssignVariableOp_2*
dtype0*
_output_shapes

:@@
V
Placeholder_3Placeholder*
shape:@*
dtype0*
_output_shapes
:@
L
AssignVariableOp_3AssignVariableOpfc2/biasPlaceholder_3*
dtype0
j
ReadVariableOp_3ReadVariableOpfc2/bias^AssignVariableOp_3*
dtype0*
_output_shapes
:@
^
Placeholder_4Placeholder*
shape
:@
*
dtype0*
_output_shapes

:@

Q
AssignVariableOp_4AssignVariableOpoutput/kernelPlaceholder_4*
dtype0
s
ReadVariableOp_4ReadVariableOpoutput/kernel^AssignVariableOp_4*
dtype0*
_output_shapes

:@

V
Placeholder_5Placeholder*
shape:
*
dtype0*
_output_shapes
:

O
AssignVariableOp_5AssignVariableOpoutput/biasPlaceholder_5*
dtype0
m
ReadVariableOp_5ReadVariableOpoutput/bias^AssignVariableOp_5*
dtype0*
_output_shapes
:

J
VarIsInitializedOpVarIsInitializedOpfc2/bias*
_output_shapes
: 
Q
VarIsInitializedOp_1VarIsInitializedOpoutput/kernel*
_output_shapes
: 
L
VarIsInitializedOp_2VarIsInitializedOpfc1/bias*
_output_shapes
: 
N
VarIsInitializedOp_3VarIsInitializedOp
fc1/kernel*
_output_shapes
: 
N
VarIsInitializedOp_4VarIsInitializedOp
fc2/kernel*
_output_shapes
: 
O
VarIsInitializedOp_5VarIsInitializedOpoutput/bias*
_output_shapes
: 
?
initNoOp^fc1/bias/Assign^fc1/kernel/Assign^fc2/bias/Assign^fc2/kernel/Assign^output/bias/Assign^output/kernel/Assign
?
output_targetPlaceholder*%
shape:??????????????????*
dtype0*0
_output_shapes
:??????????????????
v
total/Initializer/zerosConst*
valueB
 *    *
_class

loc:@total*
dtype0*
_output_shapes
: 
?
totalVarHandleOp*
shared_nametotal*
_class

loc:@total*
	container *
shape: *
dtype0*
_output_shapes
: 
[
&total/IsInitialized/VarIsInitializedOpVarIsInitializedOptotal*
_output_shapes
: 
g
total/AssignAssignVariableOptotaltotal/Initializer/zeros*
_class

loc:@total*
dtype0
q
total/Read/ReadVariableOpReadVariableOptotal*
_class

loc:@total*
dtype0*
_output_shapes
: 
v
count/Initializer/zerosConst*
valueB
 *    *
_class

loc:@count*
dtype0*
_output_shapes
: 
?
countVarHandleOp*
shared_namecount*
_class

loc:@count*
	container *
shape: *
dtype0*
_output_shapes
: 
[
&count/IsInitialized/VarIsInitializedOpVarIsInitializedOpcount*
_output_shapes
: 
g
count/AssignAssignVariableOpcountcount/Initializer/zeros*
_class

loc:@count*
dtype0
q
count/Read/ReadVariableOpReadVariableOpcount*
_class

loc:@count*
dtype0*
_output_shapes
: 
{
metrics/acc/SqueezeSqueezeoutput_target*
squeeze_dims

?????????*
T0*#
_output_shapes
:?????????
g
metrics/acc/ArgMax/dimensionConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
metrics/acc/ArgMaxArgMaxoutput/Softmaxmetrics/acc/ArgMax/dimension*

Tidx0*
T0*
output_type0	*#
_output_shapes
:?????????
y
metrics/acc/CastCastmetrics/acc/ArgMax*

SrcT0	*
Truncate( *#
_output_shapes
:?????????*

DstT0
o
metrics/acc/EqualEqualmetrics/acc/Squeezemetrics/acc/Cast*
T0*#
_output_shapes
:?????????
z
metrics/acc/Cast_1Castmetrics/acc/Equal*

SrcT0
*
Truncate( *#
_output_shapes
:?????????*

DstT0
[
metrics/acc/ConstConst*
valueB: *
dtype0*
_output_shapes
:
{
metrics/acc/SumSummetrics/acc/Cast_1metrics/acc/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
[
metrics/acc/AssignAddVariableOpAssignAddVariableOptotalmetrics/acc/Sum*
dtype0
?
metrics/acc/ReadVariableOpReadVariableOptotal ^metrics/acc/AssignAddVariableOp^metrics/acc/Sum*
dtype0*
_output_shapes
: 
]
metrics/acc/SizeSizemetrics/acc/Cast_1*
T0*
out_type0*
_output_shapes
: 
l
metrics/acc/Cast_2Castmetrics/acc/Size*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
?
!metrics/acc/AssignAddVariableOp_1AssignAddVariableOpcountmetrics/acc/Cast_2 ^metrics/acc/AssignAddVariableOp*
dtype0
?
metrics/acc/ReadVariableOp_1ReadVariableOpcount ^metrics/acc/AssignAddVariableOp"^metrics/acc/AssignAddVariableOp_1*
dtype0*
_output_shapes
: 
?
%metrics/acc/div_no_nan/ReadVariableOpReadVariableOptotal"^metrics/acc/AssignAddVariableOp_1*
dtype0*
_output_shapes
: 
?
'metrics/acc/div_no_nan/ReadVariableOp_1ReadVariableOpcount"^metrics/acc/AssignAddVariableOp_1*
dtype0*
_output_shapes
: 
?
metrics/acc/div_no_nanDivNoNan%metrics/acc/div_no_nan/ReadVariableOp'metrics/acc/div_no_nan/ReadVariableOp_1*
T0*
_output_shapes
: 
Y
metrics/acc/IdentityIdentitymetrics/acc/div_no_nan*
T0*
_output_shapes
: 
q
loss/output_loss/Reshape/shapeConst*
valueB:
?????????*
dtype0*
_output_shapes
:
?
loss/output_loss/ReshapeReshapeoutput_targetloss/output_loss/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:?????????
?
loss/output_loss/CastCastloss/output_loss/Reshape*

SrcT0*
Truncate( *#
_output_shapes
:?????????*

DstT0	
q
 loss/output_loss/Reshape_1/shapeConst*
valueB"????
   *
dtype0*
_output_shapes
:
?
loss/output_loss/Reshape_1Reshapeoutput/BiasAdd loss/output_loss/Reshape_1/shape*
T0*
Tshape0*'
_output_shapes
:?????????

?
:loss/output_loss/SparseSoftmaxCrossEntropyWithLogits/ShapeShapeloss/output_loss/Cast*
T0	*
out_type0*
_output_shapes
:
?
Xloss/output_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsloss/output_loss/Reshape_1loss/output_loss/Cast*
T0*6
_output_shapes$
":?????????:?????????
*
Tlabels0	
i
$loss/output_loss/weighted_loss/ConstConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
Sloss/output_loss/weighted_loss/broadcast_weights/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 
?
Rloss/output_loss/weighted_loss/broadcast_weights/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 
?
Rloss/output_loss/weighted_loss/broadcast_weights/assert_broadcastable/values/shapeShapeXloss/output_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*
out_type0*
_output_shapes
:
?
Qloss/output_loss/weighted_loss/broadcast_weights/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
i
aloss/output_loss/weighted_loss/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOp
?
@loss/output_loss/weighted_loss/broadcast_weights/ones_like/ShapeShapeXloss/output_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsb^loss/output_loss/weighted_loss/broadcast_weights/assert_broadcastable/static_scalar_check_success*
T0*
out_type0*
_output_shapes
:
?
@loss/output_loss/weighted_loss/broadcast_weights/ones_like/ConstConstb^loss/output_loss/weighted_loss/broadcast_weights/assert_broadcastable/static_scalar_check_success*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
:loss/output_loss/weighted_loss/broadcast_weights/ones_likeFill@loss/output_loss/weighted_loss/broadcast_weights/ones_like/Shape@loss/output_loss/weighted_loss/broadcast_weights/ones_like/Const*
T0*

index_type0*#
_output_shapes
:?????????
?
0loss/output_loss/weighted_loss/broadcast_weightsMul$loss/output_loss/weighted_loss/Const:loss/output_loss/weighted_loss/broadcast_weights/ones_like*
T0*#
_output_shapes
:?????????
?
"loss/output_loss/weighted_loss/MulMulXloss/output_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits0loss/output_loss/weighted_loss/broadcast_weights*
T0*#
_output_shapes
:?????????
`
loss/output_loss/ConstConst*
valueB: *
dtype0*
_output_shapes
:
?
loss/output_loss/SumSum"loss/output_loss/weighted_loss/Mulloss/output_loss/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
z
loss/output_loss/num_elementsSize"loss/output_loss/weighted_loss/Mul*
T0*
out_type0*
_output_shapes
: 
?
"loss/output_loss/num_elements/CastCastloss/output_loss/num_elements*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
[
loss/output_loss/Const_1Const*
valueB *
dtype0*
_output_shapes
: 
?
loss/output_loss/Sum_1Sumloss/output_loss/Sumloss/output_loss/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 

loss/output_loss/valueDivNoNanloss/output_loss/Sum_1"loss/output_loss/num_elements/Cast*
T0*
_output_shapes
: 
O

loss/mul/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
T
loss/mulMul
loss/mul/xloss/output_loss/value*
T0*
_output_shapes
: 
\
keras_learning_phase/inputConst*
value	B
 Z *
dtype0
*
_output_shapes
: 
|
keras_learning_phasePlaceholderWithDefaultkeras_learning_phase/input*
shape: *
dtype0
*
_output_shapes
: 
W
Adam/gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
]
Adam/gradients/grad_ys_0Const*
valueB
 *  ??*
dtype0*
_output_shapes
: 
~
Adam/gradients/FillFillAdam/gradients/ShapeAdam/gradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
u
 Adam/gradients/loss/mul_grad/MulMulAdam/gradients/Fillloss/output_loss/value*
T0*
_output_shapes
: 
k
"Adam/gradients/loss/mul_grad/Mul_1MulAdam/gradients/Fill
loss/mul/x*
T0*
_output_shapes
: 
s
0Adam/gradients/loss/output_loss/value_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
u
2Adam/gradients/loss/output_loss/value_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
?
@Adam/gradients/loss/output_loss/value_grad/BroadcastGradientArgsBroadcastGradientArgs0Adam/gradients/loss/output_loss/value_grad/Shape2Adam/gradients/loss/output_loss/value_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
5Adam/gradients/loss/output_loss/value_grad/div_no_nanDivNoNan"Adam/gradients/loss/mul_grad/Mul_1"loss/output_loss/num_elements/Cast*
T0*
_output_shapes
: 
?
.Adam/gradients/loss/output_loss/value_grad/SumSum5Adam/gradients/loss/output_loss/value_grad/div_no_nan@Adam/gradients/loss/output_loss/value_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
?
2Adam/gradients/loss/output_loss/value_grad/ReshapeReshape.Adam/gradients/loss/output_loss/value_grad/Sum0Adam/gradients/loss/output_loss/value_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
n
.Adam/gradients/loss/output_loss/value_grad/NegNegloss/output_loss/Sum_1*
T0*
_output_shapes
: 
?
7Adam/gradients/loss/output_loss/value_grad/div_no_nan_1DivNoNan.Adam/gradients/loss/output_loss/value_grad/Neg"loss/output_loss/num_elements/Cast*
T0*
_output_shapes
: 
?
7Adam/gradients/loss/output_loss/value_grad/div_no_nan_2DivNoNan7Adam/gradients/loss/output_loss/value_grad/div_no_nan_1"loss/output_loss/num_elements/Cast*
T0*
_output_shapes
: 
?
.Adam/gradients/loss/output_loss/value_grad/mulMul"Adam/gradients/loss/mul_grad/Mul_17Adam/gradients/loss/output_loss/value_grad/div_no_nan_2*
T0*
_output_shapes
: 
?
0Adam/gradients/loss/output_loss/value_grad/Sum_1Sum.Adam/gradients/loss/output_loss/value_grad/mulBAdam/gradients/loss/output_loss/value_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
?
4Adam/gradients/loss/output_loss/value_grad/Reshape_1Reshape0Adam/gradients/loss/output_loss/value_grad/Sum_12Adam/gradients/loss/output_loss/value_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
{
8Adam/gradients/loss/output_loss/Sum_1_grad/Reshape/shapeConst*
valueB *
dtype0*
_output_shapes
: 
?
2Adam/gradients/loss/output_loss/Sum_1_grad/ReshapeReshape2Adam/gradients/loss/output_loss/value_grad/Reshape8Adam/gradients/loss/output_loss/Sum_1_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
: 
s
0Adam/gradients/loss/output_loss/Sum_1_grad/ConstConst*
valueB *
dtype0*
_output_shapes
: 
?
/Adam/gradients/loss/output_loss/Sum_1_grad/TileTile2Adam/gradients/loss/output_loss/Sum_1_grad/Reshape0Adam/gradients/loss/output_loss/Sum_1_grad/Const*

Tmultiples0*
T0*
_output_shapes
: 
?
6Adam/gradients/loss/output_loss/Sum_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
?
0Adam/gradients/loss/output_loss/Sum_grad/ReshapeReshape/Adam/gradients/loss/output_loss/Sum_1_grad/Tile6Adam/gradients/loss/output_loss/Sum_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
?
.Adam/gradients/loss/output_loss/Sum_grad/ShapeShape"loss/output_loss/weighted_loss/Mul*
T0*
out_type0*
_output_shapes
:
?
-Adam/gradients/loss/output_loss/Sum_grad/TileTile0Adam/gradients/loss/output_loss/Sum_grad/Reshape.Adam/gradients/loss/output_loss/Sum_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:?????????
?
<Adam/gradients/loss/output_loss/weighted_loss/Mul_grad/ShapeShapeXloss/output_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*
out_type0*
_output_shapes
:
?
>Adam/gradients/loss/output_loss/weighted_loss/Mul_grad/Shape_1Shape0loss/output_loss/weighted_loss/broadcast_weights*
T0*
out_type0*
_output_shapes
:
?
LAdam/gradients/loss/output_loss/weighted_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs<Adam/gradients/loss/output_loss/weighted_loss/Mul_grad/Shape>Adam/gradients/loss/output_loss/weighted_loss/Mul_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
:Adam/gradients/loss/output_loss/weighted_loss/Mul_grad/MulMul-Adam/gradients/loss/output_loss/Sum_grad/Tile0loss/output_loss/weighted_loss/broadcast_weights*
T0*#
_output_shapes
:?????????
?
:Adam/gradients/loss/output_loss/weighted_loss/Mul_grad/SumSum:Adam/gradients/loss/output_loss/weighted_loss/Mul_grad/MulLAdam/gradients/loss/output_loss/weighted_loss/Mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
?
>Adam/gradients/loss/output_loss/weighted_loss/Mul_grad/ReshapeReshape:Adam/gradients/loss/output_loss/weighted_loss/Mul_grad/Sum<Adam/gradients/loss/output_loss/weighted_loss/Mul_grad/Shape*
T0*
Tshape0*#
_output_shapes
:?????????
?
<Adam/gradients/loss/output_loss/weighted_loss/Mul_grad/Mul_1MulXloss/output_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits-Adam/gradients/loss/output_loss/Sum_grad/Tile*
T0*#
_output_shapes
:?????????
?
<Adam/gradients/loss/output_loss/weighted_loss/Mul_grad/Sum_1Sum<Adam/gradients/loss/output_loss/weighted_loss/Mul_grad/Mul_1NAdam/gradients/loss/output_loss/weighted_loss/Mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
?
@Adam/gradients/loss/output_loss/weighted_loss/Mul_grad/Reshape_1Reshape<Adam/gradients/loss/output_loss/weighted_loss/Mul_grad/Sum_1>Adam/gradients/loss/output_loss/weighted_loss/Mul_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:?????????
?
Adam/gradients/zeros_like	ZerosLikeZloss/output_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*'
_output_shapes
:?????????

?
|Adam/gradients/loss/output_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientZloss/output_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*?
message??Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0*'
_output_shapes
:?????????

?
{Adam/gradients/loss/output_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
wAdam/gradients/loss/output_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims>Adam/gradients/loss/output_loss/weighted_loss/Mul_grad/Reshape{Adam/gradients/loss/output_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:?????????
?
pAdam/gradients/loss/output_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulwAdam/gradients/loss/output_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims|Adam/gradients/loss/output_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*'
_output_shapes
:?????????

?
4Adam/gradients/loss/output_loss/Reshape_1_grad/ShapeShapeoutput/BiasAdd*
T0*
out_type0*
_output_shapes
:
?
6Adam/gradients/loss/output_loss/Reshape_1_grad/ReshapeReshapepAdam/gradients/loss/output_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul4Adam/gradients/loss/output_loss/Reshape_1_grad/Shape*
T0*
Tshape0*'
_output_shapes
:?????????

?
.Adam/gradients/output/BiasAdd_grad/BiasAddGradBiasAddGrad6Adam/gradients/loss/output_loss/Reshape_1_grad/Reshape*
T0*
data_formatNHWC*
_output_shapes
:

?
(Adam/gradients/output/MatMul_grad/MatMulMatMul6Adam/gradients/loss/output_loss/Reshape_1_grad/Reshapeoutput/MatMul/ReadVariableOp*
transpose_b(*
T0*'
_output_shapes
:?????????@*
transpose_a( 
?
*Adam/gradients/output/MatMul_grad/MatMul_1MatMulfc2/Relu6Adam/gradients/loss/output_loss/Reshape_1_grad/Reshape*
transpose_b( *
T0*
_output_shapes

:@
*
transpose_a(
?
%Adam/gradients/fc2/Relu_grad/ReluGradReluGrad(Adam/gradients/output/MatMul_grad/MatMulfc2/Relu*
T0*'
_output_shapes
:?????????@
?
+Adam/gradients/fc2/BiasAdd_grad/BiasAddGradBiasAddGrad%Adam/gradients/fc2/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:@
?
%Adam/gradients/fc2/MatMul_grad/MatMulMatMul%Adam/gradients/fc2/Relu_grad/ReluGradfc2/MatMul/ReadVariableOp*
transpose_b(*
T0*'
_output_shapes
:?????????@*
transpose_a( 
?
'Adam/gradients/fc2/MatMul_grad/MatMul_1MatMulfc1/Relu%Adam/gradients/fc2/Relu_grad/ReluGrad*
transpose_b( *
T0*
_output_shapes

:@@*
transpose_a(
?
%Adam/gradients/fc1/Relu_grad/ReluGradReluGrad%Adam/gradients/fc2/MatMul_grad/MatMulfc1/Relu*
T0*'
_output_shapes
:?????????@
?
+Adam/gradients/fc1/BiasAdd_grad/BiasAddGradBiasAddGrad%Adam/gradients/fc1/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:@
?
%Adam/gradients/fc1/MatMul_grad/MatMulMatMul%Adam/gradients/fc1/Relu_grad/ReluGradfc1/MatMul/ReadVariableOp*
transpose_b(*
T0*(
_output_shapes
:??????????*
transpose_a( 
?
'Adam/gradients/fc1/MatMul_grad/MatMul_1MatMul	fc1_input%Adam/gradients/fc1/Relu_grad/ReluGrad*
transpose_b( *
T0*
_output_shapes
:	?@*
transpose_a(
{
Adam/iter/Initializer/zerosConst*
value	B	 R *
_class
loc:@Adam/iter*
dtype0	*
_output_shapes
: 
?
	Adam/iterVarHandleOp*
shared_name	Adam/iter*
_class
loc:@Adam/iter*
	container *
shape: *
dtype0	*
_output_shapes
: 
c
*Adam/iter/IsInitialized/VarIsInitializedOpVarIsInitializedOp	Adam/iter*
_output_shapes
: 
w
Adam/iter/AssignAssignVariableOp	Adam/iterAdam/iter/Initializer/zeros*
_class
loc:@Adam/iter*
dtype0	
}
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_class
loc:@Adam/iter*
dtype0	*
_output_shapes
: 
?
%Adam/beta_1/Initializer/initial_valueConst*
valueB
 *fff?*
_class
loc:@Adam/beta_1*
dtype0*
_output_shapes
: 
?
Adam/beta_1VarHandleOp*
shared_nameAdam/beta_1*
_class
loc:@Adam/beta_1*
	container *
shape: *
dtype0*
_output_shapes
: 
g
,Adam/beta_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/beta_1*
_output_shapes
: 
?
Adam/beta_1/AssignAssignVariableOpAdam/beta_1%Adam/beta_1/Initializer/initial_value*
_class
loc:@Adam/beta_1*
dtype0
?
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_class
loc:@Adam/beta_1*
dtype0*
_output_shapes
: 
?
%Adam/beta_2/Initializer/initial_valueConst*
valueB
 *w??*
_class
loc:@Adam/beta_2*
dtype0*
_output_shapes
: 
?
Adam/beta_2VarHandleOp*
shared_nameAdam/beta_2*
_class
loc:@Adam/beta_2*
	container *
shape: *
dtype0*
_output_shapes
: 
g
,Adam/beta_2/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/beta_2*
_output_shapes
: 
?
Adam/beta_2/AssignAssignVariableOpAdam/beta_2%Adam/beta_2/Initializer/initial_value*
_class
loc:@Adam/beta_2*
dtype0
?
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_class
loc:@Adam/beta_2*
dtype0*
_output_shapes
: 
?
$Adam/decay/Initializer/initial_valueConst*
valueB
 *    *
_class
loc:@Adam/decay*
dtype0*
_output_shapes
: 
?

Adam/decayVarHandleOp*
shared_name
Adam/decay*
_class
loc:@Adam/decay*
	container *
shape: *
dtype0*
_output_shapes
: 
e
+Adam/decay/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Adam/decay*
_output_shapes
: 
?
Adam/decay/AssignAssignVariableOp
Adam/decay$Adam/decay/Initializer/initial_value*
_class
loc:@Adam/decay*
dtype0
?
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_class
loc:@Adam/decay*
dtype0*
_output_shapes
: 
?
,Adam/learning_rate/Initializer/initial_valueConst*
valueB
 *o?:*%
_class
loc:@Adam/learning_rate*
dtype0*
_output_shapes
: 
?
Adam/learning_rateVarHandleOp*#
shared_nameAdam/learning_rate*%
_class
loc:@Adam/learning_rate*
	container *
shape: *
dtype0*
_output_shapes
: 
u
3Adam/learning_rate/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/learning_rate*
_output_shapes
: 
?
Adam/learning_rate/AssignAssignVariableOpAdam/learning_rate,Adam/learning_rate/Initializer/initial_value*%
_class
loc:@Adam/learning_rate*
dtype0
?
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*%
_class
loc:@Adam/learning_rate*
dtype0*
_output_shapes
: 
?
3Adam/fc1/kernel/m/Initializer/zeros/shape_as_tensorConst*
_class
loc:@fc1/kernel*
valueB"  @   *
dtype0*
_output_shapes
:
?
)Adam/fc1/kernel/m/Initializer/zeros/ConstConst*
_class
loc:@fc1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
?
#Adam/fc1/kernel/m/Initializer/zerosFill3Adam/fc1/kernel/m/Initializer/zeros/shape_as_tensor)Adam/fc1/kernel/m/Initializer/zeros/Const*
T0*
_class
loc:@fc1/kernel*

index_type0*
_output_shapes
:	?@
?
Adam/fc1/kernel/mVarHandleOp*"
shared_nameAdam/fc1/kernel/m*
_class
loc:@fc1/kernel*
	container *
shape:	?@*
dtype0*
_output_shapes
: 
?
2Adam/fc1/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/fc1/kernel/m*
_class
loc:@fc1/kernel*
_output_shapes
: 
?
Adam/fc1/kernel/m/AssignAssignVariableOpAdam/fc1/kernel/m#Adam/fc1/kernel/m/Initializer/zeros*
_class
loc:@fc1/kernel*
dtype0
?
%Adam/fc1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/fc1/kernel/m*
_class
loc:@fc1/kernel*
dtype0*
_output_shapes
:	?@
?
!Adam/fc1/bias/m/Initializer/zerosConst*
_class
loc:@fc1/bias*
valueB@*    *
dtype0*
_output_shapes
:@
?
Adam/fc1/bias/mVarHandleOp* 
shared_nameAdam/fc1/bias/m*
_class
loc:@fc1/bias*
	container *
shape:@*
dtype0*
_output_shapes
: 
?
0Adam/fc1/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/fc1/bias/m*
_class
loc:@fc1/bias*
_output_shapes
: 
?
Adam/fc1/bias/m/AssignAssignVariableOpAdam/fc1/bias/m!Adam/fc1/bias/m/Initializer/zeros*
_class
loc:@fc1/bias*
dtype0
?
#Adam/fc1/bias/m/Read/ReadVariableOpReadVariableOpAdam/fc1/bias/m*
_class
loc:@fc1/bias*
dtype0*
_output_shapes
:@
?
3Adam/fc2/kernel/m/Initializer/zeros/shape_as_tensorConst*
_class
loc:@fc2/kernel*
valueB"@   @   *
dtype0*
_output_shapes
:
?
)Adam/fc2/kernel/m/Initializer/zeros/ConstConst*
_class
loc:@fc2/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
?
#Adam/fc2/kernel/m/Initializer/zerosFill3Adam/fc2/kernel/m/Initializer/zeros/shape_as_tensor)Adam/fc2/kernel/m/Initializer/zeros/Const*
T0*
_class
loc:@fc2/kernel*

index_type0*
_output_shapes

:@@
?
Adam/fc2/kernel/mVarHandleOp*"
shared_nameAdam/fc2/kernel/m*
_class
loc:@fc2/kernel*
	container *
shape
:@@*
dtype0*
_output_shapes
: 
?
2Adam/fc2/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/fc2/kernel/m*
_class
loc:@fc2/kernel*
_output_shapes
: 
?
Adam/fc2/kernel/m/AssignAssignVariableOpAdam/fc2/kernel/m#Adam/fc2/kernel/m/Initializer/zeros*
_class
loc:@fc2/kernel*
dtype0
?
%Adam/fc2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/fc2/kernel/m*
_class
loc:@fc2/kernel*
dtype0*
_output_shapes

:@@
?
!Adam/fc2/bias/m/Initializer/zerosConst*
_class
loc:@fc2/bias*
valueB@*    *
dtype0*
_output_shapes
:@
?
Adam/fc2/bias/mVarHandleOp* 
shared_nameAdam/fc2/bias/m*
_class
loc:@fc2/bias*
	container *
shape:@*
dtype0*
_output_shapes
: 
?
0Adam/fc2/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/fc2/bias/m*
_class
loc:@fc2/bias*
_output_shapes
: 
?
Adam/fc2/bias/m/AssignAssignVariableOpAdam/fc2/bias/m!Adam/fc2/bias/m/Initializer/zeros*
_class
loc:@fc2/bias*
dtype0
?
#Adam/fc2/bias/m/Read/ReadVariableOpReadVariableOpAdam/fc2/bias/m*
_class
loc:@fc2/bias*
dtype0*
_output_shapes
:@
?
&Adam/output/kernel/m/Initializer/zerosConst* 
_class
loc:@output/kernel*
valueB@
*    *
dtype0*
_output_shapes

:@

?
Adam/output/kernel/mVarHandleOp*%
shared_nameAdam/output/kernel/m* 
_class
loc:@output/kernel*
	container *
shape
:@
*
dtype0*
_output_shapes
: 
?
5Adam/output/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/output/kernel/m* 
_class
loc:@output/kernel*
_output_shapes
: 
?
Adam/output/kernel/m/AssignAssignVariableOpAdam/output/kernel/m&Adam/output/kernel/m/Initializer/zeros* 
_class
loc:@output/kernel*
dtype0
?
(Adam/output/kernel/m/Read/ReadVariableOpReadVariableOpAdam/output/kernel/m* 
_class
loc:@output/kernel*
dtype0*
_output_shapes

:@

?
$Adam/output/bias/m/Initializer/zerosConst*
_class
loc:@output/bias*
valueB
*    *
dtype0*
_output_shapes
:

?
Adam/output/bias/mVarHandleOp*#
shared_nameAdam/output/bias/m*
_class
loc:@output/bias*
	container *
shape:
*
dtype0*
_output_shapes
: 
?
3Adam/output/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/output/bias/m*
_class
loc:@output/bias*
_output_shapes
: 
?
Adam/output/bias/m/AssignAssignVariableOpAdam/output/bias/m$Adam/output/bias/m/Initializer/zeros*
_class
loc:@output/bias*
dtype0
?
&Adam/output/bias/m/Read/ReadVariableOpReadVariableOpAdam/output/bias/m*
_class
loc:@output/bias*
dtype0*
_output_shapes
:

?
3Adam/fc1/kernel/v/Initializer/zeros/shape_as_tensorConst*
_class
loc:@fc1/kernel*
valueB"  @   *
dtype0*
_output_shapes
:
?
)Adam/fc1/kernel/v/Initializer/zeros/ConstConst*
_class
loc:@fc1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
?
#Adam/fc1/kernel/v/Initializer/zerosFill3Adam/fc1/kernel/v/Initializer/zeros/shape_as_tensor)Adam/fc1/kernel/v/Initializer/zeros/Const*
T0*
_class
loc:@fc1/kernel*

index_type0*
_output_shapes
:	?@
?
Adam/fc1/kernel/vVarHandleOp*"
shared_nameAdam/fc1/kernel/v*
_class
loc:@fc1/kernel*
	container *
shape:	?@*
dtype0*
_output_shapes
: 
?
2Adam/fc1/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/fc1/kernel/v*
_class
loc:@fc1/kernel*
_output_shapes
: 
?
Adam/fc1/kernel/v/AssignAssignVariableOpAdam/fc1/kernel/v#Adam/fc1/kernel/v/Initializer/zeros*
_class
loc:@fc1/kernel*
dtype0
?
%Adam/fc1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/fc1/kernel/v*
_class
loc:@fc1/kernel*
dtype0*
_output_shapes
:	?@
?
!Adam/fc1/bias/v/Initializer/zerosConst*
_class
loc:@fc1/bias*
valueB@*    *
dtype0*
_output_shapes
:@
?
Adam/fc1/bias/vVarHandleOp* 
shared_nameAdam/fc1/bias/v*
_class
loc:@fc1/bias*
	container *
shape:@*
dtype0*
_output_shapes
: 
?
0Adam/fc1/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/fc1/bias/v*
_class
loc:@fc1/bias*
_output_shapes
: 
?
Adam/fc1/bias/v/AssignAssignVariableOpAdam/fc1/bias/v!Adam/fc1/bias/v/Initializer/zeros*
_class
loc:@fc1/bias*
dtype0
?
#Adam/fc1/bias/v/Read/ReadVariableOpReadVariableOpAdam/fc1/bias/v*
_class
loc:@fc1/bias*
dtype0*
_output_shapes
:@
?
3Adam/fc2/kernel/v/Initializer/zeros/shape_as_tensorConst*
_class
loc:@fc2/kernel*
valueB"@   @   *
dtype0*
_output_shapes
:
?
)Adam/fc2/kernel/v/Initializer/zeros/ConstConst*
_class
loc:@fc2/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
?
#Adam/fc2/kernel/v/Initializer/zerosFill3Adam/fc2/kernel/v/Initializer/zeros/shape_as_tensor)Adam/fc2/kernel/v/Initializer/zeros/Const*
T0*
_class
loc:@fc2/kernel*

index_type0*
_output_shapes

:@@
?
Adam/fc2/kernel/vVarHandleOp*"
shared_nameAdam/fc2/kernel/v*
_class
loc:@fc2/kernel*
	container *
shape
:@@*
dtype0*
_output_shapes
: 
?
2Adam/fc2/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/fc2/kernel/v*
_class
loc:@fc2/kernel*
_output_shapes
: 
?
Adam/fc2/kernel/v/AssignAssignVariableOpAdam/fc2/kernel/v#Adam/fc2/kernel/v/Initializer/zeros*
_class
loc:@fc2/kernel*
dtype0
?
%Adam/fc2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/fc2/kernel/v*
_class
loc:@fc2/kernel*
dtype0*
_output_shapes

:@@
?
!Adam/fc2/bias/v/Initializer/zerosConst*
_class
loc:@fc2/bias*
valueB@*    *
dtype0*
_output_shapes
:@
?
Adam/fc2/bias/vVarHandleOp* 
shared_nameAdam/fc2/bias/v*
_class
loc:@fc2/bias*
	container *
shape:@*
dtype0*
_output_shapes
: 
?
0Adam/fc2/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/fc2/bias/v*
_class
loc:@fc2/bias*
_output_shapes
: 
?
Adam/fc2/bias/v/AssignAssignVariableOpAdam/fc2/bias/v!Adam/fc2/bias/v/Initializer/zeros*
_class
loc:@fc2/bias*
dtype0
?
#Adam/fc2/bias/v/Read/ReadVariableOpReadVariableOpAdam/fc2/bias/v*
_class
loc:@fc2/bias*
dtype0*
_output_shapes
:@
?
&Adam/output/kernel/v/Initializer/zerosConst* 
_class
loc:@output/kernel*
valueB@
*    *
dtype0*
_output_shapes

:@

?
Adam/output/kernel/vVarHandleOp*%
shared_nameAdam/output/kernel/v* 
_class
loc:@output/kernel*
	container *
shape
:@
*
dtype0*
_output_shapes
: 
?
5Adam/output/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/output/kernel/v* 
_class
loc:@output/kernel*
_output_shapes
: 
?
Adam/output/kernel/v/AssignAssignVariableOpAdam/output/kernel/v&Adam/output/kernel/v/Initializer/zeros* 
_class
loc:@output/kernel*
dtype0
?
(Adam/output/kernel/v/Read/ReadVariableOpReadVariableOpAdam/output/kernel/v* 
_class
loc:@output/kernel*
dtype0*
_output_shapes

:@

?
$Adam/output/bias/v/Initializer/zerosConst*
_class
loc:@output/bias*
valueB
*    *
dtype0*
_output_shapes
:

?
Adam/output/bias/vVarHandleOp*#
shared_nameAdam/output/bias/v*
_class
loc:@output/bias*
	container *
shape:
*
dtype0*
_output_shapes
: 
?
3Adam/output/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/output/bias/v*
_class
loc:@output/bias*
_output_shapes
: 
?
Adam/output/bias/v/AssignAssignVariableOpAdam/output/bias/v$Adam/output/bias/v/Initializer/zeros*
_class
loc:@output/bias*
dtype0
?
&Adam/output/bias/v/Read/ReadVariableOpReadVariableOpAdam/output/bias/v*
_class
loc:@output/bias*
dtype0*
_output_shapes
:

f
!Adam/Adam/update_fc1/kernel/ConstConst*
valueB
 *???3*
dtype0*
_output_shapes
: 
l
*Adam/Adam/update_fc1/kernel/ReadVariableOpReadVariableOp	Adam/iter*
dtype0	*
_output_shapes
: 
c
!Adam/Adam/update_fc1/kernel/add/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
?
Adam/Adam/update_fc1/kernel/addAdd*Adam/Adam/update_fc1/kernel/ReadVariableOp!Adam/Adam/update_fc1/kernel/add/y*
T0	*
_output_shapes
: 
?
 Adam/Adam/update_fc1/kernel/CastCastAdam/Adam/update_fc1/kernel/add*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
r
.Adam/Adam/update_fc1/kernel/Pow/ReadVariableOpReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
?
Adam/Adam/update_fc1/kernel/PowPow.Adam/Adam/update_fc1/kernel/Pow/ReadVariableOp Adam/Adam/update_fc1/kernel/Cast*
T0*
_output_shapes
: 
t
0Adam/Adam/update_fc1/kernel/Pow_1/ReadVariableOpReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
?
!Adam/Adam/update_fc1/kernel/Pow_1Pow0Adam/Adam/update_fc1/kernel/Pow_1/ReadVariableOp Adam/Adam/update_fc1/kernel/Cast*
T0*
_output_shapes
: 
?
<Adam/Adam/update_fc1/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpAdam/learning_rate*
dtype0*
_output_shapes
: 
?
>Adam/Adam/update_fc1/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
?
>Adam/Adam/update_fc1/kernel/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
?
-Adam/Adam/update_fc1/kernel/ResourceApplyAdamResourceApplyAdam
fc1/kernelAdam/fc1/kernel/mAdam/fc1/kernel/vAdam/Adam/update_fc1/kernel/Pow!Adam/Adam/update_fc1/kernel/Pow_1<Adam/Adam/update_fc1/kernel/ResourceApplyAdam/ReadVariableOp>Adam/Adam/update_fc1/kernel/ResourceApplyAdam/ReadVariableOp_1>Adam/Adam/update_fc1/kernel/ResourceApplyAdam/ReadVariableOp_2!Adam/Adam/update_fc1/kernel/Const'Adam/gradients/fc1/MatMul_grad/MatMul_1*
use_locking(*
T0*
use_nesterov( 
d
Adam/Adam/update_fc1/bias/ConstConst*
valueB
 *???3*
dtype0*
_output_shapes
: 
j
(Adam/Adam/update_fc1/bias/ReadVariableOpReadVariableOp	Adam/iter*
dtype0	*
_output_shapes
: 
a
Adam/Adam/update_fc1/bias/add/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
?
Adam/Adam/update_fc1/bias/addAdd(Adam/Adam/update_fc1/bias/ReadVariableOpAdam/Adam/update_fc1/bias/add/y*
T0	*
_output_shapes
: 
?
Adam/Adam/update_fc1/bias/CastCastAdam/Adam/update_fc1/bias/add*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
p
,Adam/Adam/update_fc1/bias/Pow/ReadVariableOpReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
?
Adam/Adam/update_fc1/bias/PowPow,Adam/Adam/update_fc1/bias/Pow/ReadVariableOpAdam/Adam/update_fc1/bias/Cast*
T0*
_output_shapes
: 
r
.Adam/Adam/update_fc1/bias/Pow_1/ReadVariableOpReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
?
Adam/Adam/update_fc1/bias/Pow_1Pow.Adam/Adam/update_fc1/bias/Pow_1/ReadVariableOpAdam/Adam/update_fc1/bias/Cast*
T0*
_output_shapes
: 
?
:Adam/Adam/update_fc1/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpAdam/learning_rate*
dtype0*
_output_shapes
: 
?
<Adam/Adam/update_fc1/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
?
<Adam/Adam/update_fc1/bias/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
?
+Adam/Adam/update_fc1/bias/ResourceApplyAdamResourceApplyAdamfc1/biasAdam/fc1/bias/mAdam/fc1/bias/vAdam/Adam/update_fc1/bias/PowAdam/Adam/update_fc1/bias/Pow_1:Adam/Adam/update_fc1/bias/ResourceApplyAdam/ReadVariableOp<Adam/Adam/update_fc1/bias/ResourceApplyAdam/ReadVariableOp_1<Adam/Adam/update_fc1/bias/ResourceApplyAdam/ReadVariableOp_2Adam/Adam/update_fc1/bias/Const+Adam/gradients/fc1/BiasAdd_grad/BiasAddGrad*
use_locking(*
T0*
use_nesterov( 
f
!Adam/Adam/update_fc2/kernel/ConstConst*
valueB
 *???3*
dtype0*
_output_shapes
: 
l
*Adam/Adam/update_fc2/kernel/ReadVariableOpReadVariableOp	Adam/iter*
dtype0	*
_output_shapes
: 
c
!Adam/Adam/update_fc2/kernel/add/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
?
Adam/Adam/update_fc2/kernel/addAdd*Adam/Adam/update_fc2/kernel/ReadVariableOp!Adam/Adam/update_fc2/kernel/add/y*
T0	*
_output_shapes
: 
?
 Adam/Adam/update_fc2/kernel/CastCastAdam/Adam/update_fc2/kernel/add*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
r
.Adam/Adam/update_fc2/kernel/Pow/ReadVariableOpReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
?
Adam/Adam/update_fc2/kernel/PowPow.Adam/Adam/update_fc2/kernel/Pow/ReadVariableOp Adam/Adam/update_fc2/kernel/Cast*
T0*
_output_shapes
: 
t
0Adam/Adam/update_fc2/kernel/Pow_1/ReadVariableOpReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
?
!Adam/Adam/update_fc2/kernel/Pow_1Pow0Adam/Adam/update_fc2/kernel/Pow_1/ReadVariableOp Adam/Adam/update_fc2/kernel/Cast*
T0*
_output_shapes
: 
?
<Adam/Adam/update_fc2/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpAdam/learning_rate*
dtype0*
_output_shapes
: 
?
>Adam/Adam/update_fc2/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
?
>Adam/Adam/update_fc2/kernel/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
?
-Adam/Adam/update_fc2/kernel/ResourceApplyAdamResourceApplyAdam
fc2/kernelAdam/fc2/kernel/mAdam/fc2/kernel/vAdam/Adam/update_fc2/kernel/Pow!Adam/Adam/update_fc2/kernel/Pow_1<Adam/Adam/update_fc2/kernel/ResourceApplyAdam/ReadVariableOp>Adam/Adam/update_fc2/kernel/ResourceApplyAdam/ReadVariableOp_1>Adam/Adam/update_fc2/kernel/ResourceApplyAdam/ReadVariableOp_2!Adam/Adam/update_fc2/kernel/Const'Adam/gradients/fc2/MatMul_grad/MatMul_1*
use_locking(*
T0*
use_nesterov( 
d
Adam/Adam/update_fc2/bias/ConstConst*
valueB
 *???3*
dtype0*
_output_shapes
: 
j
(Adam/Adam/update_fc2/bias/ReadVariableOpReadVariableOp	Adam/iter*
dtype0	*
_output_shapes
: 
a
Adam/Adam/update_fc2/bias/add/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
?
Adam/Adam/update_fc2/bias/addAdd(Adam/Adam/update_fc2/bias/ReadVariableOpAdam/Adam/update_fc2/bias/add/y*
T0	*
_output_shapes
: 
?
Adam/Adam/update_fc2/bias/CastCastAdam/Adam/update_fc2/bias/add*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
p
,Adam/Adam/update_fc2/bias/Pow/ReadVariableOpReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
?
Adam/Adam/update_fc2/bias/PowPow,Adam/Adam/update_fc2/bias/Pow/ReadVariableOpAdam/Adam/update_fc2/bias/Cast*
T0*
_output_shapes
: 
r
.Adam/Adam/update_fc2/bias/Pow_1/ReadVariableOpReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
?
Adam/Adam/update_fc2/bias/Pow_1Pow.Adam/Adam/update_fc2/bias/Pow_1/ReadVariableOpAdam/Adam/update_fc2/bias/Cast*
T0*
_output_shapes
: 
?
:Adam/Adam/update_fc2/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpAdam/learning_rate*
dtype0*
_output_shapes
: 
?
<Adam/Adam/update_fc2/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
?
<Adam/Adam/update_fc2/bias/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
?
+Adam/Adam/update_fc2/bias/ResourceApplyAdamResourceApplyAdamfc2/biasAdam/fc2/bias/mAdam/fc2/bias/vAdam/Adam/update_fc2/bias/PowAdam/Adam/update_fc2/bias/Pow_1:Adam/Adam/update_fc2/bias/ResourceApplyAdam/ReadVariableOp<Adam/Adam/update_fc2/bias/ResourceApplyAdam/ReadVariableOp_1<Adam/Adam/update_fc2/bias/ResourceApplyAdam/ReadVariableOp_2Adam/Adam/update_fc2/bias/Const+Adam/gradients/fc2/BiasAdd_grad/BiasAddGrad*
use_locking(*
T0*
use_nesterov( 
i
$Adam/Adam/update_output/kernel/ConstConst*
valueB
 *???3*
dtype0*
_output_shapes
: 
o
-Adam/Adam/update_output/kernel/ReadVariableOpReadVariableOp	Adam/iter*
dtype0	*
_output_shapes
: 
f
$Adam/Adam/update_output/kernel/add/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
?
"Adam/Adam/update_output/kernel/addAdd-Adam/Adam/update_output/kernel/ReadVariableOp$Adam/Adam/update_output/kernel/add/y*
T0	*
_output_shapes
: 
?
#Adam/Adam/update_output/kernel/CastCast"Adam/Adam/update_output/kernel/add*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
u
1Adam/Adam/update_output/kernel/Pow/ReadVariableOpReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
?
"Adam/Adam/update_output/kernel/PowPow1Adam/Adam/update_output/kernel/Pow/ReadVariableOp#Adam/Adam/update_output/kernel/Cast*
T0*
_output_shapes
: 
w
3Adam/Adam/update_output/kernel/Pow_1/ReadVariableOpReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
?
$Adam/Adam/update_output/kernel/Pow_1Pow3Adam/Adam/update_output/kernel/Pow_1/ReadVariableOp#Adam/Adam/update_output/kernel/Cast*
T0*
_output_shapes
: 
?
?Adam/Adam/update_output/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpAdam/learning_rate*
dtype0*
_output_shapes
: 
?
AAdam/Adam/update_output/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
?
AAdam/Adam/update_output/kernel/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
?
0Adam/Adam/update_output/kernel/ResourceApplyAdamResourceApplyAdamoutput/kernelAdam/output/kernel/mAdam/output/kernel/v"Adam/Adam/update_output/kernel/Pow$Adam/Adam/update_output/kernel/Pow_1?Adam/Adam/update_output/kernel/ResourceApplyAdam/ReadVariableOpAAdam/Adam/update_output/kernel/ResourceApplyAdam/ReadVariableOp_1AAdam/Adam/update_output/kernel/ResourceApplyAdam/ReadVariableOp_2$Adam/Adam/update_output/kernel/Const*Adam/gradients/output/MatMul_grad/MatMul_1*
use_locking(*
T0*
use_nesterov( 
g
"Adam/Adam/update_output/bias/ConstConst*
valueB
 *???3*
dtype0*
_output_shapes
: 
m
+Adam/Adam/update_output/bias/ReadVariableOpReadVariableOp	Adam/iter*
dtype0	*
_output_shapes
: 
d
"Adam/Adam/update_output/bias/add/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
?
 Adam/Adam/update_output/bias/addAdd+Adam/Adam/update_output/bias/ReadVariableOp"Adam/Adam/update_output/bias/add/y*
T0	*
_output_shapes
: 
?
!Adam/Adam/update_output/bias/CastCast Adam/Adam/update_output/bias/add*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
s
/Adam/Adam/update_output/bias/Pow/ReadVariableOpReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
?
 Adam/Adam/update_output/bias/PowPow/Adam/Adam/update_output/bias/Pow/ReadVariableOp!Adam/Adam/update_output/bias/Cast*
T0*
_output_shapes
: 
u
1Adam/Adam/update_output/bias/Pow_1/ReadVariableOpReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
?
"Adam/Adam/update_output/bias/Pow_1Pow1Adam/Adam/update_output/bias/Pow_1/ReadVariableOp!Adam/Adam/update_output/bias/Cast*
T0*
_output_shapes
: 
?
=Adam/Adam/update_output/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpAdam/learning_rate*
dtype0*
_output_shapes
: 
?
?Adam/Adam/update_output/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
?
?Adam/Adam/update_output/bias/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
?
.Adam/Adam/update_output/bias/ResourceApplyAdamResourceApplyAdamoutput/biasAdam/output/bias/mAdam/output/bias/v Adam/Adam/update_output/bias/Pow"Adam/Adam/update_output/bias/Pow_1=Adam/Adam/update_output/bias/ResourceApplyAdam/ReadVariableOp?Adam/Adam/update_output/bias/ResourceApplyAdam/ReadVariableOp_1?Adam/Adam/update_output/bias/ResourceApplyAdam/ReadVariableOp_2"Adam/Adam/update_output/bias/Const.Adam/gradients/output/BiasAdd_grad/BiasAddGrad*
use_locking(*
T0*
use_nesterov( 
?
Adam/Adam/ConstConst,^Adam/Adam/update_fc1/bias/ResourceApplyAdam.^Adam/Adam/update_fc1/kernel/ResourceApplyAdam,^Adam/Adam/update_fc2/bias/ResourceApplyAdam.^Adam/Adam/update_fc2/kernel/ResourceApplyAdam/^Adam/Adam/update_output/bias/ResourceApplyAdam1^Adam/Adam/update_output/kernel/ResourceApplyAdam*
value	B	 R*
dtype0	*
_output_shapes
: 
]
Adam/Adam/AssignAddVariableOpAssignAddVariableOp	Adam/iterAdam/Adam/Const*
dtype0	
?
Adam/Adam/ReadVariableOpReadVariableOp	Adam/iter^Adam/Adam/AssignAddVariableOp,^Adam/Adam/update_fc1/bias/ResourceApplyAdam.^Adam/Adam/update_fc1/kernel/ResourceApplyAdam,^Adam/Adam/update_fc2/bias/ResourceApplyAdam.^Adam/Adam/update_fc2/kernel/ResourceApplyAdam/^Adam/Adam/update_output/bias/ResourceApplyAdam1^Adam/Adam/update_output/kernel/ResourceApplyAdam*
dtype0	*
_output_shapes
: 
H
training_1/group_depsNoOp^Adam/Adam/AssignAddVariableOp	^loss/mul
M
VarIsInitializedOp_6VarIsInitializedOp	Adam/iter*
_output_shapes
: 
V
VarIsInitializedOp_7VarIsInitializedOpAdam/output/bias/v*
_output_shapes
: 
O
VarIsInitializedOp_8VarIsInitializedOpAdam/beta_1*
_output_shapes
: 
S
VarIsInitializedOp_9VarIsInitializedOpAdam/fc2/bias/m*
_output_shapes
: 
W
VarIsInitializedOp_10VarIsInitializedOpAdam/output/bias/m*
_output_shapes
: 
J
VarIsInitializedOp_11VarIsInitializedOpcount*
_output_shapes
: 
T
VarIsInitializedOp_12VarIsInitializedOpAdam/fc1/bias/v*
_output_shapes
: 
V
VarIsInitializedOp_13VarIsInitializedOpAdam/fc1/kernel/v*
_output_shapes
: 
Y
VarIsInitializedOp_14VarIsInitializedOpAdam/output/kernel/v*
_output_shapes
: 
W
VarIsInitializedOp_15VarIsInitializedOpAdam/learning_rate*
_output_shapes
: 
P
VarIsInitializedOp_16VarIsInitializedOpAdam/beta_2*
_output_shapes
: 
Y
VarIsInitializedOp_17VarIsInitializedOpAdam/output/kernel/m*
_output_shapes
: 
V
VarIsInitializedOp_18VarIsInitializedOpAdam/fc1/kernel/m*
_output_shapes
: 
T
VarIsInitializedOp_19VarIsInitializedOpAdam/fc2/bias/v*
_output_shapes
: 
O
VarIsInitializedOp_20VarIsInitializedOp
Adam/decay*
_output_shapes
: 
T
VarIsInitializedOp_21VarIsInitializedOpAdam/fc1/bias/m*
_output_shapes
: 
V
VarIsInitializedOp_22VarIsInitializedOpAdam/fc2/kernel/m*
_output_shapes
: 
V
VarIsInitializedOp_23VarIsInitializedOpAdam/fc2/kernel/v*
_output_shapes
: 
J
VarIsInitializedOp_24VarIsInitializedOptotal*
_output_shapes
: 
?
init_1NoOp^Adam/beta_1/Assign^Adam/beta_2/Assign^Adam/decay/Assign^Adam/fc1/bias/m/Assign^Adam/fc1/bias/v/Assign^Adam/fc1/kernel/m/Assign^Adam/fc1/kernel/v/Assign^Adam/fc2/bias/m/Assign^Adam/fc2/bias/v/Assign^Adam/fc2/kernel/m/Assign^Adam/fc2/kernel/v/Assign^Adam/iter/Assign^Adam/learning_rate/Assign^Adam/output/bias/m/Assign^Adam/output/bias/v/Assign^Adam/output/kernel/m/Assign^Adam/output/kernel/v/Assign^count/Assign^total/Assign
N
Placeholder_6Placeholder*
shape: *
dtype0	*
_output_shapes
: 
M
AssignVariableOp_6AssignVariableOp	Adam/iterPlaceholder_6*
dtype0	
g
ReadVariableOp_6ReadVariableOp	Adam/iter^AssignVariableOp_6*
dtype0	*
_output_shapes
: 
`
Placeholder_7Placeholder*
shape:	?@*
dtype0*
_output_shapes
:	?@
U
AssignVariableOp_7AssignVariableOpAdam/fc1/kernel/mPlaceholder_7*
dtype0
x
ReadVariableOp_7ReadVariableOpAdam/fc1/kernel/m^AssignVariableOp_7*
dtype0*
_output_shapes
:	?@
V
Placeholder_8Placeholder*
shape:@*
dtype0*
_output_shapes
:@
S
AssignVariableOp_8AssignVariableOpAdam/fc1/bias/mPlaceholder_8*
dtype0
q
ReadVariableOp_8ReadVariableOpAdam/fc1/bias/m^AssignVariableOp_8*
dtype0*
_output_shapes
:@
^
Placeholder_9Placeholder*
shape
:@@*
dtype0*
_output_shapes

:@@
U
AssignVariableOp_9AssignVariableOpAdam/fc2/kernel/mPlaceholder_9*
dtype0
w
ReadVariableOp_9ReadVariableOpAdam/fc2/kernel/m^AssignVariableOp_9*
dtype0*
_output_shapes

:@@
W
Placeholder_10Placeholder*
shape:@*
dtype0*
_output_shapes
:@
U
AssignVariableOp_10AssignVariableOpAdam/fc2/bias/mPlaceholder_10*
dtype0
s
ReadVariableOp_10ReadVariableOpAdam/fc2/bias/m^AssignVariableOp_10*
dtype0*
_output_shapes
:@
_
Placeholder_11Placeholder*
shape
:@
*
dtype0*
_output_shapes

:@

Z
AssignVariableOp_11AssignVariableOpAdam/output/kernel/mPlaceholder_11*
dtype0
|
ReadVariableOp_11ReadVariableOpAdam/output/kernel/m^AssignVariableOp_11*
dtype0*
_output_shapes

:@

W
Placeholder_12Placeholder*
shape:
*
dtype0*
_output_shapes
:

X
AssignVariableOp_12AssignVariableOpAdam/output/bias/mPlaceholder_12*
dtype0
v
ReadVariableOp_12ReadVariableOpAdam/output/bias/m^AssignVariableOp_12*
dtype0*
_output_shapes
:

a
Placeholder_13Placeholder*
shape:	?@*
dtype0*
_output_shapes
:	?@
W
AssignVariableOp_13AssignVariableOpAdam/fc1/kernel/vPlaceholder_13*
dtype0
z
ReadVariableOp_13ReadVariableOpAdam/fc1/kernel/v^AssignVariableOp_13*
dtype0*
_output_shapes
:	?@
W
Placeholder_14Placeholder*
shape:@*
dtype0*
_output_shapes
:@
U
AssignVariableOp_14AssignVariableOpAdam/fc1/bias/vPlaceholder_14*
dtype0
s
ReadVariableOp_14ReadVariableOpAdam/fc1/bias/v^AssignVariableOp_14*
dtype0*
_output_shapes
:@
_
Placeholder_15Placeholder*
shape
:@@*
dtype0*
_output_shapes

:@@
W
AssignVariableOp_15AssignVariableOpAdam/fc2/kernel/vPlaceholder_15*
dtype0
y
ReadVariableOp_15ReadVariableOpAdam/fc2/kernel/v^AssignVariableOp_15*
dtype0*
_output_shapes

:@@
W
Placeholder_16Placeholder*
shape:@*
dtype0*
_output_shapes
:@
U
AssignVariableOp_16AssignVariableOpAdam/fc2/bias/vPlaceholder_16*
dtype0
s
ReadVariableOp_16ReadVariableOpAdam/fc2/bias/v^AssignVariableOp_16*
dtype0*
_output_shapes
:@
_
Placeholder_17Placeholder*
shape
:@
*
dtype0*
_output_shapes

:@

Z
AssignVariableOp_17AssignVariableOpAdam/output/kernel/vPlaceholder_17*
dtype0
|
ReadVariableOp_17ReadVariableOpAdam/output/kernel/v^AssignVariableOp_17*
dtype0*
_output_shapes

:@

W
Placeholder_18Placeholder*
shape:
*
dtype0*
_output_shapes
:

X
AssignVariableOp_18AssignVariableOpAdam/output/bias/vPlaceholder_18*
dtype0
v
ReadVariableOp_18ReadVariableOpAdam/output/bias/v^AssignVariableOp_18*
dtype0*
_output_shapes
:

Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
shape: *
dtype0*
_output_shapes
: 
e

save/ConstPlaceholderWithDefaultsave/filename*
shape: *
dtype0*
_output_shapes
: 
?
save/StringJoin/inputs_1Const*<
value3B1 B+_temp_53d7f64fe02d45cc83aad71499026a2c/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
\
save/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
?
save/SaveV2/tensor_namesConst*?
value?B?BAdam/beta_1BAdam/beta_2B
Adam/decayBAdam/fc1/bias/mBAdam/fc1/bias/vBAdam/fc1/kernel/mBAdam/fc1/kernel/vBAdam/fc2/bias/mBAdam/fc2/bias/vBAdam/fc2/kernel/mBAdam/fc2/kernel/vB	Adam/iterBAdam/learning_rateBAdam/output/bias/mBAdam/output/bias/vBAdam/output/kernel/mBAdam/output/kernel/vBfc1/biasB
fc1/kernelBfc2/biasB
fc2/kernelBoutput/biasBoutput/kernel*
dtype0*
_output_shapes
:
?
save/SaveV2/shape_and_slicesConst*A
value8B6B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
?
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp#Adam/fc1/bias/m/Read/ReadVariableOp#Adam/fc1/bias/v/Read/ReadVariableOp%Adam/fc1/kernel/m/Read/ReadVariableOp%Adam/fc1/kernel/v/Read/ReadVariableOp#Adam/fc2/bias/m/Read/ReadVariableOp#Adam/fc2/bias/v/Read/ReadVariableOp%Adam/fc2/kernel/m/Read/ReadVariableOp%Adam/fc2/kernel/v/Read/ReadVariableOpAdam/iter/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp&Adam/output/bias/m/Read/ReadVariableOp&Adam/output/bias/v/Read/ReadVariableOp(Adam/output/kernel/m/Read/ReadVariableOp(Adam/output/kernel/v/Read/ReadVariableOpfc1/bias/Read/ReadVariableOpfc1/kernel/Read/ReadVariableOpfc2/bias/Read/ReadVariableOpfc2/kernel/Read/ReadVariableOpoutput/bias/Read/ReadVariableOp!output/kernel/Read/ReadVariableOp*%
dtypes
2	
?
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
?
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
T0*

axis *
N*
_output_shapes
:
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency*
T0*
_output_shapes
: 
?
save/RestoreV2/tensor_namesConst*?
value?B?BAdam/beta_1BAdam/beta_2B
Adam/decayBAdam/fc1/bias/mBAdam/fc1/bias/vBAdam/fc1/kernel/mBAdam/fc1/kernel/vBAdam/fc2/bias/mBAdam/fc2/bias/vBAdam/fc2/kernel/mBAdam/fc2/kernel/vB	Adam/iterBAdam/learning_rateBAdam/output/bias/mBAdam/output/bias/vBAdam/output/kernel/mBAdam/output/kernel/vBfc1/biasB
fc1/kernelBfc2/biasB
fc2/kernelBoutput/biasBoutput/kernel*
dtype0*
_output_shapes
:
?
save/RestoreV2/shape_and_slicesConst*A
value8B6B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
?
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*%
dtypes
2	*p
_output_shapes^
\:::::::::::::::::::::::
N
save/Identity_1Identitysave/RestoreV2*
T0*
_output_shapes
:
T
save/AssignVariableOpAssignVariableOpAdam/beta_1save/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:1*
T0*
_output_shapes
:
V
save/AssignVariableOp_1AssignVariableOpAdam/beta_2save/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:2*
T0*
_output_shapes
:
U
save/AssignVariableOp_2AssignVariableOp
Adam/decaysave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:3*
T0*
_output_shapes
:
Z
save/AssignVariableOp_3AssignVariableOpAdam/fc1/bias/msave/Identity_4*
dtype0
P
save/Identity_5Identitysave/RestoreV2:4*
T0*
_output_shapes
:
Z
save/AssignVariableOp_4AssignVariableOpAdam/fc1/bias/vsave/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:5*
T0*
_output_shapes
:
\
save/AssignVariableOp_5AssignVariableOpAdam/fc1/kernel/msave/Identity_6*
dtype0
P
save/Identity_7Identitysave/RestoreV2:6*
T0*
_output_shapes
:
\
save/AssignVariableOp_6AssignVariableOpAdam/fc1/kernel/vsave/Identity_7*
dtype0
P
save/Identity_8Identitysave/RestoreV2:7*
T0*
_output_shapes
:
Z
save/AssignVariableOp_7AssignVariableOpAdam/fc2/bias/msave/Identity_8*
dtype0
P
save/Identity_9Identitysave/RestoreV2:8*
T0*
_output_shapes
:
Z
save/AssignVariableOp_8AssignVariableOpAdam/fc2/bias/vsave/Identity_9*
dtype0
Q
save/Identity_10Identitysave/RestoreV2:9*
T0*
_output_shapes
:
]
save/AssignVariableOp_9AssignVariableOpAdam/fc2/kernel/msave/Identity_10*
dtype0
R
save/Identity_11Identitysave/RestoreV2:10*
T0*
_output_shapes
:
^
save/AssignVariableOp_10AssignVariableOpAdam/fc2/kernel/vsave/Identity_11*
dtype0
R
save/Identity_12Identitysave/RestoreV2:11*
T0	*
_output_shapes
:
V
save/AssignVariableOp_11AssignVariableOp	Adam/itersave/Identity_12*
dtype0	
R
save/Identity_13Identitysave/RestoreV2:12*
T0*
_output_shapes
:
_
save/AssignVariableOp_12AssignVariableOpAdam/learning_ratesave/Identity_13*
dtype0
R
save/Identity_14Identitysave/RestoreV2:13*
T0*
_output_shapes
:
_
save/AssignVariableOp_13AssignVariableOpAdam/output/bias/msave/Identity_14*
dtype0
R
save/Identity_15Identitysave/RestoreV2:14*
T0*
_output_shapes
:
_
save/AssignVariableOp_14AssignVariableOpAdam/output/bias/vsave/Identity_15*
dtype0
R
save/Identity_16Identitysave/RestoreV2:15*
T0*
_output_shapes
:
a
save/AssignVariableOp_15AssignVariableOpAdam/output/kernel/msave/Identity_16*
dtype0
R
save/Identity_17Identitysave/RestoreV2:16*
T0*
_output_shapes
:
a
save/AssignVariableOp_16AssignVariableOpAdam/output/kernel/vsave/Identity_17*
dtype0
R
save/Identity_18Identitysave/RestoreV2:17*
T0*
_output_shapes
:
U
save/AssignVariableOp_17AssignVariableOpfc1/biassave/Identity_18*
dtype0
R
save/Identity_19Identitysave/RestoreV2:18*
T0*
_output_shapes
:
W
save/AssignVariableOp_18AssignVariableOp
fc1/kernelsave/Identity_19*
dtype0
R
save/Identity_20Identitysave/RestoreV2:19*
T0*
_output_shapes
:
U
save/AssignVariableOp_19AssignVariableOpfc2/biassave/Identity_20*
dtype0
R
save/Identity_21Identitysave/RestoreV2:20*
T0*
_output_shapes
:
W
save/AssignVariableOp_20AssignVariableOp
fc2/kernelsave/Identity_21*
dtype0
R
save/Identity_22Identitysave/RestoreV2:21*
T0*
_output_shapes
:
X
save/AssignVariableOp_21AssignVariableOpoutput/biassave/Identity_22*
dtype0
R
save/Identity_23Identitysave/RestoreV2:22*
T0*
_output_shapes
:
Z
save/AssignVariableOp_22AssignVariableOpoutput/kernelsave/Identity_23*
dtype0
?
save/restore_shardNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_12^save/AssignVariableOp_13^save/AssignVariableOp_14^save/AssignVariableOp_15^save/AssignVariableOp_16^save/AssignVariableOp_17^save/AssignVariableOp_18^save/AssignVariableOp_19^save/AssignVariableOp_2^save/AssignVariableOp_20^save/AssignVariableOp_21^save/AssignVariableOp_22^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9
-
save/restore_allNoOp^save/restore_shard "&<
save/Const:0save/Identity:0save/restore_all (5 @F8"?
trainable_variables??
p
fc1/kernel:0fc1/kernel/Assign fc1/kernel/Read/ReadVariableOp:0(2'fc1/kernel/Initializer/random_uniform:08
_

fc1/bias:0fc1/bias/Assignfc1/bias/Read/ReadVariableOp:0(2fc1/bias/Initializer/zeros:08
p
fc2/kernel:0fc2/kernel/Assign fc2/kernel/Read/ReadVariableOp:0(2'fc2/kernel/Initializer/random_uniform:08
_

fc2/bias:0fc2/bias/Assignfc2/bias/Read/ReadVariableOp:0(2fc2/bias/Initializer/zeros:08
|
output/kernel:0output/kernel/Assign#output/kernel/Read/ReadVariableOp:0(2*output/kernel/Initializer/random_uniform:08
k
output/bias:0output/bias/Assign!output/bias/Read/ReadVariableOp:0(2output/bias/Initializer/zeros:08"?
	variables??
p
fc1/kernel:0fc1/kernel/Assign fc1/kernel/Read/ReadVariableOp:0(2'fc1/kernel/Initializer/random_uniform:08
_

fc1/bias:0fc1/bias/Assignfc1/bias/Read/ReadVariableOp:0(2fc1/bias/Initializer/zeros:08
p
fc2/kernel:0fc2/kernel/Assign fc2/kernel/Read/ReadVariableOp:0(2'fc2/kernel/Initializer/random_uniform:08
_

fc2/bias:0fc2/bias/Assignfc2/bias/Read/ReadVariableOp:0(2fc2/bias/Initializer/zeros:08
|
output/kernel:0output/kernel/Assign#output/kernel/Read/ReadVariableOp:0(2*output/kernel/Initializer/random_uniform:08
k
output/bias:0output/bias/Assign!output/bias/Read/ReadVariableOp:0(2output/bias/Initializer/zeros:08
c
Adam/iter:0Adam/iter/AssignAdam/iter/Read/ReadVariableOp:0(2Adam/iter/Initializer/zeros:0H
s
Adam/beta_1:0Adam/beta_1/Assign!Adam/beta_1/Read/ReadVariableOp:0(2'Adam/beta_1/Initializer/initial_value:0H
s
Adam/beta_2:0Adam/beta_2/Assign!Adam/beta_2/Read/ReadVariableOp:0(2'Adam/beta_2/Initializer/initial_value:0H
o
Adam/decay:0Adam/decay/Assign Adam/decay/Read/ReadVariableOp:0(2&Adam/decay/Initializer/initial_value:0H
?
Adam/learning_rate:0Adam/learning_rate/Assign(Adam/learning_rate/Read/ReadVariableOp:0(2.Adam/learning_rate/Initializer/initial_value:0H
?
Adam/fc1/kernel/m:0Adam/fc1/kernel/m/Assign'Adam/fc1/kernel/m/Read/ReadVariableOp:0(2%Adam/fc1/kernel/m/Initializer/zeros:0
y
Adam/fc1/bias/m:0Adam/fc1/bias/m/Assign%Adam/fc1/bias/m/Read/ReadVariableOp:0(2#Adam/fc1/bias/m/Initializer/zeros:0
?
Adam/fc2/kernel/m:0Adam/fc2/kernel/m/Assign'Adam/fc2/kernel/m/Read/ReadVariableOp:0(2%Adam/fc2/kernel/m/Initializer/zeros:0
y
Adam/fc2/bias/m:0Adam/fc2/bias/m/Assign%Adam/fc2/bias/m/Read/ReadVariableOp:0(2#Adam/fc2/bias/m/Initializer/zeros:0
?
Adam/output/kernel/m:0Adam/output/kernel/m/Assign*Adam/output/kernel/m/Read/ReadVariableOp:0(2(Adam/output/kernel/m/Initializer/zeros:0
?
Adam/output/bias/m:0Adam/output/bias/m/Assign(Adam/output/bias/m/Read/ReadVariableOp:0(2&Adam/output/bias/m/Initializer/zeros:0
?
Adam/fc1/kernel/v:0Adam/fc1/kernel/v/Assign'Adam/fc1/kernel/v/Read/ReadVariableOp:0(2%Adam/fc1/kernel/v/Initializer/zeros:0
y
Adam/fc1/bias/v:0Adam/fc1/bias/v/Assign%Adam/fc1/bias/v/Read/ReadVariableOp:0(2#Adam/fc1/bias/v/Initializer/zeros:0
?
Adam/fc2/kernel/v:0Adam/fc2/kernel/v/Assign'Adam/fc2/kernel/v/Read/ReadVariableOp:0(2%Adam/fc2/kernel/v/Initializer/zeros:0
y
Adam/fc2/bias/v:0Adam/fc2/bias/v/Assign%Adam/fc2/bias/v/Read/ReadVariableOp:0(2#Adam/fc2/bias/v/Initializer/zeros:0
?
Adam/output/kernel/v:0Adam/output/kernel/v/Assign*Adam/output/kernel/v/Read/ReadVariableOp:0(2(Adam/output/kernel/v/Initializer/zeros:0
?
Adam/output/bias/v:0Adam/output/bias/v/Assign(Adam/output/bias/v/Read/ReadVariableOp:0(2&Adam/output/bias/v/Initializer/zeros:0*?
serving_default?
2
input_image#
fc1_input:0??????????;
output/Softmax:0'
output/Softmax:0?????????
tensorflow/serving/predict