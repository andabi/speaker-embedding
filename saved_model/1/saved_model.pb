∙щ
╙-м-
:
Add
x"T
y"T
z"T"
Ttype:
2	
Ы
ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
x
Assign
ref"TА

value"T

output_ref"TА"	
Ttype"
validate_shapebool("
use_lockingbool(Ш
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
ы
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

y
Enter	
data"T
output"T"	
Ttype"

frame_namestring"
is_constantbool( "
parallel_iterationsint

B
Equal
x"T
y"T
z
"
Ttype:
2	
Р
)
Exit	
data"T
output"T"	
Ttype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
4
Fill
dims

value"T
output"T"	
Ttype
М
Gather
params"Tparams
indices"Tindices
output"Tparams"
validate_indicesbool("
Tparamstype"
Tindicestype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
\
ListDiff
x"T
y"T
out"T
idx"out_idx"	
Ttype"
out_idxtype0:
2	
$

LogicalAnd
x

y

z
Р
!
LoopCond	
input


output

p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
╘
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
Н
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р
2
NextIteration	
data"T
output"T"	
Ttype
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
6
Pow
x"T
y"T
z"T"
Ttype:

2	
Н
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
D
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
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
0
Sigmoid
x"T
y"T"
Ttype:

2
9
Softmax
logits"T
softmax"T"
Ttype:
2
У
#SparseSoftmaxCrossEntropyWithLogits
features"T
labels"Tlabels	
loss"T
backprop"T"
Ttype:
2"
Tlabelstype0	:
2	
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	Р
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
2
StopGradient

input"T
output"T"	
Ttype
Ў
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
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
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
-
Tanh
x"T
y"T"
Ttype:

2
{
TensorArrayGatherV3

handle
indices
flow_in
value"dtype"
dtypetype"
element_shapeshape:И
Y
TensorArrayReadV3

handle	
index
flow_in
value"dtype"
dtypetypeИ
d
TensorArrayScatterV3

handle
indices

value"T
flow_in
flow_out"	
TtypeИ
9
TensorArraySizeV3

handle
flow_in
sizeИ
▐
TensorArrayV3
size

handle
flow"
dtypetype"
element_shapeshape:"
dynamic_sizebool( "
clear_after_readbool("$
identical_element_shapesbool( "
tensor_array_namestring И
`
TensorArrayWriteV3

handle	
index

value"T
flow_in
flow_out"	
TtypeИ
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
s

VariableV2
ref"dtypeА"
shapeshape"
dtypetype"
	containerstring "
shared_namestring И"serve*1.5.02v1.5.0-0-g37aa430d84╠З
j
wavPlaceholder*
shape:         АЇ*
dtype0*)
_output_shapes
:         АЇ
n
xPlaceholder*
dtype0*,
_output_shapes
:         їP*!
shape:         їP
e

speaker_idPlaceholder*
dtype0*#
_output_shapes
:         *
shape:         
│
7embedding/dense/kernel/Initializer/random_uniform/shapeConst*
valueB"P      *)
_class
loc:@embedding/dense/kernel*
dtype0*
_output_shapes
:
е
5embedding/dense/kernel/Initializer/random_uniform/minConst*
valueB
 *▄-╬╜*)
_class
loc:@embedding/dense/kernel*
dtype0*
_output_shapes
: 
е
5embedding/dense/kernel/Initializer/random_uniform/maxConst*
valueB
 *▄-╬=*)
_class
loc:@embedding/dense/kernel*
dtype0*
_output_shapes
: 
Д
?embedding/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform7embedding/dense/kernel/Initializer/random_uniform/shape*

seed *
T0*)
_class
loc:@embedding/dense/kernel*
seed2 *
dtype0*
_output_shapes
:	PА
Ў
5embedding/dense/kernel/Initializer/random_uniform/subSub5embedding/dense/kernel/Initializer/random_uniform/max5embedding/dense/kernel/Initializer/random_uniform/min*
T0*)
_class
loc:@embedding/dense/kernel*
_output_shapes
: 
Й
5embedding/dense/kernel/Initializer/random_uniform/mulMul?embedding/dense/kernel/Initializer/random_uniform/RandomUniform5embedding/dense/kernel/Initializer/random_uniform/sub*
T0*)
_class
loc:@embedding/dense/kernel*
_output_shapes
:	PА
√
1embedding/dense/kernel/Initializer/random_uniformAdd5embedding/dense/kernel/Initializer/random_uniform/mul5embedding/dense/kernel/Initializer/random_uniform/min*
T0*)
_class
loc:@embedding/dense/kernel*
_output_shapes
:	PА
╖
embedding/dense/kernel
VariableV2*)
_class
loc:@embedding/dense/kernel*
	container *
shape:	PА*
dtype0*
_output_shapes
:	PА*
shared_name 
Ё
embedding/dense/kernel/AssignAssignembedding/dense/kernel1embedding/dense/kernel/Initializer/random_uniform*
use_locking(*
T0*)
_class
loc:@embedding/dense/kernel*
validate_shape(*
_output_shapes
:	PА
Ф
embedding/dense/kernel/readIdentityembedding/dense/kernel*
T0*)
_class
loc:@embedding/dense/kernel*
_output_shapes
:	PА
Ю
&embedding/dense/bias/Initializer/zerosConst*
valueBА*    *'
_class
loc:@embedding/dense/bias*
dtype0*
_output_shapes	
:А
л
embedding/dense/bias
VariableV2*'
_class
loc:@embedding/dense/bias*
	container *
shape:А*
dtype0*
_output_shapes	
:А*
shared_name 
█
embedding/dense/bias/AssignAssignembedding/dense/bias&embedding/dense/bias/Initializer/zeros*
use_locking(*
T0*'
_class
loc:@embedding/dense/bias*
validate_shape(*
_output_shapes	
:А
К
embedding/dense/bias/readIdentityembedding/dense/bias*
T0*'
_class
loc:@embedding/dense/bias*
_output_shapes	
:А
`
embedding/dense/Tensordot/ShapeShapex*
T0*
out_type0*
_output_shapes
:
`
embedding/dense/Tensordot/RankConst*
value	B :*
dtype0*
_output_shapes
: 
h
embedding/dense/Tensordot/axesConst*
valueB:*
dtype0*
_output_shapes
:
j
(embedding/dense/Tensordot/GreaterEqual/yConst*
value	B : *
dtype0*
_output_shapes
: 
е
&embedding/dense/Tensordot/GreaterEqualGreaterEqualembedding/dense/Tensordot/axes(embedding/dense/Tensordot/GreaterEqual/y*
T0*
_output_shapes
:
В
embedding/dense/Tensordot/CastCast&embedding/dense/Tensordot/GreaterEqual*

SrcT0
*
_output_shapes
:*

DstT0
Й
embedding/dense/Tensordot/mulMulembedding/dense/Tensordot/Castembedding/dense/Tensordot/axes*
T0*
_output_shapes
:
b
 embedding/dense/Tensordot/Less/yConst*
value	B : *
dtype0*
_output_shapes
: 
Н
embedding/dense/Tensordot/LessLessembedding/dense/Tensordot/axes embedding/dense/Tensordot/Less/y*
T0*
_output_shapes
:
|
 embedding/dense/Tensordot/Cast_1Castembedding/dense/Tensordot/Less*

SrcT0
*
_output_shapes
:*

DstT0
Й
embedding/dense/Tensordot/addAddembedding/dense/Tensordot/axesembedding/dense/Tensordot/Rank*
T0*
_output_shapes
:
М
embedding/dense/Tensordot/mul_1Mul embedding/dense/Tensordot/Cast_1embedding/dense/Tensordot/add*
T0*
_output_shapes
:
Л
embedding/dense/Tensordot/add_1Addembedding/dense/Tensordot/mulembedding/dense/Tensordot/mul_1*
T0*
_output_shapes
:
g
%embedding/dense/Tensordot/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
g
%embedding/dense/Tensordot/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
╛
embedding/dense/Tensordot/rangeRange%embedding/dense/Tensordot/range/startembedding/dense/Tensordot/Rank%embedding/dense/Tensordot/range/delta*

Tidx0*
_output_shapes
:
╝
"embedding/dense/Tensordot/ListDiffListDiffembedding/dense/Tensordot/rangeembedding/dense/Tensordot/add_1*
T0*
out_idx0*2
_output_shapes 
:         :         
╦
 embedding/dense/Tensordot/GatherGatherembedding/dense/Tensordot/Shape"embedding/dense/Tensordot/ListDiff*
Tindices0*
Tparams0*
validate_indices(*#
_output_shapes
:         
┴
"embedding/dense/Tensordot/Gather_1Gatherembedding/dense/Tensordot/Shapeembedding/dense/Tensordot/add_1*
Tparams0*
validate_indices(*
_output_shapes
:*
Tindices0
i
embedding/dense/Tensordot/ConstConst*
valueB: *
dtype0*
_output_shapes
:
з
embedding/dense/Tensordot/ProdProd embedding/dense/Tensordot/Gatherembedding/dense/Tensordot/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
k
!embedding/dense/Tensordot/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
н
 embedding/dense/Tensordot/Prod_1Prod"embedding/dense/Tensordot/Gather_1!embedding/dense/Tensordot/Const_1*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
g
%embedding/dense/Tensordot/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
▄
 embedding/dense/Tensordot/concatConcatV2"embedding/dense/Tensordot/Gather_1 embedding/dense/Tensordot/Gather%embedding/dense/Tensordot/concat/axis*
T0*
N*#
_output_shapes
:         *

Tidx0
i
'embedding/dense/Tensordot/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
▀
"embedding/dense/Tensordot/concat_1ConcatV2"embedding/dense/Tensordot/ListDiffembedding/dense/Tensordot/add_1'embedding/dense/Tensordot/concat_1/axis*

Tidx0*
T0*
N*#
_output_shapes
:         
г
embedding/dense/Tensordot/stackPackembedding/dense/Tensordot/Prod embedding/dense/Tensordot/Prod_1*
T0*

axis *
N*
_output_shapes
:
м
#embedding/dense/Tensordot/transpose	Transposex"embedding/dense/Tensordot/concat_1*
T0*=
_output_shapes+
):'                           *
Tperm0
╗
!embedding/dense/Tensordot/ReshapeReshape#embedding/dense/Tensordot/transposeembedding/dense/Tensordot/stack*
T0*
Tshape0*0
_output_shapes
:                  
{
*embedding/dense/Tensordot/transpose_1/permConst*
valueB"       *
dtype0*
_output_shapes
:
▓
%embedding/dense/Tensordot/transpose_1	Transposeembedding/dense/kernel/read*embedding/dense/Tensordot/transpose_1/perm*
T0*
_output_shapes
:	PА*
Tperm0
z
)embedding/dense/Tensordot/Reshape_1/shapeConst*
valueB"P      *
dtype0*
_output_shapes
:
╕
#embedding/dense/Tensordot/Reshape_1Reshape%embedding/dense/Tensordot/transpose_1)embedding/dense/Tensordot/Reshape_1/shape*
T0*
Tshape0*
_output_shapes
:	PА
╦
 embedding/dense/Tensordot/MatMulMatMul!embedding/dense/Tensordot/Reshape#embedding/dense/Tensordot/Reshape_1*
T0*(
_output_shapes
:         А*
transpose_a( *
transpose_b( 
l
!embedding/dense/Tensordot/Const_2Const*
valueB:А*
dtype0*
_output_shapes
:
i
'embedding/dense/Tensordot/concat_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
▀
"embedding/dense/Tensordot/concat_2ConcatV2 embedding/dense/Tensordot/Gather!embedding/dense/Tensordot/Const_2'embedding/dense/Tensordot/concat_2/axis*

Tidx0*
T0*
N*#
_output_shapes
:         
░
embedding/dense/TensordotReshape embedding/dense/Tensordot/MatMul"embedding/dense/Tensordot/concat_2*
T0*
Tshape0*-
_output_shapes
:         їА
з
embedding/dense/BiasAddBiasAddembedding/dense/Tensordotembedding/dense/bias/read*
T0*
data_formatNHWC*-
_output_shapes
:         їА
m
embedding/dense/ReluReluembedding/dense/BiasAdd*
T0*-
_output_shapes
:         їА
э
Rembedding/conv1d_banks/num_1/conv1d/conv1d/kernel/Initializer/random_uniform/shapeConst*!
valueB"         *D
_class:
86loc:@embedding/conv1d_banks/num_1/conv1d/conv1d/kernel*
dtype0*
_output_shapes
:
█
Pembedding/conv1d_banks/num_1/conv1d/conv1d/kernel/Initializer/random_uniform/minConst*
valueB
 *q─Ь╜*D
_class:
86loc:@embedding/conv1d_banks/num_1/conv1d/conv1d/kernel*
dtype0*
_output_shapes
: 
█
Pembedding/conv1d_banks/num_1/conv1d/conv1d/kernel/Initializer/random_uniform/maxConst*
valueB
 *q─Ь=*D
_class:
86loc:@embedding/conv1d_banks/num_1/conv1d/conv1d/kernel*
dtype0*
_output_shapes
: 
┌
Zembedding/conv1d_banks/num_1/conv1d/conv1d/kernel/Initializer/random_uniform/RandomUniformRandomUniformRembedding/conv1d_banks/num_1/conv1d/conv1d/kernel/Initializer/random_uniform/shape*
dtype0*$
_output_shapes
:АА*

seed *
T0*D
_class:
86loc:@embedding/conv1d_banks/num_1/conv1d/conv1d/kernel*
seed2 
т
Pembedding/conv1d_banks/num_1/conv1d/conv1d/kernel/Initializer/random_uniform/subSubPembedding/conv1d_banks/num_1/conv1d/conv1d/kernel/Initializer/random_uniform/maxPembedding/conv1d_banks/num_1/conv1d/conv1d/kernel/Initializer/random_uniform/min*
T0*D
_class:
86loc:@embedding/conv1d_banks/num_1/conv1d/conv1d/kernel*
_output_shapes
: 
·
Pembedding/conv1d_banks/num_1/conv1d/conv1d/kernel/Initializer/random_uniform/mulMulZembedding/conv1d_banks/num_1/conv1d/conv1d/kernel/Initializer/random_uniform/RandomUniformPembedding/conv1d_banks/num_1/conv1d/conv1d/kernel/Initializer/random_uniform/sub*
T0*D
_class:
86loc:@embedding/conv1d_banks/num_1/conv1d/conv1d/kernel*$
_output_shapes
:АА
ь
Lembedding/conv1d_banks/num_1/conv1d/conv1d/kernel/Initializer/random_uniformAddPembedding/conv1d_banks/num_1/conv1d/conv1d/kernel/Initializer/random_uniform/mulPembedding/conv1d_banks/num_1/conv1d/conv1d/kernel/Initializer/random_uniform/min*
T0*D
_class:
86loc:@embedding/conv1d_banks/num_1/conv1d/conv1d/kernel*$
_output_shapes
:АА
ў
1embedding/conv1d_banks/num_1/conv1d/conv1d/kernel
VariableV2*
dtype0*$
_output_shapes
:АА*
shared_name *D
_class:
86loc:@embedding/conv1d_banks/num_1/conv1d/conv1d/kernel*
	container *
shape:АА
с
8embedding/conv1d_banks/num_1/conv1d/conv1d/kernel/AssignAssign1embedding/conv1d_banks/num_1/conv1d/conv1d/kernelLembedding/conv1d_banks/num_1/conv1d/conv1d/kernel/Initializer/random_uniform*
use_locking(*
T0*D
_class:
86loc:@embedding/conv1d_banks/num_1/conv1d/conv1d/kernel*
validate_shape(*$
_output_shapes
:АА
ъ
6embedding/conv1d_banks/num_1/conv1d/conv1d/kernel/readIdentity1embedding/conv1d_banks/num_1/conv1d/conv1d/kernel*
T0*D
_class:
86loc:@embedding/conv1d_banks/num_1/conv1d/conv1d/kernel*$
_output_shapes
:АА
В
8embedding/conv1d_banks/num_1/conv1d/conv1d/dilation_rateConst*
valueB:*
dtype0*
_output_shapes
:
Д
Bembedding/conv1d_banks/num_1/conv1d/conv1d/conv1d_1/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
ю
>embedding/conv1d_banks/num_1/conv1d/conv1d/conv1d_1/ExpandDims
ExpandDimsembedding/dense/ReluBembedding/conv1d_banks/num_1/conv1d/conv1d/conv1d_1/ExpandDims/dim*
T0*1
_output_shapes
:         їА*

Tdim0
Ж
Dembedding/conv1d_banks/num_1/conv1d/conv1d/conv1d_1/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
Л
@embedding/conv1d_banks/num_1/conv1d/conv1d/conv1d_1/ExpandDims_1
ExpandDims6embedding/conv1d_banks/num_1/conv1d/conv1d/kernel/readDembedding/conv1d_banks/num_1/conv1d/conv1d/conv1d_1/ExpandDims_1/dim*
T0*(
_output_shapes
:АА*

Tdim0
Ё
:embedding/conv1d_banks/num_1/conv1d/conv1d/conv1d_1/Conv2DConv2D>embedding/conv1d_banks/num_1/conv1d/conv1d/conv1d_1/ExpandDims@embedding/conv1d_banks/num_1/conv1d/conv1d/conv1d_1/ExpandDims_1*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*1
_output_shapes
:         їА
╤
;embedding/conv1d_banks/num_1/conv1d/conv1d/conv1d_1/SqueezeSqueeze:embedding/conv1d_banks/num_1/conv1d/conv1d/conv1d_1/Conv2D*
squeeze_dims
*
T0*-
_output_shapes
:         їА
П
Eembedding/conv1d_banks/num_1/normalize/moments/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
У
3embedding/conv1d_banks/num_1/normalize/moments/meanMean;embedding/conv1d_banks/num_1/conv1d/conv1d/conv1d_1/SqueezeEembedding/conv1d_banks/num_1/normalize/moments/mean/reduction_indices*

Tidx0*
	keep_dims(*
T0*,
_output_shapes
:         А
╖
;embedding/conv1d_banks/num_1/normalize/moments/StopGradientStopGradient3embedding/conv1d_banks/num_1/normalize/moments/mean*
T0*,
_output_shapes
:         А
З
@embedding/conv1d_banks/num_1/normalize/moments/SquaredDifferenceSquaredDifference;embedding/conv1d_banks/num_1/conv1d/conv1d/conv1d_1/Squeeze;embedding/conv1d_banks/num_1/normalize/moments/StopGradient*
T0*-
_output_shapes
:         їА
У
Iembedding/conv1d_banks/num_1/normalize/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
а
7embedding/conv1d_banks/num_1/normalize/moments/varianceMean@embedding/conv1d_banks/num_1/normalize/moments/SquaredDifferenceIembedding/conv1d_banks/num_1/normalize/moments/variance/reduction_indices*
T0*,
_output_shapes
:         А*

Tidx0*
	keep_dims(
╠
=embedding/conv1d_banks/num_1/normalize/beta/Initializer/zerosConst*
valueBА*    *>
_class4
20loc:@embedding/conv1d_banks/num_1/normalize/beta*
dtype0*
_output_shapes	
:А
┘
+embedding/conv1d_banks/num_1/normalize/beta
VariableV2*
shape:А*
dtype0*
_output_shapes	
:А*
shared_name *>
_class4
20loc:@embedding/conv1d_banks/num_1/normalize/beta*
	container 
╖
2embedding/conv1d_banks/num_1/normalize/beta/AssignAssign+embedding/conv1d_banks/num_1/normalize/beta=embedding/conv1d_banks/num_1/normalize/beta/Initializer/zeros*
use_locking(*
T0*>
_class4
20loc:@embedding/conv1d_banks/num_1/normalize/beta*
validate_shape(*
_output_shapes	
:А
╧
0embedding/conv1d_banks/num_1/normalize/beta/readIdentity+embedding/conv1d_banks/num_1/normalize/beta*
T0*>
_class4
20loc:@embedding/conv1d_banks/num_1/normalize/beta*
_output_shapes	
:А
═
=embedding/conv1d_banks/num_1/normalize/gamma/Initializer/onesConst*
valueBА*  А?*?
_class5
31loc:@embedding/conv1d_banks/num_1/normalize/gamma*
dtype0*
_output_shapes	
:А
█
,embedding/conv1d_banks/num_1/normalize/gamma
VariableV2*?
_class5
31loc:@embedding/conv1d_banks/num_1/normalize/gamma*
	container *
shape:А*
dtype0*
_output_shapes	
:А*
shared_name 
║
3embedding/conv1d_banks/num_1/normalize/gamma/AssignAssign,embedding/conv1d_banks/num_1/normalize/gamma=embedding/conv1d_banks/num_1/normalize/gamma/Initializer/ones*
T0*?
_class5
31loc:@embedding/conv1d_banks/num_1/normalize/gamma*
validate_shape(*
_output_shapes	
:А*
use_locking(
╥
1embedding/conv1d_banks/num_1/normalize/gamma/readIdentity,embedding/conv1d_banks/num_1/normalize/gamma*
T0*?
_class5
31loc:@embedding/conv1d_banks/num_1/normalize/gamma*
_output_shapes	
:А
█
*embedding/conv1d_banks/num_1/normalize/subSub;embedding/conv1d_banks/num_1/conv1d/conv1d/conv1d_1/Squeeze3embedding/conv1d_banks/num_1/normalize/moments/mean*
T0*-
_output_shapes
:         їА
q
,embedding/conv1d_banks/num_1/normalize/add/yConst*
valueB
 *w╠+2*
dtype0*
_output_shapes
: 
╧
*embedding/conv1d_banks/num_1/normalize/addAdd7embedding/conv1d_banks/num_1/normalize/moments/variance,embedding/conv1d_banks/num_1/normalize/add/y*
T0*,
_output_shapes
:         А
q
,embedding/conv1d_banks/num_1/normalize/pow/yConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
┬
*embedding/conv1d_banks/num_1/normalize/powPow*embedding/conv1d_banks/num_1/normalize/add,embedding/conv1d_banks/num_1/normalize/pow/y*
T0*,
_output_shapes
:         А
┼
*embedding/conv1d_banks/num_1/normalize/divRealDiv*embedding/conv1d_banks/num_1/normalize/sub*embedding/conv1d_banks/num_1/normalize/pow*
T0*-
_output_shapes
:         їА
╚
*embedding/conv1d_banks/num_1/normalize/mulMul1embedding/conv1d_banks/num_1/normalize/gamma/read*embedding/conv1d_banks/num_1/normalize/div*
T0*-
_output_shapes
:         їА
╔
,embedding/conv1d_banks/num_1/normalize/add_1Add*embedding/conv1d_banks/num_1/normalize/mul0embedding/conv1d_banks/num_1/normalize/beta/read*
T0*-
_output_shapes
:         їА
П
!embedding/conv1d_banks/num_1/ReluRelu,embedding/conv1d_banks/num_1/normalize/add_1*
T0*-
_output_shapes
:         їА
э
Rembedding/conv1d_banks/num_2/conv1d/conv1d/kernel/Initializer/random_uniform/shapeConst*!
valueB"         *D
_class:
86loc:@embedding/conv1d_banks/num_2/conv1d/conv1d/kernel*
dtype0*
_output_shapes
:
█
Pembedding/conv1d_banks/num_2/conv1d/conv1d/kernel/Initializer/random_uniform/minConst*
valueB
 *╫│]╜*D
_class:
86loc:@embedding/conv1d_banks/num_2/conv1d/conv1d/kernel*
dtype0*
_output_shapes
: 
█
Pembedding/conv1d_banks/num_2/conv1d/conv1d/kernel/Initializer/random_uniform/maxConst*
valueB
 *╫│]=*D
_class:
86loc:@embedding/conv1d_banks/num_2/conv1d/conv1d/kernel*
dtype0*
_output_shapes
: 
┌
Zembedding/conv1d_banks/num_2/conv1d/conv1d/kernel/Initializer/random_uniform/RandomUniformRandomUniformRembedding/conv1d_banks/num_2/conv1d/conv1d/kernel/Initializer/random_uniform/shape*
dtype0*$
_output_shapes
:АА*

seed *
T0*D
_class:
86loc:@embedding/conv1d_banks/num_2/conv1d/conv1d/kernel*
seed2 
т
Pembedding/conv1d_banks/num_2/conv1d/conv1d/kernel/Initializer/random_uniform/subSubPembedding/conv1d_banks/num_2/conv1d/conv1d/kernel/Initializer/random_uniform/maxPembedding/conv1d_banks/num_2/conv1d/conv1d/kernel/Initializer/random_uniform/min*
T0*D
_class:
86loc:@embedding/conv1d_banks/num_2/conv1d/conv1d/kernel*
_output_shapes
: 
·
Pembedding/conv1d_banks/num_2/conv1d/conv1d/kernel/Initializer/random_uniform/mulMulZembedding/conv1d_banks/num_2/conv1d/conv1d/kernel/Initializer/random_uniform/RandomUniformPembedding/conv1d_banks/num_2/conv1d/conv1d/kernel/Initializer/random_uniform/sub*
T0*D
_class:
86loc:@embedding/conv1d_banks/num_2/conv1d/conv1d/kernel*$
_output_shapes
:АА
ь
Lembedding/conv1d_banks/num_2/conv1d/conv1d/kernel/Initializer/random_uniformAddPembedding/conv1d_banks/num_2/conv1d/conv1d/kernel/Initializer/random_uniform/mulPembedding/conv1d_banks/num_2/conv1d/conv1d/kernel/Initializer/random_uniform/min*
T0*D
_class:
86loc:@embedding/conv1d_banks/num_2/conv1d/conv1d/kernel*$
_output_shapes
:АА
ў
1embedding/conv1d_banks/num_2/conv1d/conv1d/kernel
VariableV2*
shape:АА*
dtype0*$
_output_shapes
:АА*
shared_name *D
_class:
86loc:@embedding/conv1d_banks/num_2/conv1d/conv1d/kernel*
	container 
с
8embedding/conv1d_banks/num_2/conv1d/conv1d/kernel/AssignAssign1embedding/conv1d_banks/num_2/conv1d/conv1d/kernelLembedding/conv1d_banks/num_2/conv1d/conv1d/kernel/Initializer/random_uniform*
T0*D
_class:
86loc:@embedding/conv1d_banks/num_2/conv1d/conv1d/kernel*
validate_shape(*$
_output_shapes
:АА*
use_locking(
ъ
6embedding/conv1d_banks/num_2/conv1d/conv1d/kernel/readIdentity1embedding/conv1d_banks/num_2/conv1d/conv1d/kernel*
T0*D
_class:
86loc:@embedding/conv1d_banks/num_2/conv1d/conv1d/kernel*$
_output_shapes
:АА
В
8embedding/conv1d_banks/num_2/conv1d/conv1d/dilation_rateConst*
valueB:*
dtype0*
_output_shapes
:
Д
Bembedding/conv1d_banks/num_2/conv1d/conv1d/conv1d_1/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
ю
>embedding/conv1d_banks/num_2/conv1d/conv1d/conv1d_1/ExpandDims
ExpandDimsembedding/dense/ReluBembedding/conv1d_banks/num_2/conv1d/conv1d/conv1d_1/ExpandDims/dim*
T0*1
_output_shapes
:         їА*

Tdim0
Ж
Dembedding/conv1d_banks/num_2/conv1d/conv1d/conv1d_1/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
Л
@embedding/conv1d_banks/num_2/conv1d/conv1d/conv1d_1/ExpandDims_1
ExpandDims6embedding/conv1d_banks/num_2/conv1d/conv1d/kernel/readDembedding/conv1d_banks/num_2/conv1d/conv1d/conv1d_1/ExpandDims_1/dim*

Tdim0*
T0*(
_output_shapes
:АА
Ё
:embedding/conv1d_banks/num_2/conv1d/conv1d/conv1d_1/Conv2DConv2D>embedding/conv1d_banks/num_2/conv1d/conv1d/conv1d_1/ExpandDims@embedding/conv1d_banks/num_2/conv1d/conv1d/conv1d_1/ExpandDims_1*
paddingSAME*1
_output_shapes
:         їА*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
╤
;embedding/conv1d_banks/num_2/conv1d/conv1d/conv1d_1/SqueezeSqueeze:embedding/conv1d_banks/num_2/conv1d/conv1d/conv1d_1/Conv2D*
squeeze_dims
*
T0*-
_output_shapes
:         їА
П
Eembedding/conv1d_banks/num_2/normalize/moments/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
У
3embedding/conv1d_banks/num_2/normalize/moments/meanMean;embedding/conv1d_banks/num_2/conv1d/conv1d/conv1d_1/SqueezeEembedding/conv1d_banks/num_2/normalize/moments/mean/reduction_indices*

Tidx0*
	keep_dims(*
T0*,
_output_shapes
:         А
╖
;embedding/conv1d_banks/num_2/normalize/moments/StopGradientStopGradient3embedding/conv1d_banks/num_2/normalize/moments/mean*
T0*,
_output_shapes
:         А
З
@embedding/conv1d_banks/num_2/normalize/moments/SquaredDifferenceSquaredDifference;embedding/conv1d_banks/num_2/conv1d/conv1d/conv1d_1/Squeeze;embedding/conv1d_banks/num_2/normalize/moments/StopGradient*
T0*-
_output_shapes
:         їА
У
Iembedding/conv1d_banks/num_2/normalize/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
а
7embedding/conv1d_banks/num_2/normalize/moments/varianceMean@embedding/conv1d_banks/num_2/normalize/moments/SquaredDifferenceIembedding/conv1d_banks/num_2/normalize/moments/variance/reduction_indices*

Tidx0*
	keep_dims(*
T0*,
_output_shapes
:         А
╠
=embedding/conv1d_banks/num_2/normalize/beta/Initializer/zerosConst*
valueBА*    *>
_class4
20loc:@embedding/conv1d_banks/num_2/normalize/beta*
dtype0*
_output_shapes	
:А
┘
+embedding/conv1d_banks/num_2/normalize/beta
VariableV2*
shape:А*
dtype0*
_output_shapes	
:А*
shared_name *>
_class4
20loc:@embedding/conv1d_banks/num_2/normalize/beta*
	container 
╖
2embedding/conv1d_banks/num_2/normalize/beta/AssignAssign+embedding/conv1d_banks/num_2/normalize/beta=embedding/conv1d_banks/num_2/normalize/beta/Initializer/zeros*
use_locking(*
T0*>
_class4
20loc:@embedding/conv1d_banks/num_2/normalize/beta*
validate_shape(*
_output_shapes	
:А
╧
0embedding/conv1d_banks/num_2/normalize/beta/readIdentity+embedding/conv1d_banks/num_2/normalize/beta*
T0*>
_class4
20loc:@embedding/conv1d_banks/num_2/normalize/beta*
_output_shapes	
:А
═
=embedding/conv1d_banks/num_2/normalize/gamma/Initializer/onesConst*
valueBА*  А?*?
_class5
31loc:@embedding/conv1d_banks/num_2/normalize/gamma*
dtype0*
_output_shapes	
:А
█
,embedding/conv1d_banks/num_2/normalize/gamma
VariableV2*
shared_name *?
_class5
31loc:@embedding/conv1d_banks/num_2/normalize/gamma*
	container *
shape:А*
dtype0*
_output_shapes	
:А
║
3embedding/conv1d_banks/num_2/normalize/gamma/AssignAssign,embedding/conv1d_banks/num_2/normalize/gamma=embedding/conv1d_banks/num_2/normalize/gamma/Initializer/ones*
T0*?
_class5
31loc:@embedding/conv1d_banks/num_2/normalize/gamma*
validate_shape(*
_output_shapes	
:А*
use_locking(
╥
1embedding/conv1d_banks/num_2/normalize/gamma/readIdentity,embedding/conv1d_banks/num_2/normalize/gamma*
T0*?
_class5
31loc:@embedding/conv1d_banks/num_2/normalize/gamma*
_output_shapes	
:А
█
*embedding/conv1d_banks/num_2/normalize/subSub;embedding/conv1d_banks/num_2/conv1d/conv1d/conv1d_1/Squeeze3embedding/conv1d_banks/num_2/normalize/moments/mean*
T0*-
_output_shapes
:         їА
q
,embedding/conv1d_banks/num_2/normalize/add/yConst*
valueB
 *w╠+2*
dtype0*
_output_shapes
: 
╧
*embedding/conv1d_banks/num_2/normalize/addAdd7embedding/conv1d_banks/num_2/normalize/moments/variance,embedding/conv1d_banks/num_2/normalize/add/y*
T0*,
_output_shapes
:         А
q
,embedding/conv1d_banks/num_2/normalize/pow/yConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
┬
*embedding/conv1d_banks/num_2/normalize/powPow*embedding/conv1d_banks/num_2/normalize/add,embedding/conv1d_banks/num_2/normalize/pow/y*
T0*,
_output_shapes
:         А
┼
*embedding/conv1d_banks/num_2/normalize/divRealDiv*embedding/conv1d_banks/num_2/normalize/sub*embedding/conv1d_banks/num_2/normalize/pow*
T0*-
_output_shapes
:         їА
╚
*embedding/conv1d_banks/num_2/normalize/mulMul1embedding/conv1d_banks/num_2/normalize/gamma/read*embedding/conv1d_banks/num_2/normalize/div*
T0*-
_output_shapes
:         їА
╔
,embedding/conv1d_banks/num_2/normalize/add_1Add*embedding/conv1d_banks/num_2/normalize/mul0embedding/conv1d_banks/num_2/normalize/beta/read*
T0*-
_output_shapes
:         їА
П
!embedding/conv1d_banks/num_2/ReluRelu,embedding/conv1d_banks/num_2/normalize/add_1*
T0*-
_output_shapes
:         їА
э
Rembedding/conv1d_banks/num_3/conv1d/conv1d/kernel/Initializer/random_uniform/shapeConst*!
valueB"         *D
_class:
86loc:@embedding/conv1d_banks/num_3/conv1d/conv1d/kernel*
dtype0*
_output_shapes
:
█
Pembedding/conv1d_banks/num_3/conv1d/conv1d/kernel/Initializer/random_uniform/minConst*
valueB
 *є5╜*D
_class:
86loc:@embedding/conv1d_banks/num_3/conv1d/conv1d/kernel*
dtype0*
_output_shapes
: 
█
Pembedding/conv1d_banks/num_3/conv1d/conv1d/kernel/Initializer/random_uniform/maxConst*
valueB
 *є5=*D
_class:
86loc:@embedding/conv1d_banks/num_3/conv1d/conv1d/kernel*
dtype0*
_output_shapes
: 
┌
Zembedding/conv1d_banks/num_3/conv1d/conv1d/kernel/Initializer/random_uniform/RandomUniformRandomUniformRembedding/conv1d_banks/num_3/conv1d/conv1d/kernel/Initializer/random_uniform/shape*
dtype0*$
_output_shapes
:АА*

seed *
T0*D
_class:
86loc:@embedding/conv1d_banks/num_3/conv1d/conv1d/kernel*
seed2 
т
Pembedding/conv1d_banks/num_3/conv1d/conv1d/kernel/Initializer/random_uniform/subSubPembedding/conv1d_banks/num_3/conv1d/conv1d/kernel/Initializer/random_uniform/maxPembedding/conv1d_banks/num_3/conv1d/conv1d/kernel/Initializer/random_uniform/min*
T0*D
_class:
86loc:@embedding/conv1d_banks/num_3/conv1d/conv1d/kernel*
_output_shapes
: 
·
Pembedding/conv1d_banks/num_3/conv1d/conv1d/kernel/Initializer/random_uniform/mulMulZembedding/conv1d_banks/num_3/conv1d/conv1d/kernel/Initializer/random_uniform/RandomUniformPembedding/conv1d_banks/num_3/conv1d/conv1d/kernel/Initializer/random_uniform/sub*
T0*D
_class:
86loc:@embedding/conv1d_banks/num_3/conv1d/conv1d/kernel*$
_output_shapes
:АА
ь
Lembedding/conv1d_banks/num_3/conv1d/conv1d/kernel/Initializer/random_uniformAddPembedding/conv1d_banks/num_3/conv1d/conv1d/kernel/Initializer/random_uniform/mulPembedding/conv1d_banks/num_3/conv1d/conv1d/kernel/Initializer/random_uniform/min*
T0*D
_class:
86loc:@embedding/conv1d_banks/num_3/conv1d/conv1d/kernel*$
_output_shapes
:АА
ў
1embedding/conv1d_banks/num_3/conv1d/conv1d/kernel
VariableV2*
dtype0*$
_output_shapes
:АА*
shared_name *D
_class:
86loc:@embedding/conv1d_banks/num_3/conv1d/conv1d/kernel*
	container *
shape:АА
с
8embedding/conv1d_banks/num_3/conv1d/conv1d/kernel/AssignAssign1embedding/conv1d_banks/num_3/conv1d/conv1d/kernelLembedding/conv1d_banks/num_3/conv1d/conv1d/kernel/Initializer/random_uniform*
use_locking(*
T0*D
_class:
86loc:@embedding/conv1d_banks/num_3/conv1d/conv1d/kernel*
validate_shape(*$
_output_shapes
:АА
ъ
6embedding/conv1d_banks/num_3/conv1d/conv1d/kernel/readIdentity1embedding/conv1d_banks/num_3/conv1d/conv1d/kernel*
T0*D
_class:
86loc:@embedding/conv1d_banks/num_3/conv1d/conv1d/kernel*$
_output_shapes
:АА
В
8embedding/conv1d_banks/num_3/conv1d/conv1d/dilation_rateConst*
valueB:*
dtype0*
_output_shapes
:
Д
Bembedding/conv1d_banks/num_3/conv1d/conv1d/conv1d_1/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
ю
>embedding/conv1d_banks/num_3/conv1d/conv1d/conv1d_1/ExpandDims
ExpandDimsembedding/dense/ReluBembedding/conv1d_banks/num_3/conv1d/conv1d/conv1d_1/ExpandDims/dim*

Tdim0*
T0*1
_output_shapes
:         їА
Ж
Dembedding/conv1d_banks/num_3/conv1d/conv1d/conv1d_1/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
Л
@embedding/conv1d_banks/num_3/conv1d/conv1d/conv1d_1/ExpandDims_1
ExpandDims6embedding/conv1d_banks/num_3/conv1d/conv1d/kernel/readDembedding/conv1d_banks/num_3/conv1d/conv1d/conv1d_1/ExpandDims_1/dim*
T0*(
_output_shapes
:АА*

Tdim0
Ё
:embedding/conv1d_banks/num_3/conv1d/conv1d/conv1d_1/Conv2DConv2D>embedding/conv1d_banks/num_3/conv1d/conv1d/conv1d_1/ExpandDims@embedding/conv1d_banks/num_3/conv1d/conv1d/conv1d_1/ExpandDims_1*
paddingSAME*1
_output_shapes
:         їА*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
╤
;embedding/conv1d_banks/num_3/conv1d/conv1d/conv1d_1/SqueezeSqueeze:embedding/conv1d_banks/num_3/conv1d/conv1d/conv1d_1/Conv2D*
squeeze_dims
*
T0*-
_output_shapes
:         їА
П
Eembedding/conv1d_banks/num_3/normalize/moments/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
У
3embedding/conv1d_banks/num_3/normalize/moments/meanMean;embedding/conv1d_banks/num_3/conv1d/conv1d/conv1d_1/SqueezeEembedding/conv1d_banks/num_3/normalize/moments/mean/reduction_indices*

Tidx0*
	keep_dims(*
T0*,
_output_shapes
:         А
╖
;embedding/conv1d_banks/num_3/normalize/moments/StopGradientStopGradient3embedding/conv1d_banks/num_3/normalize/moments/mean*
T0*,
_output_shapes
:         А
З
@embedding/conv1d_banks/num_3/normalize/moments/SquaredDifferenceSquaredDifference;embedding/conv1d_banks/num_3/conv1d/conv1d/conv1d_1/Squeeze;embedding/conv1d_banks/num_3/normalize/moments/StopGradient*
T0*-
_output_shapes
:         їА
У
Iembedding/conv1d_banks/num_3/normalize/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
а
7embedding/conv1d_banks/num_3/normalize/moments/varianceMean@embedding/conv1d_banks/num_3/normalize/moments/SquaredDifferenceIembedding/conv1d_banks/num_3/normalize/moments/variance/reduction_indices*
T0*,
_output_shapes
:         А*

Tidx0*
	keep_dims(
╠
=embedding/conv1d_banks/num_3/normalize/beta/Initializer/zerosConst*
valueBА*    *>
_class4
20loc:@embedding/conv1d_banks/num_3/normalize/beta*
dtype0*
_output_shapes	
:А
┘
+embedding/conv1d_banks/num_3/normalize/beta
VariableV2*
shape:А*
dtype0*
_output_shapes	
:А*
shared_name *>
_class4
20loc:@embedding/conv1d_banks/num_3/normalize/beta*
	container 
╖
2embedding/conv1d_banks/num_3/normalize/beta/AssignAssign+embedding/conv1d_banks/num_3/normalize/beta=embedding/conv1d_banks/num_3/normalize/beta/Initializer/zeros*
use_locking(*
T0*>
_class4
20loc:@embedding/conv1d_banks/num_3/normalize/beta*
validate_shape(*
_output_shapes	
:А
╧
0embedding/conv1d_banks/num_3/normalize/beta/readIdentity+embedding/conv1d_banks/num_3/normalize/beta*
T0*>
_class4
20loc:@embedding/conv1d_banks/num_3/normalize/beta*
_output_shapes	
:А
═
=embedding/conv1d_banks/num_3/normalize/gamma/Initializer/onesConst*
valueBА*  А?*?
_class5
31loc:@embedding/conv1d_banks/num_3/normalize/gamma*
dtype0*
_output_shapes	
:А
█
,embedding/conv1d_banks/num_3/normalize/gamma
VariableV2*?
_class5
31loc:@embedding/conv1d_banks/num_3/normalize/gamma*
	container *
shape:А*
dtype0*
_output_shapes	
:А*
shared_name 
║
3embedding/conv1d_banks/num_3/normalize/gamma/AssignAssign,embedding/conv1d_banks/num_3/normalize/gamma=embedding/conv1d_banks/num_3/normalize/gamma/Initializer/ones*
T0*?
_class5
31loc:@embedding/conv1d_banks/num_3/normalize/gamma*
validate_shape(*
_output_shapes	
:А*
use_locking(
╥
1embedding/conv1d_banks/num_3/normalize/gamma/readIdentity,embedding/conv1d_banks/num_3/normalize/gamma*
T0*?
_class5
31loc:@embedding/conv1d_banks/num_3/normalize/gamma*
_output_shapes	
:А
█
*embedding/conv1d_banks/num_3/normalize/subSub;embedding/conv1d_banks/num_3/conv1d/conv1d/conv1d_1/Squeeze3embedding/conv1d_banks/num_3/normalize/moments/mean*
T0*-
_output_shapes
:         їА
q
,embedding/conv1d_banks/num_3/normalize/add/yConst*
valueB
 *w╠+2*
dtype0*
_output_shapes
: 
╧
*embedding/conv1d_banks/num_3/normalize/addAdd7embedding/conv1d_banks/num_3/normalize/moments/variance,embedding/conv1d_banks/num_3/normalize/add/y*
T0*,
_output_shapes
:         А
q
,embedding/conv1d_banks/num_3/normalize/pow/yConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
┬
*embedding/conv1d_banks/num_3/normalize/powPow*embedding/conv1d_banks/num_3/normalize/add,embedding/conv1d_banks/num_3/normalize/pow/y*
T0*,
_output_shapes
:         А
┼
*embedding/conv1d_banks/num_3/normalize/divRealDiv*embedding/conv1d_banks/num_3/normalize/sub*embedding/conv1d_banks/num_3/normalize/pow*
T0*-
_output_shapes
:         їА
╚
*embedding/conv1d_banks/num_3/normalize/mulMul1embedding/conv1d_banks/num_3/normalize/gamma/read*embedding/conv1d_banks/num_3/normalize/div*
T0*-
_output_shapes
:         їА
╔
,embedding/conv1d_banks/num_3/normalize/add_1Add*embedding/conv1d_banks/num_3/normalize/mul0embedding/conv1d_banks/num_3/normalize/beta/read*
T0*-
_output_shapes
:         їА
П
!embedding/conv1d_banks/num_3/ReluRelu,embedding/conv1d_banks/num_3/normalize/add_1*
T0*-
_output_shapes
:         їА
э
Rembedding/conv1d_banks/num_4/conv1d/conv1d/kernel/Initializer/random_uniform/shapeConst*!
valueB"         *D
_class:
86loc:@embedding/conv1d_banks/num_4/conv1d/conv1d/kernel*
dtype0*
_output_shapes
:
█
Pembedding/conv1d_banks/num_4/conv1d/conv1d/kernel/Initializer/random_uniform/minConst*
valueB
 *q─╜*D
_class:
86loc:@embedding/conv1d_banks/num_4/conv1d/conv1d/kernel*
dtype0*
_output_shapes
: 
█
Pembedding/conv1d_banks/num_4/conv1d/conv1d/kernel/Initializer/random_uniform/maxConst*
valueB
 *q─=*D
_class:
86loc:@embedding/conv1d_banks/num_4/conv1d/conv1d/kernel*
dtype0*
_output_shapes
: 
┌
Zembedding/conv1d_banks/num_4/conv1d/conv1d/kernel/Initializer/random_uniform/RandomUniformRandomUniformRembedding/conv1d_banks/num_4/conv1d/conv1d/kernel/Initializer/random_uniform/shape*

seed *
T0*D
_class:
86loc:@embedding/conv1d_banks/num_4/conv1d/conv1d/kernel*
seed2 *
dtype0*$
_output_shapes
:АА
т
Pembedding/conv1d_banks/num_4/conv1d/conv1d/kernel/Initializer/random_uniform/subSubPembedding/conv1d_banks/num_4/conv1d/conv1d/kernel/Initializer/random_uniform/maxPembedding/conv1d_banks/num_4/conv1d/conv1d/kernel/Initializer/random_uniform/min*
T0*D
_class:
86loc:@embedding/conv1d_banks/num_4/conv1d/conv1d/kernel*
_output_shapes
: 
·
Pembedding/conv1d_banks/num_4/conv1d/conv1d/kernel/Initializer/random_uniform/mulMulZembedding/conv1d_banks/num_4/conv1d/conv1d/kernel/Initializer/random_uniform/RandomUniformPembedding/conv1d_banks/num_4/conv1d/conv1d/kernel/Initializer/random_uniform/sub*
T0*D
_class:
86loc:@embedding/conv1d_banks/num_4/conv1d/conv1d/kernel*$
_output_shapes
:АА
ь
Lembedding/conv1d_banks/num_4/conv1d/conv1d/kernel/Initializer/random_uniformAddPembedding/conv1d_banks/num_4/conv1d/conv1d/kernel/Initializer/random_uniform/mulPembedding/conv1d_banks/num_4/conv1d/conv1d/kernel/Initializer/random_uniform/min*
T0*D
_class:
86loc:@embedding/conv1d_banks/num_4/conv1d/conv1d/kernel*$
_output_shapes
:АА
ў
1embedding/conv1d_banks/num_4/conv1d/conv1d/kernel
VariableV2*
shared_name *D
_class:
86loc:@embedding/conv1d_banks/num_4/conv1d/conv1d/kernel*
	container *
shape:АА*
dtype0*$
_output_shapes
:АА
с
8embedding/conv1d_banks/num_4/conv1d/conv1d/kernel/AssignAssign1embedding/conv1d_banks/num_4/conv1d/conv1d/kernelLembedding/conv1d_banks/num_4/conv1d/conv1d/kernel/Initializer/random_uniform*
use_locking(*
T0*D
_class:
86loc:@embedding/conv1d_banks/num_4/conv1d/conv1d/kernel*
validate_shape(*$
_output_shapes
:АА
ъ
6embedding/conv1d_banks/num_4/conv1d/conv1d/kernel/readIdentity1embedding/conv1d_banks/num_4/conv1d/conv1d/kernel*
T0*D
_class:
86loc:@embedding/conv1d_banks/num_4/conv1d/conv1d/kernel*$
_output_shapes
:АА
В
8embedding/conv1d_banks/num_4/conv1d/conv1d/dilation_rateConst*
valueB:*
dtype0*
_output_shapes
:
Д
Bembedding/conv1d_banks/num_4/conv1d/conv1d/conv1d_1/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
ю
>embedding/conv1d_banks/num_4/conv1d/conv1d/conv1d_1/ExpandDims
ExpandDimsembedding/dense/ReluBembedding/conv1d_banks/num_4/conv1d/conv1d/conv1d_1/ExpandDims/dim*
T0*1
_output_shapes
:         їА*

Tdim0
Ж
Dembedding/conv1d_banks/num_4/conv1d/conv1d/conv1d_1/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
Л
@embedding/conv1d_banks/num_4/conv1d/conv1d/conv1d_1/ExpandDims_1
ExpandDims6embedding/conv1d_banks/num_4/conv1d/conv1d/kernel/readDembedding/conv1d_banks/num_4/conv1d/conv1d/conv1d_1/ExpandDims_1/dim*

Tdim0*
T0*(
_output_shapes
:АА
Ё
:embedding/conv1d_banks/num_4/conv1d/conv1d/conv1d_1/Conv2DConv2D>embedding/conv1d_banks/num_4/conv1d/conv1d/conv1d_1/ExpandDims@embedding/conv1d_banks/num_4/conv1d/conv1d/conv1d_1/ExpandDims_1*1
_output_shapes
:         їА*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
╤
;embedding/conv1d_banks/num_4/conv1d/conv1d/conv1d_1/SqueezeSqueeze:embedding/conv1d_banks/num_4/conv1d/conv1d/conv1d_1/Conv2D*
squeeze_dims
*
T0*-
_output_shapes
:         їА
П
Eembedding/conv1d_banks/num_4/normalize/moments/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
У
3embedding/conv1d_banks/num_4/normalize/moments/meanMean;embedding/conv1d_banks/num_4/conv1d/conv1d/conv1d_1/SqueezeEembedding/conv1d_banks/num_4/normalize/moments/mean/reduction_indices*
T0*,
_output_shapes
:         А*

Tidx0*
	keep_dims(
╖
;embedding/conv1d_banks/num_4/normalize/moments/StopGradientStopGradient3embedding/conv1d_banks/num_4/normalize/moments/mean*
T0*,
_output_shapes
:         А
З
@embedding/conv1d_banks/num_4/normalize/moments/SquaredDifferenceSquaredDifference;embedding/conv1d_banks/num_4/conv1d/conv1d/conv1d_1/Squeeze;embedding/conv1d_banks/num_4/normalize/moments/StopGradient*
T0*-
_output_shapes
:         їА
У
Iembedding/conv1d_banks/num_4/normalize/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
а
7embedding/conv1d_banks/num_4/normalize/moments/varianceMean@embedding/conv1d_banks/num_4/normalize/moments/SquaredDifferenceIembedding/conv1d_banks/num_4/normalize/moments/variance/reduction_indices*

Tidx0*
	keep_dims(*
T0*,
_output_shapes
:         А
╠
=embedding/conv1d_banks/num_4/normalize/beta/Initializer/zerosConst*
valueBА*    *>
_class4
20loc:@embedding/conv1d_banks/num_4/normalize/beta*
dtype0*
_output_shapes	
:А
┘
+embedding/conv1d_banks/num_4/normalize/beta
VariableV2*
dtype0*
_output_shapes	
:А*
shared_name *>
_class4
20loc:@embedding/conv1d_banks/num_4/normalize/beta*
	container *
shape:А
╖
2embedding/conv1d_banks/num_4/normalize/beta/AssignAssign+embedding/conv1d_banks/num_4/normalize/beta=embedding/conv1d_banks/num_4/normalize/beta/Initializer/zeros*
T0*>
_class4
20loc:@embedding/conv1d_banks/num_4/normalize/beta*
validate_shape(*
_output_shapes	
:А*
use_locking(
╧
0embedding/conv1d_banks/num_4/normalize/beta/readIdentity+embedding/conv1d_banks/num_4/normalize/beta*
T0*>
_class4
20loc:@embedding/conv1d_banks/num_4/normalize/beta*
_output_shapes	
:А
═
=embedding/conv1d_banks/num_4/normalize/gamma/Initializer/onesConst*
valueBА*  А?*?
_class5
31loc:@embedding/conv1d_banks/num_4/normalize/gamma*
dtype0*
_output_shapes	
:А
█
,embedding/conv1d_banks/num_4/normalize/gamma
VariableV2*
dtype0*
_output_shapes	
:А*
shared_name *?
_class5
31loc:@embedding/conv1d_banks/num_4/normalize/gamma*
	container *
shape:А
║
3embedding/conv1d_banks/num_4/normalize/gamma/AssignAssign,embedding/conv1d_banks/num_4/normalize/gamma=embedding/conv1d_banks/num_4/normalize/gamma/Initializer/ones*
use_locking(*
T0*?
_class5
31loc:@embedding/conv1d_banks/num_4/normalize/gamma*
validate_shape(*
_output_shapes	
:А
╥
1embedding/conv1d_banks/num_4/normalize/gamma/readIdentity,embedding/conv1d_banks/num_4/normalize/gamma*
T0*?
_class5
31loc:@embedding/conv1d_banks/num_4/normalize/gamma*
_output_shapes	
:А
█
*embedding/conv1d_banks/num_4/normalize/subSub;embedding/conv1d_banks/num_4/conv1d/conv1d/conv1d_1/Squeeze3embedding/conv1d_banks/num_4/normalize/moments/mean*
T0*-
_output_shapes
:         їА
q
,embedding/conv1d_banks/num_4/normalize/add/yConst*
valueB
 *w╠+2*
dtype0*
_output_shapes
: 
╧
*embedding/conv1d_banks/num_4/normalize/addAdd7embedding/conv1d_banks/num_4/normalize/moments/variance,embedding/conv1d_banks/num_4/normalize/add/y*
T0*,
_output_shapes
:         А
q
,embedding/conv1d_banks/num_4/normalize/pow/yConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
┬
*embedding/conv1d_banks/num_4/normalize/powPow*embedding/conv1d_banks/num_4/normalize/add,embedding/conv1d_banks/num_4/normalize/pow/y*
T0*,
_output_shapes
:         А
┼
*embedding/conv1d_banks/num_4/normalize/divRealDiv*embedding/conv1d_banks/num_4/normalize/sub*embedding/conv1d_banks/num_4/normalize/pow*
T0*-
_output_shapes
:         їА
╚
*embedding/conv1d_banks/num_4/normalize/mulMul1embedding/conv1d_banks/num_4/normalize/gamma/read*embedding/conv1d_banks/num_4/normalize/div*
T0*-
_output_shapes
:         їА
╔
,embedding/conv1d_banks/num_4/normalize/add_1Add*embedding/conv1d_banks/num_4/normalize/mul0embedding/conv1d_banks/num_4/normalize/beta/read*
T0*-
_output_shapes
:         їА
П
!embedding/conv1d_banks/num_4/ReluRelu,embedding/conv1d_banks/num_4/normalize/add_1*
T0*-
_output_shapes
:         їА
э
Rembedding/conv1d_banks/num_5/conv1d/conv1d/kernel/Initializer/random_uniform/shapeConst*!
valueB"         *D
_class:
86loc:@embedding/conv1d_banks/num_5/conv1d/conv1d/kernel*
dtype0*
_output_shapes
:
█
Pembedding/conv1d_banks/num_5/conv1d/conv1d/kernel/Initializer/random_uniform/minConst*
valueB
 *М7╜*D
_class:
86loc:@embedding/conv1d_banks/num_5/conv1d/conv1d/kernel*
dtype0*
_output_shapes
: 
█
Pembedding/conv1d_banks/num_5/conv1d/conv1d/kernel/Initializer/random_uniform/maxConst*
valueB
 *М7=*D
_class:
86loc:@embedding/conv1d_banks/num_5/conv1d/conv1d/kernel*
dtype0*
_output_shapes
: 
┌
Zembedding/conv1d_banks/num_5/conv1d/conv1d/kernel/Initializer/random_uniform/RandomUniformRandomUniformRembedding/conv1d_banks/num_5/conv1d/conv1d/kernel/Initializer/random_uniform/shape*
dtype0*$
_output_shapes
:АА*

seed *
T0*D
_class:
86loc:@embedding/conv1d_banks/num_5/conv1d/conv1d/kernel*
seed2 
т
Pembedding/conv1d_banks/num_5/conv1d/conv1d/kernel/Initializer/random_uniform/subSubPembedding/conv1d_banks/num_5/conv1d/conv1d/kernel/Initializer/random_uniform/maxPembedding/conv1d_banks/num_5/conv1d/conv1d/kernel/Initializer/random_uniform/min*
T0*D
_class:
86loc:@embedding/conv1d_banks/num_5/conv1d/conv1d/kernel*
_output_shapes
: 
·
Pembedding/conv1d_banks/num_5/conv1d/conv1d/kernel/Initializer/random_uniform/mulMulZembedding/conv1d_banks/num_5/conv1d/conv1d/kernel/Initializer/random_uniform/RandomUniformPembedding/conv1d_banks/num_5/conv1d/conv1d/kernel/Initializer/random_uniform/sub*
T0*D
_class:
86loc:@embedding/conv1d_banks/num_5/conv1d/conv1d/kernel*$
_output_shapes
:АА
ь
Lembedding/conv1d_banks/num_5/conv1d/conv1d/kernel/Initializer/random_uniformAddPembedding/conv1d_banks/num_5/conv1d/conv1d/kernel/Initializer/random_uniform/mulPembedding/conv1d_banks/num_5/conv1d/conv1d/kernel/Initializer/random_uniform/min*
T0*D
_class:
86loc:@embedding/conv1d_banks/num_5/conv1d/conv1d/kernel*$
_output_shapes
:АА
ў
1embedding/conv1d_banks/num_5/conv1d/conv1d/kernel
VariableV2*D
_class:
86loc:@embedding/conv1d_banks/num_5/conv1d/conv1d/kernel*
	container *
shape:АА*
dtype0*$
_output_shapes
:АА*
shared_name 
с
8embedding/conv1d_banks/num_5/conv1d/conv1d/kernel/AssignAssign1embedding/conv1d_banks/num_5/conv1d/conv1d/kernelLembedding/conv1d_banks/num_5/conv1d/conv1d/kernel/Initializer/random_uniform*
T0*D
_class:
86loc:@embedding/conv1d_banks/num_5/conv1d/conv1d/kernel*
validate_shape(*$
_output_shapes
:АА*
use_locking(
ъ
6embedding/conv1d_banks/num_5/conv1d/conv1d/kernel/readIdentity1embedding/conv1d_banks/num_5/conv1d/conv1d/kernel*
T0*D
_class:
86loc:@embedding/conv1d_banks/num_5/conv1d/conv1d/kernel*$
_output_shapes
:АА
В
8embedding/conv1d_banks/num_5/conv1d/conv1d/dilation_rateConst*
valueB:*
dtype0*
_output_shapes
:
Д
Bembedding/conv1d_banks/num_5/conv1d/conv1d/conv1d_1/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
ю
>embedding/conv1d_banks/num_5/conv1d/conv1d/conv1d_1/ExpandDims
ExpandDimsembedding/dense/ReluBembedding/conv1d_banks/num_5/conv1d/conv1d/conv1d_1/ExpandDims/dim*
T0*1
_output_shapes
:         їА*

Tdim0
Ж
Dembedding/conv1d_banks/num_5/conv1d/conv1d/conv1d_1/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
Л
@embedding/conv1d_banks/num_5/conv1d/conv1d/conv1d_1/ExpandDims_1
ExpandDims6embedding/conv1d_banks/num_5/conv1d/conv1d/kernel/readDembedding/conv1d_banks/num_5/conv1d/conv1d/conv1d_1/ExpandDims_1/dim*
T0*(
_output_shapes
:АА*

Tdim0
Ё
:embedding/conv1d_banks/num_5/conv1d/conv1d/conv1d_1/Conv2DConv2D>embedding/conv1d_banks/num_5/conv1d/conv1d/conv1d_1/ExpandDims@embedding/conv1d_banks/num_5/conv1d/conv1d/conv1d_1/ExpandDims_1*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*1
_output_shapes
:         їА
╤
;embedding/conv1d_banks/num_5/conv1d/conv1d/conv1d_1/SqueezeSqueeze:embedding/conv1d_banks/num_5/conv1d/conv1d/conv1d_1/Conv2D*
squeeze_dims
*
T0*-
_output_shapes
:         їА
П
Eembedding/conv1d_banks/num_5/normalize/moments/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
У
3embedding/conv1d_banks/num_5/normalize/moments/meanMean;embedding/conv1d_banks/num_5/conv1d/conv1d/conv1d_1/SqueezeEembedding/conv1d_banks/num_5/normalize/moments/mean/reduction_indices*

Tidx0*
	keep_dims(*
T0*,
_output_shapes
:         А
╖
;embedding/conv1d_banks/num_5/normalize/moments/StopGradientStopGradient3embedding/conv1d_banks/num_5/normalize/moments/mean*
T0*,
_output_shapes
:         А
З
@embedding/conv1d_banks/num_5/normalize/moments/SquaredDifferenceSquaredDifference;embedding/conv1d_banks/num_5/conv1d/conv1d/conv1d_1/Squeeze;embedding/conv1d_banks/num_5/normalize/moments/StopGradient*
T0*-
_output_shapes
:         їА
У
Iembedding/conv1d_banks/num_5/normalize/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
а
7embedding/conv1d_banks/num_5/normalize/moments/varianceMean@embedding/conv1d_banks/num_5/normalize/moments/SquaredDifferenceIembedding/conv1d_banks/num_5/normalize/moments/variance/reduction_indices*
T0*,
_output_shapes
:         А*

Tidx0*
	keep_dims(
╠
=embedding/conv1d_banks/num_5/normalize/beta/Initializer/zerosConst*
valueBА*    *>
_class4
20loc:@embedding/conv1d_banks/num_5/normalize/beta*
dtype0*
_output_shapes	
:А
┘
+embedding/conv1d_banks/num_5/normalize/beta
VariableV2*
shared_name *>
_class4
20loc:@embedding/conv1d_banks/num_5/normalize/beta*
	container *
shape:А*
dtype0*
_output_shapes	
:А
╖
2embedding/conv1d_banks/num_5/normalize/beta/AssignAssign+embedding/conv1d_banks/num_5/normalize/beta=embedding/conv1d_banks/num_5/normalize/beta/Initializer/zeros*
use_locking(*
T0*>
_class4
20loc:@embedding/conv1d_banks/num_5/normalize/beta*
validate_shape(*
_output_shapes	
:А
╧
0embedding/conv1d_banks/num_5/normalize/beta/readIdentity+embedding/conv1d_banks/num_5/normalize/beta*
T0*>
_class4
20loc:@embedding/conv1d_banks/num_5/normalize/beta*
_output_shapes	
:А
═
=embedding/conv1d_banks/num_5/normalize/gamma/Initializer/onesConst*
valueBА*  А?*?
_class5
31loc:@embedding/conv1d_banks/num_5/normalize/gamma*
dtype0*
_output_shapes	
:А
█
,embedding/conv1d_banks/num_5/normalize/gamma
VariableV2*
dtype0*
_output_shapes	
:А*
shared_name *?
_class5
31loc:@embedding/conv1d_banks/num_5/normalize/gamma*
	container *
shape:А
║
3embedding/conv1d_banks/num_5/normalize/gamma/AssignAssign,embedding/conv1d_banks/num_5/normalize/gamma=embedding/conv1d_banks/num_5/normalize/gamma/Initializer/ones*
T0*?
_class5
31loc:@embedding/conv1d_banks/num_5/normalize/gamma*
validate_shape(*
_output_shapes	
:А*
use_locking(
╥
1embedding/conv1d_banks/num_5/normalize/gamma/readIdentity,embedding/conv1d_banks/num_5/normalize/gamma*
T0*?
_class5
31loc:@embedding/conv1d_banks/num_5/normalize/gamma*
_output_shapes	
:А
█
*embedding/conv1d_banks/num_5/normalize/subSub;embedding/conv1d_banks/num_5/conv1d/conv1d/conv1d_1/Squeeze3embedding/conv1d_banks/num_5/normalize/moments/mean*
T0*-
_output_shapes
:         їА
q
,embedding/conv1d_banks/num_5/normalize/add/yConst*
valueB
 *w╠+2*
dtype0*
_output_shapes
: 
╧
*embedding/conv1d_banks/num_5/normalize/addAdd7embedding/conv1d_banks/num_5/normalize/moments/variance,embedding/conv1d_banks/num_5/normalize/add/y*
T0*,
_output_shapes
:         А
q
,embedding/conv1d_banks/num_5/normalize/pow/yConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
┬
*embedding/conv1d_banks/num_5/normalize/powPow*embedding/conv1d_banks/num_5/normalize/add,embedding/conv1d_banks/num_5/normalize/pow/y*
T0*,
_output_shapes
:         А
┼
*embedding/conv1d_banks/num_5/normalize/divRealDiv*embedding/conv1d_banks/num_5/normalize/sub*embedding/conv1d_banks/num_5/normalize/pow*
T0*-
_output_shapes
:         їА
╚
*embedding/conv1d_banks/num_5/normalize/mulMul1embedding/conv1d_banks/num_5/normalize/gamma/read*embedding/conv1d_banks/num_5/normalize/div*
T0*-
_output_shapes
:         їА
╔
,embedding/conv1d_banks/num_5/normalize/add_1Add*embedding/conv1d_banks/num_5/normalize/mul0embedding/conv1d_banks/num_5/normalize/beta/read*
T0*-
_output_shapes
:         їА
П
!embedding/conv1d_banks/num_5/ReluRelu,embedding/conv1d_banks/num_5/normalize/add_1*
T0*-
_output_shapes
:         їА
э
Rembedding/conv1d_banks/num_6/conv1d/conv1d/kernel/Initializer/random_uniform/shapeConst*!
valueB"         *D
_class:
86loc:@embedding/conv1d_banks/num_6/conv1d/conv1d/kernel*
dtype0*
_output_shapes
:
█
Pembedding/conv1d_banks/num_6/conv1d/conv1d/kernel/Initializer/random_uniform/minConst*
valueB
 *   ╜*D
_class:
86loc:@embedding/conv1d_banks/num_6/conv1d/conv1d/kernel*
dtype0*
_output_shapes
: 
█
Pembedding/conv1d_banks/num_6/conv1d/conv1d/kernel/Initializer/random_uniform/maxConst*
valueB
 *   =*D
_class:
86loc:@embedding/conv1d_banks/num_6/conv1d/conv1d/kernel*
dtype0*
_output_shapes
: 
┌
Zembedding/conv1d_banks/num_6/conv1d/conv1d/kernel/Initializer/random_uniform/RandomUniformRandomUniformRembedding/conv1d_banks/num_6/conv1d/conv1d/kernel/Initializer/random_uniform/shape*
dtype0*$
_output_shapes
:АА*

seed *
T0*D
_class:
86loc:@embedding/conv1d_banks/num_6/conv1d/conv1d/kernel*
seed2 
т
Pembedding/conv1d_banks/num_6/conv1d/conv1d/kernel/Initializer/random_uniform/subSubPembedding/conv1d_banks/num_6/conv1d/conv1d/kernel/Initializer/random_uniform/maxPembedding/conv1d_banks/num_6/conv1d/conv1d/kernel/Initializer/random_uniform/min*
T0*D
_class:
86loc:@embedding/conv1d_banks/num_6/conv1d/conv1d/kernel*
_output_shapes
: 
·
Pembedding/conv1d_banks/num_6/conv1d/conv1d/kernel/Initializer/random_uniform/mulMulZembedding/conv1d_banks/num_6/conv1d/conv1d/kernel/Initializer/random_uniform/RandomUniformPembedding/conv1d_banks/num_6/conv1d/conv1d/kernel/Initializer/random_uniform/sub*
T0*D
_class:
86loc:@embedding/conv1d_banks/num_6/conv1d/conv1d/kernel*$
_output_shapes
:АА
ь
Lembedding/conv1d_banks/num_6/conv1d/conv1d/kernel/Initializer/random_uniformAddPembedding/conv1d_banks/num_6/conv1d/conv1d/kernel/Initializer/random_uniform/mulPembedding/conv1d_banks/num_6/conv1d/conv1d/kernel/Initializer/random_uniform/min*
T0*D
_class:
86loc:@embedding/conv1d_banks/num_6/conv1d/conv1d/kernel*$
_output_shapes
:АА
ў
1embedding/conv1d_banks/num_6/conv1d/conv1d/kernel
VariableV2*
dtype0*$
_output_shapes
:АА*
shared_name *D
_class:
86loc:@embedding/conv1d_banks/num_6/conv1d/conv1d/kernel*
	container *
shape:АА
с
8embedding/conv1d_banks/num_6/conv1d/conv1d/kernel/AssignAssign1embedding/conv1d_banks/num_6/conv1d/conv1d/kernelLembedding/conv1d_banks/num_6/conv1d/conv1d/kernel/Initializer/random_uniform*
T0*D
_class:
86loc:@embedding/conv1d_banks/num_6/conv1d/conv1d/kernel*
validate_shape(*$
_output_shapes
:АА*
use_locking(
ъ
6embedding/conv1d_banks/num_6/conv1d/conv1d/kernel/readIdentity1embedding/conv1d_banks/num_6/conv1d/conv1d/kernel*
T0*D
_class:
86loc:@embedding/conv1d_banks/num_6/conv1d/conv1d/kernel*$
_output_shapes
:АА
В
8embedding/conv1d_banks/num_6/conv1d/conv1d/dilation_rateConst*
valueB:*
dtype0*
_output_shapes
:
Д
Bembedding/conv1d_banks/num_6/conv1d/conv1d/conv1d_1/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
ю
>embedding/conv1d_banks/num_6/conv1d/conv1d/conv1d_1/ExpandDims
ExpandDimsembedding/dense/ReluBembedding/conv1d_banks/num_6/conv1d/conv1d/conv1d_1/ExpandDims/dim*
T0*1
_output_shapes
:         їА*

Tdim0
Ж
Dembedding/conv1d_banks/num_6/conv1d/conv1d/conv1d_1/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
Л
@embedding/conv1d_banks/num_6/conv1d/conv1d/conv1d_1/ExpandDims_1
ExpandDims6embedding/conv1d_banks/num_6/conv1d/conv1d/kernel/readDembedding/conv1d_banks/num_6/conv1d/conv1d/conv1d_1/ExpandDims_1/dim*
T0*(
_output_shapes
:АА*

Tdim0
Ё
:embedding/conv1d_banks/num_6/conv1d/conv1d/conv1d_1/Conv2DConv2D>embedding/conv1d_banks/num_6/conv1d/conv1d/conv1d_1/ExpandDims@embedding/conv1d_banks/num_6/conv1d/conv1d/conv1d_1/ExpandDims_1*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*1
_output_shapes
:         їА
╤
;embedding/conv1d_banks/num_6/conv1d/conv1d/conv1d_1/SqueezeSqueeze:embedding/conv1d_banks/num_6/conv1d/conv1d/conv1d_1/Conv2D*
T0*-
_output_shapes
:         їА*
squeeze_dims

П
Eembedding/conv1d_banks/num_6/normalize/moments/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
У
3embedding/conv1d_banks/num_6/normalize/moments/meanMean;embedding/conv1d_banks/num_6/conv1d/conv1d/conv1d_1/SqueezeEembedding/conv1d_banks/num_6/normalize/moments/mean/reduction_indices*

Tidx0*
	keep_dims(*
T0*,
_output_shapes
:         А
╖
;embedding/conv1d_banks/num_6/normalize/moments/StopGradientStopGradient3embedding/conv1d_banks/num_6/normalize/moments/mean*
T0*,
_output_shapes
:         А
З
@embedding/conv1d_banks/num_6/normalize/moments/SquaredDifferenceSquaredDifference;embedding/conv1d_banks/num_6/conv1d/conv1d/conv1d_1/Squeeze;embedding/conv1d_banks/num_6/normalize/moments/StopGradient*
T0*-
_output_shapes
:         їА
У
Iembedding/conv1d_banks/num_6/normalize/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
а
7embedding/conv1d_banks/num_6/normalize/moments/varianceMean@embedding/conv1d_banks/num_6/normalize/moments/SquaredDifferenceIembedding/conv1d_banks/num_6/normalize/moments/variance/reduction_indices*

Tidx0*
	keep_dims(*
T0*,
_output_shapes
:         А
╠
=embedding/conv1d_banks/num_6/normalize/beta/Initializer/zerosConst*
valueBА*    *>
_class4
20loc:@embedding/conv1d_banks/num_6/normalize/beta*
dtype0*
_output_shapes	
:А
┘
+embedding/conv1d_banks/num_6/normalize/beta
VariableV2*>
_class4
20loc:@embedding/conv1d_banks/num_6/normalize/beta*
	container *
shape:А*
dtype0*
_output_shapes	
:А*
shared_name 
╖
2embedding/conv1d_banks/num_6/normalize/beta/AssignAssign+embedding/conv1d_banks/num_6/normalize/beta=embedding/conv1d_banks/num_6/normalize/beta/Initializer/zeros*
T0*>
_class4
20loc:@embedding/conv1d_banks/num_6/normalize/beta*
validate_shape(*
_output_shapes	
:А*
use_locking(
╧
0embedding/conv1d_banks/num_6/normalize/beta/readIdentity+embedding/conv1d_banks/num_6/normalize/beta*
T0*>
_class4
20loc:@embedding/conv1d_banks/num_6/normalize/beta*
_output_shapes	
:А
═
=embedding/conv1d_banks/num_6/normalize/gamma/Initializer/onesConst*
valueBА*  А?*?
_class5
31loc:@embedding/conv1d_banks/num_6/normalize/gamma*
dtype0*
_output_shapes	
:А
█
,embedding/conv1d_banks/num_6/normalize/gamma
VariableV2*
dtype0*
_output_shapes	
:А*
shared_name *?
_class5
31loc:@embedding/conv1d_banks/num_6/normalize/gamma*
	container *
shape:А
║
3embedding/conv1d_banks/num_6/normalize/gamma/AssignAssign,embedding/conv1d_banks/num_6/normalize/gamma=embedding/conv1d_banks/num_6/normalize/gamma/Initializer/ones*
T0*?
_class5
31loc:@embedding/conv1d_banks/num_6/normalize/gamma*
validate_shape(*
_output_shapes	
:А*
use_locking(
╥
1embedding/conv1d_banks/num_6/normalize/gamma/readIdentity,embedding/conv1d_banks/num_6/normalize/gamma*
T0*?
_class5
31loc:@embedding/conv1d_banks/num_6/normalize/gamma*
_output_shapes	
:А
█
*embedding/conv1d_banks/num_6/normalize/subSub;embedding/conv1d_banks/num_6/conv1d/conv1d/conv1d_1/Squeeze3embedding/conv1d_banks/num_6/normalize/moments/mean*
T0*-
_output_shapes
:         їА
q
,embedding/conv1d_banks/num_6/normalize/add/yConst*
valueB
 *w╠+2*
dtype0*
_output_shapes
: 
╧
*embedding/conv1d_banks/num_6/normalize/addAdd7embedding/conv1d_banks/num_6/normalize/moments/variance,embedding/conv1d_banks/num_6/normalize/add/y*
T0*,
_output_shapes
:         А
q
,embedding/conv1d_banks/num_6/normalize/pow/yConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
┬
*embedding/conv1d_banks/num_6/normalize/powPow*embedding/conv1d_banks/num_6/normalize/add,embedding/conv1d_banks/num_6/normalize/pow/y*
T0*,
_output_shapes
:         А
┼
*embedding/conv1d_banks/num_6/normalize/divRealDiv*embedding/conv1d_banks/num_6/normalize/sub*embedding/conv1d_banks/num_6/normalize/pow*
T0*-
_output_shapes
:         їА
╚
*embedding/conv1d_banks/num_6/normalize/mulMul1embedding/conv1d_banks/num_6/normalize/gamma/read*embedding/conv1d_banks/num_6/normalize/div*
T0*-
_output_shapes
:         їА
╔
,embedding/conv1d_banks/num_6/normalize/add_1Add*embedding/conv1d_banks/num_6/normalize/mul0embedding/conv1d_banks/num_6/normalize/beta/read*
T0*-
_output_shapes
:         їА
П
!embedding/conv1d_banks/num_6/ReluRelu,embedding/conv1d_banks/num_6/normalize/add_1*
T0*-
_output_shapes
:         їА
э
Rembedding/conv1d_banks/num_7/conv1d/conv1d/kernel/Initializer/random_uniform/shapeConst*!
valueB"         *D
_class:
86loc:@embedding/conv1d_banks/num_7/conv1d/conv1d/kernel*
dtype0*
_output_shapes
:
█
Pembedding/conv1d_banks/num_7/conv1d/conv1d/kernel/Initializer/random_uniform/minConst*
valueB
 *Мэ╝*D
_class:
86loc:@embedding/conv1d_banks/num_7/conv1d/conv1d/kernel*
dtype0*
_output_shapes
: 
█
Pembedding/conv1d_banks/num_7/conv1d/conv1d/kernel/Initializer/random_uniform/maxConst*
valueB
 *Мэ<*D
_class:
86loc:@embedding/conv1d_banks/num_7/conv1d/conv1d/kernel*
dtype0*
_output_shapes
: 
┌
Zembedding/conv1d_banks/num_7/conv1d/conv1d/kernel/Initializer/random_uniform/RandomUniformRandomUniformRembedding/conv1d_banks/num_7/conv1d/conv1d/kernel/Initializer/random_uniform/shape*
T0*D
_class:
86loc:@embedding/conv1d_banks/num_7/conv1d/conv1d/kernel*
seed2 *
dtype0*$
_output_shapes
:АА*

seed 
т
Pembedding/conv1d_banks/num_7/conv1d/conv1d/kernel/Initializer/random_uniform/subSubPembedding/conv1d_banks/num_7/conv1d/conv1d/kernel/Initializer/random_uniform/maxPembedding/conv1d_banks/num_7/conv1d/conv1d/kernel/Initializer/random_uniform/min*
T0*D
_class:
86loc:@embedding/conv1d_banks/num_7/conv1d/conv1d/kernel*
_output_shapes
: 
·
Pembedding/conv1d_banks/num_7/conv1d/conv1d/kernel/Initializer/random_uniform/mulMulZembedding/conv1d_banks/num_7/conv1d/conv1d/kernel/Initializer/random_uniform/RandomUniformPembedding/conv1d_banks/num_7/conv1d/conv1d/kernel/Initializer/random_uniform/sub*
T0*D
_class:
86loc:@embedding/conv1d_banks/num_7/conv1d/conv1d/kernel*$
_output_shapes
:АА
ь
Lembedding/conv1d_banks/num_7/conv1d/conv1d/kernel/Initializer/random_uniformAddPembedding/conv1d_banks/num_7/conv1d/conv1d/kernel/Initializer/random_uniform/mulPembedding/conv1d_banks/num_7/conv1d/conv1d/kernel/Initializer/random_uniform/min*
T0*D
_class:
86loc:@embedding/conv1d_banks/num_7/conv1d/conv1d/kernel*$
_output_shapes
:АА
ў
1embedding/conv1d_banks/num_7/conv1d/conv1d/kernel
VariableV2*
dtype0*$
_output_shapes
:АА*
shared_name *D
_class:
86loc:@embedding/conv1d_banks/num_7/conv1d/conv1d/kernel*
	container *
shape:АА
с
8embedding/conv1d_banks/num_7/conv1d/conv1d/kernel/AssignAssign1embedding/conv1d_banks/num_7/conv1d/conv1d/kernelLembedding/conv1d_banks/num_7/conv1d/conv1d/kernel/Initializer/random_uniform*
use_locking(*
T0*D
_class:
86loc:@embedding/conv1d_banks/num_7/conv1d/conv1d/kernel*
validate_shape(*$
_output_shapes
:АА
ъ
6embedding/conv1d_banks/num_7/conv1d/conv1d/kernel/readIdentity1embedding/conv1d_banks/num_7/conv1d/conv1d/kernel*
T0*D
_class:
86loc:@embedding/conv1d_banks/num_7/conv1d/conv1d/kernel*$
_output_shapes
:АА
В
8embedding/conv1d_banks/num_7/conv1d/conv1d/dilation_rateConst*
valueB:*
dtype0*
_output_shapes
:
Д
Bembedding/conv1d_banks/num_7/conv1d/conv1d/conv1d_1/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
ю
>embedding/conv1d_banks/num_7/conv1d/conv1d/conv1d_1/ExpandDims
ExpandDimsembedding/dense/ReluBembedding/conv1d_banks/num_7/conv1d/conv1d/conv1d_1/ExpandDims/dim*

Tdim0*
T0*1
_output_shapes
:         їА
Ж
Dembedding/conv1d_banks/num_7/conv1d/conv1d/conv1d_1/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
Л
@embedding/conv1d_banks/num_7/conv1d/conv1d/conv1d_1/ExpandDims_1
ExpandDims6embedding/conv1d_banks/num_7/conv1d/conv1d/kernel/readDembedding/conv1d_banks/num_7/conv1d/conv1d/conv1d_1/ExpandDims_1/dim*

Tdim0*
T0*(
_output_shapes
:АА
Ё
:embedding/conv1d_banks/num_7/conv1d/conv1d/conv1d_1/Conv2DConv2D>embedding/conv1d_banks/num_7/conv1d/conv1d/conv1d_1/ExpandDims@embedding/conv1d_banks/num_7/conv1d/conv1d/conv1d_1/ExpandDims_1*1
_output_shapes
:         їА*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
╤
;embedding/conv1d_banks/num_7/conv1d/conv1d/conv1d_1/SqueezeSqueeze:embedding/conv1d_banks/num_7/conv1d/conv1d/conv1d_1/Conv2D*
T0*-
_output_shapes
:         їА*
squeeze_dims

П
Eembedding/conv1d_banks/num_7/normalize/moments/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
У
3embedding/conv1d_banks/num_7/normalize/moments/meanMean;embedding/conv1d_banks/num_7/conv1d/conv1d/conv1d_1/SqueezeEembedding/conv1d_banks/num_7/normalize/moments/mean/reduction_indices*

Tidx0*
	keep_dims(*
T0*,
_output_shapes
:         А
╖
;embedding/conv1d_banks/num_7/normalize/moments/StopGradientStopGradient3embedding/conv1d_banks/num_7/normalize/moments/mean*
T0*,
_output_shapes
:         А
З
@embedding/conv1d_banks/num_7/normalize/moments/SquaredDifferenceSquaredDifference;embedding/conv1d_banks/num_7/conv1d/conv1d/conv1d_1/Squeeze;embedding/conv1d_banks/num_7/normalize/moments/StopGradient*
T0*-
_output_shapes
:         їА
У
Iembedding/conv1d_banks/num_7/normalize/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
а
7embedding/conv1d_banks/num_7/normalize/moments/varianceMean@embedding/conv1d_banks/num_7/normalize/moments/SquaredDifferenceIembedding/conv1d_banks/num_7/normalize/moments/variance/reduction_indices*
T0*,
_output_shapes
:         А*

Tidx0*
	keep_dims(
╠
=embedding/conv1d_banks/num_7/normalize/beta/Initializer/zerosConst*
valueBА*    *>
_class4
20loc:@embedding/conv1d_banks/num_7/normalize/beta*
dtype0*
_output_shapes	
:А
┘
+embedding/conv1d_banks/num_7/normalize/beta
VariableV2*
shared_name *>
_class4
20loc:@embedding/conv1d_banks/num_7/normalize/beta*
	container *
shape:А*
dtype0*
_output_shapes	
:А
╖
2embedding/conv1d_banks/num_7/normalize/beta/AssignAssign+embedding/conv1d_banks/num_7/normalize/beta=embedding/conv1d_banks/num_7/normalize/beta/Initializer/zeros*
T0*>
_class4
20loc:@embedding/conv1d_banks/num_7/normalize/beta*
validate_shape(*
_output_shapes	
:А*
use_locking(
╧
0embedding/conv1d_banks/num_7/normalize/beta/readIdentity+embedding/conv1d_banks/num_7/normalize/beta*
T0*>
_class4
20loc:@embedding/conv1d_banks/num_7/normalize/beta*
_output_shapes	
:А
═
=embedding/conv1d_banks/num_7/normalize/gamma/Initializer/onesConst*
valueBА*  А?*?
_class5
31loc:@embedding/conv1d_banks/num_7/normalize/gamma*
dtype0*
_output_shapes	
:А
█
,embedding/conv1d_banks/num_7/normalize/gamma
VariableV2*
dtype0*
_output_shapes	
:А*
shared_name *?
_class5
31loc:@embedding/conv1d_banks/num_7/normalize/gamma*
	container *
shape:А
║
3embedding/conv1d_banks/num_7/normalize/gamma/AssignAssign,embedding/conv1d_banks/num_7/normalize/gamma=embedding/conv1d_banks/num_7/normalize/gamma/Initializer/ones*
use_locking(*
T0*?
_class5
31loc:@embedding/conv1d_banks/num_7/normalize/gamma*
validate_shape(*
_output_shapes	
:А
╥
1embedding/conv1d_banks/num_7/normalize/gamma/readIdentity,embedding/conv1d_banks/num_7/normalize/gamma*
T0*?
_class5
31loc:@embedding/conv1d_banks/num_7/normalize/gamma*
_output_shapes	
:А
█
*embedding/conv1d_banks/num_7/normalize/subSub;embedding/conv1d_banks/num_7/conv1d/conv1d/conv1d_1/Squeeze3embedding/conv1d_banks/num_7/normalize/moments/mean*
T0*-
_output_shapes
:         їА
q
,embedding/conv1d_banks/num_7/normalize/add/yConst*
valueB
 *w╠+2*
dtype0*
_output_shapes
: 
╧
*embedding/conv1d_banks/num_7/normalize/addAdd7embedding/conv1d_banks/num_7/normalize/moments/variance,embedding/conv1d_banks/num_7/normalize/add/y*
T0*,
_output_shapes
:         А
q
,embedding/conv1d_banks/num_7/normalize/pow/yConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
┬
*embedding/conv1d_banks/num_7/normalize/powPow*embedding/conv1d_banks/num_7/normalize/add,embedding/conv1d_banks/num_7/normalize/pow/y*
T0*,
_output_shapes
:         А
┼
*embedding/conv1d_banks/num_7/normalize/divRealDiv*embedding/conv1d_banks/num_7/normalize/sub*embedding/conv1d_banks/num_7/normalize/pow*
T0*-
_output_shapes
:         їА
╚
*embedding/conv1d_banks/num_7/normalize/mulMul1embedding/conv1d_banks/num_7/normalize/gamma/read*embedding/conv1d_banks/num_7/normalize/div*
T0*-
_output_shapes
:         їА
╔
,embedding/conv1d_banks/num_7/normalize/add_1Add*embedding/conv1d_banks/num_7/normalize/mul0embedding/conv1d_banks/num_7/normalize/beta/read*
T0*-
_output_shapes
:         їА
П
!embedding/conv1d_banks/num_7/ReluRelu,embedding/conv1d_banks/num_7/normalize/add_1*
T0*-
_output_shapes
:         їА
э
Rembedding/conv1d_banks/num_8/conv1d/conv1d/kernel/Initializer/random_uniform/shapeConst*!
valueB"         *D
_class:
86loc:@embedding/conv1d_banks/num_8/conv1d/conv1d/kernel*
dtype0*
_output_shapes
:
█
Pembedding/conv1d_banks/num_8/conv1d/conv1d/kernel/Initializer/random_uniform/minConst*
valueB
 *╫│▌╝*D
_class:
86loc:@embedding/conv1d_banks/num_8/conv1d/conv1d/kernel*
dtype0*
_output_shapes
: 
█
Pembedding/conv1d_banks/num_8/conv1d/conv1d/kernel/Initializer/random_uniform/maxConst*
valueB
 *╫│▌<*D
_class:
86loc:@embedding/conv1d_banks/num_8/conv1d/conv1d/kernel*
dtype0*
_output_shapes
: 
┌
Zembedding/conv1d_banks/num_8/conv1d/conv1d/kernel/Initializer/random_uniform/RandomUniformRandomUniformRembedding/conv1d_banks/num_8/conv1d/conv1d/kernel/Initializer/random_uniform/shape*
dtype0*$
_output_shapes
:АА*

seed *
T0*D
_class:
86loc:@embedding/conv1d_banks/num_8/conv1d/conv1d/kernel*
seed2 
т
Pembedding/conv1d_banks/num_8/conv1d/conv1d/kernel/Initializer/random_uniform/subSubPembedding/conv1d_banks/num_8/conv1d/conv1d/kernel/Initializer/random_uniform/maxPembedding/conv1d_banks/num_8/conv1d/conv1d/kernel/Initializer/random_uniform/min*
T0*D
_class:
86loc:@embedding/conv1d_banks/num_8/conv1d/conv1d/kernel*
_output_shapes
: 
·
Pembedding/conv1d_banks/num_8/conv1d/conv1d/kernel/Initializer/random_uniform/mulMulZembedding/conv1d_banks/num_8/conv1d/conv1d/kernel/Initializer/random_uniform/RandomUniformPembedding/conv1d_banks/num_8/conv1d/conv1d/kernel/Initializer/random_uniform/sub*
T0*D
_class:
86loc:@embedding/conv1d_banks/num_8/conv1d/conv1d/kernel*$
_output_shapes
:АА
ь
Lembedding/conv1d_banks/num_8/conv1d/conv1d/kernel/Initializer/random_uniformAddPembedding/conv1d_banks/num_8/conv1d/conv1d/kernel/Initializer/random_uniform/mulPembedding/conv1d_banks/num_8/conv1d/conv1d/kernel/Initializer/random_uniform/min*
T0*D
_class:
86loc:@embedding/conv1d_banks/num_8/conv1d/conv1d/kernel*$
_output_shapes
:АА
ў
1embedding/conv1d_banks/num_8/conv1d/conv1d/kernel
VariableV2*
shared_name *D
_class:
86loc:@embedding/conv1d_banks/num_8/conv1d/conv1d/kernel*
	container *
shape:АА*
dtype0*$
_output_shapes
:АА
с
8embedding/conv1d_banks/num_8/conv1d/conv1d/kernel/AssignAssign1embedding/conv1d_banks/num_8/conv1d/conv1d/kernelLembedding/conv1d_banks/num_8/conv1d/conv1d/kernel/Initializer/random_uniform*
use_locking(*
T0*D
_class:
86loc:@embedding/conv1d_banks/num_8/conv1d/conv1d/kernel*
validate_shape(*$
_output_shapes
:АА
ъ
6embedding/conv1d_banks/num_8/conv1d/conv1d/kernel/readIdentity1embedding/conv1d_banks/num_8/conv1d/conv1d/kernel*
T0*D
_class:
86loc:@embedding/conv1d_banks/num_8/conv1d/conv1d/kernel*$
_output_shapes
:АА
В
8embedding/conv1d_banks/num_8/conv1d/conv1d/dilation_rateConst*
valueB:*
dtype0*
_output_shapes
:
Д
Bembedding/conv1d_banks/num_8/conv1d/conv1d/conv1d_1/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
ю
>embedding/conv1d_banks/num_8/conv1d/conv1d/conv1d_1/ExpandDims
ExpandDimsembedding/dense/ReluBembedding/conv1d_banks/num_8/conv1d/conv1d/conv1d_1/ExpandDims/dim*
T0*1
_output_shapes
:         їА*

Tdim0
Ж
Dembedding/conv1d_banks/num_8/conv1d/conv1d/conv1d_1/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
Л
@embedding/conv1d_banks/num_8/conv1d/conv1d/conv1d_1/ExpandDims_1
ExpandDims6embedding/conv1d_banks/num_8/conv1d/conv1d/kernel/readDembedding/conv1d_banks/num_8/conv1d/conv1d/conv1d_1/ExpandDims_1/dim*

Tdim0*
T0*(
_output_shapes
:АА
Ё
:embedding/conv1d_banks/num_8/conv1d/conv1d/conv1d_1/Conv2DConv2D>embedding/conv1d_banks/num_8/conv1d/conv1d/conv1d_1/ExpandDims@embedding/conv1d_banks/num_8/conv1d/conv1d/conv1d_1/ExpandDims_1*
paddingSAME*1
_output_shapes
:         їА*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
╤
;embedding/conv1d_banks/num_8/conv1d/conv1d/conv1d_1/SqueezeSqueeze:embedding/conv1d_banks/num_8/conv1d/conv1d/conv1d_1/Conv2D*
squeeze_dims
*
T0*-
_output_shapes
:         їА
П
Eembedding/conv1d_banks/num_8/normalize/moments/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
У
3embedding/conv1d_banks/num_8/normalize/moments/meanMean;embedding/conv1d_banks/num_8/conv1d/conv1d/conv1d_1/SqueezeEembedding/conv1d_banks/num_8/normalize/moments/mean/reduction_indices*
T0*,
_output_shapes
:         А*

Tidx0*
	keep_dims(
╖
;embedding/conv1d_banks/num_8/normalize/moments/StopGradientStopGradient3embedding/conv1d_banks/num_8/normalize/moments/mean*
T0*,
_output_shapes
:         А
З
@embedding/conv1d_banks/num_8/normalize/moments/SquaredDifferenceSquaredDifference;embedding/conv1d_banks/num_8/conv1d/conv1d/conv1d_1/Squeeze;embedding/conv1d_banks/num_8/normalize/moments/StopGradient*
T0*-
_output_shapes
:         їА
У
Iembedding/conv1d_banks/num_8/normalize/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
а
7embedding/conv1d_banks/num_8/normalize/moments/varianceMean@embedding/conv1d_banks/num_8/normalize/moments/SquaredDifferenceIembedding/conv1d_banks/num_8/normalize/moments/variance/reduction_indices*
T0*,
_output_shapes
:         А*

Tidx0*
	keep_dims(
╠
=embedding/conv1d_banks/num_8/normalize/beta/Initializer/zerosConst*
valueBА*    *>
_class4
20loc:@embedding/conv1d_banks/num_8/normalize/beta*
dtype0*
_output_shapes	
:А
┘
+embedding/conv1d_banks/num_8/normalize/beta
VariableV2*
shape:А*
dtype0*
_output_shapes	
:А*
shared_name *>
_class4
20loc:@embedding/conv1d_banks/num_8/normalize/beta*
	container 
╖
2embedding/conv1d_banks/num_8/normalize/beta/AssignAssign+embedding/conv1d_banks/num_8/normalize/beta=embedding/conv1d_banks/num_8/normalize/beta/Initializer/zeros*
use_locking(*
T0*>
_class4
20loc:@embedding/conv1d_banks/num_8/normalize/beta*
validate_shape(*
_output_shapes	
:А
╧
0embedding/conv1d_banks/num_8/normalize/beta/readIdentity+embedding/conv1d_banks/num_8/normalize/beta*
T0*>
_class4
20loc:@embedding/conv1d_banks/num_8/normalize/beta*
_output_shapes	
:А
═
=embedding/conv1d_banks/num_8/normalize/gamma/Initializer/onesConst*
valueBА*  А?*?
_class5
31loc:@embedding/conv1d_banks/num_8/normalize/gamma*
dtype0*
_output_shapes	
:А
█
,embedding/conv1d_banks/num_8/normalize/gamma
VariableV2*
shared_name *?
_class5
31loc:@embedding/conv1d_banks/num_8/normalize/gamma*
	container *
shape:А*
dtype0*
_output_shapes	
:А
║
3embedding/conv1d_banks/num_8/normalize/gamma/AssignAssign,embedding/conv1d_banks/num_8/normalize/gamma=embedding/conv1d_banks/num_8/normalize/gamma/Initializer/ones*
use_locking(*
T0*?
_class5
31loc:@embedding/conv1d_banks/num_8/normalize/gamma*
validate_shape(*
_output_shapes	
:А
╥
1embedding/conv1d_banks/num_8/normalize/gamma/readIdentity,embedding/conv1d_banks/num_8/normalize/gamma*
T0*?
_class5
31loc:@embedding/conv1d_banks/num_8/normalize/gamma*
_output_shapes	
:А
█
*embedding/conv1d_banks/num_8/normalize/subSub;embedding/conv1d_banks/num_8/conv1d/conv1d/conv1d_1/Squeeze3embedding/conv1d_banks/num_8/normalize/moments/mean*
T0*-
_output_shapes
:         їА
q
,embedding/conv1d_banks/num_8/normalize/add/yConst*
valueB
 *w╠+2*
dtype0*
_output_shapes
: 
╧
*embedding/conv1d_banks/num_8/normalize/addAdd7embedding/conv1d_banks/num_8/normalize/moments/variance,embedding/conv1d_banks/num_8/normalize/add/y*
T0*,
_output_shapes
:         А
q
,embedding/conv1d_banks/num_8/normalize/pow/yConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
┬
*embedding/conv1d_banks/num_8/normalize/powPow*embedding/conv1d_banks/num_8/normalize/add,embedding/conv1d_banks/num_8/normalize/pow/y*
T0*,
_output_shapes
:         А
┼
*embedding/conv1d_banks/num_8/normalize/divRealDiv*embedding/conv1d_banks/num_8/normalize/sub*embedding/conv1d_banks/num_8/normalize/pow*
T0*-
_output_shapes
:         їА
╚
*embedding/conv1d_banks/num_8/normalize/mulMul1embedding/conv1d_banks/num_8/normalize/gamma/read*embedding/conv1d_banks/num_8/normalize/div*
T0*-
_output_shapes
:         їА
╔
,embedding/conv1d_banks/num_8/normalize/add_1Add*embedding/conv1d_banks/num_8/normalize/mul0embedding/conv1d_banks/num_8/normalize/beta/read*
T0*-
_output_shapes
:         їА
П
!embedding/conv1d_banks/num_8/ReluRelu,embedding/conv1d_banks/num_8/normalize/add_1*
T0*-
_output_shapes
:         їА
m
"embedding/conv1d_banks/concat/axisConst*
valueB :
         *
dtype0*
_output_shapes
: 
▓
embedding/conv1d_banks/concatConcatV2!embedding/conv1d_banks/num_1/Relu!embedding/conv1d_banks/num_2/Relu!embedding/conv1d_banks/num_3/Relu!embedding/conv1d_banks/num_4/Relu!embedding/conv1d_banks/num_5/Relu!embedding/conv1d_banks/num_6/Relu!embedding/conv1d_banks/num_7/Relu!embedding/conv1d_banks/num_8/Relu"embedding/conv1d_banks/concat/axis*

Tidx0*
T0*
N*-
_output_shapes
:         їА 
h
&embedding/max_pooling1d/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
┐
"embedding/max_pooling1d/ExpandDims
ExpandDimsembedding/conv1d_banks/concat&embedding/max_pooling1d/ExpandDims/dim*
T0*1
_output_shapes
:         їА *

Tdim0
▄
embedding/max_pooling1d/MaxPoolMaxPool"embedding/max_pooling1d/ExpandDims*
ksize
*
paddingSAME*1
_output_shapes
:         їА *
T0*
strides
*
data_formatNHWC
Ъ
embedding/max_pooling1d/SqueezeSqueezeembedding/max_pooling1d/MaxPool*
squeeze_dims
*
T0*-
_output_shapes
:         їА 
╦
Aembedding/conv1d_1/conv1d/kernel/Initializer/random_uniform/shapeConst*!
valueB"         *3
_class)
'%loc:@embedding/conv1d_1/conv1d/kernel*
dtype0*
_output_shapes
:
╣
?embedding/conv1d_1/conv1d/kernel/Initializer/random_uniform/minConst*
valueB
 *лкк╝*3
_class)
'%loc:@embedding/conv1d_1/conv1d/kernel*
dtype0*
_output_shapes
: 
╣
?embedding/conv1d_1/conv1d/kernel/Initializer/random_uniform/maxConst*
valueB
 *лкк<*3
_class)
'%loc:@embedding/conv1d_1/conv1d/kernel*
dtype0*
_output_shapes
: 
з
Iembedding/conv1d_1/conv1d/kernel/Initializer/random_uniform/RandomUniformRandomUniformAembedding/conv1d_1/conv1d/kernel/Initializer/random_uniform/shape*
dtype0*$
_output_shapes
:А А*

seed *
T0*3
_class)
'%loc:@embedding/conv1d_1/conv1d/kernel*
seed2 
Ю
?embedding/conv1d_1/conv1d/kernel/Initializer/random_uniform/subSub?embedding/conv1d_1/conv1d/kernel/Initializer/random_uniform/max?embedding/conv1d_1/conv1d/kernel/Initializer/random_uniform/min*
T0*3
_class)
'%loc:@embedding/conv1d_1/conv1d/kernel*
_output_shapes
: 
╢
?embedding/conv1d_1/conv1d/kernel/Initializer/random_uniform/mulMulIembedding/conv1d_1/conv1d/kernel/Initializer/random_uniform/RandomUniform?embedding/conv1d_1/conv1d/kernel/Initializer/random_uniform/sub*
T0*3
_class)
'%loc:@embedding/conv1d_1/conv1d/kernel*$
_output_shapes
:А А
и
;embedding/conv1d_1/conv1d/kernel/Initializer/random_uniformAdd?embedding/conv1d_1/conv1d/kernel/Initializer/random_uniform/mul?embedding/conv1d_1/conv1d/kernel/Initializer/random_uniform/min*
T0*3
_class)
'%loc:@embedding/conv1d_1/conv1d/kernel*$
_output_shapes
:А А
╒
 embedding/conv1d_1/conv1d/kernel
VariableV2*
shape:А А*
dtype0*$
_output_shapes
:А А*
shared_name *3
_class)
'%loc:@embedding/conv1d_1/conv1d/kernel*
	container 
Э
'embedding/conv1d_1/conv1d/kernel/AssignAssign embedding/conv1d_1/conv1d/kernel;embedding/conv1d_1/conv1d/kernel/Initializer/random_uniform*
T0*3
_class)
'%loc:@embedding/conv1d_1/conv1d/kernel*
validate_shape(*$
_output_shapes
:А А*
use_locking(
╖
%embedding/conv1d_1/conv1d/kernel/readIdentity embedding/conv1d_1/conv1d/kernel*
T0*3
_class)
'%loc:@embedding/conv1d_1/conv1d/kernel*$
_output_shapes
:А А
q
'embedding/conv1d_1/conv1d/dilation_rateConst*
valueB:*
dtype0*
_output_shapes
:
s
1embedding/conv1d_1/conv1d/conv1d_1/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
╫
-embedding/conv1d_1/conv1d/conv1d_1/ExpandDims
ExpandDimsembedding/max_pooling1d/Squeeze1embedding/conv1d_1/conv1d/conv1d_1/ExpandDims/dim*

Tdim0*
T0*1
_output_shapes
:         їА 
u
3embedding/conv1d_1/conv1d/conv1d_1/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
╪
/embedding/conv1d_1/conv1d/conv1d_1/ExpandDims_1
ExpandDims%embedding/conv1d_1/conv1d/kernel/read3embedding/conv1d_1/conv1d/conv1d_1/ExpandDims_1/dim*

Tdim0*
T0*(
_output_shapes
:А А
╜
)embedding/conv1d_1/conv1d/conv1d_1/Conv2DConv2D-embedding/conv1d_1/conv1d/conv1d_1/ExpandDims/embedding/conv1d_1/conv1d/conv1d_1/ExpandDims_1*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*1
_output_shapes
:         їА
п
*embedding/conv1d_1/conv1d/conv1d_1/SqueezeSqueeze)embedding/conv1d_1/conv1d/conv1d_1/Conv2D*
squeeze_dims
*
T0*-
_output_shapes
:         їА
|
2embedding/normalize/moments/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
▄
 embedding/normalize/moments/meanMean*embedding/conv1d_1/conv1d/conv1d_1/Squeeze2embedding/normalize/moments/mean/reduction_indices*
T0*,
_output_shapes
:         А*

Tidx0*
	keep_dims(
С
(embedding/normalize/moments/StopGradientStopGradient embedding/normalize/moments/mean*
T0*,
_output_shapes
:         А
╨
-embedding/normalize/moments/SquaredDifferenceSquaredDifference*embedding/conv1d_1/conv1d/conv1d_1/Squeeze(embedding/normalize/moments/StopGradient*
T0*-
_output_shapes
:         їА
А
6embedding/normalize/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
ч
$embedding/normalize/moments/varianceMean-embedding/normalize/moments/SquaredDifference6embedding/normalize/moments/variance/reduction_indices*
T0*,
_output_shapes
:         А*

Tidx0*
	keep_dims(
ж
*embedding/normalize/beta/Initializer/zerosConst*
valueBА*    *+
_class!
loc:@embedding/normalize/beta*
dtype0*
_output_shapes	
:А
│
embedding/normalize/beta
VariableV2*
shape:А*
dtype0*
_output_shapes	
:А*
shared_name *+
_class!
loc:@embedding/normalize/beta*
	container 
ы
embedding/normalize/beta/AssignAssignembedding/normalize/beta*embedding/normalize/beta/Initializer/zeros*
T0*+
_class!
loc:@embedding/normalize/beta*
validate_shape(*
_output_shapes	
:А*
use_locking(
Ц
embedding/normalize/beta/readIdentityembedding/normalize/beta*
T0*+
_class!
loc:@embedding/normalize/beta*
_output_shapes	
:А
з
*embedding/normalize/gamma/Initializer/onesConst*
valueBА*  А?*,
_class"
 loc:@embedding/normalize/gamma*
dtype0*
_output_shapes	
:А
╡
embedding/normalize/gamma
VariableV2*
shared_name *,
_class"
 loc:@embedding/normalize/gamma*
	container *
shape:А*
dtype0*
_output_shapes	
:А
ю
 embedding/normalize/gamma/AssignAssignembedding/normalize/gamma*embedding/normalize/gamma/Initializer/ones*
T0*,
_class"
 loc:@embedding/normalize/gamma*
validate_shape(*
_output_shapes	
:А*
use_locking(
Щ
embedding/normalize/gamma/readIdentityembedding/normalize/gamma*
T0*,
_class"
 loc:@embedding/normalize/gamma*
_output_shapes	
:А
д
embedding/normalize/subSub*embedding/conv1d_1/conv1d/conv1d_1/Squeeze embedding/normalize/moments/mean*
T0*-
_output_shapes
:         їА
^
embedding/normalize/add/yConst*
valueB
 *w╠+2*
dtype0*
_output_shapes
: 
Ц
embedding/normalize/addAdd$embedding/normalize/moments/varianceembedding/normalize/add/y*
T0*,
_output_shapes
:         А
^
embedding/normalize/pow/yConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
Й
embedding/normalize/powPowembedding/normalize/addembedding/normalize/pow/y*
T0*,
_output_shapes
:         А
М
embedding/normalize/divRealDivembedding/normalize/subembedding/normalize/pow*
T0*-
_output_shapes
:         їА
П
embedding/normalize/mulMulembedding/normalize/gamma/readembedding/normalize/div*
T0*-
_output_shapes
:         їА
Р
embedding/normalize/add_1Addembedding/normalize/mulembedding/normalize/beta/read*
T0*-
_output_shapes
:         їА
i
embedding/ReluReluembedding/normalize/add_1*
T0*-
_output_shapes
:         їА
╦
Aembedding/conv1d_2/conv1d/kernel/Initializer/random_uniform/shapeConst*!
valueB"         *3
_class)
'%loc:@embedding/conv1d_2/conv1d/kernel*
dtype0*
_output_shapes
:
╣
?embedding/conv1d_2/conv1d/kernel/Initializer/random_uniform/minConst*
valueB
 *є5╜*3
_class)
'%loc:@embedding/conv1d_2/conv1d/kernel*
dtype0*
_output_shapes
: 
╣
?embedding/conv1d_2/conv1d/kernel/Initializer/random_uniform/maxConst*
valueB
 *є5=*3
_class)
'%loc:@embedding/conv1d_2/conv1d/kernel*
dtype0*
_output_shapes
: 
з
Iembedding/conv1d_2/conv1d/kernel/Initializer/random_uniform/RandomUniformRandomUniformAembedding/conv1d_2/conv1d/kernel/Initializer/random_uniform/shape*
dtype0*$
_output_shapes
:АА*

seed *
T0*3
_class)
'%loc:@embedding/conv1d_2/conv1d/kernel*
seed2 
Ю
?embedding/conv1d_2/conv1d/kernel/Initializer/random_uniform/subSub?embedding/conv1d_2/conv1d/kernel/Initializer/random_uniform/max?embedding/conv1d_2/conv1d/kernel/Initializer/random_uniform/min*
T0*3
_class)
'%loc:@embedding/conv1d_2/conv1d/kernel*
_output_shapes
: 
╢
?embedding/conv1d_2/conv1d/kernel/Initializer/random_uniform/mulMulIembedding/conv1d_2/conv1d/kernel/Initializer/random_uniform/RandomUniform?embedding/conv1d_2/conv1d/kernel/Initializer/random_uniform/sub*
T0*3
_class)
'%loc:@embedding/conv1d_2/conv1d/kernel*$
_output_shapes
:АА
и
;embedding/conv1d_2/conv1d/kernel/Initializer/random_uniformAdd?embedding/conv1d_2/conv1d/kernel/Initializer/random_uniform/mul?embedding/conv1d_2/conv1d/kernel/Initializer/random_uniform/min*
T0*3
_class)
'%loc:@embedding/conv1d_2/conv1d/kernel*$
_output_shapes
:АА
╒
 embedding/conv1d_2/conv1d/kernel
VariableV2*
dtype0*$
_output_shapes
:АА*
shared_name *3
_class)
'%loc:@embedding/conv1d_2/conv1d/kernel*
	container *
shape:АА
Э
'embedding/conv1d_2/conv1d/kernel/AssignAssign embedding/conv1d_2/conv1d/kernel;embedding/conv1d_2/conv1d/kernel/Initializer/random_uniform*
use_locking(*
T0*3
_class)
'%loc:@embedding/conv1d_2/conv1d/kernel*
validate_shape(*$
_output_shapes
:АА
╖
%embedding/conv1d_2/conv1d/kernel/readIdentity embedding/conv1d_2/conv1d/kernel*
T0*3
_class)
'%loc:@embedding/conv1d_2/conv1d/kernel*$
_output_shapes
:АА
q
'embedding/conv1d_2/conv1d/dilation_rateConst*
valueB:*
dtype0*
_output_shapes
:
s
1embedding/conv1d_2/conv1d/conv1d_1/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
╞
-embedding/conv1d_2/conv1d/conv1d_1/ExpandDims
ExpandDimsembedding/Relu1embedding/conv1d_2/conv1d/conv1d_1/ExpandDims/dim*
T0*1
_output_shapes
:         їА*

Tdim0
u
3embedding/conv1d_2/conv1d/conv1d_1/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
╪
/embedding/conv1d_2/conv1d/conv1d_1/ExpandDims_1
ExpandDims%embedding/conv1d_2/conv1d/kernel/read3embedding/conv1d_2/conv1d/conv1d_1/ExpandDims_1/dim*
T0*(
_output_shapes
:АА*

Tdim0
╜
)embedding/conv1d_2/conv1d/conv1d_1/Conv2DConv2D-embedding/conv1d_2/conv1d/conv1d_1/ExpandDims/embedding/conv1d_2/conv1d/conv1d_1/ExpandDims_1*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*1
_output_shapes
:         їА
п
*embedding/conv1d_2/conv1d/conv1d_1/SqueezeSqueeze)embedding/conv1d_2/conv1d/conv1d_1/Conv2D*
T0*-
_output_shapes
:         їА*
squeeze_dims

О
embedding/addAdd*embedding/conv1d_2/conv1d/conv1d_1/Squeezeembedding/dense/Relu*
T0*-
_output_shapes
:         їА
╧
Eembedding/highwaynet_0/dense1/kernel/Initializer/random_uniform/shapeConst*
valueB"      *7
_class-
+)loc:@embedding/highwaynet_0/dense1/kernel*
dtype0*
_output_shapes
:
┴
Cembedding/highwaynet_0/dense1/kernel/Initializer/random_uniform/minConst*
valueB
 *q─Ь╜*7
_class-
+)loc:@embedding/highwaynet_0/dense1/kernel*
dtype0*
_output_shapes
: 
┴
Cembedding/highwaynet_0/dense1/kernel/Initializer/random_uniform/maxConst*
valueB
 *q─Ь=*7
_class-
+)loc:@embedding/highwaynet_0/dense1/kernel*
dtype0*
_output_shapes
: 
п
Membedding/highwaynet_0/dense1/kernel/Initializer/random_uniform/RandomUniformRandomUniformEembedding/highwaynet_0/dense1/kernel/Initializer/random_uniform/shape*
dtype0* 
_output_shapes
:
АА*

seed *
T0*7
_class-
+)loc:@embedding/highwaynet_0/dense1/kernel*
seed2 
о
Cembedding/highwaynet_0/dense1/kernel/Initializer/random_uniform/subSubCembedding/highwaynet_0/dense1/kernel/Initializer/random_uniform/maxCembedding/highwaynet_0/dense1/kernel/Initializer/random_uniform/min*
T0*7
_class-
+)loc:@embedding/highwaynet_0/dense1/kernel*
_output_shapes
: 
┬
Cembedding/highwaynet_0/dense1/kernel/Initializer/random_uniform/mulMulMembedding/highwaynet_0/dense1/kernel/Initializer/random_uniform/RandomUniformCembedding/highwaynet_0/dense1/kernel/Initializer/random_uniform/sub*
T0*7
_class-
+)loc:@embedding/highwaynet_0/dense1/kernel* 
_output_shapes
:
АА
┤
?embedding/highwaynet_0/dense1/kernel/Initializer/random_uniformAddCembedding/highwaynet_0/dense1/kernel/Initializer/random_uniform/mulCembedding/highwaynet_0/dense1/kernel/Initializer/random_uniform/min*
T0*7
_class-
+)loc:@embedding/highwaynet_0/dense1/kernel* 
_output_shapes
:
АА
╒
$embedding/highwaynet_0/dense1/kernel
VariableV2*
dtype0* 
_output_shapes
:
АА*
shared_name *7
_class-
+)loc:@embedding/highwaynet_0/dense1/kernel*
	container *
shape:
АА
й
+embedding/highwaynet_0/dense1/kernel/AssignAssign$embedding/highwaynet_0/dense1/kernel?embedding/highwaynet_0/dense1/kernel/Initializer/random_uniform*
T0*7
_class-
+)loc:@embedding/highwaynet_0/dense1/kernel*
validate_shape(* 
_output_shapes
:
АА*
use_locking(
┐
)embedding/highwaynet_0/dense1/kernel/readIdentity$embedding/highwaynet_0/dense1/kernel*
T0*7
_class-
+)loc:@embedding/highwaynet_0/dense1/kernel* 
_output_shapes
:
АА
║
4embedding/highwaynet_0/dense1/bias/Initializer/zerosConst*
valueBА*    *5
_class+
)'loc:@embedding/highwaynet_0/dense1/bias*
dtype0*
_output_shapes	
:А
╟
"embedding/highwaynet_0/dense1/bias
VariableV2*
shared_name *5
_class+
)'loc:@embedding/highwaynet_0/dense1/bias*
	container *
shape:А*
dtype0*
_output_shapes	
:А
У
)embedding/highwaynet_0/dense1/bias/AssignAssign"embedding/highwaynet_0/dense1/bias4embedding/highwaynet_0/dense1/bias/Initializer/zeros*
T0*5
_class+
)'loc:@embedding/highwaynet_0/dense1/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(
┤
'embedding/highwaynet_0/dense1/bias/readIdentity"embedding/highwaynet_0/dense1/bias*
T0*5
_class+
)'loc:@embedding/highwaynet_0/dense1/bias*
_output_shapes	
:А
z
-embedding/highwaynet_0/dense1/Tensordot/ShapeShapeembedding/add*
T0*
out_type0*
_output_shapes
:
n
,embedding/highwaynet_0/dense1/Tensordot/RankConst*
value	B :*
dtype0*
_output_shapes
: 
v
,embedding/highwaynet_0/dense1/Tensordot/axesConst*
valueB:*
dtype0*
_output_shapes
:
x
6embedding/highwaynet_0/dense1/Tensordot/GreaterEqual/yConst*
value	B : *
dtype0*
_output_shapes
: 
╧
4embedding/highwaynet_0/dense1/Tensordot/GreaterEqualGreaterEqual,embedding/highwaynet_0/dense1/Tensordot/axes6embedding/highwaynet_0/dense1/Tensordot/GreaterEqual/y*
T0*
_output_shapes
:
Ю
,embedding/highwaynet_0/dense1/Tensordot/CastCast4embedding/highwaynet_0/dense1/Tensordot/GreaterEqual*

SrcT0
*
_output_shapes
:*

DstT0
│
+embedding/highwaynet_0/dense1/Tensordot/mulMul,embedding/highwaynet_0/dense1/Tensordot/Cast,embedding/highwaynet_0/dense1/Tensordot/axes*
T0*
_output_shapes
:
p
.embedding/highwaynet_0/dense1/Tensordot/Less/yConst*
value	B : *
dtype0*
_output_shapes
: 
╖
,embedding/highwaynet_0/dense1/Tensordot/LessLess,embedding/highwaynet_0/dense1/Tensordot/axes.embedding/highwaynet_0/dense1/Tensordot/Less/y*
T0*
_output_shapes
:
Ш
.embedding/highwaynet_0/dense1/Tensordot/Cast_1Cast,embedding/highwaynet_0/dense1/Tensordot/Less*

SrcT0
*
_output_shapes
:*

DstT0
│
+embedding/highwaynet_0/dense1/Tensordot/addAdd,embedding/highwaynet_0/dense1/Tensordot/axes,embedding/highwaynet_0/dense1/Tensordot/Rank*
T0*
_output_shapes
:
╢
-embedding/highwaynet_0/dense1/Tensordot/mul_1Mul.embedding/highwaynet_0/dense1/Tensordot/Cast_1+embedding/highwaynet_0/dense1/Tensordot/add*
T0*
_output_shapes
:
╡
-embedding/highwaynet_0/dense1/Tensordot/add_1Add+embedding/highwaynet_0/dense1/Tensordot/mul-embedding/highwaynet_0/dense1/Tensordot/mul_1*
T0*
_output_shapes
:
u
3embedding/highwaynet_0/dense1/Tensordot/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
u
3embedding/highwaynet_0/dense1/Tensordot/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ў
-embedding/highwaynet_0/dense1/Tensordot/rangeRange3embedding/highwaynet_0/dense1/Tensordot/range/start,embedding/highwaynet_0/dense1/Tensordot/Rank3embedding/highwaynet_0/dense1/Tensordot/range/delta*
_output_shapes
:*

Tidx0
ц
0embedding/highwaynet_0/dense1/Tensordot/ListDiffListDiff-embedding/highwaynet_0/dense1/Tensordot/range-embedding/highwaynet_0/dense1/Tensordot/add_1*
T0*
out_idx0*2
_output_shapes 
:         :         
ї
.embedding/highwaynet_0/dense1/Tensordot/GatherGather-embedding/highwaynet_0/dense1/Tensordot/Shape0embedding/highwaynet_0/dense1/Tensordot/ListDiff*
Tparams0*
validate_indices(*#
_output_shapes
:         *
Tindices0
ы
0embedding/highwaynet_0/dense1/Tensordot/Gather_1Gather-embedding/highwaynet_0/dense1/Tensordot/Shape-embedding/highwaynet_0/dense1/Tensordot/add_1*
Tindices0*
Tparams0*
validate_indices(*
_output_shapes
:
w
-embedding/highwaynet_0/dense1/Tensordot/ConstConst*
valueB: *
dtype0*
_output_shapes
:
╤
,embedding/highwaynet_0/dense1/Tensordot/ProdProd.embedding/highwaynet_0/dense1/Tensordot/Gather-embedding/highwaynet_0/dense1/Tensordot/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
y
/embedding/highwaynet_0/dense1/Tensordot/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
╫
.embedding/highwaynet_0/dense1/Tensordot/Prod_1Prod0embedding/highwaynet_0/dense1/Tensordot/Gather_1/embedding/highwaynet_0/dense1/Tensordot/Const_1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
u
3embedding/highwaynet_0/dense1/Tensordot/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ф
.embedding/highwaynet_0/dense1/Tensordot/concatConcatV20embedding/highwaynet_0/dense1/Tensordot/Gather_1.embedding/highwaynet_0/dense1/Tensordot/Gather3embedding/highwaynet_0/dense1/Tensordot/concat/axis*

Tidx0*
T0*
N*#
_output_shapes
:         
w
5embedding/highwaynet_0/dense1/Tensordot/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ч
0embedding/highwaynet_0/dense1/Tensordot/concat_1ConcatV20embedding/highwaynet_0/dense1/Tensordot/ListDiff-embedding/highwaynet_0/dense1/Tensordot/add_15embedding/highwaynet_0/dense1/Tensordot/concat_1/axis*
T0*
N*#
_output_shapes
:         *

Tidx0
═
-embedding/highwaynet_0/dense1/Tensordot/stackPack,embedding/highwaynet_0/dense1/Tensordot/Prod.embedding/highwaynet_0/dense1/Tensordot/Prod_1*
T0*

axis *
N*
_output_shapes
:
╘
1embedding/highwaynet_0/dense1/Tensordot/transpose	Transposeembedding/add0embedding/highwaynet_0/dense1/Tensordot/concat_1*
Tperm0*
T0*=
_output_shapes+
):'                           
х
/embedding/highwaynet_0/dense1/Tensordot/ReshapeReshape1embedding/highwaynet_0/dense1/Tensordot/transpose-embedding/highwaynet_0/dense1/Tensordot/stack*
T0*
Tshape0*0
_output_shapes
:                  
Й
8embedding/highwaynet_0/dense1/Tensordot/transpose_1/permConst*
valueB"       *
dtype0*
_output_shapes
:
▌
3embedding/highwaynet_0/dense1/Tensordot/transpose_1	Transpose)embedding/highwaynet_0/dense1/kernel/read8embedding/highwaynet_0/dense1/Tensordot/transpose_1/perm*
T0* 
_output_shapes
:
АА*
Tperm0
И
7embedding/highwaynet_0/dense1/Tensordot/Reshape_1/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
у
1embedding/highwaynet_0/dense1/Tensordot/Reshape_1Reshape3embedding/highwaynet_0/dense1/Tensordot/transpose_17embedding/highwaynet_0/dense1/Tensordot/Reshape_1/shape*
T0*
Tshape0* 
_output_shapes
:
АА
ї
.embedding/highwaynet_0/dense1/Tensordot/MatMulMatMul/embedding/highwaynet_0/dense1/Tensordot/Reshape1embedding/highwaynet_0/dense1/Tensordot/Reshape_1*
T0*(
_output_shapes
:         А*
transpose_a( *
transpose_b( 
z
/embedding/highwaynet_0/dense1/Tensordot/Const_2Const*
valueB:А*
dtype0*
_output_shapes
:
w
5embedding/highwaynet_0/dense1/Tensordot/concat_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ч
0embedding/highwaynet_0/dense1/Tensordot/concat_2ConcatV2.embedding/highwaynet_0/dense1/Tensordot/Gather/embedding/highwaynet_0/dense1/Tensordot/Const_25embedding/highwaynet_0/dense1/Tensordot/concat_2/axis*
T0*
N*#
_output_shapes
:         *

Tidx0
┌
'embedding/highwaynet_0/dense1/TensordotReshape.embedding/highwaynet_0/dense1/Tensordot/MatMul0embedding/highwaynet_0/dense1/Tensordot/concat_2*
T0*
Tshape0*-
_output_shapes
:         їА
╤
%embedding/highwaynet_0/dense1/BiasAddBiasAdd'embedding/highwaynet_0/dense1/Tensordot'embedding/highwaynet_0/dense1/bias/read*
T0*
data_formatNHWC*-
_output_shapes
:         їА
Й
"embedding/highwaynet_0/dense1/ReluRelu%embedding/highwaynet_0/dense1/BiasAdd*
T0*-
_output_shapes
:         їА
╧
Eembedding/highwaynet_0/dense2/kernel/Initializer/random_uniform/shapeConst*
valueB"      *7
_class-
+)loc:@embedding/highwaynet_0/dense2/kernel*
dtype0*
_output_shapes
:
┴
Cembedding/highwaynet_0/dense2/kernel/Initializer/random_uniform/minConst*
valueB
 *q─Ь╜*7
_class-
+)loc:@embedding/highwaynet_0/dense2/kernel*
dtype0*
_output_shapes
: 
┴
Cembedding/highwaynet_0/dense2/kernel/Initializer/random_uniform/maxConst*
valueB
 *q─Ь=*7
_class-
+)loc:@embedding/highwaynet_0/dense2/kernel*
dtype0*
_output_shapes
: 
п
Membedding/highwaynet_0/dense2/kernel/Initializer/random_uniform/RandomUniformRandomUniformEembedding/highwaynet_0/dense2/kernel/Initializer/random_uniform/shape*

seed *
T0*7
_class-
+)loc:@embedding/highwaynet_0/dense2/kernel*
seed2 *
dtype0* 
_output_shapes
:
АА
о
Cembedding/highwaynet_0/dense2/kernel/Initializer/random_uniform/subSubCembedding/highwaynet_0/dense2/kernel/Initializer/random_uniform/maxCembedding/highwaynet_0/dense2/kernel/Initializer/random_uniform/min*
T0*7
_class-
+)loc:@embedding/highwaynet_0/dense2/kernel*
_output_shapes
: 
┬
Cembedding/highwaynet_0/dense2/kernel/Initializer/random_uniform/mulMulMembedding/highwaynet_0/dense2/kernel/Initializer/random_uniform/RandomUniformCembedding/highwaynet_0/dense2/kernel/Initializer/random_uniform/sub*
T0*7
_class-
+)loc:@embedding/highwaynet_0/dense2/kernel* 
_output_shapes
:
АА
┤
?embedding/highwaynet_0/dense2/kernel/Initializer/random_uniformAddCembedding/highwaynet_0/dense2/kernel/Initializer/random_uniform/mulCembedding/highwaynet_0/dense2/kernel/Initializer/random_uniform/min*
T0*7
_class-
+)loc:@embedding/highwaynet_0/dense2/kernel* 
_output_shapes
:
АА
╒
$embedding/highwaynet_0/dense2/kernel
VariableV2*
shape:
АА*
dtype0* 
_output_shapes
:
АА*
shared_name *7
_class-
+)loc:@embedding/highwaynet_0/dense2/kernel*
	container 
й
+embedding/highwaynet_0/dense2/kernel/AssignAssign$embedding/highwaynet_0/dense2/kernel?embedding/highwaynet_0/dense2/kernel/Initializer/random_uniform*
use_locking(*
T0*7
_class-
+)loc:@embedding/highwaynet_0/dense2/kernel*
validate_shape(* 
_output_shapes
:
АА
┐
)embedding/highwaynet_0/dense2/kernel/readIdentity$embedding/highwaynet_0/dense2/kernel*
T0*7
_class-
+)loc:@embedding/highwaynet_0/dense2/kernel* 
_output_shapes
:
АА
║
4embedding/highwaynet_0/dense2/bias/Initializer/ConstConst*
valueBА*  А┐*5
_class+
)'loc:@embedding/highwaynet_0/dense2/bias*
dtype0*
_output_shapes	
:А
╟
"embedding/highwaynet_0/dense2/bias
VariableV2*
dtype0*
_output_shapes	
:А*
shared_name *5
_class+
)'loc:@embedding/highwaynet_0/dense2/bias*
	container *
shape:А
У
)embedding/highwaynet_0/dense2/bias/AssignAssign"embedding/highwaynet_0/dense2/bias4embedding/highwaynet_0/dense2/bias/Initializer/Const*
T0*5
_class+
)'loc:@embedding/highwaynet_0/dense2/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(
┤
'embedding/highwaynet_0/dense2/bias/readIdentity"embedding/highwaynet_0/dense2/bias*
T0*5
_class+
)'loc:@embedding/highwaynet_0/dense2/bias*
_output_shapes	
:А
z
-embedding/highwaynet_0/dense2/Tensordot/ShapeShapeembedding/add*
T0*
out_type0*
_output_shapes
:
n
,embedding/highwaynet_0/dense2/Tensordot/RankConst*
value	B :*
dtype0*
_output_shapes
: 
v
,embedding/highwaynet_0/dense2/Tensordot/axesConst*
valueB:*
dtype0*
_output_shapes
:
x
6embedding/highwaynet_0/dense2/Tensordot/GreaterEqual/yConst*
value	B : *
dtype0*
_output_shapes
: 
╧
4embedding/highwaynet_0/dense2/Tensordot/GreaterEqualGreaterEqual,embedding/highwaynet_0/dense2/Tensordot/axes6embedding/highwaynet_0/dense2/Tensordot/GreaterEqual/y*
T0*
_output_shapes
:
Ю
,embedding/highwaynet_0/dense2/Tensordot/CastCast4embedding/highwaynet_0/dense2/Tensordot/GreaterEqual*

SrcT0
*
_output_shapes
:*

DstT0
│
+embedding/highwaynet_0/dense2/Tensordot/mulMul,embedding/highwaynet_0/dense2/Tensordot/Cast,embedding/highwaynet_0/dense2/Tensordot/axes*
T0*
_output_shapes
:
p
.embedding/highwaynet_0/dense2/Tensordot/Less/yConst*
value	B : *
dtype0*
_output_shapes
: 
╖
,embedding/highwaynet_0/dense2/Tensordot/LessLess,embedding/highwaynet_0/dense2/Tensordot/axes.embedding/highwaynet_0/dense2/Tensordot/Less/y*
T0*
_output_shapes
:
Ш
.embedding/highwaynet_0/dense2/Tensordot/Cast_1Cast,embedding/highwaynet_0/dense2/Tensordot/Less*

SrcT0
*
_output_shapes
:*

DstT0
│
+embedding/highwaynet_0/dense2/Tensordot/addAdd,embedding/highwaynet_0/dense2/Tensordot/axes,embedding/highwaynet_0/dense2/Tensordot/Rank*
T0*
_output_shapes
:
╢
-embedding/highwaynet_0/dense2/Tensordot/mul_1Mul.embedding/highwaynet_0/dense2/Tensordot/Cast_1+embedding/highwaynet_0/dense2/Tensordot/add*
T0*
_output_shapes
:
╡
-embedding/highwaynet_0/dense2/Tensordot/add_1Add+embedding/highwaynet_0/dense2/Tensordot/mul-embedding/highwaynet_0/dense2/Tensordot/mul_1*
T0*
_output_shapes
:
u
3embedding/highwaynet_0/dense2/Tensordot/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
u
3embedding/highwaynet_0/dense2/Tensordot/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ў
-embedding/highwaynet_0/dense2/Tensordot/rangeRange3embedding/highwaynet_0/dense2/Tensordot/range/start,embedding/highwaynet_0/dense2/Tensordot/Rank3embedding/highwaynet_0/dense2/Tensordot/range/delta*
_output_shapes
:*

Tidx0
ц
0embedding/highwaynet_0/dense2/Tensordot/ListDiffListDiff-embedding/highwaynet_0/dense2/Tensordot/range-embedding/highwaynet_0/dense2/Tensordot/add_1*
T0*
out_idx0*2
_output_shapes 
:         :         
ї
.embedding/highwaynet_0/dense2/Tensordot/GatherGather-embedding/highwaynet_0/dense2/Tensordot/Shape0embedding/highwaynet_0/dense2/Tensordot/ListDiff*
Tindices0*
Tparams0*
validate_indices(*#
_output_shapes
:         
ы
0embedding/highwaynet_0/dense2/Tensordot/Gather_1Gather-embedding/highwaynet_0/dense2/Tensordot/Shape-embedding/highwaynet_0/dense2/Tensordot/add_1*
Tparams0*
validate_indices(*
_output_shapes
:*
Tindices0
w
-embedding/highwaynet_0/dense2/Tensordot/ConstConst*
valueB: *
dtype0*
_output_shapes
:
╤
,embedding/highwaynet_0/dense2/Tensordot/ProdProd.embedding/highwaynet_0/dense2/Tensordot/Gather-embedding/highwaynet_0/dense2/Tensordot/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
y
/embedding/highwaynet_0/dense2/Tensordot/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
╫
.embedding/highwaynet_0/dense2/Tensordot/Prod_1Prod0embedding/highwaynet_0/dense2/Tensordot/Gather_1/embedding/highwaynet_0/dense2/Tensordot/Const_1*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
u
3embedding/highwaynet_0/dense2/Tensordot/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ф
.embedding/highwaynet_0/dense2/Tensordot/concatConcatV20embedding/highwaynet_0/dense2/Tensordot/Gather_1.embedding/highwaynet_0/dense2/Tensordot/Gather3embedding/highwaynet_0/dense2/Tensordot/concat/axis*

Tidx0*
T0*
N*#
_output_shapes
:         
w
5embedding/highwaynet_0/dense2/Tensordot/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ч
0embedding/highwaynet_0/dense2/Tensordot/concat_1ConcatV20embedding/highwaynet_0/dense2/Tensordot/ListDiff-embedding/highwaynet_0/dense2/Tensordot/add_15embedding/highwaynet_0/dense2/Tensordot/concat_1/axis*

Tidx0*
T0*
N*#
_output_shapes
:         
═
-embedding/highwaynet_0/dense2/Tensordot/stackPack,embedding/highwaynet_0/dense2/Tensordot/Prod.embedding/highwaynet_0/dense2/Tensordot/Prod_1*
T0*

axis *
N*
_output_shapes
:
╘
1embedding/highwaynet_0/dense2/Tensordot/transpose	Transposeembedding/add0embedding/highwaynet_0/dense2/Tensordot/concat_1*
Tperm0*
T0*=
_output_shapes+
):'                           
х
/embedding/highwaynet_0/dense2/Tensordot/ReshapeReshape1embedding/highwaynet_0/dense2/Tensordot/transpose-embedding/highwaynet_0/dense2/Tensordot/stack*
T0*
Tshape0*0
_output_shapes
:                  
Й
8embedding/highwaynet_0/dense2/Tensordot/transpose_1/permConst*
valueB"       *
dtype0*
_output_shapes
:
▌
3embedding/highwaynet_0/dense2/Tensordot/transpose_1	Transpose)embedding/highwaynet_0/dense2/kernel/read8embedding/highwaynet_0/dense2/Tensordot/transpose_1/perm*
T0* 
_output_shapes
:
АА*
Tperm0
И
7embedding/highwaynet_0/dense2/Tensordot/Reshape_1/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
у
1embedding/highwaynet_0/dense2/Tensordot/Reshape_1Reshape3embedding/highwaynet_0/dense2/Tensordot/transpose_17embedding/highwaynet_0/dense2/Tensordot/Reshape_1/shape*
T0*
Tshape0* 
_output_shapes
:
АА
ї
.embedding/highwaynet_0/dense2/Tensordot/MatMulMatMul/embedding/highwaynet_0/dense2/Tensordot/Reshape1embedding/highwaynet_0/dense2/Tensordot/Reshape_1*
transpose_b( *
T0*(
_output_shapes
:         А*
transpose_a( 
z
/embedding/highwaynet_0/dense2/Tensordot/Const_2Const*
valueB:А*
dtype0*
_output_shapes
:
w
5embedding/highwaynet_0/dense2/Tensordot/concat_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ч
0embedding/highwaynet_0/dense2/Tensordot/concat_2ConcatV2.embedding/highwaynet_0/dense2/Tensordot/Gather/embedding/highwaynet_0/dense2/Tensordot/Const_25embedding/highwaynet_0/dense2/Tensordot/concat_2/axis*
T0*
N*#
_output_shapes
:         *

Tidx0
┌
'embedding/highwaynet_0/dense2/TensordotReshape.embedding/highwaynet_0/dense2/Tensordot/MatMul0embedding/highwaynet_0/dense2/Tensordot/concat_2*
T0*
Tshape0*-
_output_shapes
:         їА
╤
%embedding/highwaynet_0/dense2/BiasAddBiasAdd'embedding/highwaynet_0/dense2/Tensordot'embedding/highwaynet_0/dense2/bias/read*
T0*
data_formatNHWC*-
_output_shapes
:         їА
П
%embedding/highwaynet_0/dense2/SigmoidSigmoid%embedding/highwaynet_0/dense2/BiasAdd*
T0*-
_output_shapes
:         їА
a
embedding/highwaynet_0/sub/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
Ю
embedding/highwaynet_0/subSubembedding/highwaynet_0/sub/x%embedding/highwaynet_0/dense2/Sigmoid*
T0*-
_output_shapes
:         їА
д
embedding/highwaynet_0/mulMul"embedding/highwaynet_0/dense1/Relu%embedding/highwaynet_0/dense2/Sigmoid*
T0*-
_output_shapes
:         їА
Ж
embedding/highwaynet_0/mul_1Mulembedding/addembedding/highwaynet_0/sub*
T0*-
_output_shapes
:         їА
У
embedding/highwaynet_0/addAddembedding/highwaynet_0/mulembedding/highwaynet_0/mul_1*
T0*-
_output_shapes
:         їА
╧
Eembedding/highwaynet_1/dense1/kernel/Initializer/random_uniform/shapeConst*
valueB"      *7
_class-
+)loc:@embedding/highwaynet_1/dense1/kernel*
dtype0*
_output_shapes
:
┴
Cembedding/highwaynet_1/dense1/kernel/Initializer/random_uniform/minConst*
valueB
 *q─Ь╜*7
_class-
+)loc:@embedding/highwaynet_1/dense1/kernel*
dtype0*
_output_shapes
: 
┴
Cembedding/highwaynet_1/dense1/kernel/Initializer/random_uniform/maxConst*
valueB
 *q─Ь=*7
_class-
+)loc:@embedding/highwaynet_1/dense1/kernel*
dtype0*
_output_shapes
: 
п
Membedding/highwaynet_1/dense1/kernel/Initializer/random_uniform/RandomUniformRandomUniformEembedding/highwaynet_1/dense1/kernel/Initializer/random_uniform/shape*
dtype0* 
_output_shapes
:
АА*

seed *
T0*7
_class-
+)loc:@embedding/highwaynet_1/dense1/kernel*
seed2 
о
Cembedding/highwaynet_1/dense1/kernel/Initializer/random_uniform/subSubCembedding/highwaynet_1/dense1/kernel/Initializer/random_uniform/maxCembedding/highwaynet_1/dense1/kernel/Initializer/random_uniform/min*
T0*7
_class-
+)loc:@embedding/highwaynet_1/dense1/kernel*
_output_shapes
: 
┬
Cembedding/highwaynet_1/dense1/kernel/Initializer/random_uniform/mulMulMembedding/highwaynet_1/dense1/kernel/Initializer/random_uniform/RandomUniformCembedding/highwaynet_1/dense1/kernel/Initializer/random_uniform/sub*
T0*7
_class-
+)loc:@embedding/highwaynet_1/dense1/kernel* 
_output_shapes
:
АА
┤
?embedding/highwaynet_1/dense1/kernel/Initializer/random_uniformAddCembedding/highwaynet_1/dense1/kernel/Initializer/random_uniform/mulCembedding/highwaynet_1/dense1/kernel/Initializer/random_uniform/min*
T0*7
_class-
+)loc:@embedding/highwaynet_1/dense1/kernel* 
_output_shapes
:
АА
╒
$embedding/highwaynet_1/dense1/kernel
VariableV2*
shared_name *7
_class-
+)loc:@embedding/highwaynet_1/dense1/kernel*
	container *
shape:
АА*
dtype0* 
_output_shapes
:
АА
й
+embedding/highwaynet_1/dense1/kernel/AssignAssign$embedding/highwaynet_1/dense1/kernel?embedding/highwaynet_1/dense1/kernel/Initializer/random_uniform*
use_locking(*
T0*7
_class-
+)loc:@embedding/highwaynet_1/dense1/kernel*
validate_shape(* 
_output_shapes
:
АА
┐
)embedding/highwaynet_1/dense1/kernel/readIdentity$embedding/highwaynet_1/dense1/kernel*
T0*7
_class-
+)loc:@embedding/highwaynet_1/dense1/kernel* 
_output_shapes
:
АА
║
4embedding/highwaynet_1/dense1/bias/Initializer/zerosConst*
valueBА*    *5
_class+
)'loc:@embedding/highwaynet_1/dense1/bias*
dtype0*
_output_shapes	
:А
╟
"embedding/highwaynet_1/dense1/bias
VariableV2*5
_class+
)'loc:@embedding/highwaynet_1/dense1/bias*
	container *
shape:А*
dtype0*
_output_shapes	
:А*
shared_name 
У
)embedding/highwaynet_1/dense1/bias/AssignAssign"embedding/highwaynet_1/dense1/bias4embedding/highwaynet_1/dense1/bias/Initializer/zeros*
use_locking(*
T0*5
_class+
)'loc:@embedding/highwaynet_1/dense1/bias*
validate_shape(*
_output_shapes	
:А
┤
'embedding/highwaynet_1/dense1/bias/readIdentity"embedding/highwaynet_1/dense1/bias*
T0*5
_class+
)'loc:@embedding/highwaynet_1/dense1/bias*
_output_shapes	
:А
З
-embedding/highwaynet_1/dense1/Tensordot/ShapeShapeembedding/highwaynet_0/add*
T0*
out_type0*
_output_shapes
:
n
,embedding/highwaynet_1/dense1/Tensordot/RankConst*
value	B :*
dtype0*
_output_shapes
: 
v
,embedding/highwaynet_1/dense1/Tensordot/axesConst*
valueB:*
dtype0*
_output_shapes
:
x
6embedding/highwaynet_1/dense1/Tensordot/GreaterEqual/yConst*
value	B : *
dtype0*
_output_shapes
: 
╧
4embedding/highwaynet_1/dense1/Tensordot/GreaterEqualGreaterEqual,embedding/highwaynet_1/dense1/Tensordot/axes6embedding/highwaynet_1/dense1/Tensordot/GreaterEqual/y*
T0*
_output_shapes
:
Ю
,embedding/highwaynet_1/dense1/Tensordot/CastCast4embedding/highwaynet_1/dense1/Tensordot/GreaterEqual*

SrcT0
*
_output_shapes
:*

DstT0
│
+embedding/highwaynet_1/dense1/Tensordot/mulMul,embedding/highwaynet_1/dense1/Tensordot/Cast,embedding/highwaynet_1/dense1/Tensordot/axes*
T0*
_output_shapes
:
p
.embedding/highwaynet_1/dense1/Tensordot/Less/yConst*
value	B : *
dtype0*
_output_shapes
: 
╖
,embedding/highwaynet_1/dense1/Tensordot/LessLess,embedding/highwaynet_1/dense1/Tensordot/axes.embedding/highwaynet_1/dense1/Tensordot/Less/y*
T0*
_output_shapes
:
Ш
.embedding/highwaynet_1/dense1/Tensordot/Cast_1Cast,embedding/highwaynet_1/dense1/Tensordot/Less*

SrcT0
*
_output_shapes
:*

DstT0
│
+embedding/highwaynet_1/dense1/Tensordot/addAdd,embedding/highwaynet_1/dense1/Tensordot/axes,embedding/highwaynet_1/dense1/Tensordot/Rank*
T0*
_output_shapes
:
╢
-embedding/highwaynet_1/dense1/Tensordot/mul_1Mul.embedding/highwaynet_1/dense1/Tensordot/Cast_1+embedding/highwaynet_1/dense1/Tensordot/add*
T0*
_output_shapes
:
╡
-embedding/highwaynet_1/dense1/Tensordot/add_1Add+embedding/highwaynet_1/dense1/Tensordot/mul-embedding/highwaynet_1/dense1/Tensordot/mul_1*
T0*
_output_shapes
:
u
3embedding/highwaynet_1/dense1/Tensordot/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
u
3embedding/highwaynet_1/dense1/Tensordot/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ў
-embedding/highwaynet_1/dense1/Tensordot/rangeRange3embedding/highwaynet_1/dense1/Tensordot/range/start,embedding/highwaynet_1/dense1/Tensordot/Rank3embedding/highwaynet_1/dense1/Tensordot/range/delta*

Tidx0*
_output_shapes
:
ц
0embedding/highwaynet_1/dense1/Tensordot/ListDiffListDiff-embedding/highwaynet_1/dense1/Tensordot/range-embedding/highwaynet_1/dense1/Tensordot/add_1*
T0*
out_idx0*2
_output_shapes 
:         :         
ї
.embedding/highwaynet_1/dense1/Tensordot/GatherGather-embedding/highwaynet_1/dense1/Tensordot/Shape0embedding/highwaynet_1/dense1/Tensordot/ListDiff*
Tparams0*
validate_indices(*#
_output_shapes
:         *
Tindices0
ы
0embedding/highwaynet_1/dense1/Tensordot/Gather_1Gather-embedding/highwaynet_1/dense1/Tensordot/Shape-embedding/highwaynet_1/dense1/Tensordot/add_1*
Tparams0*
validate_indices(*
_output_shapes
:*
Tindices0
w
-embedding/highwaynet_1/dense1/Tensordot/ConstConst*
valueB: *
dtype0*
_output_shapes
:
╤
,embedding/highwaynet_1/dense1/Tensordot/ProdProd.embedding/highwaynet_1/dense1/Tensordot/Gather-embedding/highwaynet_1/dense1/Tensordot/Const*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
y
/embedding/highwaynet_1/dense1/Tensordot/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
╫
.embedding/highwaynet_1/dense1/Tensordot/Prod_1Prod0embedding/highwaynet_1/dense1/Tensordot/Gather_1/embedding/highwaynet_1/dense1/Tensordot/Const_1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
u
3embedding/highwaynet_1/dense1/Tensordot/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ф
.embedding/highwaynet_1/dense1/Tensordot/concatConcatV20embedding/highwaynet_1/dense1/Tensordot/Gather_1.embedding/highwaynet_1/dense1/Tensordot/Gather3embedding/highwaynet_1/dense1/Tensordot/concat/axis*
T0*
N*#
_output_shapes
:         *

Tidx0
w
5embedding/highwaynet_1/dense1/Tensordot/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ч
0embedding/highwaynet_1/dense1/Tensordot/concat_1ConcatV20embedding/highwaynet_1/dense1/Tensordot/ListDiff-embedding/highwaynet_1/dense1/Tensordot/add_15embedding/highwaynet_1/dense1/Tensordot/concat_1/axis*

Tidx0*
T0*
N*#
_output_shapes
:         
═
-embedding/highwaynet_1/dense1/Tensordot/stackPack,embedding/highwaynet_1/dense1/Tensordot/Prod.embedding/highwaynet_1/dense1/Tensordot/Prod_1*
T0*

axis *
N*
_output_shapes
:
с
1embedding/highwaynet_1/dense1/Tensordot/transpose	Transposeembedding/highwaynet_0/add0embedding/highwaynet_1/dense1/Tensordot/concat_1*
T0*=
_output_shapes+
):'                           *
Tperm0
х
/embedding/highwaynet_1/dense1/Tensordot/ReshapeReshape1embedding/highwaynet_1/dense1/Tensordot/transpose-embedding/highwaynet_1/dense1/Tensordot/stack*
T0*
Tshape0*0
_output_shapes
:                  
Й
8embedding/highwaynet_1/dense1/Tensordot/transpose_1/permConst*
valueB"       *
dtype0*
_output_shapes
:
▌
3embedding/highwaynet_1/dense1/Tensordot/transpose_1	Transpose)embedding/highwaynet_1/dense1/kernel/read8embedding/highwaynet_1/dense1/Tensordot/transpose_1/perm*
T0* 
_output_shapes
:
АА*
Tperm0
И
7embedding/highwaynet_1/dense1/Tensordot/Reshape_1/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
у
1embedding/highwaynet_1/dense1/Tensordot/Reshape_1Reshape3embedding/highwaynet_1/dense1/Tensordot/transpose_17embedding/highwaynet_1/dense1/Tensordot/Reshape_1/shape*
T0*
Tshape0* 
_output_shapes
:
АА
ї
.embedding/highwaynet_1/dense1/Tensordot/MatMulMatMul/embedding/highwaynet_1/dense1/Tensordot/Reshape1embedding/highwaynet_1/dense1/Tensordot/Reshape_1*
transpose_b( *
T0*(
_output_shapes
:         А*
transpose_a( 
z
/embedding/highwaynet_1/dense1/Tensordot/Const_2Const*
valueB:А*
dtype0*
_output_shapes
:
w
5embedding/highwaynet_1/dense1/Tensordot/concat_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ч
0embedding/highwaynet_1/dense1/Tensordot/concat_2ConcatV2.embedding/highwaynet_1/dense1/Tensordot/Gather/embedding/highwaynet_1/dense1/Tensordot/Const_25embedding/highwaynet_1/dense1/Tensordot/concat_2/axis*
T0*
N*#
_output_shapes
:         *

Tidx0
┌
'embedding/highwaynet_1/dense1/TensordotReshape.embedding/highwaynet_1/dense1/Tensordot/MatMul0embedding/highwaynet_1/dense1/Tensordot/concat_2*
T0*
Tshape0*-
_output_shapes
:         їА
╤
%embedding/highwaynet_1/dense1/BiasAddBiasAdd'embedding/highwaynet_1/dense1/Tensordot'embedding/highwaynet_1/dense1/bias/read*
T0*
data_formatNHWC*-
_output_shapes
:         їА
Й
"embedding/highwaynet_1/dense1/ReluRelu%embedding/highwaynet_1/dense1/BiasAdd*
T0*-
_output_shapes
:         їА
╧
Eembedding/highwaynet_1/dense2/kernel/Initializer/random_uniform/shapeConst*
valueB"      *7
_class-
+)loc:@embedding/highwaynet_1/dense2/kernel*
dtype0*
_output_shapes
:
┴
Cembedding/highwaynet_1/dense2/kernel/Initializer/random_uniform/minConst*
valueB
 *q─Ь╜*7
_class-
+)loc:@embedding/highwaynet_1/dense2/kernel*
dtype0*
_output_shapes
: 
┴
Cembedding/highwaynet_1/dense2/kernel/Initializer/random_uniform/maxConst*
valueB
 *q─Ь=*7
_class-
+)loc:@embedding/highwaynet_1/dense2/kernel*
dtype0*
_output_shapes
: 
п
Membedding/highwaynet_1/dense2/kernel/Initializer/random_uniform/RandomUniformRandomUniformEembedding/highwaynet_1/dense2/kernel/Initializer/random_uniform/shape*
dtype0* 
_output_shapes
:
АА*

seed *
T0*7
_class-
+)loc:@embedding/highwaynet_1/dense2/kernel*
seed2 
о
Cembedding/highwaynet_1/dense2/kernel/Initializer/random_uniform/subSubCembedding/highwaynet_1/dense2/kernel/Initializer/random_uniform/maxCembedding/highwaynet_1/dense2/kernel/Initializer/random_uniform/min*
T0*7
_class-
+)loc:@embedding/highwaynet_1/dense2/kernel*
_output_shapes
: 
┬
Cembedding/highwaynet_1/dense2/kernel/Initializer/random_uniform/mulMulMembedding/highwaynet_1/dense2/kernel/Initializer/random_uniform/RandomUniformCembedding/highwaynet_1/dense2/kernel/Initializer/random_uniform/sub*
T0*7
_class-
+)loc:@embedding/highwaynet_1/dense2/kernel* 
_output_shapes
:
АА
┤
?embedding/highwaynet_1/dense2/kernel/Initializer/random_uniformAddCembedding/highwaynet_1/dense2/kernel/Initializer/random_uniform/mulCembedding/highwaynet_1/dense2/kernel/Initializer/random_uniform/min*
T0*7
_class-
+)loc:@embedding/highwaynet_1/dense2/kernel* 
_output_shapes
:
АА
╒
$embedding/highwaynet_1/dense2/kernel
VariableV2*
shared_name *7
_class-
+)loc:@embedding/highwaynet_1/dense2/kernel*
	container *
shape:
АА*
dtype0* 
_output_shapes
:
АА
й
+embedding/highwaynet_1/dense2/kernel/AssignAssign$embedding/highwaynet_1/dense2/kernel?embedding/highwaynet_1/dense2/kernel/Initializer/random_uniform*
use_locking(*
T0*7
_class-
+)loc:@embedding/highwaynet_1/dense2/kernel*
validate_shape(* 
_output_shapes
:
АА
┐
)embedding/highwaynet_1/dense2/kernel/readIdentity$embedding/highwaynet_1/dense2/kernel*
T0*7
_class-
+)loc:@embedding/highwaynet_1/dense2/kernel* 
_output_shapes
:
АА
║
4embedding/highwaynet_1/dense2/bias/Initializer/ConstConst*
valueBА*  А┐*5
_class+
)'loc:@embedding/highwaynet_1/dense2/bias*
dtype0*
_output_shapes	
:А
╟
"embedding/highwaynet_1/dense2/bias
VariableV2*
dtype0*
_output_shapes	
:А*
shared_name *5
_class+
)'loc:@embedding/highwaynet_1/dense2/bias*
	container *
shape:А
У
)embedding/highwaynet_1/dense2/bias/AssignAssign"embedding/highwaynet_1/dense2/bias4embedding/highwaynet_1/dense2/bias/Initializer/Const*
T0*5
_class+
)'loc:@embedding/highwaynet_1/dense2/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(
┤
'embedding/highwaynet_1/dense2/bias/readIdentity"embedding/highwaynet_1/dense2/bias*
T0*5
_class+
)'loc:@embedding/highwaynet_1/dense2/bias*
_output_shapes	
:А
З
-embedding/highwaynet_1/dense2/Tensordot/ShapeShapeembedding/highwaynet_0/add*
T0*
out_type0*
_output_shapes
:
n
,embedding/highwaynet_1/dense2/Tensordot/RankConst*
value	B :*
dtype0*
_output_shapes
: 
v
,embedding/highwaynet_1/dense2/Tensordot/axesConst*
valueB:*
dtype0*
_output_shapes
:
x
6embedding/highwaynet_1/dense2/Tensordot/GreaterEqual/yConst*
value	B : *
dtype0*
_output_shapes
: 
╧
4embedding/highwaynet_1/dense2/Tensordot/GreaterEqualGreaterEqual,embedding/highwaynet_1/dense2/Tensordot/axes6embedding/highwaynet_1/dense2/Tensordot/GreaterEqual/y*
T0*
_output_shapes
:
Ю
,embedding/highwaynet_1/dense2/Tensordot/CastCast4embedding/highwaynet_1/dense2/Tensordot/GreaterEqual*

SrcT0
*
_output_shapes
:*

DstT0
│
+embedding/highwaynet_1/dense2/Tensordot/mulMul,embedding/highwaynet_1/dense2/Tensordot/Cast,embedding/highwaynet_1/dense2/Tensordot/axes*
T0*
_output_shapes
:
p
.embedding/highwaynet_1/dense2/Tensordot/Less/yConst*
value	B : *
dtype0*
_output_shapes
: 
╖
,embedding/highwaynet_1/dense2/Tensordot/LessLess,embedding/highwaynet_1/dense2/Tensordot/axes.embedding/highwaynet_1/dense2/Tensordot/Less/y*
T0*
_output_shapes
:
Ш
.embedding/highwaynet_1/dense2/Tensordot/Cast_1Cast,embedding/highwaynet_1/dense2/Tensordot/Less*

SrcT0
*
_output_shapes
:*

DstT0
│
+embedding/highwaynet_1/dense2/Tensordot/addAdd,embedding/highwaynet_1/dense2/Tensordot/axes,embedding/highwaynet_1/dense2/Tensordot/Rank*
T0*
_output_shapes
:
╢
-embedding/highwaynet_1/dense2/Tensordot/mul_1Mul.embedding/highwaynet_1/dense2/Tensordot/Cast_1+embedding/highwaynet_1/dense2/Tensordot/add*
T0*
_output_shapes
:
╡
-embedding/highwaynet_1/dense2/Tensordot/add_1Add+embedding/highwaynet_1/dense2/Tensordot/mul-embedding/highwaynet_1/dense2/Tensordot/mul_1*
T0*
_output_shapes
:
u
3embedding/highwaynet_1/dense2/Tensordot/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
u
3embedding/highwaynet_1/dense2/Tensordot/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ў
-embedding/highwaynet_1/dense2/Tensordot/rangeRange3embedding/highwaynet_1/dense2/Tensordot/range/start,embedding/highwaynet_1/dense2/Tensordot/Rank3embedding/highwaynet_1/dense2/Tensordot/range/delta*
_output_shapes
:*

Tidx0
ц
0embedding/highwaynet_1/dense2/Tensordot/ListDiffListDiff-embedding/highwaynet_1/dense2/Tensordot/range-embedding/highwaynet_1/dense2/Tensordot/add_1*
T0*
out_idx0*2
_output_shapes 
:         :         
ї
.embedding/highwaynet_1/dense2/Tensordot/GatherGather-embedding/highwaynet_1/dense2/Tensordot/Shape0embedding/highwaynet_1/dense2/Tensordot/ListDiff*
Tparams0*
validate_indices(*#
_output_shapes
:         *
Tindices0
ы
0embedding/highwaynet_1/dense2/Tensordot/Gather_1Gather-embedding/highwaynet_1/dense2/Tensordot/Shape-embedding/highwaynet_1/dense2/Tensordot/add_1*
Tparams0*
validate_indices(*
_output_shapes
:*
Tindices0
w
-embedding/highwaynet_1/dense2/Tensordot/ConstConst*
valueB: *
dtype0*
_output_shapes
:
╤
,embedding/highwaynet_1/dense2/Tensordot/ProdProd.embedding/highwaynet_1/dense2/Tensordot/Gather-embedding/highwaynet_1/dense2/Tensordot/Const*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
y
/embedding/highwaynet_1/dense2/Tensordot/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
╫
.embedding/highwaynet_1/dense2/Tensordot/Prod_1Prod0embedding/highwaynet_1/dense2/Tensordot/Gather_1/embedding/highwaynet_1/dense2/Tensordot/Const_1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
u
3embedding/highwaynet_1/dense2/Tensordot/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ф
.embedding/highwaynet_1/dense2/Tensordot/concatConcatV20embedding/highwaynet_1/dense2/Tensordot/Gather_1.embedding/highwaynet_1/dense2/Tensordot/Gather3embedding/highwaynet_1/dense2/Tensordot/concat/axis*
T0*
N*#
_output_shapes
:         *

Tidx0
w
5embedding/highwaynet_1/dense2/Tensordot/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ч
0embedding/highwaynet_1/dense2/Tensordot/concat_1ConcatV20embedding/highwaynet_1/dense2/Tensordot/ListDiff-embedding/highwaynet_1/dense2/Tensordot/add_15embedding/highwaynet_1/dense2/Tensordot/concat_1/axis*
T0*
N*#
_output_shapes
:         *

Tidx0
═
-embedding/highwaynet_1/dense2/Tensordot/stackPack,embedding/highwaynet_1/dense2/Tensordot/Prod.embedding/highwaynet_1/dense2/Tensordot/Prod_1*
T0*

axis *
N*
_output_shapes
:
с
1embedding/highwaynet_1/dense2/Tensordot/transpose	Transposeembedding/highwaynet_0/add0embedding/highwaynet_1/dense2/Tensordot/concat_1*
Tperm0*
T0*=
_output_shapes+
):'                           
х
/embedding/highwaynet_1/dense2/Tensordot/ReshapeReshape1embedding/highwaynet_1/dense2/Tensordot/transpose-embedding/highwaynet_1/dense2/Tensordot/stack*
T0*
Tshape0*0
_output_shapes
:                  
Й
8embedding/highwaynet_1/dense2/Tensordot/transpose_1/permConst*
valueB"       *
dtype0*
_output_shapes
:
▌
3embedding/highwaynet_1/dense2/Tensordot/transpose_1	Transpose)embedding/highwaynet_1/dense2/kernel/read8embedding/highwaynet_1/dense2/Tensordot/transpose_1/perm*
T0* 
_output_shapes
:
АА*
Tperm0
И
7embedding/highwaynet_1/dense2/Tensordot/Reshape_1/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
у
1embedding/highwaynet_1/dense2/Tensordot/Reshape_1Reshape3embedding/highwaynet_1/dense2/Tensordot/transpose_17embedding/highwaynet_1/dense2/Tensordot/Reshape_1/shape*
T0*
Tshape0* 
_output_shapes
:
АА
ї
.embedding/highwaynet_1/dense2/Tensordot/MatMulMatMul/embedding/highwaynet_1/dense2/Tensordot/Reshape1embedding/highwaynet_1/dense2/Tensordot/Reshape_1*
T0*(
_output_shapes
:         А*
transpose_a( *
transpose_b( 
z
/embedding/highwaynet_1/dense2/Tensordot/Const_2Const*
valueB:А*
dtype0*
_output_shapes
:
w
5embedding/highwaynet_1/dense2/Tensordot/concat_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ч
0embedding/highwaynet_1/dense2/Tensordot/concat_2ConcatV2.embedding/highwaynet_1/dense2/Tensordot/Gather/embedding/highwaynet_1/dense2/Tensordot/Const_25embedding/highwaynet_1/dense2/Tensordot/concat_2/axis*
T0*
N*#
_output_shapes
:         *

Tidx0
┌
'embedding/highwaynet_1/dense2/TensordotReshape.embedding/highwaynet_1/dense2/Tensordot/MatMul0embedding/highwaynet_1/dense2/Tensordot/concat_2*
T0*
Tshape0*-
_output_shapes
:         їА
╤
%embedding/highwaynet_1/dense2/BiasAddBiasAdd'embedding/highwaynet_1/dense2/Tensordot'embedding/highwaynet_1/dense2/bias/read*
T0*
data_formatNHWC*-
_output_shapes
:         їА
П
%embedding/highwaynet_1/dense2/SigmoidSigmoid%embedding/highwaynet_1/dense2/BiasAdd*
T0*-
_output_shapes
:         їА
a
embedding/highwaynet_1/sub/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
Ю
embedding/highwaynet_1/subSubembedding/highwaynet_1/sub/x%embedding/highwaynet_1/dense2/Sigmoid*
T0*-
_output_shapes
:         їА
д
embedding/highwaynet_1/mulMul"embedding/highwaynet_1/dense1/Relu%embedding/highwaynet_1/dense2/Sigmoid*
T0*-
_output_shapes
:         їА
У
embedding/highwaynet_1/mul_1Mulembedding/highwaynet_0/addembedding/highwaynet_1/sub*
T0*-
_output_shapes
:         їА
У
embedding/highwaynet_1/addAddembedding/highwaynet_1/mulembedding/highwaynet_1/mul_1*
T0*-
_output_shapes
:         їА
X
embedding/gru/rnn/RankConst*
value	B :*
dtype0*
_output_shapes
: 
_
embedding/gru/rnn/range/startConst*
value	B :*
dtype0*
_output_shapes
: 
_
embedding/gru/rnn/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ю
embedding/gru/rnn/rangeRangeembedding/gru/rnn/range/startembedding/gru/rnn/Rankembedding/gru/rnn/range/delta*
_output_shapes
:*

Tidx0
r
!embedding/gru/rnn/concat/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
_
embedding/gru/rnn/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
╣
embedding/gru/rnn/concatConcatV2!embedding/gru/rnn/concat/values_0embedding/gru/rnn/rangeembedding/gru/rnn/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
г
embedding/gru/rnn/transpose	Transposeembedding/highwaynet_1/addembedding/gru/rnn/concat*
T0*-
_output_shapes
:ї         А*
Tperm0
r
embedding/gru/rnn/ShapeShapeembedding/gru/rnn/transpose*
T0*
out_type0*
_output_shapes
:
o
%embedding/gru/rnn/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
q
'embedding/gru/rnn/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
q
'embedding/gru/rnn/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
╙
embedding/gru/rnn/strided_sliceStridedSliceembedding/gru/rnn/Shape%embedding/gru/rnn/strided_slice/stack'embedding/gru/rnn/strided_slice/stack_1'embedding/gru/rnn/strided_slice/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
s
1embedding/gru/rnn/GRUCellZeroState/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
└
-embedding/gru/rnn/GRUCellZeroState/ExpandDims
ExpandDimsembedding/gru/rnn/strided_slice1embedding/gru/rnn/GRUCellZeroState/ExpandDims/dim*

Tdim0*
T0*
_output_shapes
:
s
(embedding/gru/rnn/GRUCellZeroState/ConstConst*
valueB:А*
dtype0*
_output_shapes
:
p
.embedding/gru/rnn/GRUCellZeroState/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
°
)embedding/gru/rnn/GRUCellZeroState/concatConcatV2-embedding/gru/rnn/GRUCellZeroState/ExpandDims(embedding/gru/rnn/GRUCellZeroState/Const.embedding/gru/rnn/GRUCellZeroState/concat/axis*

Tidx0*
T0*
N*
_output_shapes
:
s
.embedding/gru/rnn/GRUCellZeroState/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
╛
(embedding/gru/rnn/GRUCellZeroState/zerosFill)embedding/gru/rnn/GRUCellZeroState/concat.embedding/gru/rnn/GRUCellZeroState/zeros/Const*
T0*(
_output_shapes
:         А
u
3embedding/gru/rnn/GRUCellZeroState/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
─
/embedding/gru/rnn/GRUCellZeroState/ExpandDims_1
ExpandDimsembedding/gru/rnn/strided_slice3embedding/gru/rnn/GRUCellZeroState/ExpandDims_1/dim*

Tdim0*
T0*
_output_shapes
:
u
*embedding/gru/rnn/GRUCellZeroState/Const_1Const*
valueB:А*
dtype0*
_output_shapes
:
t
embedding/gru/rnn/Shape_1Shapeembedding/gru/rnn/transpose*
T0*
out_type0*
_output_shapes
:
q
'embedding/gru/rnn/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
s
)embedding/gru/rnn/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
s
)embedding/gru/rnn/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
▌
!embedding/gru/rnn/strided_slice_1StridedSliceembedding/gru/rnn/Shape_1'embedding/gru/rnn/strided_slice_1/stack)embedding/gru/rnn/strided_slice_1/stack_1)embedding/gru/rnn/strided_slice_1/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
t
embedding/gru/rnn/Shape_2Shapeembedding/gru/rnn/transpose*
T0*
out_type0*
_output_shapes
:
q
'embedding/gru/rnn/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:
s
)embedding/gru/rnn/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
s
)embedding/gru/rnn/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
▌
!embedding/gru/rnn/strided_slice_2StridedSliceembedding/gru/rnn/Shape_2'embedding/gru/rnn/strided_slice_2/stack)embedding/gru/rnn/strided_slice_2/stack_1)embedding/gru/rnn/strided_slice_2/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
b
 embedding/gru/rnn/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
а
embedding/gru/rnn/ExpandDims
ExpandDims!embedding/gru/rnn/strided_slice_2 embedding/gru/rnn/ExpandDims/dim*
T0*
_output_shapes
:*

Tdim0
b
embedding/gru/rnn/ConstConst*
valueB:А*
dtype0*
_output_shapes
:
a
embedding/gru/rnn/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
╕
embedding/gru/rnn/concat_1ConcatV2embedding/gru/rnn/ExpandDimsembedding/gru/rnn/Constembedding/gru/rnn/concat_1/axis*
T0*
N*
_output_shapes
:*

Tidx0
b
embedding/gru/rnn/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Н
embedding/gru/rnn/zerosFillembedding/gru/rnn/concat_1embedding/gru/rnn/zeros/Const*
T0*(
_output_shapes
:         А
X
embedding/gru/rnn/timeConst*
value	B : *
dtype0*
_output_shapes
: 
о
embedding/gru/rnn/TensorArrayTensorArrayV3!embedding/gru/rnn/strided_slice_1*%
element_shape:         А*
dynamic_size( *
clear_after_read(*
identical_element_shapes(*=
tensor_array_name(&embedding/gru/rnn/dynamic_rnn/output_0*
dtype0*
_output_shapes

:: 
п
embedding/gru/rnn/TensorArray_1TensorArrayV3!embedding/gru/rnn/strided_slice_1*
identical_element_shapes(*<
tensor_array_name'%embedding/gru/rnn/dynamic_rnn/input_0*
dtype0*
_output_shapes

:: *%
element_shape:         А*
dynamic_size( *
clear_after_read(
Е
*embedding/gru/rnn/TensorArrayUnstack/ShapeShapeembedding/gru/rnn/transpose*
T0*
out_type0*
_output_shapes
:
В
8embedding/gru/rnn/TensorArrayUnstack/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Д
:embedding/gru/rnn/TensorArrayUnstack/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Д
:embedding/gru/rnn/TensorArrayUnstack/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
▓
2embedding/gru/rnn/TensorArrayUnstack/strided_sliceStridedSlice*embedding/gru/rnn/TensorArrayUnstack/Shape8embedding/gru/rnn/TensorArrayUnstack/strided_slice/stack:embedding/gru/rnn/TensorArrayUnstack/strided_slice/stack_1:embedding/gru/rnn/TensorArrayUnstack/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
r
0embedding/gru/rnn/TensorArrayUnstack/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
r
0embedding/gru/rnn/TensorArrayUnstack/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
№
*embedding/gru/rnn/TensorArrayUnstack/rangeRange0embedding/gru/rnn/TensorArrayUnstack/range/start2embedding/gru/rnn/TensorArrayUnstack/strided_slice0embedding/gru/rnn/TensorArrayUnstack/range/delta*

Tidx0*#
_output_shapes
:         
┬
Lembedding/gru/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3embedding/gru/rnn/TensorArray_1*embedding/gru/rnn/TensorArrayUnstack/rangeembedding/gru/rnn/transpose!embedding/gru/rnn/TensorArray_1:1*
T0*.
_class$
" loc:@embedding/gru/rnn/transpose*
_output_shapes
: 
k
)embedding/gru/rnn/while/iteration_counterConst*
value	B : *
dtype0*
_output_shapes
: 
╫
embedding/gru/rnn/while/EnterEnter)embedding/gru/rnn/while/iteration_counter*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *5

frame_name'%embedding/gru/rnn/while/while_context
╞
embedding/gru/rnn/while/Enter_1Enterembedding/gru/rnn/time*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *5

frame_name'%embedding/gru/rnn/while/while_context
╧
embedding/gru/rnn/while/Enter_2Enterembedding/gru/rnn/TensorArray:1*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *5

frame_name'%embedding/gru/rnn/while/while_context
ъ
embedding/gru/rnn/while/Enter_3Enter(embedding/gru/rnn/GRUCellZeroState/zeros*
T0*
is_constant( *
parallel_iterations *(
_output_shapes
:         А*5

frame_name'%embedding/gru/rnn/while/while_context
Ш
embedding/gru/rnn/while/MergeMergeembedding/gru/rnn/while/Enter%embedding/gru/rnn/while/NextIteration*
T0*
N*
_output_shapes
: : 
Ю
embedding/gru/rnn/while/Merge_1Mergeembedding/gru/rnn/while/Enter_1'embedding/gru/rnn/while/NextIteration_1*
T0*
N*
_output_shapes
: : 
Ю
embedding/gru/rnn/while/Merge_2Mergeembedding/gru/rnn/while/Enter_2'embedding/gru/rnn/while/NextIteration_2*
T0*
N*
_output_shapes
: : 
░
embedding/gru/rnn/while/Merge_3Mergeembedding/gru/rnn/while/Enter_3'embedding/gru/rnn/while/NextIteration_3*
T0*
N**
_output_shapes
:         А: 
И
embedding/gru/rnn/while/LessLessembedding/gru/rnn/while/Merge"embedding/gru/rnn/while/Less/Enter*
T0*
_output_shapes
: 
╘
"embedding/gru/rnn/while/Less/EnterEnter!embedding/gru/rnn/strided_slice_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *5

frame_name'%embedding/gru/rnn/while/while_context
М
embedding/gru/rnn/while/Less_1Lessembedding/gru/rnn/while/Merge_1"embedding/gru/rnn/while/Less/Enter*
T0*
_output_shapes
: 
Ж
"embedding/gru/rnn/while/LogicalAnd
LogicalAndembedding/gru/rnn/while/Lessembedding/gru/rnn/while/Less_1*
_output_shapes
: 
h
 embedding/gru/rnn/while/LoopCondLoopCond"embedding/gru/rnn/while/LogicalAnd*
_output_shapes
: 
╛
embedding/gru/rnn/while/SwitchSwitchembedding/gru/rnn/while/Merge embedding/gru/rnn/while/LoopCond*
T0*0
_class&
$"loc:@embedding/gru/rnn/while/Merge*
_output_shapes
: : 
─
 embedding/gru/rnn/while/Switch_1Switchembedding/gru/rnn/while/Merge_1 embedding/gru/rnn/while/LoopCond*
T0*2
_class(
&$loc:@embedding/gru/rnn/while/Merge_1*
_output_shapes
: : 
─
 embedding/gru/rnn/while/Switch_2Switchembedding/gru/rnn/while/Merge_2 embedding/gru/rnn/while/LoopCond*
T0*2
_class(
&$loc:@embedding/gru/rnn/while/Merge_2*
_output_shapes
: : 
ш
 embedding/gru/rnn/while/Switch_3Switchembedding/gru/rnn/while/Merge_3 embedding/gru/rnn/while/LoopCond*
T0*2
_class(
&$loc:@embedding/gru/rnn/while/Merge_3*<
_output_shapes*
(:         А:         А
o
 embedding/gru/rnn/while/IdentityIdentity embedding/gru/rnn/while/Switch:1*
T0*
_output_shapes
: 
s
"embedding/gru/rnn/while/Identity_1Identity"embedding/gru/rnn/while/Switch_1:1*
T0*
_output_shapes
: 
s
"embedding/gru/rnn/while/Identity_2Identity"embedding/gru/rnn/while/Switch_2:1*
T0*
_output_shapes
: 
Е
"embedding/gru/rnn/while/Identity_3Identity"embedding/gru/rnn/while/Switch_3:1*
T0*(
_output_shapes
:         А
В
embedding/gru/rnn/while/add/yConst!^embedding/gru/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Д
embedding/gru/rnn/while/addAdd embedding/gru/rnn/while/Identityembedding/gru/rnn/while/add/y*
T0*
_output_shapes
: 
¤
)embedding/gru/rnn/while/TensorArrayReadV3TensorArrayReadV3/embedding/gru/rnn/while/TensorArrayReadV3/Enter"embedding/gru/rnn/while/Identity_11embedding/gru/rnn/while/TensorArrayReadV3/Enter_1*
dtype0*(
_output_shapes
:         А
у
/embedding/gru/rnn/while/TensorArrayReadV3/EnterEnterembedding/gru/rnn/TensorArray_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*5

frame_name'%embedding/gru/rnn/while/while_context
О
1embedding/gru/rnn/while/TensorArrayReadV3/Enter_1EnterLembedding/gru/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *5

frame_name'%embedding/gru/rnn/while/while_context
╒
Hembedding/gru/rnn/gru_cell/gates/kernel/Initializer/random_uniform/shapeConst*
valueB"      *:
_class0
.,loc:@embedding/gru/rnn/gru_cell/gates/kernel*
dtype0*
_output_shapes
:
╟
Fembedding/gru/rnn/gru_cell/gates/kernel/Initializer/random_uniform/minConst*
valueB
 *╫│]╜*:
_class0
.,loc:@embedding/gru/rnn/gru_cell/gates/kernel*
dtype0*
_output_shapes
: 
╟
Fembedding/gru/rnn/gru_cell/gates/kernel/Initializer/random_uniform/maxConst*
valueB
 *╫│]=*:
_class0
.,loc:@embedding/gru/rnn/gru_cell/gates/kernel*
dtype0*
_output_shapes
: 
╕
Pembedding/gru/rnn/gru_cell/gates/kernel/Initializer/random_uniform/RandomUniformRandomUniformHembedding/gru/rnn/gru_cell/gates/kernel/Initializer/random_uniform/shape*
dtype0* 
_output_shapes
:
АА*

seed *
T0*:
_class0
.,loc:@embedding/gru/rnn/gru_cell/gates/kernel*
seed2 
║
Fembedding/gru/rnn/gru_cell/gates/kernel/Initializer/random_uniform/subSubFembedding/gru/rnn/gru_cell/gates/kernel/Initializer/random_uniform/maxFembedding/gru/rnn/gru_cell/gates/kernel/Initializer/random_uniform/min*
T0*:
_class0
.,loc:@embedding/gru/rnn/gru_cell/gates/kernel*
_output_shapes
: 
╬
Fembedding/gru/rnn/gru_cell/gates/kernel/Initializer/random_uniform/mulMulPembedding/gru/rnn/gru_cell/gates/kernel/Initializer/random_uniform/RandomUniformFembedding/gru/rnn/gru_cell/gates/kernel/Initializer/random_uniform/sub*
T0*:
_class0
.,loc:@embedding/gru/rnn/gru_cell/gates/kernel* 
_output_shapes
:
АА
└
Bembedding/gru/rnn/gru_cell/gates/kernel/Initializer/random_uniformAddFembedding/gru/rnn/gru_cell/gates/kernel/Initializer/random_uniform/mulFembedding/gru/rnn/gru_cell/gates/kernel/Initializer/random_uniform/min*
T0*:
_class0
.,loc:@embedding/gru/rnn/gru_cell/gates/kernel* 
_output_shapes
:
АА
█
'embedding/gru/rnn/gru_cell/gates/kernel
VariableV2*
shape:
АА*
dtype0* 
_output_shapes
:
АА*
shared_name *:
_class0
.,loc:@embedding/gru/rnn/gru_cell/gates/kernel*
	container 
╡
.embedding/gru/rnn/gru_cell/gates/kernel/AssignAssign'embedding/gru/rnn/gru_cell/gates/kernelBembedding/gru/rnn/gru_cell/gates/kernel/Initializer/random_uniform*
use_locking(*
T0*:
_class0
.,loc:@embedding/gru/rnn/gru_cell/gates/kernel*
validate_shape(* 
_output_shapes
:
АА
М
,embedding/gru/rnn/gru_cell/gates/kernel/readIdentity'embedding/gru/rnn/gru_cell/gates/kernel*
T0* 
_output_shapes
:
АА
└
7embedding/gru/rnn/gru_cell/gates/bias/Initializer/ConstConst*
valueBА*  А?*8
_class.
,*loc:@embedding/gru/rnn/gru_cell/gates/bias*
dtype0*
_output_shapes	
:А
═
%embedding/gru/rnn/gru_cell/gates/bias
VariableV2*8
_class.
,*loc:@embedding/gru/rnn/gru_cell/gates/bias*
	container *
shape:А*
dtype0*
_output_shapes	
:А*
shared_name 
Я
,embedding/gru/rnn/gru_cell/gates/bias/AssignAssign%embedding/gru/rnn/gru_cell/gates/bias7embedding/gru/rnn/gru_cell/gates/bias/Initializer/Const*
T0*8
_class.
,*loc:@embedding/gru/rnn/gru_cell/gates/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(
Г
*embedding/gru/rnn/gru_cell/gates/bias/readIdentity%embedding/gru/rnn/gru_cell/gates/bias*
T0*
_output_shapes	
:А
▌
Lembedding/gru/rnn/gru_cell/candidate/kernel/Initializer/random_uniform/shapeConst*
valueB"      *>
_class4
20loc:@embedding/gru/rnn/gru_cell/candidate/kernel*
dtype0*
_output_shapes
:
╧
Jembedding/gru/rnn/gru_cell/candidate/kernel/Initializer/random_uniform/minConst*
valueB
 *  А╜*>
_class4
20loc:@embedding/gru/rnn/gru_cell/candidate/kernel*
dtype0*
_output_shapes
: 
╧
Jembedding/gru/rnn/gru_cell/candidate/kernel/Initializer/random_uniform/maxConst*
valueB
 *  А=*>
_class4
20loc:@embedding/gru/rnn/gru_cell/candidate/kernel*
dtype0*
_output_shapes
: 
─
Tembedding/gru/rnn/gru_cell/candidate/kernel/Initializer/random_uniform/RandomUniformRandomUniformLembedding/gru/rnn/gru_cell/candidate/kernel/Initializer/random_uniform/shape*
dtype0* 
_output_shapes
:
АА*

seed *
T0*>
_class4
20loc:@embedding/gru/rnn/gru_cell/candidate/kernel*
seed2 
╩
Jembedding/gru/rnn/gru_cell/candidate/kernel/Initializer/random_uniform/subSubJembedding/gru/rnn/gru_cell/candidate/kernel/Initializer/random_uniform/maxJembedding/gru/rnn/gru_cell/candidate/kernel/Initializer/random_uniform/min*
T0*>
_class4
20loc:@embedding/gru/rnn/gru_cell/candidate/kernel*
_output_shapes
: 
▐
Jembedding/gru/rnn/gru_cell/candidate/kernel/Initializer/random_uniform/mulMulTembedding/gru/rnn/gru_cell/candidate/kernel/Initializer/random_uniform/RandomUniformJembedding/gru/rnn/gru_cell/candidate/kernel/Initializer/random_uniform/sub*
T0*>
_class4
20loc:@embedding/gru/rnn/gru_cell/candidate/kernel* 
_output_shapes
:
АА
╨
Fembedding/gru/rnn/gru_cell/candidate/kernel/Initializer/random_uniformAddJembedding/gru/rnn/gru_cell/candidate/kernel/Initializer/random_uniform/mulJembedding/gru/rnn/gru_cell/candidate/kernel/Initializer/random_uniform/min*
T0*>
_class4
20loc:@embedding/gru/rnn/gru_cell/candidate/kernel* 
_output_shapes
:
АА
у
+embedding/gru/rnn/gru_cell/candidate/kernel
VariableV2*
dtype0* 
_output_shapes
:
АА*
shared_name *>
_class4
20loc:@embedding/gru/rnn/gru_cell/candidate/kernel*
	container *
shape:
АА
┼
2embedding/gru/rnn/gru_cell/candidate/kernel/AssignAssign+embedding/gru/rnn/gru_cell/candidate/kernelFembedding/gru/rnn/gru_cell/candidate/kernel/Initializer/random_uniform*
T0*>
_class4
20loc:@embedding/gru/rnn/gru_cell/candidate/kernel*
validate_shape(* 
_output_shapes
:
АА*
use_locking(
Ф
0embedding/gru/rnn/gru_cell/candidate/kernel/readIdentity+embedding/gru/rnn/gru_cell/candidate/kernel*
T0* 
_output_shapes
:
АА
╚
;embedding/gru/rnn/gru_cell/candidate/bias/Initializer/zerosConst*
valueBА*    *<
_class2
0.loc:@embedding/gru/rnn/gru_cell/candidate/bias*
dtype0*
_output_shapes	
:А
╒
)embedding/gru/rnn/gru_cell/candidate/bias
VariableV2*
shared_name *<
_class2
0.loc:@embedding/gru/rnn/gru_cell/candidate/bias*
	container *
shape:А*
dtype0*
_output_shapes	
:А
п
0embedding/gru/rnn/gru_cell/candidate/bias/AssignAssign)embedding/gru/rnn/gru_cell/candidate/bias;embedding/gru/rnn/gru_cell/candidate/bias/Initializer/zeros*
T0*<
_class2
0.loc:@embedding/gru/rnn/gru_cell/candidate/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(
Л
.embedding/gru/rnn/gru_cell/candidate/bias/readIdentity)embedding/gru/rnn/gru_cell/candidate/bias*
T0*
_output_shapes	
:А
С
,embedding/gru/rnn/while/gru_cell/concat/axisConst!^embedding/gru/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
°
'embedding/gru/rnn/while/gru_cell/concatConcatV2)embedding/gru/rnn/while/TensorArrayReadV3"embedding/gru/rnn/while/Identity_3,embedding/gru/rnn/while/gru_cell/concat/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
т
'embedding/gru/rnn/while/gru_cell/MatMulMatMul'embedding/gru/rnn/while/gru_cell/concat-embedding/gru/rnn/while/gru_cell/MatMul/Enter*
T0*(
_output_shapes
:         А*
transpose_a( *
transpose_b( 
Ї
-embedding/gru/rnn/while/gru_cell/MatMul/EnterEnter,embedding/gru/rnn/gru_cell/gates/kernel/read*
T0*
is_constant(*
parallel_iterations * 
_output_shapes
:
АА*5

frame_name'%embedding/gru/rnn/while/while_context
╓
(embedding/gru/rnn/while/gru_cell/BiasAddBiasAdd'embedding/gru/rnn/while/gru_cell/MatMul.embedding/gru/rnn/while/gru_cell/BiasAdd/Enter*
T0*
data_formatNHWC*(
_output_shapes
:         А
ю
.embedding/gru/rnn/while/gru_cell/BiasAdd/EnterEnter*embedding/gru/rnn/gru_cell/gates/bias/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes	
:А*5

frame_name'%embedding/gru/rnn/while/while_context
Р
(embedding/gru/rnn/while/gru_cell/SigmoidSigmoid(embedding/gru/rnn/while/gru_cell/BiasAdd*
T0*(
_output_shapes
:         А
Л
&embedding/gru/rnn/while/gru_cell/ConstConst!^embedding/gru/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Х
0embedding/gru/rnn/while/gru_cell/split/split_dimConst!^embedding/gru/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
у
&embedding/gru/rnn/while/gru_cell/splitSplit0embedding/gru/rnn/while/gru_cell/split/split_dim(embedding/gru/rnn/while/gru_cell/Sigmoid*
T0*<
_output_shapes*
(:         А:         А*
	num_split
к
$embedding/gru/rnn/while/gru_cell/mulMul&embedding/gru/rnn/while/gru_cell/split"embedding/gru/rnn/while/Identity_3*
T0*(
_output_shapes
:         А
У
.embedding/gru/rnn/while/gru_cell/concat_1/axisConst!^embedding/gru/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
■
)embedding/gru/rnn/while/gru_cell/concat_1ConcatV2)embedding/gru/rnn/while/TensorArrayReadV3$embedding/gru/rnn/while/gru_cell/mul.embedding/gru/rnn/while/gru_cell/concat_1/axis*
T0*
N*(
_output_shapes
:         А*

Tidx0
ш
)embedding/gru/rnn/while/gru_cell/MatMul_1MatMul)embedding/gru/rnn/while/gru_cell/concat_1/embedding/gru/rnn/while/gru_cell/MatMul_1/Enter*
transpose_b( *
T0*(
_output_shapes
:         А*
transpose_a( 
·
/embedding/gru/rnn/while/gru_cell/MatMul_1/EnterEnter0embedding/gru/rnn/gru_cell/candidate/kernel/read*
T0*
is_constant(*
parallel_iterations * 
_output_shapes
:
АА*5

frame_name'%embedding/gru/rnn/while/while_context
▄
*embedding/gru/rnn/while/gru_cell/BiasAdd_1BiasAdd)embedding/gru/rnn/while/gru_cell/MatMul_10embedding/gru/rnn/while/gru_cell/BiasAdd_1/Enter*
T0*
data_formatNHWC*(
_output_shapes
:         А
Ї
0embedding/gru/rnn/while/gru_cell/BiasAdd_1/EnterEnter.embedding/gru/rnn/gru_cell/candidate/bias/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes	
:А*5

frame_name'%embedding/gru/rnn/while/while_context
М
%embedding/gru/rnn/while/gru_cell/TanhTanh*embedding/gru/rnn/while/gru_cell/BiasAdd_1*
T0*(
_output_shapes
:         А
о
&embedding/gru/rnn/while/gru_cell/mul_1Mul(embedding/gru/rnn/while/gru_cell/split:1"embedding/gru/rnn/while/Identity_3*
T0*(
_output_shapes
:         А
О
&embedding/gru/rnn/while/gru_cell/sub/xConst!^embedding/gru/rnn/while/Identity*
valueB
 *  А?*
dtype0*
_output_shapes
: 
░
$embedding/gru/rnn/while/gru_cell/subSub&embedding/gru/rnn/while/gru_cell/sub/x(embedding/gru/rnn/while/gru_cell/split:1*
T0*(
_output_shapes
:         А
н
&embedding/gru/rnn/while/gru_cell/mul_2Mul$embedding/gru/rnn/while/gru_cell/sub%embedding/gru/rnn/while/gru_cell/Tanh*
T0*(
_output_shapes
:         А
о
$embedding/gru/rnn/while/gru_cell/addAdd&embedding/gru/rnn/while/gru_cell/mul_1&embedding/gru/rnn/while/gru_cell/mul_2*
T0*(
_output_shapes
:         А
▄
;embedding/gru/rnn/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3Aembedding/gru/rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enter"embedding/gru/rnn/while/Identity_1$embedding/gru/rnn/while/gru_cell/add"embedding/gru/rnn/while/Identity_2*
T0*7
_class-
+)loc:@embedding/gru/rnn/while/gru_cell/add*
_output_shapes
: 
м
Aembedding/gru/rnn/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnterembedding/gru/rnn/TensorArray*
is_constant(*
_output_shapes
:*5

frame_name'%embedding/gru/rnn/while/while_context*
T0*7
_class-
+)loc:@embedding/gru/rnn/while/gru_cell/add*
parallel_iterations 
Д
embedding/gru/rnn/while/add_1/yConst!^embedding/gru/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
К
embedding/gru/rnn/while/add_1Add"embedding/gru/rnn/while/Identity_1embedding/gru/rnn/while/add_1/y*
T0*
_output_shapes
: 
t
%embedding/gru/rnn/while/NextIterationNextIterationembedding/gru/rnn/while/add*
T0*
_output_shapes
: 
x
'embedding/gru/rnn/while/NextIteration_1NextIterationembedding/gru/rnn/while/add_1*
T0*
_output_shapes
: 
Ц
'embedding/gru/rnn/while/NextIteration_2NextIteration;embedding/gru/rnn/while/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
С
'embedding/gru/rnn/while/NextIteration_3NextIteration$embedding/gru/rnn/while/gru_cell/add*
T0*(
_output_shapes
:         А
e
embedding/gru/rnn/while/ExitExitembedding/gru/rnn/while/Switch*
T0*
_output_shapes
: 
i
embedding/gru/rnn/while/Exit_1Exit embedding/gru/rnn/while/Switch_1*
T0*
_output_shapes
: 
i
embedding/gru/rnn/while/Exit_2Exit embedding/gru/rnn/while/Switch_2*
T0*
_output_shapes
: 
{
embedding/gru/rnn/while/Exit_3Exit embedding/gru/rnn/while/Switch_3*
T0*(
_output_shapes
:         А
╥
4embedding/gru/rnn/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3embedding/gru/rnn/TensorArrayembedding/gru/rnn/while/Exit_2*0
_class&
$"loc:@embedding/gru/rnn/TensorArray*
_output_shapes
: 
в
.embedding/gru/rnn/TensorArrayStack/range/startConst*
value	B : *0
_class&
$"loc:@embedding/gru/rnn/TensorArray*
dtype0*
_output_shapes
: 
в
.embedding/gru/rnn/TensorArrayStack/range/deltaConst*
value	B :*0
_class&
$"loc:@embedding/gru/rnn/TensorArray*
dtype0*
_output_shapes
: 
к
(embedding/gru/rnn/TensorArrayStack/rangeRange.embedding/gru/rnn/TensorArrayStack/range/start4embedding/gru/rnn/TensorArrayStack/TensorArraySizeV3.embedding/gru/rnn/TensorArrayStack/range/delta*

Tidx0*0
_class&
$"loc:@embedding/gru/rnn/TensorArray*#
_output_shapes
:         
╦
6embedding/gru/rnn/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3embedding/gru/rnn/TensorArray(embedding/gru/rnn/TensorArrayStack/rangeembedding/gru/rnn/while/Exit_2*%
element_shape:         А*0
_class&
$"loc:@embedding/gru/rnn/TensorArray*
dtype0*-
_output_shapes
:ї         А
d
embedding/gru/rnn/Const_1Const*
valueB:А*
dtype0*
_output_shapes
:
Z
embedding/gru/rnn/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
a
embedding/gru/rnn/range_1/startConst*
value	B :*
dtype0*
_output_shapes
: 
a
embedding/gru/rnn/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
ж
embedding/gru/rnn/range_1Rangeembedding/gru/rnn/range_1/startembedding/gru/rnn/Rank_1embedding/gru/rnn/range_1/delta*

Tidx0*
_output_shapes
:
t
#embedding/gru/rnn/concat_2/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
a
embedding/gru/rnn/concat_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
┴
embedding/gru/rnn/concat_2ConcatV2#embedding/gru/rnn/concat_2/values_0embedding/gru/rnn/range_1embedding/gru/rnn/concat_2/axis*

Tidx0*
T0*
N*
_output_shapes
:
├
embedding/gru/rnn/transpose_1	Transpose6embedding/gru/rnn/TensorArrayStack/TensorArrayGatherV3embedding/gru/rnn/concat_2*
T0*-
_output_shapes
:         їА*
Tperm0
n
embedding/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
p
embedding/strided_slice/stack_1Const*
valueB"        *
dtype0*
_output_shapes
:
p
embedding/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
╦
embedding/strided_sliceStridedSliceembedding/gru/rnn/transpose_1embedding/strided_slice/stackembedding/strided_slice/stack_1embedding/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask*
new_axis_mask *
end_mask *(
_output_shapes
:         ї
╜
<embedding/projection/kernel/Initializer/random_uniform/shapeConst*
valueB"ї  у  *.
_class$
" loc:@embedding/projection/kernel*
dtype0*
_output_shapes
:
п
:embedding/projection/kernel/Initializer/random_uniform/minConst*
valueB
 *E│o╜*.
_class$
" loc:@embedding/projection/kernel*
dtype0*
_output_shapes
: 
п
:embedding/projection/kernel/Initializer/random_uniform/maxConst*
valueB
 *E│o=*.
_class$
" loc:@embedding/projection/kernel*
dtype0*
_output_shapes
: 
Ф
Dembedding/projection/kernel/Initializer/random_uniform/RandomUniformRandomUniform<embedding/projection/kernel/Initializer/random_uniform/shape*
T0*.
_class$
" loc:@embedding/projection/kernel*
seed2 *
dtype0* 
_output_shapes
:
їу	*

seed 
К
:embedding/projection/kernel/Initializer/random_uniform/subSub:embedding/projection/kernel/Initializer/random_uniform/max:embedding/projection/kernel/Initializer/random_uniform/min*
T0*.
_class$
" loc:@embedding/projection/kernel*
_output_shapes
: 
Ю
:embedding/projection/kernel/Initializer/random_uniform/mulMulDembedding/projection/kernel/Initializer/random_uniform/RandomUniform:embedding/projection/kernel/Initializer/random_uniform/sub*
T0*.
_class$
" loc:@embedding/projection/kernel* 
_output_shapes
:
їу	
Р
6embedding/projection/kernel/Initializer/random_uniformAdd:embedding/projection/kernel/Initializer/random_uniform/mul:embedding/projection/kernel/Initializer/random_uniform/min*
T0*.
_class$
" loc:@embedding/projection/kernel* 
_output_shapes
:
їу	
├
embedding/projection/kernel
VariableV2*.
_class$
" loc:@embedding/projection/kernel*
	container *
shape:
їу	*
dtype0* 
_output_shapes
:
їу	*
shared_name 
Е
"embedding/projection/kernel/AssignAssignembedding/projection/kernel6embedding/projection/kernel/Initializer/random_uniform*
use_locking(*
T0*.
_class$
" loc:@embedding/projection/kernel*
validate_shape(* 
_output_shapes
:
їу	
д
 embedding/projection/kernel/readIdentityembedding/projection/kernel*
T0*.
_class$
" loc:@embedding/projection/kernel* 
_output_shapes
:
їу	
и
+embedding/projection/bias/Initializer/zerosConst*
valueBу	*    *,
_class"
 loc:@embedding/projection/bias*
dtype0*
_output_shapes	
:у	
╡
embedding/projection/bias
VariableV2*
shape:у	*
dtype0*
_output_shapes	
:у	*
shared_name *,
_class"
 loc:@embedding/projection/bias*
	container 
я
 embedding/projection/bias/AssignAssignembedding/projection/bias+embedding/projection/bias/Initializer/zeros*
T0*,
_class"
 loc:@embedding/projection/bias*
validate_shape(*
_output_shapes	
:у	*
use_locking(
Щ
embedding/projection/bias/readIdentityembedding/projection/bias*
T0*,
_class"
 loc:@embedding/projection/bias*
_output_shapes	
:у	
╣
embedding/projection/MatMulMatMulembedding/strided_slice embedding/projection/kernel/read*
T0*(
_output_shapes
:         у	*
transpose_a( *
transpose_b( 
о
embedding/projection/BiasAddBiasAddembedding/projection/MatMulembedding/projection/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         у	
p
embedding/embeddingIdentityembedding/projection/BiasAdd*
T0*(
_output_shapes
:         у	
^
probabilitySoftmaxembedding/embedding*
T0*(
_output_shapes
:         у	
R
ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
|
ArgMaxArgMaxprobabilityArgMax/dimension*

Tidx0*
T0*
output_type0	*#
_output_shapes
:         
W

predictionCastArgMax*

SrcT0	*#
_output_shapes
:         *

DstT0
s
)SparseSoftmaxCrossEntropyWithLogits/ShapeShape
speaker_id*
T0*
out_type0*
_output_shapes
:
р
GSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsembedding/embedding
speaker_id*
T0*7
_output_shapes%
#:         :         у	*
Tlabels0
O
ConstConst*
valueB: *
dtype0*
_output_shapes
:
Ъ
MeanMeanGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsConst*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
Z
train/loss/tagsConst*
valueB B
train/loss*
dtype0*
_output_shapes
: 
S

train/lossScalarSummarytrain/loss/tagsMean*
T0*
_output_shapes
: 
T
EqualEqual
speaker_id
prediction*
T0*#
_output_shapes
:         
S
ToFloatCastEqual*

SrcT0
*#
_output_shapes
:         *

DstT0
Q
Const_1Const*
valueB: *
dtype0*
_output_shapes
:
`
accuracyMeanToFloatConst_1*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
b
train/accuracy/tagsConst*
valueB Btrain/accuracy*
dtype0*
_output_shapes
: 
_
train/accuracyScalarSummarytrain/accuracy/tagsaccuracy*
T0*
_output_shapes
: 
Л
initNoOp^embedding/dense/kernel/Assign^embedding/dense/bias/Assign9^embedding/conv1d_banks/num_1/conv1d/conv1d/kernel/Assign3^embedding/conv1d_banks/num_1/normalize/beta/Assign4^embedding/conv1d_banks/num_1/normalize/gamma/Assign9^embedding/conv1d_banks/num_2/conv1d/conv1d/kernel/Assign3^embedding/conv1d_banks/num_2/normalize/beta/Assign4^embedding/conv1d_banks/num_2/normalize/gamma/Assign9^embedding/conv1d_banks/num_3/conv1d/conv1d/kernel/Assign3^embedding/conv1d_banks/num_3/normalize/beta/Assign4^embedding/conv1d_banks/num_3/normalize/gamma/Assign9^embedding/conv1d_banks/num_4/conv1d/conv1d/kernel/Assign3^embedding/conv1d_banks/num_4/normalize/beta/Assign4^embedding/conv1d_banks/num_4/normalize/gamma/Assign9^embedding/conv1d_banks/num_5/conv1d/conv1d/kernel/Assign3^embedding/conv1d_banks/num_5/normalize/beta/Assign4^embedding/conv1d_banks/num_5/normalize/gamma/Assign9^embedding/conv1d_banks/num_6/conv1d/conv1d/kernel/Assign3^embedding/conv1d_banks/num_6/normalize/beta/Assign4^embedding/conv1d_banks/num_6/normalize/gamma/Assign9^embedding/conv1d_banks/num_7/conv1d/conv1d/kernel/Assign3^embedding/conv1d_banks/num_7/normalize/beta/Assign4^embedding/conv1d_banks/num_7/normalize/gamma/Assign9^embedding/conv1d_banks/num_8/conv1d/conv1d/kernel/Assign3^embedding/conv1d_banks/num_8/normalize/beta/Assign4^embedding/conv1d_banks/num_8/normalize/gamma/Assign(^embedding/conv1d_1/conv1d/kernel/Assign ^embedding/normalize/beta/Assign!^embedding/normalize/gamma/Assign(^embedding/conv1d_2/conv1d/kernel/Assign,^embedding/highwaynet_0/dense1/kernel/Assign*^embedding/highwaynet_0/dense1/bias/Assign,^embedding/highwaynet_0/dense2/kernel/Assign*^embedding/highwaynet_0/dense2/bias/Assign,^embedding/highwaynet_1/dense1/kernel/Assign*^embedding/highwaynet_1/dense1/bias/Assign,^embedding/highwaynet_1/dense2/kernel/Assign*^embedding/highwaynet_1/dense2/bias/Assign/^embedding/gru/rnn/gru_cell/gates/kernel/Assign-^embedding/gru/rnn/gru_cell/gates/bias/Assign3^embedding/gru/rnn/gru_cell/candidate/kernel/Assign1^embedding/gru/rnn/gru_cell/candidate/bias/Assign#^embedding/projection/kernel/Assign!^embedding/projection/bias/Assign
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
Б
save/SaveV2/tensor_namesConst*┤
valueкBз,B embedding/conv1d_1/conv1d/kernelB embedding/conv1d_2/conv1d/kernelB1embedding/conv1d_banks/num_1/conv1d/conv1d/kernelB+embedding/conv1d_banks/num_1/normalize/betaB,embedding/conv1d_banks/num_1/normalize/gammaB1embedding/conv1d_banks/num_2/conv1d/conv1d/kernelB+embedding/conv1d_banks/num_2/normalize/betaB,embedding/conv1d_banks/num_2/normalize/gammaB1embedding/conv1d_banks/num_3/conv1d/conv1d/kernelB+embedding/conv1d_banks/num_3/normalize/betaB,embedding/conv1d_banks/num_3/normalize/gammaB1embedding/conv1d_banks/num_4/conv1d/conv1d/kernelB+embedding/conv1d_banks/num_4/normalize/betaB,embedding/conv1d_banks/num_4/normalize/gammaB1embedding/conv1d_banks/num_5/conv1d/conv1d/kernelB+embedding/conv1d_banks/num_5/normalize/betaB,embedding/conv1d_banks/num_5/normalize/gammaB1embedding/conv1d_banks/num_6/conv1d/conv1d/kernelB+embedding/conv1d_banks/num_6/normalize/betaB,embedding/conv1d_banks/num_6/normalize/gammaB1embedding/conv1d_banks/num_7/conv1d/conv1d/kernelB+embedding/conv1d_banks/num_7/normalize/betaB,embedding/conv1d_banks/num_7/normalize/gammaB1embedding/conv1d_banks/num_8/conv1d/conv1d/kernelB+embedding/conv1d_banks/num_8/normalize/betaB,embedding/conv1d_banks/num_8/normalize/gammaBembedding/dense/biasBembedding/dense/kernelB)embedding/gru/rnn/gru_cell/candidate/biasB+embedding/gru/rnn/gru_cell/candidate/kernelB%embedding/gru/rnn/gru_cell/gates/biasB'embedding/gru/rnn/gru_cell/gates/kernelB"embedding/highwaynet_0/dense1/biasB$embedding/highwaynet_0/dense1/kernelB"embedding/highwaynet_0/dense2/biasB$embedding/highwaynet_0/dense2/kernelB"embedding/highwaynet_1/dense1/biasB$embedding/highwaynet_1/dense1/kernelB"embedding/highwaynet_1/dense2/biasB$embedding/highwaynet_1/dense2/kernelBembedding/normalize/betaBembedding/normalize/gammaBembedding/projection/biasBembedding/projection/kernel*
dtype0*
_output_shapes
:,
╗
save/SaveV2/shape_and_slicesConst*k
valuebB`,B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:,
┤
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slices embedding/conv1d_1/conv1d/kernel embedding/conv1d_2/conv1d/kernel1embedding/conv1d_banks/num_1/conv1d/conv1d/kernel+embedding/conv1d_banks/num_1/normalize/beta,embedding/conv1d_banks/num_1/normalize/gamma1embedding/conv1d_banks/num_2/conv1d/conv1d/kernel+embedding/conv1d_banks/num_2/normalize/beta,embedding/conv1d_banks/num_2/normalize/gamma1embedding/conv1d_banks/num_3/conv1d/conv1d/kernel+embedding/conv1d_banks/num_3/normalize/beta,embedding/conv1d_banks/num_3/normalize/gamma1embedding/conv1d_banks/num_4/conv1d/conv1d/kernel+embedding/conv1d_banks/num_4/normalize/beta,embedding/conv1d_banks/num_4/normalize/gamma1embedding/conv1d_banks/num_5/conv1d/conv1d/kernel+embedding/conv1d_banks/num_5/normalize/beta,embedding/conv1d_banks/num_5/normalize/gamma1embedding/conv1d_banks/num_6/conv1d/conv1d/kernel+embedding/conv1d_banks/num_6/normalize/beta,embedding/conv1d_banks/num_6/normalize/gamma1embedding/conv1d_banks/num_7/conv1d/conv1d/kernel+embedding/conv1d_banks/num_7/normalize/beta,embedding/conv1d_banks/num_7/normalize/gamma1embedding/conv1d_banks/num_8/conv1d/conv1d/kernel+embedding/conv1d_banks/num_8/normalize/beta,embedding/conv1d_banks/num_8/normalize/gammaembedding/dense/biasembedding/dense/kernel)embedding/gru/rnn/gru_cell/candidate/bias+embedding/gru/rnn/gru_cell/candidate/kernel%embedding/gru/rnn/gru_cell/gates/bias'embedding/gru/rnn/gru_cell/gates/kernel"embedding/highwaynet_0/dense1/bias$embedding/highwaynet_0/dense1/kernel"embedding/highwaynet_0/dense2/bias$embedding/highwaynet_0/dense2/kernel"embedding/highwaynet_1/dense1/bias$embedding/highwaynet_1/dense1/kernel"embedding/highwaynet_1/dense2/bias$embedding/highwaynet_1/dense2/kernelembedding/normalize/betaembedding/normalize/gammaembedding/projection/biasembedding/projection/kernel*:
dtypes0
.2,
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
Д
save/RestoreV2/tensor_namesConst*5
value,B*B embedding/conv1d_1/conv1d/kernel*
dtype0*
_output_shapes
:
h
save/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Р
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
╘
save/AssignAssign embedding/conv1d_1/conv1d/kernelsave/RestoreV2*
T0*3
_class)
'%loc:@embedding/conv1d_1/conv1d/kernel*
validate_shape(*$
_output_shapes
:А А*
use_locking(
Ж
save/RestoreV2_1/tensor_namesConst*5
value,B*B embedding/conv1d_2/conv1d/kernel*
dtype0*
_output_shapes
:
j
!save/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ц
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
_output_shapes
:*
dtypes
2
╪
save/Assign_1Assign embedding/conv1d_2/conv1d/kernelsave/RestoreV2_1*
T0*3
_class)
'%loc:@embedding/conv1d_2/conv1d/kernel*
validate_shape(*$
_output_shapes
:АА*
use_locking(
Ч
save/RestoreV2_2/tensor_namesConst*F
value=B;B1embedding/conv1d_banks/num_1/conv1d/conv1d/kernel*
dtype0*
_output_shapes
:
j
!save/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ц
save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
_output_shapes
:*
dtypes
2
·
save/Assign_2Assign1embedding/conv1d_banks/num_1/conv1d/conv1d/kernelsave/RestoreV2_2*
use_locking(*
T0*D
_class:
86loc:@embedding/conv1d_banks/num_1/conv1d/conv1d/kernel*
validate_shape(*$
_output_shapes
:АА
С
save/RestoreV2_3/tensor_namesConst*@
value7B5B+embedding/conv1d_banks/num_1/normalize/beta*
dtype0*
_output_shapes
:
j
!save/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ц
save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes
:
х
save/Assign_3Assign+embedding/conv1d_banks/num_1/normalize/betasave/RestoreV2_3*
use_locking(*
T0*>
_class4
20loc:@embedding/conv1d_banks/num_1/normalize/beta*
validate_shape(*
_output_shapes	
:А
Т
save/RestoreV2_4/tensor_namesConst*A
value8B6B,embedding/conv1d_banks/num_1/normalize/gamma*
dtype0*
_output_shapes
:
j
!save/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ц
save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:
ч
save/Assign_4Assign,embedding/conv1d_banks/num_1/normalize/gammasave/RestoreV2_4*
use_locking(*
T0*?
_class5
31loc:@embedding/conv1d_banks/num_1/normalize/gamma*
validate_shape(*
_output_shapes	
:А
Ч
save/RestoreV2_5/tensor_namesConst*F
value=B;B1embedding/conv1d_banks/num_2/conv1d/conv1d/kernel*
dtype0*
_output_shapes
:
j
!save/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ц
save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
_output_shapes
:*
dtypes
2
·
save/Assign_5Assign1embedding/conv1d_banks/num_2/conv1d/conv1d/kernelsave/RestoreV2_5*
use_locking(*
T0*D
_class:
86loc:@embedding/conv1d_banks/num_2/conv1d/conv1d/kernel*
validate_shape(*$
_output_shapes
:АА
С
save/RestoreV2_6/tensor_namesConst*@
value7B5B+embedding/conv1d_banks/num_2/normalize/beta*
dtype0*
_output_shapes
:
j
!save/RestoreV2_6/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ц
save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
х
save/Assign_6Assign+embedding/conv1d_banks/num_2/normalize/betasave/RestoreV2_6*
use_locking(*
T0*>
_class4
20loc:@embedding/conv1d_banks/num_2/normalize/beta*
validate_shape(*
_output_shapes	
:А
Т
save/RestoreV2_7/tensor_namesConst*A
value8B6B,embedding/conv1d_banks/num_2/normalize/gamma*
dtype0*
_output_shapes
:
j
!save/RestoreV2_7/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ц
save/RestoreV2_7	RestoreV2
save/Constsave/RestoreV2_7/tensor_names!save/RestoreV2_7/shape_and_slices*
_output_shapes
:*
dtypes
2
ч
save/Assign_7Assign,embedding/conv1d_banks/num_2/normalize/gammasave/RestoreV2_7*
T0*?
_class5
31loc:@embedding/conv1d_banks/num_2/normalize/gamma*
validate_shape(*
_output_shapes	
:А*
use_locking(
Ч
save/RestoreV2_8/tensor_namesConst*F
value=B;B1embedding/conv1d_banks/num_3/conv1d/conv1d/kernel*
dtype0*
_output_shapes
:
j
!save/RestoreV2_8/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ц
save/RestoreV2_8	RestoreV2
save/Constsave/RestoreV2_8/tensor_names!save/RestoreV2_8/shape_and_slices*
_output_shapes
:*
dtypes
2
·
save/Assign_8Assign1embedding/conv1d_banks/num_3/conv1d/conv1d/kernelsave/RestoreV2_8*
use_locking(*
T0*D
_class:
86loc:@embedding/conv1d_banks/num_3/conv1d/conv1d/kernel*
validate_shape(*$
_output_shapes
:АА
С
save/RestoreV2_9/tensor_namesConst*@
value7B5B+embedding/conv1d_banks/num_3/normalize/beta*
dtype0*
_output_shapes
:
j
!save/RestoreV2_9/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ц
save/RestoreV2_9	RestoreV2
save/Constsave/RestoreV2_9/tensor_names!save/RestoreV2_9/shape_and_slices*
_output_shapes
:*
dtypes
2
х
save/Assign_9Assign+embedding/conv1d_banks/num_3/normalize/betasave/RestoreV2_9*
use_locking(*
T0*>
_class4
20loc:@embedding/conv1d_banks/num_3/normalize/beta*
validate_shape(*
_output_shapes	
:А
У
save/RestoreV2_10/tensor_namesConst*A
value8B6B,embedding/conv1d_banks/num_3/normalize/gamma*
dtype0*
_output_shapes
:
k
"save/RestoreV2_10/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_10	RestoreV2
save/Constsave/RestoreV2_10/tensor_names"save/RestoreV2_10/shape_and_slices*
dtypes
2*
_output_shapes
:
щ
save/Assign_10Assign,embedding/conv1d_banks/num_3/normalize/gammasave/RestoreV2_10*
use_locking(*
T0*?
_class5
31loc:@embedding/conv1d_banks/num_3/normalize/gamma*
validate_shape(*
_output_shapes	
:А
Ш
save/RestoreV2_11/tensor_namesConst*F
value=B;B1embedding/conv1d_banks/num_4/conv1d/conv1d/kernel*
dtype0*
_output_shapes
:
k
"save/RestoreV2_11/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_11	RestoreV2
save/Constsave/RestoreV2_11/tensor_names"save/RestoreV2_11/shape_and_slices*
_output_shapes
:*
dtypes
2
№
save/Assign_11Assign1embedding/conv1d_banks/num_4/conv1d/conv1d/kernelsave/RestoreV2_11*
use_locking(*
T0*D
_class:
86loc:@embedding/conv1d_banks/num_4/conv1d/conv1d/kernel*
validate_shape(*$
_output_shapes
:АА
Т
save/RestoreV2_12/tensor_namesConst*@
value7B5B+embedding/conv1d_banks/num_4/normalize/beta*
dtype0*
_output_shapes
:
k
"save/RestoreV2_12/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_12	RestoreV2
save/Constsave/RestoreV2_12/tensor_names"save/RestoreV2_12/shape_and_slices*
_output_shapes
:*
dtypes
2
ч
save/Assign_12Assign+embedding/conv1d_banks/num_4/normalize/betasave/RestoreV2_12*
use_locking(*
T0*>
_class4
20loc:@embedding/conv1d_banks/num_4/normalize/beta*
validate_shape(*
_output_shapes	
:А
У
save/RestoreV2_13/tensor_namesConst*A
value8B6B,embedding/conv1d_banks/num_4/normalize/gamma*
dtype0*
_output_shapes
:
k
"save/RestoreV2_13/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_13	RestoreV2
save/Constsave/RestoreV2_13/tensor_names"save/RestoreV2_13/shape_and_slices*
_output_shapes
:*
dtypes
2
щ
save/Assign_13Assign,embedding/conv1d_banks/num_4/normalize/gammasave/RestoreV2_13*
use_locking(*
T0*?
_class5
31loc:@embedding/conv1d_banks/num_4/normalize/gamma*
validate_shape(*
_output_shapes	
:А
Ш
save/RestoreV2_14/tensor_namesConst*F
value=B;B1embedding/conv1d_banks/num_5/conv1d/conv1d/kernel*
dtype0*
_output_shapes
:
k
"save/RestoreV2_14/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_14	RestoreV2
save/Constsave/RestoreV2_14/tensor_names"save/RestoreV2_14/shape_and_slices*
dtypes
2*
_output_shapes
:
№
save/Assign_14Assign1embedding/conv1d_banks/num_5/conv1d/conv1d/kernelsave/RestoreV2_14*
T0*D
_class:
86loc:@embedding/conv1d_banks/num_5/conv1d/conv1d/kernel*
validate_shape(*$
_output_shapes
:АА*
use_locking(
Т
save/RestoreV2_15/tensor_namesConst*@
value7B5B+embedding/conv1d_banks/num_5/normalize/beta*
dtype0*
_output_shapes
:
k
"save/RestoreV2_15/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_15	RestoreV2
save/Constsave/RestoreV2_15/tensor_names"save/RestoreV2_15/shape_and_slices*
dtypes
2*
_output_shapes
:
ч
save/Assign_15Assign+embedding/conv1d_banks/num_5/normalize/betasave/RestoreV2_15*
T0*>
_class4
20loc:@embedding/conv1d_banks/num_5/normalize/beta*
validate_shape(*
_output_shapes	
:А*
use_locking(
У
save/RestoreV2_16/tensor_namesConst*A
value8B6B,embedding/conv1d_banks/num_5/normalize/gamma*
dtype0*
_output_shapes
:
k
"save/RestoreV2_16/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_16	RestoreV2
save/Constsave/RestoreV2_16/tensor_names"save/RestoreV2_16/shape_and_slices*
dtypes
2*
_output_shapes
:
щ
save/Assign_16Assign,embedding/conv1d_banks/num_5/normalize/gammasave/RestoreV2_16*
T0*?
_class5
31loc:@embedding/conv1d_banks/num_5/normalize/gamma*
validate_shape(*
_output_shapes	
:А*
use_locking(
Ш
save/RestoreV2_17/tensor_namesConst*F
value=B;B1embedding/conv1d_banks/num_6/conv1d/conv1d/kernel*
dtype0*
_output_shapes
:
k
"save/RestoreV2_17/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_17	RestoreV2
save/Constsave/RestoreV2_17/tensor_names"save/RestoreV2_17/shape_and_slices*
dtypes
2*
_output_shapes
:
№
save/Assign_17Assign1embedding/conv1d_banks/num_6/conv1d/conv1d/kernelsave/RestoreV2_17*
use_locking(*
T0*D
_class:
86loc:@embedding/conv1d_banks/num_6/conv1d/conv1d/kernel*
validate_shape(*$
_output_shapes
:АА
Т
save/RestoreV2_18/tensor_namesConst*@
value7B5B+embedding/conv1d_banks/num_6/normalize/beta*
dtype0*
_output_shapes
:
k
"save/RestoreV2_18/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_18	RestoreV2
save/Constsave/RestoreV2_18/tensor_names"save/RestoreV2_18/shape_and_slices*
_output_shapes
:*
dtypes
2
ч
save/Assign_18Assign+embedding/conv1d_banks/num_6/normalize/betasave/RestoreV2_18*
T0*>
_class4
20loc:@embedding/conv1d_banks/num_6/normalize/beta*
validate_shape(*
_output_shapes	
:А*
use_locking(
У
save/RestoreV2_19/tensor_namesConst*A
value8B6B,embedding/conv1d_banks/num_6/normalize/gamma*
dtype0*
_output_shapes
:
k
"save/RestoreV2_19/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_19	RestoreV2
save/Constsave/RestoreV2_19/tensor_names"save/RestoreV2_19/shape_and_slices*
_output_shapes
:*
dtypes
2
щ
save/Assign_19Assign,embedding/conv1d_banks/num_6/normalize/gammasave/RestoreV2_19*
use_locking(*
T0*?
_class5
31loc:@embedding/conv1d_banks/num_6/normalize/gamma*
validate_shape(*
_output_shapes	
:А
Ш
save/RestoreV2_20/tensor_namesConst*F
value=B;B1embedding/conv1d_banks/num_7/conv1d/conv1d/kernel*
dtype0*
_output_shapes
:
k
"save/RestoreV2_20/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_20	RestoreV2
save/Constsave/RestoreV2_20/tensor_names"save/RestoreV2_20/shape_and_slices*
dtypes
2*
_output_shapes
:
№
save/Assign_20Assign1embedding/conv1d_banks/num_7/conv1d/conv1d/kernelsave/RestoreV2_20*
use_locking(*
T0*D
_class:
86loc:@embedding/conv1d_banks/num_7/conv1d/conv1d/kernel*
validate_shape(*$
_output_shapes
:АА
Т
save/RestoreV2_21/tensor_namesConst*@
value7B5B+embedding/conv1d_banks/num_7/normalize/beta*
dtype0*
_output_shapes
:
k
"save/RestoreV2_21/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_21	RestoreV2
save/Constsave/RestoreV2_21/tensor_names"save/RestoreV2_21/shape_and_slices*
dtypes
2*
_output_shapes
:
ч
save/Assign_21Assign+embedding/conv1d_banks/num_7/normalize/betasave/RestoreV2_21*
use_locking(*
T0*>
_class4
20loc:@embedding/conv1d_banks/num_7/normalize/beta*
validate_shape(*
_output_shapes	
:А
У
save/RestoreV2_22/tensor_namesConst*A
value8B6B,embedding/conv1d_banks/num_7/normalize/gamma*
dtype0*
_output_shapes
:
k
"save/RestoreV2_22/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_22	RestoreV2
save/Constsave/RestoreV2_22/tensor_names"save/RestoreV2_22/shape_and_slices*
dtypes
2*
_output_shapes
:
щ
save/Assign_22Assign,embedding/conv1d_banks/num_7/normalize/gammasave/RestoreV2_22*
use_locking(*
T0*?
_class5
31loc:@embedding/conv1d_banks/num_7/normalize/gamma*
validate_shape(*
_output_shapes	
:А
Ш
save/RestoreV2_23/tensor_namesConst*F
value=B;B1embedding/conv1d_banks/num_8/conv1d/conv1d/kernel*
dtype0*
_output_shapes
:
k
"save/RestoreV2_23/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_23	RestoreV2
save/Constsave/RestoreV2_23/tensor_names"save/RestoreV2_23/shape_and_slices*
dtypes
2*
_output_shapes
:
№
save/Assign_23Assign1embedding/conv1d_banks/num_8/conv1d/conv1d/kernelsave/RestoreV2_23*
use_locking(*
T0*D
_class:
86loc:@embedding/conv1d_banks/num_8/conv1d/conv1d/kernel*
validate_shape(*$
_output_shapes
:АА
Т
save/RestoreV2_24/tensor_namesConst*@
value7B5B+embedding/conv1d_banks/num_8/normalize/beta*
dtype0*
_output_shapes
:
k
"save/RestoreV2_24/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_24	RestoreV2
save/Constsave/RestoreV2_24/tensor_names"save/RestoreV2_24/shape_and_slices*
dtypes
2*
_output_shapes
:
ч
save/Assign_24Assign+embedding/conv1d_banks/num_8/normalize/betasave/RestoreV2_24*
T0*>
_class4
20loc:@embedding/conv1d_banks/num_8/normalize/beta*
validate_shape(*
_output_shapes	
:А*
use_locking(
У
save/RestoreV2_25/tensor_namesConst*A
value8B6B,embedding/conv1d_banks/num_8/normalize/gamma*
dtype0*
_output_shapes
:
k
"save/RestoreV2_25/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_25	RestoreV2
save/Constsave/RestoreV2_25/tensor_names"save/RestoreV2_25/shape_and_slices*
_output_shapes
:*
dtypes
2
щ
save/Assign_25Assign,embedding/conv1d_banks/num_8/normalize/gammasave/RestoreV2_25*
use_locking(*
T0*?
_class5
31loc:@embedding/conv1d_banks/num_8/normalize/gamma*
validate_shape(*
_output_shapes	
:А
{
save/RestoreV2_26/tensor_namesConst*)
value BBembedding/dense/bias*
dtype0*
_output_shapes
:
k
"save/RestoreV2_26/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_26	RestoreV2
save/Constsave/RestoreV2_26/tensor_names"save/RestoreV2_26/shape_and_slices*
_output_shapes
:*
dtypes
2
╣
save/Assign_26Assignembedding/dense/biassave/RestoreV2_26*
T0*'
_class
loc:@embedding/dense/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(
}
save/RestoreV2_27/tensor_namesConst*+
value"B Bembedding/dense/kernel*
dtype0*
_output_shapes
:
k
"save/RestoreV2_27/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_27	RestoreV2
save/Constsave/RestoreV2_27/tensor_names"save/RestoreV2_27/shape_and_slices*
dtypes
2*
_output_shapes
:
┴
save/Assign_27Assignembedding/dense/kernelsave/RestoreV2_27*
T0*)
_class
loc:@embedding/dense/kernel*
validate_shape(*
_output_shapes
:	PА*
use_locking(
Р
save/RestoreV2_28/tensor_namesConst*>
value5B3B)embedding/gru/rnn/gru_cell/candidate/bias*
dtype0*
_output_shapes
:
k
"save/RestoreV2_28/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_28	RestoreV2
save/Constsave/RestoreV2_28/tensor_names"save/RestoreV2_28/shape_and_slices*
dtypes
2*
_output_shapes
:
у
save/Assign_28Assign)embedding/gru/rnn/gru_cell/candidate/biassave/RestoreV2_28*
T0*<
_class2
0.loc:@embedding/gru/rnn/gru_cell/candidate/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(
Т
save/RestoreV2_29/tensor_namesConst*@
value7B5B+embedding/gru/rnn/gru_cell/candidate/kernel*
dtype0*
_output_shapes
:
k
"save/RestoreV2_29/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_29	RestoreV2
save/Constsave/RestoreV2_29/tensor_names"save/RestoreV2_29/shape_and_slices*
_output_shapes
:*
dtypes
2
ь
save/Assign_29Assign+embedding/gru/rnn/gru_cell/candidate/kernelsave/RestoreV2_29*
use_locking(*
T0*>
_class4
20loc:@embedding/gru/rnn/gru_cell/candidate/kernel*
validate_shape(* 
_output_shapes
:
АА
М
save/RestoreV2_30/tensor_namesConst*:
value1B/B%embedding/gru/rnn/gru_cell/gates/bias*
dtype0*
_output_shapes
:
k
"save/RestoreV2_30/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_30	RestoreV2
save/Constsave/RestoreV2_30/tensor_names"save/RestoreV2_30/shape_and_slices*
_output_shapes
:*
dtypes
2
█
save/Assign_30Assign%embedding/gru/rnn/gru_cell/gates/biassave/RestoreV2_30*
T0*8
_class.
,*loc:@embedding/gru/rnn/gru_cell/gates/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(
О
save/RestoreV2_31/tensor_namesConst*<
value3B1B'embedding/gru/rnn/gru_cell/gates/kernel*
dtype0*
_output_shapes
:
k
"save/RestoreV2_31/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_31	RestoreV2
save/Constsave/RestoreV2_31/tensor_names"save/RestoreV2_31/shape_and_slices*
_output_shapes
:*
dtypes
2
ф
save/Assign_31Assign'embedding/gru/rnn/gru_cell/gates/kernelsave/RestoreV2_31*
T0*:
_class0
.,loc:@embedding/gru/rnn/gru_cell/gates/kernel*
validate_shape(* 
_output_shapes
:
АА*
use_locking(
Й
save/RestoreV2_32/tensor_namesConst*7
value.B,B"embedding/highwaynet_0/dense1/bias*
dtype0*
_output_shapes
:
k
"save/RestoreV2_32/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_32	RestoreV2
save/Constsave/RestoreV2_32/tensor_names"save/RestoreV2_32/shape_and_slices*
dtypes
2*
_output_shapes
:
╒
save/Assign_32Assign"embedding/highwaynet_0/dense1/biassave/RestoreV2_32*
use_locking(*
T0*5
_class+
)'loc:@embedding/highwaynet_0/dense1/bias*
validate_shape(*
_output_shapes	
:А
Л
save/RestoreV2_33/tensor_namesConst*9
value0B.B$embedding/highwaynet_0/dense1/kernel*
dtype0*
_output_shapes
:
k
"save/RestoreV2_33/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_33	RestoreV2
save/Constsave/RestoreV2_33/tensor_names"save/RestoreV2_33/shape_and_slices*
dtypes
2*
_output_shapes
:
▐
save/Assign_33Assign$embedding/highwaynet_0/dense1/kernelsave/RestoreV2_33*
T0*7
_class-
+)loc:@embedding/highwaynet_0/dense1/kernel*
validate_shape(* 
_output_shapes
:
АА*
use_locking(
Й
save/RestoreV2_34/tensor_namesConst*7
value.B,B"embedding/highwaynet_0/dense2/bias*
dtype0*
_output_shapes
:
k
"save/RestoreV2_34/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_34	RestoreV2
save/Constsave/RestoreV2_34/tensor_names"save/RestoreV2_34/shape_and_slices*
dtypes
2*
_output_shapes
:
╒
save/Assign_34Assign"embedding/highwaynet_0/dense2/biassave/RestoreV2_34*
use_locking(*
T0*5
_class+
)'loc:@embedding/highwaynet_0/dense2/bias*
validate_shape(*
_output_shapes	
:А
Л
save/RestoreV2_35/tensor_namesConst*9
value0B.B$embedding/highwaynet_0/dense2/kernel*
dtype0*
_output_shapes
:
k
"save/RestoreV2_35/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_35	RestoreV2
save/Constsave/RestoreV2_35/tensor_names"save/RestoreV2_35/shape_and_slices*
_output_shapes
:*
dtypes
2
▐
save/Assign_35Assign$embedding/highwaynet_0/dense2/kernelsave/RestoreV2_35*
T0*7
_class-
+)loc:@embedding/highwaynet_0/dense2/kernel*
validate_shape(* 
_output_shapes
:
АА*
use_locking(
Й
save/RestoreV2_36/tensor_namesConst*7
value.B,B"embedding/highwaynet_1/dense1/bias*
dtype0*
_output_shapes
:
k
"save/RestoreV2_36/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_36	RestoreV2
save/Constsave/RestoreV2_36/tensor_names"save/RestoreV2_36/shape_and_slices*
_output_shapes
:*
dtypes
2
╒
save/Assign_36Assign"embedding/highwaynet_1/dense1/biassave/RestoreV2_36*
use_locking(*
T0*5
_class+
)'loc:@embedding/highwaynet_1/dense1/bias*
validate_shape(*
_output_shapes	
:А
Л
save/RestoreV2_37/tensor_namesConst*9
value0B.B$embedding/highwaynet_1/dense1/kernel*
dtype0*
_output_shapes
:
k
"save/RestoreV2_37/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_37	RestoreV2
save/Constsave/RestoreV2_37/tensor_names"save/RestoreV2_37/shape_and_slices*
dtypes
2*
_output_shapes
:
▐
save/Assign_37Assign$embedding/highwaynet_1/dense1/kernelsave/RestoreV2_37*
use_locking(*
T0*7
_class-
+)loc:@embedding/highwaynet_1/dense1/kernel*
validate_shape(* 
_output_shapes
:
АА
Й
save/RestoreV2_38/tensor_namesConst*7
value.B,B"embedding/highwaynet_1/dense2/bias*
dtype0*
_output_shapes
:
k
"save/RestoreV2_38/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_38	RestoreV2
save/Constsave/RestoreV2_38/tensor_names"save/RestoreV2_38/shape_and_slices*
dtypes
2*
_output_shapes
:
╒
save/Assign_38Assign"embedding/highwaynet_1/dense2/biassave/RestoreV2_38*
use_locking(*
T0*5
_class+
)'loc:@embedding/highwaynet_1/dense2/bias*
validate_shape(*
_output_shapes	
:А
Л
save/RestoreV2_39/tensor_namesConst*9
value0B.B$embedding/highwaynet_1/dense2/kernel*
dtype0*
_output_shapes
:
k
"save/RestoreV2_39/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_39	RestoreV2
save/Constsave/RestoreV2_39/tensor_names"save/RestoreV2_39/shape_and_slices*
_output_shapes
:*
dtypes
2
▐
save/Assign_39Assign$embedding/highwaynet_1/dense2/kernelsave/RestoreV2_39*
T0*7
_class-
+)loc:@embedding/highwaynet_1/dense2/kernel*
validate_shape(* 
_output_shapes
:
АА*
use_locking(

save/RestoreV2_40/tensor_namesConst*-
value$B"Bembedding/normalize/beta*
dtype0*
_output_shapes
:
k
"save/RestoreV2_40/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_40	RestoreV2
save/Constsave/RestoreV2_40/tensor_names"save/RestoreV2_40/shape_and_slices*
_output_shapes
:*
dtypes
2
┴
save/Assign_40Assignembedding/normalize/betasave/RestoreV2_40*
use_locking(*
T0*+
_class!
loc:@embedding/normalize/beta*
validate_shape(*
_output_shapes	
:А
А
save/RestoreV2_41/tensor_namesConst*.
value%B#Bembedding/normalize/gamma*
dtype0*
_output_shapes
:
k
"save/RestoreV2_41/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_41	RestoreV2
save/Constsave/RestoreV2_41/tensor_names"save/RestoreV2_41/shape_and_slices*
_output_shapes
:*
dtypes
2
├
save/Assign_41Assignembedding/normalize/gammasave/RestoreV2_41*
T0*,
_class"
 loc:@embedding/normalize/gamma*
validate_shape(*
_output_shapes	
:А*
use_locking(
А
save/RestoreV2_42/tensor_namesConst*.
value%B#Bembedding/projection/bias*
dtype0*
_output_shapes
:
k
"save/RestoreV2_42/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_42	RestoreV2
save/Constsave/RestoreV2_42/tensor_names"save/RestoreV2_42/shape_and_slices*
dtypes
2*
_output_shapes
:
├
save/Assign_42Assignembedding/projection/biassave/RestoreV2_42*
use_locking(*
T0*,
_class"
 loc:@embedding/projection/bias*
validate_shape(*
_output_shapes	
:у	
В
save/RestoreV2_43/tensor_namesConst*0
value'B%Bembedding/projection/kernel*
dtype0*
_output_shapes
:
k
"save/RestoreV2_43/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_43	RestoreV2
save/Constsave/RestoreV2_43/tensor_names"save/RestoreV2_43/shape_and_slices*
_output_shapes
:*
dtypes
2
╠
save/Assign_43Assignembedding/projection/kernelsave/RestoreV2_43*
T0*.
_class$
" loc:@embedding/projection/kernel*
validate_shape(* 
_output_shapes
:
їу	*
use_locking(
°
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_39^save/Assign_40^save/Assign_41^save/Assign_42^save/Assign_43
R
save_1/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
Ж
save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_4a6601cdf23f4774b921283e3aa8efc5/part*
dtype0*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_1/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
m
save_1/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
Ф
save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards"/device:CPU:0*
_output_shapes
: 
Т
save_1/SaveV2/tensor_namesConst"/device:CPU:0*┤
valueкBз,B embedding/conv1d_1/conv1d/kernelB embedding/conv1d_2/conv1d/kernelB1embedding/conv1d_banks/num_1/conv1d/conv1d/kernelB+embedding/conv1d_banks/num_1/normalize/betaB,embedding/conv1d_banks/num_1/normalize/gammaB1embedding/conv1d_banks/num_2/conv1d/conv1d/kernelB+embedding/conv1d_banks/num_2/normalize/betaB,embedding/conv1d_banks/num_2/normalize/gammaB1embedding/conv1d_banks/num_3/conv1d/conv1d/kernelB+embedding/conv1d_banks/num_3/normalize/betaB,embedding/conv1d_banks/num_3/normalize/gammaB1embedding/conv1d_banks/num_4/conv1d/conv1d/kernelB+embedding/conv1d_banks/num_4/normalize/betaB,embedding/conv1d_banks/num_4/normalize/gammaB1embedding/conv1d_banks/num_5/conv1d/conv1d/kernelB+embedding/conv1d_banks/num_5/normalize/betaB,embedding/conv1d_banks/num_5/normalize/gammaB1embedding/conv1d_banks/num_6/conv1d/conv1d/kernelB+embedding/conv1d_banks/num_6/normalize/betaB,embedding/conv1d_banks/num_6/normalize/gammaB1embedding/conv1d_banks/num_7/conv1d/conv1d/kernelB+embedding/conv1d_banks/num_7/normalize/betaB,embedding/conv1d_banks/num_7/normalize/gammaB1embedding/conv1d_banks/num_8/conv1d/conv1d/kernelB+embedding/conv1d_banks/num_8/normalize/betaB,embedding/conv1d_banks/num_8/normalize/gammaBembedding/dense/biasBembedding/dense/kernelB)embedding/gru/rnn/gru_cell/candidate/biasB+embedding/gru/rnn/gru_cell/candidate/kernelB%embedding/gru/rnn/gru_cell/gates/biasB'embedding/gru/rnn/gru_cell/gates/kernelB"embedding/highwaynet_0/dense1/biasB$embedding/highwaynet_0/dense1/kernelB"embedding/highwaynet_0/dense2/biasB$embedding/highwaynet_0/dense2/kernelB"embedding/highwaynet_1/dense1/biasB$embedding/highwaynet_1/dense1/kernelB"embedding/highwaynet_1/dense2/biasB$embedding/highwaynet_1/dense2/kernelBembedding/normalize/betaBembedding/normalize/gammaBembedding/projection/biasBembedding/projection/kernel*
dtype0*
_output_shapes
:,
╠
save_1/SaveV2/shape_and_slicesConst"/device:CPU:0*k
valuebB`,B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:,
╒
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slices embedding/conv1d_1/conv1d/kernel embedding/conv1d_2/conv1d/kernel1embedding/conv1d_banks/num_1/conv1d/conv1d/kernel+embedding/conv1d_banks/num_1/normalize/beta,embedding/conv1d_banks/num_1/normalize/gamma1embedding/conv1d_banks/num_2/conv1d/conv1d/kernel+embedding/conv1d_banks/num_2/normalize/beta,embedding/conv1d_banks/num_2/normalize/gamma1embedding/conv1d_banks/num_3/conv1d/conv1d/kernel+embedding/conv1d_banks/num_3/normalize/beta,embedding/conv1d_banks/num_3/normalize/gamma1embedding/conv1d_banks/num_4/conv1d/conv1d/kernel+embedding/conv1d_banks/num_4/normalize/beta,embedding/conv1d_banks/num_4/normalize/gamma1embedding/conv1d_banks/num_5/conv1d/conv1d/kernel+embedding/conv1d_banks/num_5/normalize/beta,embedding/conv1d_banks/num_5/normalize/gamma1embedding/conv1d_banks/num_6/conv1d/conv1d/kernel+embedding/conv1d_banks/num_6/normalize/beta,embedding/conv1d_banks/num_6/normalize/gamma1embedding/conv1d_banks/num_7/conv1d/conv1d/kernel+embedding/conv1d_banks/num_7/normalize/beta,embedding/conv1d_banks/num_7/normalize/gamma1embedding/conv1d_banks/num_8/conv1d/conv1d/kernel+embedding/conv1d_banks/num_8/normalize/beta,embedding/conv1d_banks/num_8/normalize/gammaembedding/dense/biasembedding/dense/kernel)embedding/gru/rnn/gru_cell/candidate/bias+embedding/gru/rnn/gru_cell/candidate/kernel%embedding/gru/rnn/gru_cell/gates/bias'embedding/gru/rnn/gru_cell/gates/kernel"embedding/highwaynet_0/dense1/bias$embedding/highwaynet_0/dense1/kernel"embedding/highwaynet_0/dense2/bias$embedding/highwaynet_0/dense2/kernel"embedding/highwaynet_1/dense1/bias$embedding/highwaynet_1/dense1/kernel"embedding/highwaynet_1/dense2/bias$embedding/highwaynet_1/dense2/kernelembedding/normalize/betaembedding/normalize/gammaembedding/projection/biasembedding/projection/kernel"/device:CPU:0*:
dtypes0
.2,
и
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2"/device:CPU:0*
T0*)
_class
loc:@save_1/ShardedFilename*
_output_shapes
: 
▓
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:
Т
save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const"/device:CPU:0*
delete_old_dirs(
С
save_1/IdentityIdentitysave_1/Const^save_1/control_dependency^save_1/MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 
Ж
save_1/RestoreV2/tensor_namesConst*5
value,B*B embedding/conv1d_1/conv1d/kernel*
dtype0*
_output_shapes
:
j
!save_1/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ш
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
╪
save_1/AssignAssign embedding/conv1d_1/conv1d/kernelsave_1/RestoreV2*
T0*3
_class)
'%loc:@embedding/conv1d_1/conv1d/kernel*
validate_shape(*$
_output_shapes
:А А*
use_locking(
И
save_1/RestoreV2_1/tensor_namesConst*5
value,B*B embedding/conv1d_2/conv1d/kernel*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ю
save_1/RestoreV2_1	RestoreV2save_1/Constsave_1/RestoreV2_1/tensor_names#save_1/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
▄
save_1/Assign_1Assign embedding/conv1d_2/conv1d/kernelsave_1/RestoreV2_1*
T0*3
_class)
'%loc:@embedding/conv1d_2/conv1d/kernel*
validate_shape(*$
_output_shapes
:АА*
use_locking(
Щ
save_1/RestoreV2_2/tensor_namesConst*F
value=B;B1embedding/conv1d_banks/num_1/conv1d/conv1d/kernel*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ю
save_1/RestoreV2_2	RestoreV2save_1/Constsave_1/RestoreV2_2/tensor_names#save_1/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
■
save_1/Assign_2Assign1embedding/conv1d_banks/num_1/conv1d/conv1d/kernelsave_1/RestoreV2_2*
use_locking(*
T0*D
_class:
86loc:@embedding/conv1d_banks/num_1/conv1d/conv1d/kernel*
validate_shape(*$
_output_shapes
:АА
У
save_1/RestoreV2_3/tensor_namesConst*@
value7B5B+embedding/conv1d_banks/num_1/normalize/beta*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ю
save_1/RestoreV2_3	RestoreV2save_1/Constsave_1/RestoreV2_3/tensor_names#save_1/RestoreV2_3/shape_and_slices*
_output_shapes
:*
dtypes
2
щ
save_1/Assign_3Assign+embedding/conv1d_banks/num_1/normalize/betasave_1/RestoreV2_3*
T0*>
_class4
20loc:@embedding/conv1d_banks/num_1/normalize/beta*
validate_shape(*
_output_shapes	
:А*
use_locking(
Ф
save_1/RestoreV2_4/tensor_namesConst*A
value8B6B,embedding/conv1d_banks/num_1/normalize/gamma*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ю
save_1/RestoreV2_4	RestoreV2save_1/Constsave_1/RestoreV2_4/tensor_names#save_1/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:
ы
save_1/Assign_4Assign,embedding/conv1d_banks/num_1/normalize/gammasave_1/RestoreV2_4*
T0*?
_class5
31loc:@embedding/conv1d_banks/num_1/normalize/gamma*
validate_shape(*
_output_shapes	
:А*
use_locking(
Щ
save_1/RestoreV2_5/tensor_namesConst*F
value=B;B1embedding/conv1d_banks/num_2/conv1d/conv1d/kernel*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ю
save_1/RestoreV2_5	RestoreV2save_1/Constsave_1/RestoreV2_5/tensor_names#save_1/RestoreV2_5/shape_and_slices*
_output_shapes
:*
dtypes
2
■
save_1/Assign_5Assign1embedding/conv1d_banks/num_2/conv1d/conv1d/kernelsave_1/RestoreV2_5*
use_locking(*
T0*D
_class:
86loc:@embedding/conv1d_banks/num_2/conv1d/conv1d/kernel*
validate_shape(*$
_output_shapes
:АА
У
save_1/RestoreV2_6/tensor_namesConst*@
value7B5B+embedding/conv1d_banks/num_2/normalize/beta*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_6/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ю
save_1/RestoreV2_6	RestoreV2save_1/Constsave_1/RestoreV2_6/tensor_names#save_1/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
щ
save_1/Assign_6Assign+embedding/conv1d_banks/num_2/normalize/betasave_1/RestoreV2_6*
T0*>
_class4
20loc:@embedding/conv1d_banks/num_2/normalize/beta*
validate_shape(*
_output_shapes	
:А*
use_locking(
Ф
save_1/RestoreV2_7/tensor_namesConst*A
value8B6B,embedding/conv1d_banks/num_2/normalize/gamma*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_7/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ю
save_1/RestoreV2_7	RestoreV2save_1/Constsave_1/RestoreV2_7/tensor_names#save_1/RestoreV2_7/shape_and_slices*
_output_shapes
:*
dtypes
2
ы
save_1/Assign_7Assign,embedding/conv1d_banks/num_2/normalize/gammasave_1/RestoreV2_7*
T0*?
_class5
31loc:@embedding/conv1d_banks/num_2/normalize/gamma*
validate_shape(*
_output_shapes	
:А*
use_locking(
Щ
save_1/RestoreV2_8/tensor_namesConst*F
value=B;B1embedding/conv1d_banks/num_3/conv1d/conv1d/kernel*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_8/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ю
save_1/RestoreV2_8	RestoreV2save_1/Constsave_1/RestoreV2_8/tensor_names#save_1/RestoreV2_8/shape_and_slices*
_output_shapes
:*
dtypes
2
■
save_1/Assign_8Assign1embedding/conv1d_banks/num_3/conv1d/conv1d/kernelsave_1/RestoreV2_8*
T0*D
_class:
86loc:@embedding/conv1d_banks/num_3/conv1d/conv1d/kernel*
validate_shape(*$
_output_shapes
:АА*
use_locking(
У
save_1/RestoreV2_9/tensor_namesConst*@
value7B5B+embedding/conv1d_banks/num_3/normalize/beta*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_9/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ю
save_1/RestoreV2_9	RestoreV2save_1/Constsave_1/RestoreV2_9/tensor_names#save_1/RestoreV2_9/shape_and_slices*
dtypes
2*
_output_shapes
:
щ
save_1/Assign_9Assign+embedding/conv1d_banks/num_3/normalize/betasave_1/RestoreV2_9*
use_locking(*
T0*>
_class4
20loc:@embedding/conv1d_banks/num_3/normalize/beta*
validate_shape(*
_output_shapes	
:А
Х
 save_1/RestoreV2_10/tensor_namesConst*A
value8B6B,embedding/conv1d_banks/num_3/normalize/gamma*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_10/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_1/RestoreV2_10	RestoreV2save_1/Const save_1/RestoreV2_10/tensor_names$save_1/RestoreV2_10/shape_and_slices*
dtypes
2*
_output_shapes
:
э
save_1/Assign_10Assign,embedding/conv1d_banks/num_3/normalize/gammasave_1/RestoreV2_10*
T0*?
_class5
31loc:@embedding/conv1d_banks/num_3/normalize/gamma*
validate_shape(*
_output_shapes	
:А*
use_locking(
Ъ
 save_1/RestoreV2_11/tensor_namesConst*F
value=B;B1embedding/conv1d_banks/num_4/conv1d/conv1d/kernel*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_11/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_1/RestoreV2_11	RestoreV2save_1/Const save_1/RestoreV2_11/tensor_names$save_1/RestoreV2_11/shape_and_slices*
dtypes
2*
_output_shapes
:
А
save_1/Assign_11Assign1embedding/conv1d_banks/num_4/conv1d/conv1d/kernelsave_1/RestoreV2_11*
use_locking(*
T0*D
_class:
86loc:@embedding/conv1d_banks/num_4/conv1d/conv1d/kernel*
validate_shape(*$
_output_shapes
:АА
Ф
 save_1/RestoreV2_12/tensor_namesConst*@
value7B5B+embedding/conv1d_banks/num_4/normalize/beta*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_12/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_1/RestoreV2_12	RestoreV2save_1/Const save_1/RestoreV2_12/tensor_names$save_1/RestoreV2_12/shape_and_slices*
dtypes
2*
_output_shapes
:
ы
save_1/Assign_12Assign+embedding/conv1d_banks/num_4/normalize/betasave_1/RestoreV2_12*
use_locking(*
T0*>
_class4
20loc:@embedding/conv1d_banks/num_4/normalize/beta*
validate_shape(*
_output_shapes	
:А
Х
 save_1/RestoreV2_13/tensor_namesConst*A
value8B6B,embedding/conv1d_banks/num_4/normalize/gamma*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_13/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_1/RestoreV2_13	RestoreV2save_1/Const save_1/RestoreV2_13/tensor_names$save_1/RestoreV2_13/shape_and_slices*
dtypes
2*
_output_shapes
:
э
save_1/Assign_13Assign,embedding/conv1d_banks/num_4/normalize/gammasave_1/RestoreV2_13*
use_locking(*
T0*?
_class5
31loc:@embedding/conv1d_banks/num_4/normalize/gamma*
validate_shape(*
_output_shapes	
:А
Ъ
 save_1/RestoreV2_14/tensor_namesConst*F
value=B;B1embedding/conv1d_banks/num_5/conv1d/conv1d/kernel*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_14/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_1/RestoreV2_14	RestoreV2save_1/Const save_1/RestoreV2_14/tensor_names$save_1/RestoreV2_14/shape_and_slices*
_output_shapes
:*
dtypes
2
А
save_1/Assign_14Assign1embedding/conv1d_banks/num_5/conv1d/conv1d/kernelsave_1/RestoreV2_14*
T0*D
_class:
86loc:@embedding/conv1d_banks/num_5/conv1d/conv1d/kernel*
validate_shape(*$
_output_shapes
:АА*
use_locking(
Ф
 save_1/RestoreV2_15/tensor_namesConst*@
value7B5B+embedding/conv1d_banks/num_5/normalize/beta*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_15/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_1/RestoreV2_15	RestoreV2save_1/Const save_1/RestoreV2_15/tensor_names$save_1/RestoreV2_15/shape_and_slices*
dtypes
2*
_output_shapes
:
ы
save_1/Assign_15Assign+embedding/conv1d_banks/num_5/normalize/betasave_1/RestoreV2_15*
T0*>
_class4
20loc:@embedding/conv1d_banks/num_5/normalize/beta*
validate_shape(*
_output_shapes	
:А*
use_locking(
Х
 save_1/RestoreV2_16/tensor_namesConst*A
value8B6B,embedding/conv1d_banks/num_5/normalize/gamma*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_16/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_1/RestoreV2_16	RestoreV2save_1/Const save_1/RestoreV2_16/tensor_names$save_1/RestoreV2_16/shape_and_slices*
_output_shapes
:*
dtypes
2
э
save_1/Assign_16Assign,embedding/conv1d_banks/num_5/normalize/gammasave_1/RestoreV2_16*
T0*?
_class5
31loc:@embedding/conv1d_banks/num_5/normalize/gamma*
validate_shape(*
_output_shapes	
:А*
use_locking(
Ъ
 save_1/RestoreV2_17/tensor_namesConst*F
value=B;B1embedding/conv1d_banks/num_6/conv1d/conv1d/kernel*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_17/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_1/RestoreV2_17	RestoreV2save_1/Const save_1/RestoreV2_17/tensor_names$save_1/RestoreV2_17/shape_and_slices*
_output_shapes
:*
dtypes
2
А
save_1/Assign_17Assign1embedding/conv1d_banks/num_6/conv1d/conv1d/kernelsave_1/RestoreV2_17*
T0*D
_class:
86loc:@embedding/conv1d_banks/num_6/conv1d/conv1d/kernel*
validate_shape(*$
_output_shapes
:АА*
use_locking(
Ф
 save_1/RestoreV2_18/tensor_namesConst*@
value7B5B+embedding/conv1d_banks/num_6/normalize/beta*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_18/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_1/RestoreV2_18	RestoreV2save_1/Const save_1/RestoreV2_18/tensor_names$save_1/RestoreV2_18/shape_and_slices*
dtypes
2*
_output_shapes
:
ы
save_1/Assign_18Assign+embedding/conv1d_banks/num_6/normalize/betasave_1/RestoreV2_18*
T0*>
_class4
20loc:@embedding/conv1d_banks/num_6/normalize/beta*
validate_shape(*
_output_shapes	
:А*
use_locking(
Х
 save_1/RestoreV2_19/tensor_namesConst*A
value8B6B,embedding/conv1d_banks/num_6/normalize/gamma*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_19/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_1/RestoreV2_19	RestoreV2save_1/Const save_1/RestoreV2_19/tensor_names$save_1/RestoreV2_19/shape_and_slices*
_output_shapes
:*
dtypes
2
э
save_1/Assign_19Assign,embedding/conv1d_banks/num_6/normalize/gammasave_1/RestoreV2_19*
T0*?
_class5
31loc:@embedding/conv1d_banks/num_6/normalize/gamma*
validate_shape(*
_output_shapes	
:А*
use_locking(
Ъ
 save_1/RestoreV2_20/tensor_namesConst*F
value=B;B1embedding/conv1d_banks/num_7/conv1d/conv1d/kernel*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_20/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_1/RestoreV2_20	RestoreV2save_1/Const save_1/RestoreV2_20/tensor_names$save_1/RestoreV2_20/shape_and_slices*
dtypes
2*
_output_shapes
:
А
save_1/Assign_20Assign1embedding/conv1d_banks/num_7/conv1d/conv1d/kernelsave_1/RestoreV2_20*
use_locking(*
T0*D
_class:
86loc:@embedding/conv1d_banks/num_7/conv1d/conv1d/kernel*
validate_shape(*$
_output_shapes
:АА
Ф
 save_1/RestoreV2_21/tensor_namesConst*@
value7B5B+embedding/conv1d_banks/num_7/normalize/beta*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_21/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_1/RestoreV2_21	RestoreV2save_1/Const save_1/RestoreV2_21/tensor_names$save_1/RestoreV2_21/shape_and_slices*
_output_shapes
:*
dtypes
2
ы
save_1/Assign_21Assign+embedding/conv1d_banks/num_7/normalize/betasave_1/RestoreV2_21*
use_locking(*
T0*>
_class4
20loc:@embedding/conv1d_banks/num_7/normalize/beta*
validate_shape(*
_output_shapes	
:А
Х
 save_1/RestoreV2_22/tensor_namesConst*A
value8B6B,embedding/conv1d_banks/num_7/normalize/gamma*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_22/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_1/RestoreV2_22	RestoreV2save_1/Const save_1/RestoreV2_22/tensor_names$save_1/RestoreV2_22/shape_and_slices*
dtypes
2*
_output_shapes
:
э
save_1/Assign_22Assign,embedding/conv1d_banks/num_7/normalize/gammasave_1/RestoreV2_22*
T0*?
_class5
31loc:@embedding/conv1d_banks/num_7/normalize/gamma*
validate_shape(*
_output_shapes	
:А*
use_locking(
Ъ
 save_1/RestoreV2_23/tensor_namesConst*F
value=B;B1embedding/conv1d_banks/num_8/conv1d/conv1d/kernel*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_23/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_1/RestoreV2_23	RestoreV2save_1/Const save_1/RestoreV2_23/tensor_names$save_1/RestoreV2_23/shape_and_slices*
dtypes
2*
_output_shapes
:
А
save_1/Assign_23Assign1embedding/conv1d_banks/num_8/conv1d/conv1d/kernelsave_1/RestoreV2_23*
use_locking(*
T0*D
_class:
86loc:@embedding/conv1d_banks/num_8/conv1d/conv1d/kernel*
validate_shape(*$
_output_shapes
:АА
Ф
 save_1/RestoreV2_24/tensor_namesConst*@
value7B5B+embedding/conv1d_banks/num_8/normalize/beta*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_24/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_1/RestoreV2_24	RestoreV2save_1/Const save_1/RestoreV2_24/tensor_names$save_1/RestoreV2_24/shape_and_slices*
_output_shapes
:*
dtypes
2
ы
save_1/Assign_24Assign+embedding/conv1d_banks/num_8/normalize/betasave_1/RestoreV2_24*
use_locking(*
T0*>
_class4
20loc:@embedding/conv1d_banks/num_8/normalize/beta*
validate_shape(*
_output_shapes	
:А
Х
 save_1/RestoreV2_25/tensor_namesConst*A
value8B6B,embedding/conv1d_banks/num_8/normalize/gamma*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_25/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_1/RestoreV2_25	RestoreV2save_1/Const save_1/RestoreV2_25/tensor_names$save_1/RestoreV2_25/shape_and_slices*
_output_shapes
:*
dtypes
2
э
save_1/Assign_25Assign,embedding/conv1d_banks/num_8/normalize/gammasave_1/RestoreV2_25*
use_locking(*
T0*?
_class5
31loc:@embedding/conv1d_banks/num_8/normalize/gamma*
validate_shape(*
_output_shapes	
:А
}
 save_1/RestoreV2_26/tensor_namesConst*)
value BBembedding/dense/bias*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_26/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_1/RestoreV2_26	RestoreV2save_1/Const save_1/RestoreV2_26/tensor_names$save_1/RestoreV2_26/shape_and_slices*
_output_shapes
:*
dtypes
2
╜
save_1/Assign_26Assignembedding/dense/biassave_1/RestoreV2_26*
T0*'
_class
loc:@embedding/dense/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(

 save_1/RestoreV2_27/tensor_namesConst*+
value"B Bembedding/dense/kernel*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_27/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_1/RestoreV2_27	RestoreV2save_1/Const save_1/RestoreV2_27/tensor_names$save_1/RestoreV2_27/shape_and_slices*
_output_shapes
:*
dtypes
2
┼
save_1/Assign_27Assignembedding/dense/kernelsave_1/RestoreV2_27*
use_locking(*
T0*)
_class
loc:@embedding/dense/kernel*
validate_shape(*
_output_shapes
:	PА
Т
 save_1/RestoreV2_28/tensor_namesConst*>
value5B3B)embedding/gru/rnn/gru_cell/candidate/bias*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_28/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_1/RestoreV2_28	RestoreV2save_1/Const save_1/RestoreV2_28/tensor_names$save_1/RestoreV2_28/shape_and_slices*
_output_shapes
:*
dtypes
2
ч
save_1/Assign_28Assign)embedding/gru/rnn/gru_cell/candidate/biassave_1/RestoreV2_28*
T0*<
_class2
0.loc:@embedding/gru/rnn/gru_cell/candidate/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(
Ф
 save_1/RestoreV2_29/tensor_namesConst*@
value7B5B+embedding/gru/rnn/gru_cell/candidate/kernel*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_29/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_1/RestoreV2_29	RestoreV2save_1/Const save_1/RestoreV2_29/tensor_names$save_1/RestoreV2_29/shape_and_slices*
_output_shapes
:*
dtypes
2
Ё
save_1/Assign_29Assign+embedding/gru/rnn/gru_cell/candidate/kernelsave_1/RestoreV2_29*
T0*>
_class4
20loc:@embedding/gru/rnn/gru_cell/candidate/kernel*
validate_shape(* 
_output_shapes
:
АА*
use_locking(
О
 save_1/RestoreV2_30/tensor_namesConst*:
value1B/B%embedding/gru/rnn/gru_cell/gates/bias*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_30/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_1/RestoreV2_30	RestoreV2save_1/Const save_1/RestoreV2_30/tensor_names$save_1/RestoreV2_30/shape_and_slices*
dtypes
2*
_output_shapes
:
▀
save_1/Assign_30Assign%embedding/gru/rnn/gru_cell/gates/biassave_1/RestoreV2_30*
use_locking(*
T0*8
_class.
,*loc:@embedding/gru/rnn/gru_cell/gates/bias*
validate_shape(*
_output_shapes	
:А
Р
 save_1/RestoreV2_31/tensor_namesConst*<
value3B1B'embedding/gru/rnn/gru_cell/gates/kernel*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_31/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_1/RestoreV2_31	RestoreV2save_1/Const save_1/RestoreV2_31/tensor_names$save_1/RestoreV2_31/shape_and_slices*
_output_shapes
:*
dtypes
2
ш
save_1/Assign_31Assign'embedding/gru/rnn/gru_cell/gates/kernelsave_1/RestoreV2_31*
use_locking(*
T0*:
_class0
.,loc:@embedding/gru/rnn/gru_cell/gates/kernel*
validate_shape(* 
_output_shapes
:
АА
Л
 save_1/RestoreV2_32/tensor_namesConst*7
value.B,B"embedding/highwaynet_0/dense1/bias*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_32/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_1/RestoreV2_32	RestoreV2save_1/Const save_1/RestoreV2_32/tensor_names$save_1/RestoreV2_32/shape_and_slices*
dtypes
2*
_output_shapes
:
┘
save_1/Assign_32Assign"embedding/highwaynet_0/dense1/biassave_1/RestoreV2_32*
use_locking(*
T0*5
_class+
)'loc:@embedding/highwaynet_0/dense1/bias*
validate_shape(*
_output_shapes	
:А
Н
 save_1/RestoreV2_33/tensor_namesConst*9
value0B.B$embedding/highwaynet_0/dense1/kernel*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_33/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_1/RestoreV2_33	RestoreV2save_1/Const save_1/RestoreV2_33/tensor_names$save_1/RestoreV2_33/shape_and_slices*
dtypes
2*
_output_shapes
:
т
save_1/Assign_33Assign$embedding/highwaynet_0/dense1/kernelsave_1/RestoreV2_33*
use_locking(*
T0*7
_class-
+)loc:@embedding/highwaynet_0/dense1/kernel*
validate_shape(* 
_output_shapes
:
АА
Л
 save_1/RestoreV2_34/tensor_namesConst*7
value.B,B"embedding/highwaynet_0/dense2/bias*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_34/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_1/RestoreV2_34	RestoreV2save_1/Const save_1/RestoreV2_34/tensor_names$save_1/RestoreV2_34/shape_and_slices*
_output_shapes
:*
dtypes
2
┘
save_1/Assign_34Assign"embedding/highwaynet_0/dense2/biassave_1/RestoreV2_34*
T0*5
_class+
)'loc:@embedding/highwaynet_0/dense2/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(
Н
 save_1/RestoreV2_35/tensor_namesConst*9
value0B.B$embedding/highwaynet_0/dense2/kernel*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_35/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_1/RestoreV2_35	RestoreV2save_1/Const save_1/RestoreV2_35/tensor_names$save_1/RestoreV2_35/shape_and_slices*
dtypes
2*
_output_shapes
:
т
save_1/Assign_35Assign$embedding/highwaynet_0/dense2/kernelsave_1/RestoreV2_35*
use_locking(*
T0*7
_class-
+)loc:@embedding/highwaynet_0/dense2/kernel*
validate_shape(* 
_output_shapes
:
АА
Л
 save_1/RestoreV2_36/tensor_namesConst*7
value.B,B"embedding/highwaynet_1/dense1/bias*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_36/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_1/RestoreV2_36	RestoreV2save_1/Const save_1/RestoreV2_36/tensor_names$save_1/RestoreV2_36/shape_and_slices*
_output_shapes
:*
dtypes
2
┘
save_1/Assign_36Assign"embedding/highwaynet_1/dense1/biassave_1/RestoreV2_36*
T0*5
_class+
)'loc:@embedding/highwaynet_1/dense1/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(
Н
 save_1/RestoreV2_37/tensor_namesConst*9
value0B.B$embedding/highwaynet_1/dense1/kernel*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_37/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_1/RestoreV2_37	RestoreV2save_1/Const save_1/RestoreV2_37/tensor_names$save_1/RestoreV2_37/shape_and_slices*
_output_shapes
:*
dtypes
2
т
save_1/Assign_37Assign$embedding/highwaynet_1/dense1/kernelsave_1/RestoreV2_37*
use_locking(*
T0*7
_class-
+)loc:@embedding/highwaynet_1/dense1/kernel*
validate_shape(* 
_output_shapes
:
АА
Л
 save_1/RestoreV2_38/tensor_namesConst*7
value.B,B"embedding/highwaynet_1/dense2/bias*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_38/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_1/RestoreV2_38	RestoreV2save_1/Const save_1/RestoreV2_38/tensor_names$save_1/RestoreV2_38/shape_and_slices*
dtypes
2*
_output_shapes
:
┘
save_1/Assign_38Assign"embedding/highwaynet_1/dense2/biassave_1/RestoreV2_38*
use_locking(*
T0*5
_class+
)'loc:@embedding/highwaynet_1/dense2/bias*
validate_shape(*
_output_shapes	
:А
Н
 save_1/RestoreV2_39/tensor_namesConst*9
value0B.B$embedding/highwaynet_1/dense2/kernel*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_39/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_1/RestoreV2_39	RestoreV2save_1/Const save_1/RestoreV2_39/tensor_names$save_1/RestoreV2_39/shape_and_slices*
dtypes
2*
_output_shapes
:
т
save_1/Assign_39Assign$embedding/highwaynet_1/dense2/kernelsave_1/RestoreV2_39*
T0*7
_class-
+)loc:@embedding/highwaynet_1/dense2/kernel*
validate_shape(* 
_output_shapes
:
АА*
use_locking(
Б
 save_1/RestoreV2_40/tensor_namesConst*-
value$B"Bembedding/normalize/beta*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_40/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_1/RestoreV2_40	RestoreV2save_1/Const save_1/RestoreV2_40/tensor_names$save_1/RestoreV2_40/shape_and_slices*
dtypes
2*
_output_shapes
:
┼
save_1/Assign_40Assignembedding/normalize/betasave_1/RestoreV2_40*
T0*+
_class!
loc:@embedding/normalize/beta*
validate_shape(*
_output_shapes	
:А*
use_locking(
В
 save_1/RestoreV2_41/tensor_namesConst*.
value%B#Bembedding/normalize/gamma*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_41/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_1/RestoreV2_41	RestoreV2save_1/Const save_1/RestoreV2_41/tensor_names$save_1/RestoreV2_41/shape_and_slices*
_output_shapes
:*
dtypes
2
╟
save_1/Assign_41Assignembedding/normalize/gammasave_1/RestoreV2_41*
T0*,
_class"
 loc:@embedding/normalize/gamma*
validate_shape(*
_output_shapes	
:А*
use_locking(
В
 save_1/RestoreV2_42/tensor_namesConst*.
value%B#Bembedding/projection/bias*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_42/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_1/RestoreV2_42	RestoreV2save_1/Const save_1/RestoreV2_42/tensor_names$save_1/RestoreV2_42/shape_and_slices*
dtypes
2*
_output_shapes
:
╟
save_1/Assign_42Assignembedding/projection/biassave_1/RestoreV2_42*
T0*,
_class"
 loc:@embedding/projection/bias*
validate_shape(*
_output_shapes	
:у	*
use_locking(
Д
 save_1/RestoreV2_43/tensor_namesConst*0
value'B%Bembedding/projection/kernel*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_43/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_1/RestoreV2_43	RestoreV2save_1/Const save_1/RestoreV2_43/tensor_names$save_1/RestoreV2_43/shape_and_slices*
_output_shapes
:*
dtypes
2
╨
save_1/Assign_43Assignembedding/projection/kernelsave_1/RestoreV2_43*
T0*.
_class$
" loc:@embedding/projection/kernel*
validate_shape(* 
_output_shapes
:
їу	*
use_locking(
╘
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_20^save_1/Assign_21^save_1/Assign_22^save_1/Assign_23^save_1/Assign_24^save_1/Assign_25^save_1/Assign_26^save_1/Assign_27^save_1/Assign_28^save_1/Assign_29^save_1/Assign_30^save_1/Assign_31^save_1/Assign_32^save_1/Assign_33^save_1/Assign_34^save_1/Assign_35^save_1/Assign_36^save_1/Assign_37^save_1/Assign_38^save_1/Assign_39^save_1/Assign_40^save_1/Assign_41^save_1/Assign_42^save_1/Assign_43
1
save_1/restore_allNoOp^save_1/restore_shard"B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"уG
trainable_variables╦G╚G
Н
embedding/dense/kernel:0embedding/dense/kernel/Assignembedding/dense/kernel/read:023embedding/dense/kernel/Initializer/random_uniform:0
|
embedding/dense/bias:0embedding/dense/bias/Assignembedding/dense/bias/read:02(embedding/dense/bias/Initializer/zeros:0
∙
3embedding/conv1d_banks/num_1/conv1d/conv1d/kernel:08embedding/conv1d_banks/num_1/conv1d/conv1d/kernel/Assign8embedding/conv1d_banks/num_1/conv1d/conv1d/kernel/read:02Nembedding/conv1d_banks/num_1/conv1d/conv1d/kernel/Initializer/random_uniform:0
╪
-embedding/conv1d_banks/num_1/normalize/beta:02embedding/conv1d_banks/num_1/normalize/beta/Assign2embedding/conv1d_banks/num_1/normalize/beta/read:02?embedding/conv1d_banks/num_1/normalize/beta/Initializer/zeros:0
█
.embedding/conv1d_banks/num_1/normalize/gamma:03embedding/conv1d_banks/num_1/normalize/gamma/Assign3embedding/conv1d_banks/num_1/normalize/gamma/read:02?embedding/conv1d_banks/num_1/normalize/gamma/Initializer/ones:0
∙
3embedding/conv1d_banks/num_2/conv1d/conv1d/kernel:08embedding/conv1d_banks/num_2/conv1d/conv1d/kernel/Assign8embedding/conv1d_banks/num_2/conv1d/conv1d/kernel/read:02Nembedding/conv1d_banks/num_2/conv1d/conv1d/kernel/Initializer/random_uniform:0
╪
-embedding/conv1d_banks/num_2/normalize/beta:02embedding/conv1d_banks/num_2/normalize/beta/Assign2embedding/conv1d_banks/num_2/normalize/beta/read:02?embedding/conv1d_banks/num_2/normalize/beta/Initializer/zeros:0
█
.embedding/conv1d_banks/num_2/normalize/gamma:03embedding/conv1d_banks/num_2/normalize/gamma/Assign3embedding/conv1d_banks/num_2/normalize/gamma/read:02?embedding/conv1d_banks/num_2/normalize/gamma/Initializer/ones:0
∙
3embedding/conv1d_banks/num_3/conv1d/conv1d/kernel:08embedding/conv1d_banks/num_3/conv1d/conv1d/kernel/Assign8embedding/conv1d_banks/num_3/conv1d/conv1d/kernel/read:02Nembedding/conv1d_banks/num_3/conv1d/conv1d/kernel/Initializer/random_uniform:0
╪
-embedding/conv1d_banks/num_3/normalize/beta:02embedding/conv1d_banks/num_3/normalize/beta/Assign2embedding/conv1d_banks/num_3/normalize/beta/read:02?embedding/conv1d_banks/num_3/normalize/beta/Initializer/zeros:0
█
.embedding/conv1d_banks/num_3/normalize/gamma:03embedding/conv1d_banks/num_3/normalize/gamma/Assign3embedding/conv1d_banks/num_3/normalize/gamma/read:02?embedding/conv1d_banks/num_3/normalize/gamma/Initializer/ones:0
∙
3embedding/conv1d_banks/num_4/conv1d/conv1d/kernel:08embedding/conv1d_banks/num_4/conv1d/conv1d/kernel/Assign8embedding/conv1d_banks/num_4/conv1d/conv1d/kernel/read:02Nembedding/conv1d_banks/num_4/conv1d/conv1d/kernel/Initializer/random_uniform:0
╪
-embedding/conv1d_banks/num_4/normalize/beta:02embedding/conv1d_banks/num_4/normalize/beta/Assign2embedding/conv1d_banks/num_4/normalize/beta/read:02?embedding/conv1d_banks/num_4/normalize/beta/Initializer/zeros:0
█
.embedding/conv1d_banks/num_4/normalize/gamma:03embedding/conv1d_banks/num_4/normalize/gamma/Assign3embedding/conv1d_banks/num_4/normalize/gamma/read:02?embedding/conv1d_banks/num_4/normalize/gamma/Initializer/ones:0
∙
3embedding/conv1d_banks/num_5/conv1d/conv1d/kernel:08embedding/conv1d_banks/num_5/conv1d/conv1d/kernel/Assign8embedding/conv1d_banks/num_5/conv1d/conv1d/kernel/read:02Nembedding/conv1d_banks/num_5/conv1d/conv1d/kernel/Initializer/random_uniform:0
╪
-embedding/conv1d_banks/num_5/normalize/beta:02embedding/conv1d_banks/num_5/normalize/beta/Assign2embedding/conv1d_banks/num_5/normalize/beta/read:02?embedding/conv1d_banks/num_5/normalize/beta/Initializer/zeros:0
█
.embedding/conv1d_banks/num_5/normalize/gamma:03embedding/conv1d_banks/num_5/normalize/gamma/Assign3embedding/conv1d_banks/num_5/normalize/gamma/read:02?embedding/conv1d_banks/num_5/normalize/gamma/Initializer/ones:0
∙
3embedding/conv1d_banks/num_6/conv1d/conv1d/kernel:08embedding/conv1d_banks/num_6/conv1d/conv1d/kernel/Assign8embedding/conv1d_banks/num_6/conv1d/conv1d/kernel/read:02Nembedding/conv1d_banks/num_6/conv1d/conv1d/kernel/Initializer/random_uniform:0
╪
-embedding/conv1d_banks/num_6/normalize/beta:02embedding/conv1d_banks/num_6/normalize/beta/Assign2embedding/conv1d_banks/num_6/normalize/beta/read:02?embedding/conv1d_banks/num_6/normalize/beta/Initializer/zeros:0
█
.embedding/conv1d_banks/num_6/normalize/gamma:03embedding/conv1d_banks/num_6/normalize/gamma/Assign3embedding/conv1d_banks/num_6/normalize/gamma/read:02?embedding/conv1d_banks/num_6/normalize/gamma/Initializer/ones:0
∙
3embedding/conv1d_banks/num_7/conv1d/conv1d/kernel:08embedding/conv1d_banks/num_7/conv1d/conv1d/kernel/Assign8embedding/conv1d_banks/num_7/conv1d/conv1d/kernel/read:02Nembedding/conv1d_banks/num_7/conv1d/conv1d/kernel/Initializer/random_uniform:0
╪
-embedding/conv1d_banks/num_7/normalize/beta:02embedding/conv1d_banks/num_7/normalize/beta/Assign2embedding/conv1d_banks/num_7/normalize/beta/read:02?embedding/conv1d_banks/num_7/normalize/beta/Initializer/zeros:0
█
.embedding/conv1d_banks/num_7/normalize/gamma:03embedding/conv1d_banks/num_7/normalize/gamma/Assign3embedding/conv1d_banks/num_7/normalize/gamma/read:02?embedding/conv1d_banks/num_7/normalize/gamma/Initializer/ones:0
∙
3embedding/conv1d_banks/num_8/conv1d/conv1d/kernel:08embedding/conv1d_banks/num_8/conv1d/conv1d/kernel/Assign8embedding/conv1d_banks/num_8/conv1d/conv1d/kernel/read:02Nembedding/conv1d_banks/num_8/conv1d/conv1d/kernel/Initializer/random_uniform:0
╪
-embedding/conv1d_banks/num_8/normalize/beta:02embedding/conv1d_banks/num_8/normalize/beta/Assign2embedding/conv1d_banks/num_8/normalize/beta/read:02?embedding/conv1d_banks/num_8/normalize/beta/Initializer/zeros:0
█
.embedding/conv1d_banks/num_8/normalize/gamma:03embedding/conv1d_banks/num_8/normalize/gamma/Assign3embedding/conv1d_banks/num_8/normalize/gamma/read:02?embedding/conv1d_banks/num_8/normalize/gamma/Initializer/ones:0
╡
"embedding/conv1d_1/conv1d/kernel:0'embedding/conv1d_1/conv1d/kernel/Assign'embedding/conv1d_1/conv1d/kernel/read:02=embedding/conv1d_1/conv1d/kernel/Initializer/random_uniform:0
М
embedding/normalize/beta:0embedding/normalize/beta/Assignembedding/normalize/beta/read:02,embedding/normalize/beta/Initializer/zeros:0
П
embedding/normalize/gamma:0 embedding/normalize/gamma/Assign embedding/normalize/gamma/read:02,embedding/normalize/gamma/Initializer/ones:0
╡
"embedding/conv1d_2/conv1d/kernel:0'embedding/conv1d_2/conv1d/kernel/Assign'embedding/conv1d_2/conv1d/kernel/read:02=embedding/conv1d_2/conv1d/kernel/Initializer/random_uniform:0
┼
&embedding/highwaynet_0/dense1/kernel:0+embedding/highwaynet_0/dense1/kernel/Assign+embedding/highwaynet_0/dense1/kernel/read:02Aembedding/highwaynet_0/dense1/kernel/Initializer/random_uniform:0
┤
$embedding/highwaynet_0/dense1/bias:0)embedding/highwaynet_0/dense1/bias/Assign)embedding/highwaynet_0/dense1/bias/read:026embedding/highwaynet_0/dense1/bias/Initializer/zeros:0
┼
&embedding/highwaynet_0/dense2/kernel:0+embedding/highwaynet_0/dense2/kernel/Assign+embedding/highwaynet_0/dense2/kernel/read:02Aembedding/highwaynet_0/dense2/kernel/Initializer/random_uniform:0
┤
$embedding/highwaynet_0/dense2/bias:0)embedding/highwaynet_0/dense2/bias/Assign)embedding/highwaynet_0/dense2/bias/read:026embedding/highwaynet_0/dense2/bias/Initializer/Const:0
┼
&embedding/highwaynet_1/dense1/kernel:0+embedding/highwaynet_1/dense1/kernel/Assign+embedding/highwaynet_1/dense1/kernel/read:02Aembedding/highwaynet_1/dense1/kernel/Initializer/random_uniform:0
┤
$embedding/highwaynet_1/dense1/bias:0)embedding/highwaynet_1/dense1/bias/Assign)embedding/highwaynet_1/dense1/bias/read:026embedding/highwaynet_1/dense1/bias/Initializer/zeros:0
┼
&embedding/highwaynet_1/dense2/kernel:0+embedding/highwaynet_1/dense2/kernel/Assign+embedding/highwaynet_1/dense2/kernel/read:02Aembedding/highwaynet_1/dense2/kernel/Initializer/random_uniform:0
┤
$embedding/highwaynet_1/dense2/bias:0)embedding/highwaynet_1/dense2/bias/Assign)embedding/highwaynet_1/dense2/bias/read:026embedding/highwaynet_1/dense2/bias/Initializer/Const:0
╤
)embedding/gru/rnn/gru_cell/gates/kernel:0.embedding/gru/rnn/gru_cell/gates/kernel/Assign.embedding/gru/rnn/gru_cell/gates/kernel/read:02Dembedding/gru/rnn/gru_cell/gates/kernel/Initializer/random_uniform:0
└
'embedding/gru/rnn/gru_cell/gates/bias:0,embedding/gru/rnn/gru_cell/gates/bias/Assign,embedding/gru/rnn/gru_cell/gates/bias/read:029embedding/gru/rnn/gru_cell/gates/bias/Initializer/Const:0
с
-embedding/gru/rnn/gru_cell/candidate/kernel:02embedding/gru/rnn/gru_cell/candidate/kernel/Assign2embedding/gru/rnn/gru_cell/candidate/kernel/read:02Hembedding/gru/rnn/gru_cell/candidate/kernel/Initializer/random_uniform:0
╨
+embedding/gru/rnn/gru_cell/candidate/bias:00embedding/gru/rnn/gru_cell/candidate/bias/Assign0embedding/gru/rnn/gru_cell/candidate/bias/read:02=embedding/gru/rnn/gru_cell/candidate/bias/Initializer/zeros:0
б
embedding/projection/kernel:0"embedding/projection/kernel/Assign"embedding/projection/kernel/read:028embedding/projection/kernel/Initializer/random_uniform:0
Р
embedding/projection/bias:0 embedding/projection/bias/Assign embedding/projection/bias/read:02-embedding/projection/bias/Initializer/zeros:0"О#
while_context№"∙"
Ў"
%embedding/gru/rnn/while/while_context *"embedding/gru/rnn/while/LoopCond:02embedding/gru/rnn/while/Merge:0:"embedding/gru/rnn/while/Identity:0Bembedding/gru/rnn/while/Exit:0B embedding/gru/rnn/while/Exit_1:0B embedding/gru/rnn/while/Exit_2:0B embedding/gru/rnn/while/Exit_3:0Jк
embedding/gru/rnn/TensorArray:0
Nembedding/gru/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0
!embedding/gru/rnn/TensorArray_1:0
0embedding/gru/rnn/gru_cell/candidate/bias/read:0
2embedding/gru/rnn/gru_cell/candidate/kernel/read:0
,embedding/gru/rnn/gru_cell/gates/bias/read:0
.embedding/gru/rnn/gru_cell/gates/kernel/read:0
#embedding/gru/rnn/strided_slice_1:0
embedding/gru/rnn/while/Enter:0
!embedding/gru/rnn/while/Enter_1:0
!embedding/gru/rnn/while/Enter_2:0
!embedding/gru/rnn/while/Enter_3:0
embedding/gru/rnn/while/Exit:0
 embedding/gru/rnn/while/Exit_1:0
 embedding/gru/rnn/while/Exit_2:0
 embedding/gru/rnn/while/Exit_3:0
"embedding/gru/rnn/while/Identity:0
$embedding/gru/rnn/while/Identity_1:0
$embedding/gru/rnn/while/Identity_2:0
$embedding/gru/rnn/while/Identity_3:0
$embedding/gru/rnn/while/Less/Enter:0
embedding/gru/rnn/while/Less:0
 embedding/gru/rnn/while/Less_1:0
$embedding/gru/rnn/while/LogicalAnd:0
"embedding/gru/rnn/while/LoopCond:0
embedding/gru/rnn/while/Merge:0
embedding/gru/rnn/while/Merge:1
!embedding/gru/rnn/while/Merge_1:0
!embedding/gru/rnn/while/Merge_1:1
!embedding/gru/rnn/while/Merge_2:0
!embedding/gru/rnn/while/Merge_2:1
!embedding/gru/rnn/while/Merge_3:0
!embedding/gru/rnn/while/Merge_3:1
'embedding/gru/rnn/while/NextIteration:0
)embedding/gru/rnn/while/NextIteration_1:0
)embedding/gru/rnn/while/NextIteration_2:0
)embedding/gru/rnn/while/NextIteration_3:0
 embedding/gru/rnn/while/Switch:0
 embedding/gru/rnn/while/Switch:1
"embedding/gru/rnn/while/Switch_1:0
"embedding/gru/rnn/while/Switch_1:1
"embedding/gru/rnn/while/Switch_2:0
"embedding/gru/rnn/while/Switch_2:1
"embedding/gru/rnn/while/Switch_3:0
"embedding/gru/rnn/while/Switch_3:1
1embedding/gru/rnn/while/TensorArrayReadV3/Enter:0
3embedding/gru/rnn/while/TensorArrayReadV3/Enter_1:0
+embedding/gru/rnn/while/TensorArrayReadV3:0
Cembedding/gru/rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0
=embedding/gru/rnn/while/TensorArrayWrite/TensorArrayWriteV3:0
embedding/gru/rnn/while/add/y:0
embedding/gru/rnn/while/add:0
!embedding/gru/rnn/while/add_1/y:0
embedding/gru/rnn/while/add_1:0
0embedding/gru/rnn/while/gru_cell/BiasAdd/Enter:0
*embedding/gru/rnn/while/gru_cell/BiasAdd:0
2embedding/gru/rnn/while/gru_cell/BiasAdd_1/Enter:0
,embedding/gru/rnn/while/gru_cell/BiasAdd_1:0
(embedding/gru/rnn/while/gru_cell/Const:0
/embedding/gru/rnn/while/gru_cell/MatMul/Enter:0
)embedding/gru/rnn/while/gru_cell/MatMul:0
1embedding/gru/rnn/while/gru_cell/MatMul_1/Enter:0
+embedding/gru/rnn/while/gru_cell/MatMul_1:0
*embedding/gru/rnn/while/gru_cell/Sigmoid:0
'embedding/gru/rnn/while/gru_cell/Tanh:0
&embedding/gru/rnn/while/gru_cell/add:0
.embedding/gru/rnn/while/gru_cell/concat/axis:0
)embedding/gru/rnn/while/gru_cell/concat:0
0embedding/gru/rnn/while/gru_cell/concat_1/axis:0
+embedding/gru/rnn/while/gru_cell/concat_1:0
&embedding/gru/rnn/while/gru_cell/mul:0
(embedding/gru/rnn/while/gru_cell/mul_1:0
(embedding/gru/rnn/while/gru_cell/mul_2:0
2embedding/gru/rnn/while/gru_cell/split/split_dim:0
(embedding/gru/rnn/while/gru_cell/split:0
(embedding/gru/rnn/while/gru_cell/split:1
(embedding/gru/rnn/while/gru_cell/sub/x:0
&embedding/gru/rnn/while/gru_cell/sub:0Е
Nembedding/gru/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:03embedding/gru/rnn/while/TensorArrayReadV3/Enter_1:0f
embedding/gru/rnn/TensorArray:0Cembedding/gru/rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0a
.embedding/gru/rnn/gru_cell/gates/kernel/read:0/embedding/gru/rnn/while/gru_cell/MatMul/Enter:0g
2embedding/gru/rnn/gru_cell/candidate/kernel/read:01embedding/gru/rnn/while/gru_cell/MatMul_1/Enter:0f
0embedding/gru/rnn/gru_cell/candidate/bias/read:02embedding/gru/rnn/while/gru_cell/BiasAdd_1/Enter:0`
,embedding/gru/rnn/gru_cell/gates/bias/read:00embedding/gru/rnn/while/gru_cell/BiasAdd/Enter:0K
#embedding/gru/rnn/strided_slice_1:0$embedding/gru/rnn/while/Less/Enter:0V
!embedding/gru/rnn/TensorArray_1:01embedding/gru/rnn/while/TensorArrayReadV3/Enter:0Rembedding/gru/rnn/while/Enter:0R!embedding/gru/rnn/while/Enter_1:0R!embedding/gru/rnn/while/Enter_2:0R!embedding/gru/rnn/while/Enter_3:0Z#embedding/gru/rnn/strided_slice_1:0"┘G
	variables╦G╚G
Н
embedding/dense/kernel:0embedding/dense/kernel/Assignembedding/dense/kernel/read:023embedding/dense/kernel/Initializer/random_uniform:0
|
embedding/dense/bias:0embedding/dense/bias/Assignembedding/dense/bias/read:02(embedding/dense/bias/Initializer/zeros:0
∙
3embedding/conv1d_banks/num_1/conv1d/conv1d/kernel:08embedding/conv1d_banks/num_1/conv1d/conv1d/kernel/Assign8embedding/conv1d_banks/num_1/conv1d/conv1d/kernel/read:02Nembedding/conv1d_banks/num_1/conv1d/conv1d/kernel/Initializer/random_uniform:0
╪
-embedding/conv1d_banks/num_1/normalize/beta:02embedding/conv1d_banks/num_1/normalize/beta/Assign2embedding/conv1d_banks/num_1/normalize/beta/read:02?embedding/conv1d_banks/num_1/normalize/beta/Initializer/zeros:0
█
.embedding/conv1d_banks/num_1/normalize/gamma:03embedding/conv1d_banks/num_1/normalize/gamma/Assign3embedding/conv1d_banks/num_1/normalize/gamma/read:02?embedding/conv1d_banks/num_1/normalize/gamma/Initializer/ones:0
∙
3embedding/conv1d_banks/num_2/conv1d/conv1d/kernel:08embedding/conv1d_banks/num_2/conv1d/conv1d/kernel/Assign8embedding/conv1d_banks/num_2/conv1d/conv1d/kernel/read:02Nembedding/conv1d_banks/num_2/conv1d/conv1d/kernel/Initializer/random_uniform:0
╪
-embedding/conv1d_banks/num_2/normalize/beta:02embedding/conv1d_banks/num_2/normalize/beta/Assign2embedding/conv1d_banks/num_2/normalize/beta/read:02?embedding/conv1d_banks/num_2/normalize/beta/Initializer/zeros:0
█
.embedding/conv1d_banks/num_2/normalize/gamma:03embedding/conv1d_banks/num_2/normalize/gamma/Assign3embedding/conv1d_banks/num_2/normalize/gamma/read:02?embedding/conv1d_banks/num_2/normalize/gamma/Initializer/ones:0
∙
3embedding/conv1d_banks/num_3/conv1d/conv1d/kernel:08embedding/conv1d_banks/num_3/conv1d/conv1d/kernel/Assign8embedding/conv1d_banks/num_3/conv1d/conv1d/kernel/read:02Nembedding/conv1d_banks/num_3/conv1d/conv1d/kernel/Initializer/random_uniform:0
╪
-embedding/conv1d_banks/num_3/normalize/beta:02embedding/conv1d_banks/num_3/normalize/beta/Assign2embedding/conv1d_banks/num_3/normalize/beta/read:02?embedding/conv1d_banks/num_3/normalize/beta/Initializer/zeros:0
█
.embedding/conv1d_banks/num_3/normalize/gamma:03embedding/conv1d_banks/num_3/normalize/gamma/Assign3embedding/conv1d_banks/num_3/normalize/gamma/read:02?embedding/conv1d_banks/num_3/normalize/gamma/Initializer/ones:0
∙
3embedding/conv1d_banks/num_4/conv1d/conv1d/kernel:08embedding/conv1d_banks/num_4/conv1d/conv1d/kernel/Assign8embedding/conv1d_banks/num_4/conv1d/conv1d/kernel/read:02Nembedding/conv1d_banks/num_4/conv1d/conv1d/kernel/Initializer/random_uniform:0
╪
-embedding/conv1d_banks/num_4/normalize/beta:02embedding/conv1d_banks/num_4/normalize/beta/Assign2embedding/conv1d_banks/num_4/normalize/beta/read:02?embedding/conv1d_banks/num_4/normalize/beta/Initializer/zeros:0
█
.embedding/conv1d_banks/num_4/normalize/gamma:03embedding/conv1d_banks/num_4/normalize/gamma/Assign3embedding/conv1d_banks/num_4/normalize/gamma/read:02?embedding/conv1d_banks/num_4/normalize/gamma/Initializer/ones:0
∙
3embedding/conv1d_banks/num_5/conv1d/conv1d/kernel:08embedding/conv1d_banks/num_5/conv1d/conv1d/kernel/Assign8embedding/conv1d_banks/num_5/conv1d/conv1d/kernel/read:02Nembedding/conv1d_banks/num_5/conv1d/conv1d/kernel/Initializer/random_uniform:0
╪
-embedding/conv1d_banks/num_5/normalize/beta:02embedding/conv1d_banks/num_5/normalize/beta/Assign2embedding/conv1d_banks/num_5/normalize/beta/read:02?embedding/conv1d_banks/num_5/normalize/beta/Initializer/zeros:0
█
.embedding/conv1d_banks/num_5/normalize/gamma:03embedding/conv1d_banks/num_5/normalize/gamma/Assign3embedding/conv1d_banks/num_5/normalize/gamma/read:02?embedding/conv1d_banks/num_5/normalize/gamma/Initializer/ones:0
∙
3embedding/conv1d_banks/num_6/conv1d/conv1d/kernel:08embedding/conv1d_banks/num_6/conv1d/conv1d/kernel/Assign8embedding/conv1d_banks/num_6/conv1d/conv1d/kernel/read:02Nembedding/conv1d_banks/num_6/conv1d/conv1d/kernel/Initializer/random_uniform:0
╪
-embedding/conv1d_banks/num_6/normalize/beta:02embedding/conv1d_banks/num_6/normalize/beta/Assign2embedding/conv1d_banks/num_6/normalize/beta/read:02?embedding/conv1d_banks/num_6/normalize/beta/Initializer/zeros:0
█
.embedding/conv1d_banks/num_6/normalize/gamma:03embedding/conv1d_banks/num_6/normalize/gamma/Assign3embedding/conv1d_banks/num_6/normalize/gamma/read:02?embedding/conv1d_banks/num_6/normalize/gamma/Initializer/ones:0
∙
3embedding/conv1d_banks/num_7/conv1d/conv1d/kernel:08embedding/conv1d_banks/num_7/conv1d/conv1d/kernel/Assign8embedding/conv1d_banks/num_7/conv1d/conv1d/kernel/read:02Nembedding/conv1d_banks/num_7/conv1d/conv1d/kernel/Initializer/random_uniform:0
╪
-embedding/conv1d_banks/num_7/normalize/beta:02embedding/conv1d_banks/num_7/normalize/beta/Assign2embedding/conv1d_banks/num_7/normalize/beta/read:02?embedding/conv1d_banks/num_7/normalize/beta/Initializer/zeros:0
█
.embedding/conv1d_banks/num_7/normalize/gamma:03embedding/conv1d_banks/num_7/normalize/gamma/Assign3embedding/conv1d_banks/num_7/normalize/gamma/read:02?embedding/conv1d_banks/num_7/normalize/gamma/Initializer/ones:0
∙
3embedding/conv1d_banks/num_8/conv1d/conv1d/kernel:08embedding/conv1d_banks/num_8/conv1d/conv1d/kernel/Assign8embedding/conv1d_banks/num_8/conv1d/conv1d/kernel/read:02Nembedding/conv1d_banks/num_8/conv1d/conv1d/kernel/Initializer/random_uniform:0
╪
-embedding/conv1d_banks/num_8/normalize/beta:02embedding/conv1d_banks/num_8/normalize/beta/Assign2embedding/conv1d_banks/num_8/normalize/beta/read:02?embedding/conv1d_banks/num_8/normalize/beta/Initializer/zeros:0
█
.embedding/conv1d_banks/num_8/normalize/gamma:03embedding/conv1d_banks/num_8/normalize/gamma/Assign3embedding/conv1d_banks/num_8/normalize/gamma/read:02?embedding/conv1d_banks/num_8/normalize/gamma/Initializer/ones:0
╡
"embedding/conv1d_1/conv1d/kernel:0'embedding/conv1d_1/conv1d/kernel/Assign'embedding/conv1d_1/conv1d/kernel/read:02=embedding/conv1d_1/conv1d/kernel/Initializer/random_uniform:0
М
embedding/normalize/beta:0embedding/normalize/beta/Assignembedding/normalize/beta/read:02,embedding/normalize/beta/Initializer/zeros:0
П
embedding/normalize/gamma:0 embedding/normalize/gamma/Assign embedding/normalize/gamma/read:02,embedding/normalize/gamma/Initializer/ones:0
╡
"embedding/conv1d_2/conv1d/kernel:0'embedding/conv1d_2/conv1d/kernel/Assign'embedding/conv1d_2/conv1d/kernel/read:02=embedding/conv1d_2/conv1d/kernel/Initializer/random_uniform:0
┼
&embedding/highwaynet_0/dense1/kernel:0+embedding/highwaynet_0/dense1/kernel/Assign+embedding/highwaynet_0/dense1/kernel/read:02Aembedding/highwaynet_0/dense1/kernel/Initializer/random_uniform:0
┤
$embedding/highwaynet_0/dense1/bias:0)embedding/highwaynet_0/dense1/bias/Assign)embedding/highwaynet_0/dense1/bias/read:026embedding/highwaynet_0/dense1/bias/Initializer/zeros:0
┼
&embedding/highwaynet_0/dense2/kernel:0+embedding/highwaynet_0/dense2/kernel/Assign+embedding/highwaynet_0/dense2/kernel/read:02Aembedding/highwaynet_0/dense2/kernel/Initializer/random_uniform:0
┤
$embedding/highwaynet_0/dense2/bias:0)embedding/highwaynet_0/dense2/bias/Assign)embedding/highwaynet_0/dense2/bias/read:026embedding/highwaynet_0/dense2/bias/Initializer/Const:0
┼
&embedding/highwaynet_1/dense1/kernel:0+embedding/highwaynet_1/dense1/kernel/Assign+embedding/highwaynet_1/dense1/kernel/read:02Aembedding/highwaynet_1/dense1/kernel/Initializer/random_uniform:0
┤
$embedding/highwaynet_1/dense1/bias:0)embedding/highwaynet_1/dense1/bias/Assign)embedding/highwaynet_1/dense1/bias/read:026embedding/highwaynet_1/dense1/bias/Initializer/zeros:0
┼
&embedding/highwaynet_1/dense2/kernel:0+embedding/highwaynet_1/dense2/kernel/Assign+embedding/highwaynet_1/dense2/kernel/read:02Aembedding/highwaynet_1/dense2/kernel/Initializer/random_uniform:0
┤
$embedding/highwaynet_1/dense2/bias:0)embedding/highwaynet_1/dense2/bias/Assign)embedding/highwaynet_1/dense2/bias/read:026embedding/highwaynet_1/dense2/bias/Initializer/Const:0
╤
)embedding/gru/rnn/gru_cell/gates/kernel:0.embedding/gru/rnn/gru_cell/gates/kernel/Assign.embedding/gru/rnn/gru_cell/gates/kernel/read:02Dembedding/gru/rnn/gru_cell/gates/kernel/Initializer/random_uniform:0
└
'embedding/gru/rnn/gru_cell/gates/bias:0,embedding/gru/rnn/gru_cell/gates/bias/Assign,embedding/gru/rnn/gru_cell/gates/bias/read:029embedding/gru/rnn/gru_cell/gates/bias/Initializer/Const:0
с
-embedding/gru/rnn/gru_cell/candidate/kernel:02embedding/gru/rnn/gru_cell/candidate/kernel/Assign2embedding/gru/rnn/gru_cell/candidate/kernel/read:02Hembedding/gru/rnn/gru_cell/candidate/kernel/Initializer/random_uniform:0
╨
+embedding/gru/rnn/gru_cell/candidate/bias:00embedding/gru/rnn/gru_cell/candidate/bias/Assign0embedding/gru/rnn/gru_cell/candidate/bias/read:02=embedding/gru/rnn/gru_cell/candidate/bias/Initializer/zeros:0
б
embedding/projection/kernel:0"embedding/projection/kernel/Assign"embedding/projection/kernel/read:028embedding/projection/kernel/Initializer/random_uniform:0
Р
embedding/projection/bias:0 embedding/projection/bias/Assign embedding/projection/bias/read:02-embedding/projection/bias/Initializer/zeros:0*╣
predictн
$
x
x:0         їP:
	embedding-
embedding/embedding:0         у	-
prob%
probability:0         у	tensorflow/serving/predict