Ў╝
Оу
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
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
Ы
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

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
В
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
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
dtypetypeИ
E
Relu
features"T
activations"T"
Ttype:
2	
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
?
Select
	condition

t"T
e"T
output"T"	
Ttype
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
-
Sqrt
x"T
y"T"
Ttype:

2
7
Square
x"T
y"T"
Ttype:
2	
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
executor_typestring Ии
@
StaticRegexFullMatch	
input

output
"
patternstring
ў
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
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
М
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.9.12v2.9.0-18-gd8ce9f9c3018вя
Ы
!RMSprop/third_base_dense/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*2
shared_name#!RMSprop/third_base_dense/bias/rms
Ф
5RMSprop/third_base_dense/bias/rms/Read/ReadVariableOpReadVariableOp!RMSprop/third_base_dense/bias/rms*
_output_shapes	
:А*
dtype0
д
#RMSprop/third_base_dense/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*4
shared_name%#RMSprop/third_base_dense/kernel/rms
Э
7RMSprop/third_base_dense/kernel/rms/Read/ReadVariableOpReadVariableOp#RMSprop/third_base_dense/kernel/rms* 
_output_shapes
:
АА*
dtype0
Э
"RMSprop/second_base_dense/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*3
shared_name$"RMSprop/second_base_dense/bias/rms
Ц
6RMSprop/second_base_dense/bias/rms/Read/ReadVariableOpReadVariableOp"RMSprop/second_base_dense/bias/rms*
_output_shapes	
:А*
dtype0
ж
$RMSprop/second_base_dense/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*5
shared_name&$RMSprop/second_base_dense/kernel/rms
Я
8RMSprop/second_base_dense/kernel/rms/Read/ReadVariableOpReadVariableOp$RMSprop/second_base_dense/kernel/rms* 
_output_shapes
:
АА*
dtype0
Ы
!RMSprop/first_base_dense/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*2
shared_name#!RMSprop/first_base_dense/bias/rms
Ф
5RMSprop/first_base_dense/bias/rms/Read/ReadVariableOpReadVariableOp!RMSprop/first_base_dense/bias/rms*
_output_shapes	
:А*
dtype0
д
#RMSprop/first_base_dense/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*4
shared_name%#RMSprop/first_base_dense/kernel/rms
Э
7RMSprop/first_base_dense/kernel/rms/Read/ReadVariableOpReadVariableOp#RMSprop/first_base_dense/kernel/rms* 
_output_shapes
:
АА*
dtype0
Е
RMSprop/conv4/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*'
shared_nameRMSprop/conv4/bias/rms
~
*RMSprop/conv4/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv4/bias/rms*
_output_shapes	
:А*
dtype0
Ц
RMSprop/conv4/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*)
shared_nameRMSprop/conv4/kernel/rms
П
,RMSprop/conv4/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv4/kernel/rms*(
_output_shapes
:АА*
dtype0
Е
RMSprop/conv3/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*'
shared_nameRMSprop/conv3/bias/rms
~
*RMSprop/conv3/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv3/bias/rms*
_output_shapes	
:А*
dtype0
Х
RMSprop/conv3/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*)
shared_nameRMSprop/conv3/kernel/rms
О
,RMSprop/conv3/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv3/kernel/rms*'
_output_shapes
:@А*
dtype0
Д
RMSprop/conv2/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameRMSprop/conv2/bias/rms
}
*RMSprop/conv2/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2/bias/rms*
_output_shapes
:@*
dtype0
Ф
RMSprop/conv2/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*)
shared_nameRMSprop/conv2/kernel/rms
Н
,RMSprop/conv2/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2/kernel/rms*&
_output_shapes
: @*
dtype0
Д
RMSprop/conv1/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameRMSprop/conv1/bias/rms
}
*RMSprop/conv1/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv1/bias/rms*
_output_shapes
: *
dtype0
Ф
RMSprop/conv1/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameRMSprop/conv1/kernel/rms
Н
,RMSprop/conv1/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv1/kernel/rms*&
_output_shapes
: *
dtype0
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
j
RMSprop/rhoVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameRMSprop/rho
c
RMSprop/rho/Read/ReadVariableOpReadVariableOpRMSprop/rho*
_output_shapes
: *
dtype0
t
RMSprop/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameRMSprop/momentum
m
$RMSprop/momentum/Read/ReadVariableOpReadVariableOpRMSprop/momentum*
_output_shapes
: *
dtype0
~
RMSprop/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameRMSprop/learning_rate
w
)RMSprop/learning_rate/Read/ReadVariableOpReadVariableOpRMSprop/learning_rate*
_output_shapes
: *
dtype0
n
RMSprop/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameRMSprop/decay
g
!RMSprop/decay/Read/ReadVariableOpReadVariableOpRMSprop/decay*
_output_shapes
: *
dtype0
l
RMSprop/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameRMSprop/iter
e
 RMSprop/iter/Read/ReadVariableOpReadVariableOpRMSprop/iter*
_output_shapes
: *
dtype0	
Г
third_base_dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*&
shared_namethird_base_dense/bias
|
)third_base_dense/bias/Read/ReadVariableOpReadVariableOpthird_base_dense/bias*
_output_shapes	
:А*
dtype0
М
third_base_dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*(
shared_namethird_base_dense/kernel
Е
+third_base_dense/kernel/Read/ReadVariableOpReadVariableOpthird_base_dense/kernel* 
_output_shapes
:
АА*
dtype0
Е
second_base_dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*'
shared_namesecond_base_dense/bias
~
*second_base_dense/bias/Read/ReadVariableOpReadVariableOpsecond_base_dense/bias*
_output_shapes	
:А*
dtype0
О
second_base_dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*)
shared_namesecond_base_dense/kernel
З
,second_base_dense/kernel/Read/ReadVariableOpReadVariableOpsecond_base_dense/kernel* 
_output_shapes
:
АА*
dtype0
Г
first_base_dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*&
shared_namefirst_base_dense/bias
|
)first_base_dense/bias/Read/ReadVariableOpReadVariableOpfirst_base_dense/bias*
_output_shapes	
:А*
dtype0
М
first_base_dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*(
shared_namefirst_base_dense/kernel
Е
+first_base_dense/kernel/Read/ReadVariableOpReadVariableOpfirst_base_dense/kernel* 
_output_shapes
:
АА*
dtype0
m

conv4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_name
conv4/bias
f
conv4/bias/Read/ReadVariableOpReadVariableOp
conv4/bias*
_output_shapes	
:А*
dtype0
~
conv4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*
shared_nameconv4/kernel
w
 conv4/kernel/Read/ReadVariableOpReadVariableOpconv4/kernel*(
_output_shapes
:АА*
dtype0
m

conv3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_name
conv3/bias
f
conv3/bias/Read/ReadVariableOpReadVariableOp
conv3/bias*
_output_shapes	
:А*
dtype0
}
conv3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*
shared_nameconv3/kernel
v
 conv3/kernel/Read/ReadVariableOpReadVariableOpconv3/kernel*'
_output_shapes
:@А*
dtype0
l

conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name
conv2/bias
e
conv2/bias/Read/ReadVariableOpReadVariableOp
conv2/bias*
_output_shapes
:@*
dtype0
|
conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*
shared_nameconv2/kernel
u
 conv2/kernel/Read/ReadVariableOpReadVariableOpconv2/kernel*&
_output_shapes
: @*
dtype0
l

conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
conv1/bias
e
conv1/bias/Read/ReadVariableOpReadVariableOp
conv1/bias*
_output_shapes
: *
dtype0
|
conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv1/kernel
u
 conv1/kernel/Read/ReadVariableOpReadVariableOpconv1/kernel*&
_output_shapes
: *
dtype0

NoOpNoOp
▄z
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Чz
valueНzBКz BГz
┤
layer-0
layer-1
layer-2
layer-3
layer_with_weights-0
layer-4
layer-5
	variables
trainable_variables
	regularization_losses

	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
* 
* 
О
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
О
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
О
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
 layer-4
!layer_with_weights-2
!layer-5
"layer-6
#layer_with_weights-3
#layer-7
$layer-8
%layer-9
&layer_with_weights-4
&layer-10
'layer-11
(layer_with_weights-5
(layer-12
)layer-13
*layer_with_weights-6
*layer-14
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses*
О
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses* 
j
70
81
92
:3
;4
<5
=6
>7
?8
@9
A10
B11
C12
D13*
j
70
81
92
:3
;4
<5
=6
>7
?8
@9
A10
B11
C12
D13*
* 
░
Enon_trainable_variables

Flayers
Gmetrics
Hlayer_regularization_losses
Ilayer_metrics
	variables
trainable_variables
	regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Jtrace_0
Ktrace_1
Ltrace_2
Mtrace_3* 
6
Ntrace_0
Otrace_1
Ptrace_2
Qtrace_3* 
* 
ы
Riter
	Sdecay
Tlearning_rate
Umomentum
Vrho
7rms┴
8rms┬
9rms├
:rms─
;rms┼
<rms╞
=rms╟
>rms╚
?rms╔
@rms╩
Arms╦
Brms╠
Crms═
Drms╬*

Wserving_default* 
* 
* 
* 
С
Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

]trace_0* 

^trace_0* 
* 
* 
* 
С
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

dtrace_0* 

etrace_0* 
* 
╚
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j__call__
*k&call_and_return_all_conditional_losses

7kernel
8bias
 l_jit_compiled_convolution_op*
О
m	variables
ntrainable_variables
oregularization_losses
p	keras_api
q__call__
*r&call_and_return_all_conditional_losses* 
╚
s	variables
ttrainable_variables
uregularization_losses
v	keras_api
w__call__
*x&call_and_return_all_conditional_losses

9kernel
:bias
 y_jit_compiled_convolution_op*
О
z	variables
{trainable_variables
|regularization_losses
}	keras_api
~__call__
*&call_and_return_all_conditional_losses* 
╧
А	variables
Бtrainable_variables
Вregularization_losses
Г	keras_api
Д__call__
+Е&call_and_return_all_conditional_losses

;kernel
<bias
!Ж_jit_compiled_convolution_op*
Ф
З	variables
Иtrainable_variables
Йregularization_losses
К	keras_api
Л__call__
+М&call_and_return_all_conditional_losses* 
╧
Н	variables
Оtrainable_variables
Пregularization_losses
Р	keras_api
С__call__
+Т&call_and_return_all_conditional_losses

=kernel
>bias
!У_jit_compiled_convolution_op*
Ф
Ф	variables
Хtrainable_variables
Цregularization_losses
Ч	keras_api
Ш__call__
+Щ&call_and_return_all_conditional_losses* 
Ф
Ъ	variables
Ыtrainable_variables
Ьregularization_losses
Э	keras_api
Ю__call__
+Я&call_and_return_all_conditional_losses* 
м
а	variables
бtrainable_variables
вregularization_losses
г	keras_api
д__call__
+е&call_and_return_all_conditional_losses

?kernel
@bias*
м
ж	variables
зtrainable_variables
иregularization_losses
й	keras_api
к__call__
+л&call_and_return_all_conditional_losses
м_random_generator* 
м
н	variables
оtrainable_variables
пregularization_losses
░	keras_api
▒__call__
+▓&call_and_return_all_conditional_losses

Akernel
Bbias*
м
│	variables
┤trainable_variables
╡regularization_losses
╢	keras_api
╖__call__
+╕&call_and_return_all_conditional_losses
╣_random_generator* 
м
║	variables
╗trainable_variables
╝regularization_losses
╜	keras_api
╛__call__
+┐&call_and_return_all_conditional_losses

Ckernel
Dbias*
j
70
81
92
:3
;4
<5
=6
>7
?8
@9
A10
B11
C12
D13*
j
70
81
92
:3
;4
<5
=6
>7
?8
@9
A10
B11
C12
D13*
* 
Ш
└non_trainable_variables
┴layers
┬metrics
 ├layer_regularization_losses
─layer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses*
:
┼trace_0
╞trace_1
╟trace_2
╚trace_3* 
:
╔trace_0
╩trace_1
╦trace_2
╠trace_3* 
* 
* 
* 
Ц
═non_trainable_variables
╬layers
╧metrics
 ╨layer_regularization_losses
╤layer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses* 

╥trace_0
╙trace_1* 

╘trace_0
╒trace_1* 
LF
VARIABLE_VALUEconv1/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
conv1/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEconv2/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
conv2/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEconv3/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
conv3/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEconv4/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
conv4/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEfirst_base_dense/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEfirst_base_dense/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEsecond_base_dense/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEsecond_base_dense/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEthird_base_dense/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEthird_base_dense/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
* 
.
0
1
2
3
4
5*

╓0*
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
OI
VARIABLE_VALUERMSprop/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUERMSprop/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUERMSprop/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUERMSprop/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUERMSprop/rho(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUE*
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

70
81*

70
81*
* 
Ш
╫non_trainable_variables
╪layers
┘metrics
 ┌layer_regularization_losses
█layer_metrics
f	variables
gtrainable_variables
hregularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses*

▄trace_0* 

▌trace_0* 
* 
* 
* 
* 
Ц
▐non_trainable_variables
▀layers
рmetrics
 сlayer_regularization_losses
тlayer_metrics
m	variables
ntrainable_variables
oregularization_losses
q__call__
*r&call_and_return_all_conditional_losses
&r"call_and_return_conditional_losses* 

уtrace_0* 

фtrace_0* 

90
:1*

90
:1*
* 
Ш
хnon_trainable_variables
цlayers
чmetrics
 шlayer_regularization_losses
щlayer_metrics
s	variables
ttrainable_variables
uregularization_losses
w__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses*

ъtrace_0* 

ыtrace_0* 
* 
* 
* 
* 
Ц
ьnon_trainable_variables
эlayers
юmetrics
 яlayer_regularization_losses
Ёlayer_metrics
z	variables
{trainable_variables
|regularization_losses
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

ёtrace_0* 

Єtrace_0* 

;0
<1*

;0
<1*
* 
Ю
єnon_trainable_variables
Їlayers
їmetrics
 Ўlayer_regularization_losses
ўlayer_metrics
А	variables
Бtrainable_variables
Вregularization_losses
Д__call__
+Е&call_and_return_all_conditional_losses
'Е"call_and_return_conditional_losses*

°trace_0* 

∙trace_0* 
* 
* 
* 
* 
Ь
·non_trainable_variables
√layers
№metrics
 ¤layer_regularization_losses
■layer_metrics
З	variables
Иtrainable_variables
Йregularization_losses
Л__call__
+М&call_and_return_all_conditional_losses
'М"call_and_return_conditional_losses* 

 trace_0* 

Аtrace_0* 

=0
>1*

=0
>1*
* 
Ю
Бnon_trainable_variables
Вlayers
Гmetrics
 Дlayer_regularization_losses
Еlayer_metrics
Н	variables
Оtrainable_variables
Пregularization_losses
С__call__
+Т&call_and_return_all_conditional_losses
'Т"call_and_return_conditional_losses*

Жtrace_0* 

Зtrace_0* 
* 
* 
* 
* 
Ь
Иnon_trainable_variables
Йlayers
Кmetrics
 Лlayer_regularization_losses
Мlayer_metrics
Ф	variables
Хtrainable_variables
Цregularization_losses
Ш__call__
+Щ&call_and_return_all_conditional_losses
'Щ"call_and_return_conditional_losses* 

Нtrace_0* 

Оtrace_0* 
* 
* 
* 
Ь
Пnon_trainable_variables
Рlayers
Сmetrics
 Тlayer_regularization_losses
Уlayer_metrics
Ъ	variables
Ыtrainable_variables
Ьregularization_losses
Ю__call__
+Я&call_and_return_all_conditional_losses
'Я"call_and_return_conditional_losses* 

Фtrace_0* 

Хtrace_0* 

?0
@1*

?0
@1*
* 
Ю
Цnon_trainable_variables
Чlayers
Шmetrics
 Щlayer_regularization_losses
Ъlayer_metrics
а	variables
бtrainable_variables
вregularization_losses
д__call__
+е&call_and_return_all_conditional_losses
'е"call_and_return_conditional_losses*

Ыtrace_0* 

Ьtrace_0* 
* 
* 
* 
Ь
Эnon_trainable_variables
Юlayers
Яmetrics
 аlayer_regularization_losses
бlayer_metrics
ж	variables
зtrainable_variables
иregularization_losses
к__call__
+л&call_and_return_all_conditional_losses
'л"call_and_return_conditional_losses* 

вtrace_0
гtrace_1* 

дtrace_0
еtrace_1* 
* 

A0
B1*

A0
B1*
* 
Ю
жnon_trainable_variables
зlayers
иmetrics
 йlayer_regularization_losses
кlayer_metrics
н	variables
оtrainable_variables
пregularization_losses
▒__call__
+▓&call_and_return_all_conditional_losses
'▓"call_and_return_conditional_losses*

лtrace_0* 

мtrace_0* 
* 
* 
* 
Ь
нnon_trainable_variables
оlayers
пmetrics
 ░layer_regularization_losses
▒layer_metrics
│	variables
┤trainable_variables
╡regularization_losses
╖__call__
+╕&call_and_return_all_conditional_losses
'╕"call_and_return_conditional_losses* 

▓trace_0
│trace_1* 

┤trace_0
╡trace_1* 
* 

C0
D1*

C0
D1*
* 
Ю
╢non_trainable_variables
╖layers
╕metrics
 ╣layer_regularization_losses
║layer_metrics
║	variables
╗trainable_variables
╝regularization_losses
╛__call__
+┐&call_and_return_all_conditional_losses
'┐"call_and_return_conditional_losses*

╗trace_0* 

╝trace_0* 
* 
r
0
1
2
3
 4
!5
"6
#7
$8
%9
&10
'11
(12
)13
*14*
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
* 
* 
<
╜	variables
╛	keras_api

┐total

└count*
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

┐0
└1*

╜	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUERMSprop/conv1/kernel/rmsDvariables/0/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUERMSprop/conv1/bias/rmsDvariables/1/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUERMSprop/conv2/kernel/rmsDvariables/2/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUERMSprop/conv2/bias/rmsDvariables/3/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUERMSprop/conv3/kernel/rmsDvariables/4/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUERMSprop/conv3/bias/rmsDvariables/5/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUERMSprop/conv4/kernel/rmsDvariables/6/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUERMSprop/conv4/bias/rmsDvariables/7/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
Б{
VARIABLE_VALUE#RMSprop/first_base_dense/kernel/rmsDvariables/8/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE!RMSprop/first_base_dense/bias/rmsDvariables/9/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUE$RMSprop/second_base_dense/kernel/rmsEvariables/10/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
Б{
VARIABLE_VALUE"RMSprop/second_base_dense/bias/rmsEvariables/11/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUE#RMSprop/third_base_dense/kernel/rmsEvariables/12/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUE!RMSprop/third_base_dense/bias/rmsEvariables/13/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
Е
serving_default_left_inputPlaceholder*+
_output_shapes
:         *
dtype0* 
shape:         
Ж
serving_default_right_inputPlaceholder*+
_output_shapes
:         *
dtype0* 
shape:         
ь
StatefulPartitionedCallStatefulPartitionedCallserving_default_left_inputserving_default_right_inputconv1/kernel
conv1/biasconv2/kernel
conv2/biasconv3/kernel
conv3/biasconv4/kernel
conv4/biasfirst_base_dense/kernelfirst_base_dense/biassecond_base_dense/kernelsecond_base_dense/biasthird_base_dense/kernelthird_base_dense/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *-
f(R&
$__inference_signature_wrapper_135308
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
·
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename conv1/kernel/Read/ReadVariableOpconv1/bias/Read/ReadVariableOp conv2/kernel/Read/ReadVariableOpconv2/bias/Read/ReadVariableOp conv3/kernel/Read/ReadVariableOpconv3/bias/Read/ReadVariableOp conv4/kernel/Read/ReadVariableOpconv4/bias/Read/ReadVariableOp+first_base_dense/kernel/Read/ReadVariableOp)first_base_dense/bias/Read/ReadVariableOp,second_base_dense/kernel/Read/ReadVariableOp*second_base_dense/bias/Read/ReadVariableOp+third_base_dense/kernel/Read/ReadVariableOp)third_base_dense/bias/Read/ReadVariableOp RMSprop/iter/Read/ReadVariableOp!RMSprop/decay/Read/ReadVariableOp)RMSprop/learning_rate/Read/ReadVariableOp$RMSprop/momentum/Read/ReadVariableOpRMSprop/rho/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp,RMSprop/conv1/kernel/rms/Read/ReadVariableOp*RMSprop/conv1/bias/rms/Read/ReadVariableOp,RMSprop/conv2/kernel/rms/Read/ReadVariableOp*RMSprop/conv2/bias/rms/Read/ReadVariableOp,RMSprop/conv3/kernel/rms/Read/ReadVariableOp*RMSprop/conv3/bias/rms/Read/ReadVariableOp,RMSprop/conv4/kernel/rms/Read/ReadVariableOp*RMSprop/conv4/bias/rms/Read/ReadVariableOp7RMSprop/first_base_dense/kernel/rms/Read/ReadVariableOp5RMSprop/first_base_dense/bias/rms/Read/ReadVariableOp8RMSprop/second_base_dense/kernel/rms/Read/ReadVariableOp6RMSprop/second_base_dense/bias/rms/Read/ReadVariableOp7RMSprop/third_base_dense/kernel/rms/Read/ReadVariableOp5RMSprop/third_base_dense/bias/rms/Read/ReadVariableOpConst*0
Tin)
'2%	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *(
f#R!
__inference__traced_save_136318
╣
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv1/kernel
conv1/biasconv2/kernel
conv2/biasconv3/kernel
conv3/biasconv4/kernel
conv4/biasfirst_base_dense/kernelfirst_base_dense/biassecond_base_dense/kernelsecond_base_dense/biasthird_base_dense/kernelthird_base_dense/biasRMSprop/iterRMSprop/decayRMSprop/learning_rateRMSprop/momentumRMSprop/rhototalcountRMSprop/conv1/kernel/rmsRMSprop/conv1/bias/rmsRMSprop/conv2/kernel/rmsRMSprop/conv2/bias/rmsRMSprop/conv3/kernel/rmsRMSprop/conv3/bias/rmsRMSprop/conv4/kernel/rmsRMSprop/conv4/bias/rms#RMSprop/first_base_dense/kernel/rms!RMSprop/first_base_dense/bias/rms$RMSprop/second_base_dense/kernel/rms"RMSprop/second_base_dense/bias/rms#RMSprop/third_base_dense/kernel/rms!RMSprop/third_base_dense/bias/rms*/
Tin(
&2$*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *+
f&R$
"__inference__traced_restore_136433МП
А

i
J__inference_second_dropout_layer_call_and_return_conditional_losses_136169

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         АC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Н
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=з
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         Аp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         Аj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:         АZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
У
Я
(__inference_model_1_layer_call_fn_134971

left_input
right_input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А
	unknown_7:
АА
	unknown_8:	А
	unknown_9:
АА

unknown_10:	А

unknown_11:
АА

unknown_12:	А
identityИвStatefulPartitionedCallМ
StatefulPartitionedCallStatefulPartitionedCall
left_inputright_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_model_1_layer_call_and_return_conditional_losses_134940o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:         :         : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
+
_output_shapes
:         
$
_user_specified_name
left_input:XT
+
_output_shapes
:         
%
_user_specified_nameright_input
э
Ы
$__inference_signature_wrapper_135308

left_input
right_input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А
	unknown_7:
АА
	unknown_8:	А
	unknown_9:
АА

unknown_10:	А

unknown_11:
АА

unknown_12:	А
identityИвStatefulPartitionedCallъ
StatefulPartitionedCallStatefulPartitionedCall
left_inputright_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В **
f%R#
!__inference__wrapped_model_134249o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:         :         : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
+
_output_shapes
:         
$
_user_specified_name
left_input:XT
+
_output_shapes
:         
%
_user_specified_nameright_input
п

А
L__inference_first_base_dense_layer_call_and_return_conditional_losses_134395

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
М
`
D__inference_maxpool4_layer_call_and_return_conditional_losses_134294

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Д
Ъ
(__inference_model_1_layer_call_fn_135342
inputs_0
inputs_1!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А
	unknown_7:
АА
	unknown_8:	А
	unknown_9:
АА

unknown_10:	А

unknown_11:
АА

unknown_12:	А
identityИвStatefulPartitionedCallЗ
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_model_1_layer_call_and_return_conditional_losses_134940o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:         :         : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:         
"
_user_specified_name
inputs/0:UQ
+
_output_shapes
:         
"
_user_specified_name
inputs/1
А
·
A__inference_conv2_layer_call_and_return_conditional_losses_135994

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         @w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:          : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
 	
h
I__inference_first_dropout_layer_call_and_return_conditional_losses_134544

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         АC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Н
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=з
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         Аp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         Аj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:         АZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
М
¤
A__inference_conv4_layer_call_and_return_conditional_losses_136054

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
р
g
I__inference_first_dropout_layer_call_and_return_conditional_losses_134406

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:         А\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
в
Л
C__inference_model_1_layer_call_and_return_conditional_losses_135214

left_input
right_input&
model_135168: 
model_135170: &
model_135172: @
model_135174:@'
model_135176:@А
model_135178:	А(
model_135180:АА
model_135182:	А 
model_135184:
АА
model_135186:	А 
model_135188:
АА
model_135190:	А 
model_135192:
АА
model_135194:	А
identityИвmodel/StatefulPartitionedCallвmodel/StatefulPartitionedCall_1╩
reshape_1/PartitionedCallPartitionedCallright_input*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_reshape_1_layer_call_and_return_conditional_losses_134863┼
reshape/PartitionedCallPartitionedCall
left_input*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_reshape_layer_call_and_return_conditional_losses_134879┬
model/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0model_135168model_135170model_135172model_135174model_135176model_135178model_135180model_135182model_135184model_135186model_135188model_135190model_135192model_135194*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_134450╞
model/StatefulPartitionedCall_1StatefulPartitionedCall"reshape_1/PartitionedCall:output:0model_135168model_135170model_135172model_135174model_135176model_135178model_135180model_135182model_135184model_135186model_135188model_135190model_135192model_135194*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_134450О
output_layer/PartitionedCallPartitionedCall&model/StatefulPartitionedCall:output:0(model/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_output_layer_layer_call_and_return_conditional_losses_134937t
IdentityIdentity%output_layer/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         И
NoOpNoOp^model/StatefulPartitionedCall ^model/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:         :         : : : : : : : : : : : : : : 2>
model/StatefulPartitionedCallmodel/StatefulPartitionedCall2B
model/StatefulPartitionedCall_1model/StatefulPartitionedCall_1:W S
+
_output_shapes
:         
$
_user_specified_name
left_input:XT
+
_output_shapes
:         
%
_user_specified_nameright_input
╘
a
E__inference_reshape_1_layer_call_and_return_conditional_losses_134863

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :й
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:l
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:         `
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
М
`
D__inference_maxpool3_layer_call_and_return_conditional_losses_134282

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ч
Ы
&__inference_conv2_layer_call_fn_135983

inputs!
unknown: @
	unknown_0:@
identityИвStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_conv2_layer_call_and_return_conditional_losses_134333w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:          : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
п

А
L__inference_third_base_dense_layer_call_and_return_conditional_losses_136189

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Д
Ъ
(__inference_model_1_layer_call_fn_135376
inputs_0
inputs_1!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А
	unknown_7:
АА
	unknown_8:	А
	unknown_9:
АА

unknown_10:	А

unknown_11:
АА

unknown_12:	А
identityИвStatefulPartitionedCallЗ
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_model_1_layer_call_and_return_conditional_losses_135097o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:         :         : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:         
"
_user_specified_name
inputs/0:UQ
+
_output_shapes
:         
"
_user_specified_name
inputs/1
╘
a
E__inference_reshape_1_layer_call_and_return_conditional_losses_135706

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :й
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:l
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:         `
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
лI
ж
__inference__traced_save_136318
file_prefix+
'savev2_conv1_kernel_read_readvariableop)
%savev2_conv1_bias_read_readvariableop+
'savev2_conv2_kernel_read_readvariableop)
%savev2_conv2_bias_read_readvariableop+
'savev2_conv3_kernel_read_readvariableop)
%savev2_conv3_bias_read_readvariableop+
'savev2_conv4_kernel_read_readvariableop)
%savev2_conv4_bias_read_readvariableop6
2savev2_first_base_dense_kernel_read_readvariableop4
0savev2_first_base_dense_bias_read_readvariableop7
3savev2_second_base_dense_kernel_read_readvariableop5
1savev2_second_base_dense_bias_read_readvariableop6
2savev2_third_base_dense_kernel_read_readvariableop4
0savev2_third_base_dense_bias_read_readvariableop+
'savev2_rmsprop_iter_read_readvariableop	,
(savev2_rmsprop_decay_read_readvariableop4
0savev2_rmsprop_learning_rate_read_readvariableop/
+savev2_rmsprop_momentum_read_readvariableop*
&savev2_rmsprop_rho_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop7
3savev2_rmsprop_conv1_kernel_rms_read_readvariableop5
1savev2_rmsprop_conv1_bias_rms_read_readvariableop7
3savev2_rmsprop_conv2_kernel_rms_read_readvariableop5
1savev2_rmsprop_conv2_bias_rms_read_readvariableop7
3savev2_rmsprop_conv3_kernel_rms_read_readvariableop5
1savev2_rmsprop_conv3_bias_rms_read_readvariableop7
3savev2_rmsprop_conv4_kernel_rms_read_readvariableop5
1savev2_rmsprop_conv4_bias_rms_read_readvariableopB
>savev2_rmsprop_first_base_dense_kernel_rms_read_readvariableop@
<savev2_rmsprop_first_base_dense_bias_rms_read_readvariableopC
?savev2_rmsprop_second_base_dense_kernel_rms_read_readvariableopA
=savev2_rmsprop_second_base_dense_bias_rms_read_readvariableopB
>savev2_rmsprop_third_base_dense_kernel_rms_read_readvariableop@
<savev2_rmsprop_third_base_dense_bias_rms_read_readvariableop
savev2_const

identity_1ИвMergeV2Checkpointsw
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
_temp/partБ
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
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ц
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:$*
dtype0*П
valueЕBВ$B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBDvariables/0/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/1/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/2/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/3/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/4/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/5/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/6/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/7/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/8/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/9/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBEvariables/10/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBEvariables/11/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBEvariables/12/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBEvariables/13/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH╡
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:$*
dtype0*[
valueRBP$B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Б
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_conv1_kernel_read_readvariableop%savev2_conv1_bias_read_readvariableop'savev2_conv2_kernel_read_readvariableop%savev2_conv2_bias_read_readvariableop'savev2_conv3_kernel_read_readvariableop%savev2_conv3_bias_read_readvariableop'savev2_conv4_kernel_read_readvariableop%savev2_conv4_bias_read_readvariableop2savev2_first_base_dense_kernel_read_readvariableop0savev2_first_base_dense_bias_read_readvariableop3savev2_second_base_dense_kernel_read_readvariableop1savev2_second_base_dense_bias_read_readvariableop2savev2_third_base_dense_kernel_read_readvariableop0savev2_third_base_dense_bias_read_readvariableop'savev2_rmsprop_iter_read_readvariableop(savev2_rmsprop_decay_read_readvariableop0savev2_rmsprop_learning_rate_read_readvariableop+savev2_rmsprop_momentum_read_readvariableop&savev2_rmsprop_rho_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop3savev2_rmsprop_conv1_kernel_rms_read_readvariableop1savev2_rmsprop_conv1_bias_rms_read_readvariableop3savev2_rmsprop_conv2_kernel_rms_read_readvariableop1savev2_rmsprop_conv2_bias_rms_read_readvariableop3savev2_rmsprop_conv3_kernel_rms_read_readvariableop1savev2_rmsprop_conv3_bias_rms_read_readvariableop3savev2_rmsprop_conv4_kernel_rms_read_readvariableop1savev2_rmsprop_conv4_bias_rms_read_readvariableop>savev2_rmsprop_first_base_dense_kernel_rms_read_readvariableop<savev2_rmsprop_first_base_dense_bias_rms_read_readvariableop?savev2_rmsprop_second_base_dense_kernel_rms_read_readvariableop=savev2_rmsprop_second_base_dense_bias_rms_read_readvariableop>savev2_rmsprop_third_base_dense_kernel_rms_read_readvariableop<savev2_rmsprop_third_base_dense_bias_rms_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *2
dtypes(
&2$	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Л
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*у
_input_shapes╤
╬: : : : @:@:@А:А:АА:А:
АА:А:
АА:А:
АА:А: : : : : : : : : : @:@:@А:А:АА:А:
АА:А:
АА:А:
АА:А: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:-)
'
_output_shapes
:@А:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:&	"
 
_output_shapes
:
АА:!


_output_shapes	
:А:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:-)
'
_output_shapes
:@А:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:& "
 
_output_shapes
:
АА:!!

_output_shapes	
:А:&""
 
_output_shapes
:
АА:!#

_output_shapes	
:А:$

_output_shapes
: 
А
g
.__inference_first_dropout_layer_call_fn_136105

inputs
identityИвStatefulPartitionedCall╚
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_first_dropout_layer_call_and_return_conditional_losses_134544p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Ж>
╔
A__inference_model_layer_call_and_return_conditional_losses_134684

inputs&
conv1_134641: 
conv1_134643: &
conv2_134647: @
conv2_134649:@'
conv3_134653:@А
conv3_134655:	А(
conv4_134659:АА
conv4_134661:	А+
first_base_dense_134666:
АА&
first_base_dense_134668:	А,
second_base_dense_134672:
АА'
second_base_dense_134674:	А+
third_base_dense_134678:
АА&
third_base_dense_134680:	А
identityИвconv1/StatefulPartitionedCallвconv2/StatefulPartitionedCallвconv3/StatefulPartitionedCallвconv4/StatefulPartitionedCallв(first_base_dense/StatefulPartitionedCallв%first_dropout/StatefulPartitionedCallв)second_base_dense/StatefulPartitionedCallв&second_dropout/StatefulPartitionedCallв(third_base_dense/StatefulPartitionedCallя
conv1/StatefulPartitionedCallStatefulPartitionedCallinputsconv1_134641conv1_134643*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_conv1_layer_call_and_return_conditional_losses_134315у
maxpool1/PartitionedCallPartitionedCall&conv1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_maxpool1_layer_call_and_return_conditional_losses_134258К
conv2/StatefulPartitionedCallStatefulPartitionedCall!maxpool1/PartitionedCall:output:0conv2_134647conv2_134649*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_conv2_layer_call_and_return_conditional_losses_134333у
maxpool2/PartitionedCallPartitionedCall&conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_maxpool2_layer_call_and_return_conditional_losses_134270Л
conv3/StatefulPartitionedCallStatefulPartitionedCall!maxpool2/PartitionedCall:output:0conv3_134653conv3_134655*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_conv3_layer_call_and_return_conditional_losses_134351ф
maxpool3/PartitionedCallPartitionedCall&conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_maxpool3_layer_call_and_return_conditional_losses_134282Л
conv4/StatefulPartitionedCallStatefulPartitionedCall!maxpool3/PartitionedCall:output:0conv4_134659conv4_134661*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_conv4_layer_call_and_return_conditional_losses_134369ф
maxpool4/PartitionedCallPartitionedCall&conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_maxpool4_layer_call_and_return_conditional_losses_134294с
flatten_input/PartitionedCallPartitionedCall!maxpool4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_flatten_input_layer_call_and_return_conditional_losses_134382┤
(first_base_dense/StatefulPartitionedCallStatefulPartitionedCall&flatten_input/PartitionedCall:output:0first_base_dense_134666first_base_dense_134668*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_first_base_dense_layer_call_and_return_conditional_losses_134395Б
%first_dropout/StatefulPartitionedCallStatefulPartitionedCall1first_base_dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_first_dropout_layer_call_and_return_conditional_losses_134544└
)second_base_dense/StatefulPartitionedCallStatefulPartitionedCall.first_dropout/StatefulPartitionedCall:output:0second_base_dense_134672second_base_dense_134674*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *V
fQRO
M__inference_second_base_dense_layer_call_and_return_conditional_losses_134419м
&second_dropout/StatefulPartitionedCallStatefulPartitionedCall2second_base_dense/StatefulPartitionedCall:output:0&^first_dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_second_dropout_layer_call_and_return_conditional_losses_134511╜
(third_base_dense/StatefulPartitionedCallStatefulPartitionedCall/second_dropout/StatefulPartitionedCall:output:0third_base_dense_134678third_base_dense_134680*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_third_base_dense_layer_call_and_return_conditional_losses_134443Б
IdentityIdentity1third_base_dense/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         АЩ
NoOpNoOp^conv1/StatefulPartitionedCall^conv2/StatefulPartitionedCall^conv3/StatefulPartitionedCall^conv4/StatefulPartitionedCall)^first_base_dense/StatefulPartitionedCall&^first_dropout/StatefulPartitionedCall*^second_base_dense/StatefulPartitionedCall'^second_dropout/StatefulPartitionedCall)^third_base_dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:         : : : : : : : : : : : : : : 2>
conv1/StatefulPartitionedCallconv1/StatefulPartitionedCall2>
conv2/StatefulPartitionedCallconv2/StatefulPartitionedCall2>
conv3/StatefulPartitionedCallconv3/StatefulPartitionedCall2>
conv4/StatefulPartitionedCallconv4/StatefulPartitionedCall2T
(first_base_dense/StatefulPartitionedCall(first_base_dense/StatefulPartitionedCall2N
%first_dropout/StatefulPartitionedCall%first_dropout/StatefulPartitionedCall2V
)second_base_dense/StatefulPartitionedCall)second_base_dense/StatefulPartitionedCall2P
&second_dropout/StatefulPartitionedCall&second_dropout/StatefulPartitionedCall2T
(third_base_dense/StatefulPartitionedCall(third_base_dense/StatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
Й
М
&__inference_model_layer_call_fn_134481

base_input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А
	unknown_7:
АА
	unknown_8:	А
	unknown_9:
АА

unknown_10:	А

unknown_11:
АА

unknown_12:	А
identityИвStatefulPartitionedCall¤
StatefulPartitionedCallStatefulPartitionedCall
base_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_134450p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:         : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
/
_output_shapes
:         
$
_user_specified_name
base_input
╬[
╝
A__inference_model_layer_call_and_return_conditional_losses_135908

inputs>
$conv1_conv2d_readvariableop_resource: 3
%conv1_biasadd_readvariableop_resource: >
$conv2_conv2d_readvariableop_resource: @3
%conv2_biasadd_readvariableop_resource:@?
$conv3_conv2d_readvariableop_resource:@А4
%conv3_biasadd_readvariableop_resource:	А@
$conv4_conv2d_readvariableop_resource:АА4
%conv4_biasadd_readvariableop_resource:	АC
/first_base_dense_matmul_readvariableop_resource:
АА?
0first_base_dense_biasadd_readvariableop_resource:	АD
0second_base_dense_matmul_readvariableop_resource:
АА@
1second_base_dense_biasadd_readvariableop_resource:	АC
/third_base_dense_matmul_readvariableop_resource:
АА?
0third_base_dense_biasadd_readvariableop_resource:	А
identityИвconv1/BiasAdd/ReadVariableOpвconv1/Conv2D/ReadVariableOpвconv2/BiasAdd/ReadVariableOpвconv2/Conv2D/ReadVariableOpвconv3/BiasAdd/ReadVariableOpвconv3/Conv2D/ReadVariableOpвconv4/BiasAdd/ReadVariableOpвconv4/Conv2D/ReadVariableOpв'first_base_dense/BiasAdd/ReadVariableOpв&first_base_dense/MatMul/ReadVariableOpв(second_base_dense/BiasAdd/ReadVariableOpв'second_base_dense/MatMul/ReadVariableOpв'third_base_dense/BiasAdd/ReadVariableOpв&third_base_dense/MatMul/ReadVariableOpИ
conv1/Conv2D/ReadVariableOpReadVariableOp$conv1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0е
conv1/Conv2DConv2Dinputs#conv1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:          *
paddingSAME*
strides
~
conv1/BiasAdd/ReadVariableOpReadVariableOp%conv1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0П
conv1/BiasAddBiasAddconv1/Conv2D:output:0$conv1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          d

conv1/ReluReluconv1/BiasAdd:output:0*
T0*/
_output_shapes
:          в
maxpool1/MaxPoolMaxPoolconv1/Relu:activations:0*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides
И
conv2/Conv2D/ReadVariableOpReadVariableOp$conv2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0╕
conv2/Conv2DConv2Dmaxpool1/MaxPool:output:0#conv2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
~
conv2/BiasAdd/ReadVariableOpReadVariableOp%conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0П
conv2/BiasAddBiasAddconv2/Conv2D:output:0$conv2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @d

conv2/ReluReluconv2/BiasAdd:output:0*
T0*/
_output_shapes
:         @в
maxpool2/MaxPoolMaxPoolconv2/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
Й
conv3/Conv2D/ReadVariableOpReadVariableOp$conv3_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0╣
conv3/Conv2DConv2Dmaxpool2/MaxPool:output:0#conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides

conv3/BiasAdd/ReadVariableOpReadVariableOp%conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Р
conv3/BiasAddBiasAddconv3/Conv2D:output:0$conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аe

conv3/ReluReluconv3/BiasAdd:output:0*
T0*0
_output_shapes
:         Аг
maxpool3/MaxPoolMaxPoolconv3/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
К
conv4/Conv2D/ReadVariableOpReadVariableOp$conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0╣
conv4/Conv2DConv2Dmaxpool3/MaxPool:output:0#conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides

conv4/BiasAdd/ReadVariableOpReadVariableOp%conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Р
conv4/BiasAddBiasAddconv4/Conv2D:output:0$conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аe

conv4/ReluReluconv4/BiasAdd:output:0*
T0*0
_output_shapes
:         Аг
maxpool4/MaxPoolMaxPoolconv4/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
d
flatten_input/ConstConst*
_output_shapes
:*
dtype0*
valueB"       М
flatten_input/ReshapeReshapemaxpool4/MaxPool:output:0flatten_input/Const:output:0*
T0*(
_output_shapes
:         АШ
&first_base_dense/MatMul/ReadVariableOpReadVariableOp/first_base_dense_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0д
first_base_dense/MatMulMatMulflatten_input/Reshape:output:0.first_base_dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АХ
'first_base_dense/BiasAdd/ReadVariableOpReadVariableOp0first_base_dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0к
first_base_dense/BiasAddBiasAdd!first_base_dense/MatMul:product:0/first_base_dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
first_base_dense/ReluRelu!first_base_dense/BiasAdd:output:0*
T0*(
_output_shapes
:         А`
first_dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?Ю
first_dropout/dropout/MulMul#first_base_dense/Relu:activations:0$first_dropout/dropout/Const:output:0*
T0*(
_output_shapes
:         Аn
first_dropout/dropout/ShapeShape#first_base_dense/Relu:activations:0*
T0*
_output_shapes
:й
2first_dropout/dropout/random_uniform/RandomUniformRandomUniform$first_dropout/dropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0i
$first_dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=╤
"first_dropout/dropout/GreaterEqualGreaterEqual;first_dropout/dropout/random_uniform/RandomUniform:output:0-first_dropout/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         АМ
first_dropout/dropout/CastCast&first_dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         АФ
first_dropout/dropout/Mul_1Mulfirst_dropout/dropout/Mul:z:0first_dropout/dropout/Cast:y:0*
T0*(
_output_shapes
:         АЪ
'second_base_dense/MatMul/ReadVariableOpReadVariableOp0second_base_dense_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0з
second_base_dense/MatMulMatMulfirst_dropout/dropout/Mul_1:z:0/second_base_dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АЧ
(second_base_dense/BiasAdd/ReadVariableOpReadVariableOp1second_base_dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0н
second_base_dense/BiasAddBiasAdd"second_base_dense/MatMul:product:00second_base_dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аu
second_base_dense/ReluRelu"second_base_dense/BiasAdd:output:0*
T0*(
_output_shapes
:         Аa
second_dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?б
second_dropout/dropout/MulMul$second_base_dense/Relu:activations:0%second_dropout/dropout/Const:output:0*
T0*(
_output_shapes
:         Аp
second_dropout/dropout/ShapeShape$second_base_dense/Relu:activations:0*
T0*
_output_shapes
:л
3second_dropout/dropout/random_uniform/RandomUniformRandomUniform%second_dropout/dropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0j
%second_dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=╘
#second_dropout/dropout/GreaterEqualGreaterEqual<second_dropout/dropout/random_uniform/RandomUniform:output:0.second_dropout/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         АО
second_dropout/dropout/CastCast'second_dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         АЧ
second_dropout/dropout/Mul_1Mulsecond_dropout/dropout/Mul:z:0second_dropout/dropout/Cast:y:0*
T0*(
_output_shapes
:         АШ
&third_base_dense/MatMul/ReadVariableOpReadVariableOp/third_base_dense_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0ж
third_base_dense/MatMulMatMul second_dropout/dropout/Mul_1:z:0.third_base_dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АХ
'third_base_dense/BiasAdd/ReadVariableOpReadVariableOp0third_base_dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0к
third_base_dense/BiasAddBiasAdd!third_base_dense/MatMul:product:0/third_base_dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
third_base_dense/ReluRelu!third_base_dense/BiasAdd:output:0*
T0*(
_output_shapes
:         Аs
IdentityIdentity#third_base_dense/Relu:activations:0^NoOp*
T0*(
_output_shapes
:         А╡
NoOpNoOp^conv1/BiasAdd/ReadVariableOp^conv1/Conv2D/ReadVariableOp^conv2/BiasAdd/ReadVariableOp^conv2/Conv2D/ReadVariableOp^conv3/BiasAdd/ReadVariableOp^conv3/Conv2D/ReadVariableOp^conv4/BiasAdd/ReadVariableOp^conv4/Conv2D/ReadVariableOp(^first_base_dense/BiasAdd/ReadVariableOp'^first_base_dense/MatMul/ReadVariableOp)^second_base_dense/BiasAdd/ReadVariableOp(^second_base_dense/MatMul/ReadVariableOp(^third_base_dense/BiasAdd/ReadVariableOp'^third_base_dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:         : : : : : : : : : : : : : : 2<
conv1/BiasAdd/ReadVariableOpconv1/BiasAdd/ReadVariableOp2:
conv1/Conv2D/ReadVariableOpconv1/Conv2D/ReadVariableOp2<
conv2/BiasAdd/ReadVariableOpconv2/BiasAdd/ReadVariableOp2:
conv2/Conv2D/ReadVariableOpconv2/Conv2D/ReadVariableOp2<
conv3/BiasAdd/ReadVariableOpconv3/BiasAdd/ReadVariableOp2:
conv3/Conv2D/ReadVariableOpconv3/Conv2D/ReadVariableOp2<
conv4/BiasAdd/ReadVariableOpconv4/BiasAdd/ReadVariableOp2:
conv4/Conv2D/ReadVariableOpconv4/Conv2D/ReadVariableOp2R
'first_base_dense/BiasAdd/ReadVariableOp'first_base_dense/BiasAdd/ReadVariableOp2P
&first_base_dense/MatMul/ReadVariableOp&first_base_dense/MatMul/ReadVariableOp2T
(second_base_dense/BiasAdd/ReadVariableOp(second_base_dense/BiasAdd/ReadVariableOp2R
'second_base_dense/MatMul/ReadVariableOp'second_base_dense/MatMul/ReadVariableOp2R
'third_base_dense/BiasAdd/ReadVariableOp'third_base_dense/BiasAdd/ReadVariableOp2P
&third_base_dense/MatMul/ReadVariableOp&third_base_dense/MatMul/ReadVariableOp:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
ч
Ы
&__inference_conv1_layer_call_fn_135953

inputs!
unknown: 
	unknown_0: 
identityИвStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_conv1_layer_call_and_return_conditional_losses_134315w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:          `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
А
·
A__inference_conv1_layer_call_and_return_conditional_losses_135964

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:          *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:          i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:          w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
М
¤
A__inference_conv4_layer_call_and_return_conditional_losses_134369

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
║
F
*__inference_reshape_1_layer_call_fn_135692

inputs
identity╗
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_reshape_1_layer_call_and_return_conditional_losses_134863h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
ш
r
H__inference_output_layer_layer_call_and_return_conditional_losses_134993

inputs
inputs_1
identityO
subSubinputsinputs_1*
T0*(
_output_shapes
:         АL
SquareSquaresub:z:0*
T0*(
_output_shapes
:         АW
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :y
SumSum
Square:y:0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims(N
	Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Х┐╓3f
MaximumMaximumSum:output:0Maximum/y:output:0*
T0*'
_output_shapes
:         K
SqrtSqrtMaximum:z:0*
T0*'
_output_shapes
:         P
IdentityIdentitySqrt:y:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:         А:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs:PL
(
_output_shapes
:         А
 
_user_specified_nameinputs
▐
в
2__inference_second_base_dense_layer_call_fn_136131

inputs
unknown:
АА
	unknown_0:	А
identityИвStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *V
fQRO
M__inference_second_base_dense_layer_call_and_return_conditional_losses_134419p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
х╨
И
!__inference__wrapped_model_134249

left_input
right_inputL
2model_1_model_conv1_conv2d_readvariableop_resource: A
3model_1_model_conv1_biasadd_readvariableop_resource: L
2model_1_model_conv2_conv2d_readvariableop_resource: @A
3model_1_model_conv2_biasadd_readvariableop_resource:@M
2model_1_model_conv3_conv2d_readvariableop_resource:@АB
3model_1_model_conv3_biasadd_readvariableop_resource:	АN
2model_1_model_conv4_conv2d_readvariableop_resource:ААB
3model_1_model_conv4_biasadd_readvariableop_resource:	АQ
=model_1_model_first_base_dense_matmul_readvariableop_resource:
ААM
>model_1_model_first_base_dense_biasadd_readvariableop_resource:	АR
>model_1_model_second_base_dense_matmul_readvariableop_resource:
ААN
?model_1_model_second_base_dense_biasadd_readvariableop_resource:	АQ
=model_1_model_third_base_dense_matmul_readvariableop_resource:
ААM
>model_1_model_third_base_dense_biasadd_readvariableop_resource:	А
identityИв*model_1/model/conv1/BiasAdd/ReadVariableOpв,model_1/model/conv1/BiasAdd_1/ReadVariableOpв)model_1/model/conv1/Conv2D/ReadVariableOpв+model_1/model/conv1/Conv2D_1/ReadVariableOpв*model_1/model/conv2/BiasAdd/ReadVariableOpв,model_1/model/conv2/BiasAdd_1/ReadVariableOpв)model_1/model/conv2/Conv2D/ReadVariableOpв+model_1/model/conv2/Conv2D_1/ReadVariableOpв*model_1/model/conv3/BiasAdd/ReadVariableOpв,model_1/model/conv3/BiasAdd_1/ReadVariableOpв)model_1/model/conv3/Conv2D/ReadVariableOpв+model_1/model/conv3/Conv2D_1/ReadVariableOpв*model_1/model/conv4/BiasAdd/ReadVariableOpв,model_1/model/conv4/BiasAdd_1/ReadVariableOpв)model_1/model/conv4/Conv2D/ReadVariableOpв+model_1/model/conv4/Conv2D_1/ReadVariableOpв5model_1/model/first_base_dense/BiasAdd/ReadVariableOpв7model_1/model/first_base_dense/BiasAdd_1/ReadVariableOpв4model_1/model/first_base_dense/MatMul/ReadVariableOpв6model_1/model/first_base_dense/MatMul_1/ReadVariableOpв6model_1/model/second_base_dense/BiasAdd/ReadVariableOpв8model_1/model/second_base_dense/BiasAdd_1/ReadVariableOpв5model_1/model/second_base_dense/MatMul/ReadVariableOpв7model_1/model/second_base_dense/MatMul_1/ReadVariableOpв5model_1/model/third_base_dense/BiasAdd/ReadVariableOpв7model_1/model/third_base_dense/BiasAdd_1/ReadVariableOpв4model_1/model/third_base_dense/MatMul/ReadVariableOpв6model_1/model/third_base_dense/MatMul_1/ReadVariableOpR
model_1/reshape_1/ShapeShaperight_input*
T0*
_output_shapes
:o
%model_1/reshape_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'model_1/reshape_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'model_1/reshape_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
model_1/reshape_1/strided_sliceStridedSlice model_1/reshape_1/Shape:output:0.model_1/reshape_1/strided_slice/stack:output:00model_1/reshape_1/strided_slice/stack_1:output:00model_1/reshape_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskc
!model_1/reshape_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :c
!model_1/reshape_1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :c
!model_1/reshape_1/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :Г
model_1/reshape_1/Reshape/shapePack(model_1/reshape_1/strided_slice:output:0*model_1/reshape_1/Reshape/shape/1:output:0*model_1/reshape_1/Reshape/shape/2:output:0*model_1/reshape_1/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:Х
model_1/reshape_1/ReshapeReshaperight_input(model_1/reshape_1/Reshape/shape:output:0*
T0*/
_output_shapes
:         O
model_1/reshape/ShapeShape
left_input*
T0*
_output_shapes
:m
#model_1/reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%model_1/reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%model_1/reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
model_1/reshape/strided_sliceStridedSlicemodel_1/reshape/Shape:output:0,model_1/reshape/strided_slice/stack:output:0.model_1/reshape/strided_slice/stack_1:output:0.model_1/reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
model_1/reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :a
model_1/reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :a
model_1/reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :∙
model_1/reshape/Reshape/shapePack&model_1/reshape/strided_slice:output:0(model_1/reshape/Reshape/shape/1:output:0(model_1/reshape/Reshape/shape/2:output:0(model_1/reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:Р
model_1/reshape/ReshapeReshape
left_input&model_1/reshape/Reshape/shape:output:0*
T0*/
_output_shapes
:         д
)model_1/model/conv1/Conv2D/ReadVariableOpReadVariableOp2model_1_model_conv1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0█
model_1/model/conv1/Conv2DConv2D model_1/reshape/Reshape:output:01model_1/model/conv1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:          *
paddingSAME*
strides
Ъ
*model_1/model/conv1/BiasAdd/ReadVariableOpReadVariableOp3model_1_model_conv1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0╣
model_1/model/conv1/BiasAddBiasAdd#model_1/model/conv1/Conv2D:output:02model_1/model/conv1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          А
model_1/model/conv1/ReluRelu$model_1/model/conv1/BiasAdd:output:0*
T0*/
_output_shapes
:          ╛
model_1/model/maxpool1/MaxPoolMaxPool&model_1/model/conv1/Relu:activations:0*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides
д
)model_1/model/conv2/Conv2D/ReadVariableOpReadVariableOp2model_1_model_conv2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0т
model_1/model/conv2/Conv2DConv2D'model_1/model/maxpool1/MaxPool:output:01model_1/model/conv2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
Ъ
*model_1/model/conv2/BiasAdd/ReadVariableOpReadVariableOp3model_1_model_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0╣
model_1/model/conv2/BiasAddBiasAdd#model_1/model/conv2/Conv2D:output:02model_1/model/conv2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @А
model_1/model/conv2/ReluRelu$model_1/model/conv2/BiasAdd:output:0*
T0*/
_output_shapes
:         @╛
model_1/model/maxpool2/MaxPoolMaxPool&model_1/model/conv2/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
е
)model_1/model/conv3/Conv2D/ReadVariableOpReadVariableOp2model_1_model_conv3_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0у
model_1/model/conv3/Conv2DConv2D'model_1/model/maxpool2/MaxPool:output:01model_1/model/conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Ы
*model_1/model/conv3/BiasAdd/ReadVariableOpReadVariableOp3model_1_model_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
model_1/model/conv3/BiasAddBiasAdd#model_1/model/conv3/Conv2D:output:02model_1/model/conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АБ
model_1/model/conv3/ReluRelu$model_1/model/conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         А┐
model_1/model/maxpool3/MaxPoolMaxPool&model_1/model/conv3/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
ж
)model_1/model/conv4/Conv2D/ReadVariableOpReadVariableOp2model_1_model_conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0у
model_1/model/conv4/Conv2DConv2D'model_1/model/maxpool3/MaxPool:output:01model_1/model/conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Ы
*model_1/model/conv4/BiasAdd/ReadVariableOpReadVariableOp3model_1_model_conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
model_1/model/conv4/BiasAddBiasAdd#model_1/model/conv4/Conv2D:output:02model_1/model/conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АБ
model_1/model/conv4/ReluRelu$model_1/model/conv4/BiasAdd:output:0*
T0*0
_output_shapes
:         А┐
model_1/model/maxpool4/MaxPoolMaxPool&model_1/model/conv4/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
r
!model_1/model/flatten_input/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ╢
#model_1/model/flatten_input/ReshapeReshape'model_1/model/maxpool4/MaxPool:output:0*model_1/model/flatten_input/Const:output:0*
T0*(
_output_shapes
:         А┤
4model_1/model/first_base_dense/MatMul/ReadVariableOpReadVariableOp=model_1_model_first_base_dense_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0╬
%model_1/model/first_base_dense/MatMulMatMul,model_1/model/flatten_input/Reshape:output:0<model_1/model/first_base_dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А▒
5model_1/model/first_base_dense/BiasAdd/ReadVariableOpReadVariableOp>model_1_model_first_base_dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╘
&model_1/model/first_base_dense/BiasAddBiasAdd/model_1/model/first_base_dense/MatMul:product:0=model_1/model/first_base_dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АП
#model_1/model/first_base_dense/ReluRelu/model_1/model/first_base_dense/BiasAdd:output:0*
T0*(
_output_shapes
:         АЦ
$model_1/model/first_dropout/IdentityIdentity1model_1/model/first_base_dense/Relu:activations:0*
T0*(
_output_shapes
:         А╢
5model_1/model/second_base_dense/MatMul/ReadVariableOpReadVariableOp>model_1_model_second_base_dense_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0╤
&model_1/model/second_base_dense/MatMulMatMul-model_1/model/first_dropout/Identity:output:0=model_1/model/second_base_dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А│
6model_1/model/second_base_dense/BiasAdd/ReadVariableOpReadVariableOp?model_1_model_second_base_dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╫
'model_1/model/second_base_dense/BiasAddBiasAdd0model_1/model/second_base_dense/MatMul:product:0>model_1/model/second_base_dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АС
$model_1/model/second_base_dense/ReluRelu0model_1/model/second_base_dense/BiasAdd:output:0*
T0*(
_output_shapes
:         АШ
%model_1/model/second_dropout/IdentityIdentity2model_1/model/second_base_dense/Relu:activations:0*
T0*(
_output_shapes
:         А┤
4model_1/model/third_base_dense/MatMul/ReadVariableOpReadVariableOp=model_1_model_third_base_dense_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0╨
%model_1/model/third_base_dense/MatMulMatMul.model_1/model/second_dropout/Identity:output:0<model_1/model/third_base_dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А▒
5model_1/model/third_base_dense/BiasAdd/ReadVariableOpReadVariableOp>model_1_model_third_base_dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╘
&model_1/model/third_base_dense/BiasAddBiasAdd/model_1/model/third_base_dense/MatMul:product:0=model_1/model/third_base_dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АП
#model_1/model/third_base_dense/ReluRelu/model_1/model/third_base_dense/BiasAdd:output:0*
T0*(
_output_shapes
:         Аж
+model_1/model/conv1/Conv2D_1/ReadVariableOpReadVariableOp2model_1_model_conv1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0с
model_1/model/conv1/Conv2D_1Conv2D"model_1/reshape_1/Reshape:output:03model_1/model/conv1/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:          *
paddingSAME*
strides
Ь
,model_1/model/conv1/BiasAdd_1/ReadVariableOpReadVariableOp3model_1_model_conv1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0┐
model_1/model/conv1/BiasAdd_1BiasAdd%model_1/model/conv1/Conv2D_1:output:04model_1/model/conv1/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:          Д
model_1/model/conv1/Relu_1Relu&model_1/model/conv1/BiasAdd_1:output:0*
T0*/
_output_shapes
:          ┬
 model_1/model/maxpool1/MaxPool_1MaxPool(model_1/model/conv1/Relu_1:activations:0*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides
ж
+model_1/model/conv2/Conv2D_1/ReadVariableOpReadVariableOp2model_1_model_conv2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0ш
model_1/model/conv2/Conv2D_1Conv2D)model_1/model/maxpool1/MaxPool_1:output:03model_1/model/conv2/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
Ь
,model_1/model/conv2/BiasAdd_1/ReadVariableOpReadVariableOp3model_1_model_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0┐
model_1/model/conv2/BiasAdd_1BiasAdd%model_1/model/conv2/Conv2D_1:output:04model_1/model/conv2/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @Д
model_1/model/conv2/Relu_1Relu&model_1/model/conv2/BiasAdd_1:output:0*
T0*/
_output_shapes
:         @┬
 model_1/model/maxpool2/MaxPool_1MaxPool(model_1/model/conv2/Relu_1:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
з
+model_1/model/conv3/Conv2D_1/ReadVariableOpReadVariableOp2model_1_model_conv3_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0щ
model_1/model/conv3/Conv2D_1Conv2D)model_1/model/maxpool2/MaxPool_1:output:03model_1/model/conv3/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Э
,model_1/model/conv3/BiasAdd_1/ReadVariableOpReadVariableOp3model_1_model_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0└
model_1/model/conv3/BiasAdd_1BiasAdd%model_1/model/conv3/Conv2D_1:output:04model_1/model/conv3/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АЕ
model_1/model/conv3/Relu_1Relu&model_1/model/conv3/BiasAdd_1:output:0*
T0*0
_output_shapes
:         А├
 model_1/model/maxpool3/MaxPool_1MaxPool(model_1/model/conv3/Relu_1:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
и
+model_1/model/conv4/Conv2D_1/ReadVariableOpReadVariableOp2model_1_model_conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0щ
model_1/model/conv4/Conv2D_1Conv2D)model_1/model/maxpool3/MaxPool_1:output:03model_1/model/conv4/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Э
,model_1/model/conv4/BiasAdd_1/ReadVariableOpReadVariableOp3model_1_model_conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0└
model_1/model/conv4/BiasAdd_1BiasAdd%model_1/model/conv4/Conv2D_1:output:04model_1/model/conv4/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АЕ
model_1/model/conv4/Relu_1Relu&model_1/model/conv4/BiasAdd_1:output:0*
T0*0
_output_shapes
:         А├
 model_1/model/maxpool4/MaxPool_1MaxPool(model_1/model/conv4/Relu_1:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
t
#model_1/model/flatten_input/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ╝
%model_1/model/flatten_input/Reshape_1Reshape)model_1/model/maxpool4/MaxPool_1:output:0,model_1/model/flatten_input/Const_1:output:0*
T0*(
_output_shapes
:         А╢
6model_1/model/first_base_dense/MatMul_1/ReadVariableOpReadVariableOp=model_1_model_first_base_dense_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0╘
'model_1/model/first_base_dense/MatMul_1MatMul.model_1/model/flatten_input/Reshape_1:output:0>model_1/model/first_base_dense/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А│
7model_1/model/first_base_dense/BiasAdd_1/ReadVariableOpReadVariableOp>model_1_model_first_base_dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0┌
(model_1/model/first_base_dense/BiasAdd_1BiasAdd1model_1/model/first_base_dense/MatMul_1:product:0?model_1/model/first_base_dense/BiasAdd_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АУ
%model_1/model/first_base_dense/Relu_1Relu1model_1/model/first_base_dense/BiasAdd_1:output:0*
T0*(
_output_shapes
:         АЪ
&model_1/model/first_dropout/Identity_1Identity3model_1/model/first_base_dense/Relu_1:activations:0*
T0*(
_output_shapes
:         А╕
7model_1/model/second_base_dense/MatMul_1/ReadVariableOpReadVariableOp>model_1_model_second_base_dense_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0╫
(model_1/model/second_base_dense/MatMul_1MatMul/model_1/model/first_dropout/Identity_1:output:0?model_1/model/second_base_dense/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А╡
8model_1/model/second_base_dense/BiasAdd_1/ReadVariableOpReadVariableOp?model_1_model_second_base_dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0▌
)model_1/model/second_base_dense/BiasAdd_1BiasAdd2model_1/model/second_base_dense/MatMul_1:product:0@model_1/model/second_base_dense/BiasAdd_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АХ
&model_1/model/second_base_dense/Relu_1Relu2model_1/model/second_base_dense/BiasAdd_1:output:0*
T0*(
_output_shapes
:         АЬ
'model_1/model/second_dropout/Identity_1Identity4model_1/model/second_base_dense/Relu_1:activations:0*
T0*(
_output_shapes
:         А╢
6model_1/model/third_base_dense/MatMul_1/ReadVariableOpReadVariableOp=model_1_model_third_base_dense_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0╓
'model_1/model/third_base_dense/MatMul_1MatMul0model_1/model/second_dropout/Identity_1:output:0>model_1/model/third_base_dense/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А│
7model_1/model/third_base_dense/BiasAdd_1/ReadVariableOpReadVariableOp>model_1_model_third_base_dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0┌
(model_1/model/third_base_dense/BiasAdd_1BiasAdd1model_1/model/third_base_dense/MatMul_1:product:0?model_1/model/third_base_dense/BiasAdd_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АУ
%model_1/model/third_base_dense/Relu_1Relu1model_1/model/third_base_dense/BiasAdd_1:output:0*
T0*(
_output_shapes
:         А║
model_1/output_layer/subSub1model_1/model/third_base_dense/Relu:activations:03model_1/model/third_base_dense/Relu_1:activations:0*
T0*(
_output_shapes
:         Аv
model_1/output_layer/SquareSquaremodel_1/output_layer/sub:z:0*
T0*(
_output_shapes
:         Аl
*model_1/output_layer/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :╕
model_1/output_layer/SumSummodel_1/output_layer/Square:y:03model_1/output_layer/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims(c
model_1/output_layer/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Х┐╓3е
model_1/output_layer/MaximumMaximum!model_1/output_layer/Sum:output:0'model_1/output_layer/Maximum/y:output:0*
T0*'
_output_shapes
:         u
model_1/output_layer/SqrtSqrt model_1/output_layer/Maximum:z:0*
T0*'
_output_shapes
:         l
IdentityIdentitymodel_1/output_layer/Sqrt:y:0^NoOp*
T0*'
_output_shapes
:         ╚
NoOpNoOp+^model_1/model/conv1/BiasAdd/ReadVariableOp-^model_1/model/conv1/BiasAdd_1/ReadVariableOp*^model_1/model/conv1/Conv2D/ReadVariableOp,^model_1/model/conv1/Conv2D_1/ReadVariableOp+^model_1/model/conv2/BiasAdd/ReadVariableOp-^model_1/model/conv2/BiasAdd_1/ReadVariableOp*^model_1/model/conv2/Conv2D/ReadVariableOp,^model_1/model/conv2/Conv2D_1/ReadVariableOp+^model_1/model/conv3/BiasAdd/ReadVariableOp-^model_1/model/conv3/BiasAdd_1/ReadVariableOp*^model_1/model/conv3/Conv2D/ReadVariableOp,^model_1/model/conv3/Conv2D_1/ReadVariableOp+^model_1/model/conv4/BiasAdd/ReadVariableOp-^model_1/model/conv4/BiasAdd_1/ReadVariableOp*^model_1/model/conv4/Conv2D/ReadVariableOp,^model_1/model/conv4/Conv2D_1/ReadVariableOp6^model_1/model/first_base_dense/BiasAdd/ReadVariableOp8^model_1/model/first_base_dense/BiasAdd_1/ReadVariableOp5^model_1/model/first_base_dense/MatMul/ReadVariableOp7^model_1/model/first_base_dense/MatMul_1/ReadVariableOp7^model_1/model/second_base_dense/BiasAdd/ReadVariableOp9^model_1/model/second_base_dense/BiasAdd_1/ReadVariableOp6^model_1/model/second_base_dense/MatMul/ReadVariableOp8^model_1/model/second_base_dense/MatMul_1/ReadVariableOp6^model_1/model/third_base_dense/BiasAdd/ReadVariableOp8^model_1/model/third_base_dense/BiasAdd_1/ReadVariableOp5^model_1/model/third_base_dense/MatMul/ReadVariableOp7^model_1/model/third_base_dense/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:         :         : : : : : : : : : : : : : : 2X
*model_1/model/conv1/BiasAdd/ReadVariableOp*model_1/model/conv1/BiasAdd/ReadVariableOp2\
,model_1/model/conv1/BiasAdd_1/ReadVariableOp,model_1/model/conv1/BiasAdd_1/ReadVariableOp2V
)model_1/model/conv1/Conv2D/ReadVariableOp)model_1/model/conv1/Conv2D/ReadVariableOp2Z
+model_1/model/conv1/Conv2D_1/ReadVariableOp+model_1/model/conv1/Conv2D_1/ReadVariableOp2X
*model_1/model/conv2/BiasAdd/ReadVariableOp*model_1/model/conv2/BiasAdd/ReadVariableOp2\
,model_1/model/conv2/BiasAdd_1/ReadVariableOp,model_1/model/conv2/BiasAdd_1/ReadVariableOp2V
)model_1/model/conv2/Conv2D/ReadVariableOp)model_1/model/conv2/Conv2D/ReadVariableOp2Z
+model_1/model/conv2/Conv2D_1/ReadVariableOp+model_1/model/conv2/Conv2D_1/ReadVariableOp2X
*model_1/model/conv3/BiasAdd/ReadVariableOp*model_1/model/conv3/BiasAdd/ReadVariableOp2\
,model_1/model/conv3/BiasAdd_1/ReadVariableOp,model_1/model/conv3/BiasAdd_1/ReadVariableOp2V
)model_1/model/conv3/Conv2D/ReadVariableOp)model_1/model/conv3/Conv2D/ReadVariableOp2Z
+model_1/model/conv3/Conv2D_1/ReadVariableOp+model_1/model/conv3/Conv2D_1/ReadVariableOp2X
*model_1/model/conv4/BiasAdd/ReadVariableOp*model_1/model/conv4/BiasAdd/ReadVariableOp2\
,model_1/model/conv4/BiasAdd_1/ReadVariableOp,model_1/model/conv4/BiasAdd_1/ReadVariableOp2V
)model_1/model/conv4/Conv2D/ReadVariableOp)model_1/model/conv4/Conv2D/ReadVariableOp2Z
+model_1/model/conv4/Conv2D_1/ReadVariableOp+model_1/model/conv4/Conv2D_1/ReadVariableOp2n
5model_1/model/first_base_dense/BiasAdd/ReadVariableOp5model_1/model/first_base_dense/BiasAdd/ReadVariableOp2r
7model_1/model/first_base_dense/BiasAdd_1/ReadVariableOp7model_1/model/first_base_dense/BiasAdd_1/ReadVariableOp2l
4model_1/model/first_base_dense/MatMul/ReadVariableOp4model_1/model/first_base_dense/MatMul/ReadVariableOp2p
6model_1/model/first_base_dense/MatMul_1/ReadVariableOp6model_1/model/first_base_dense/MatMul_1/ReadVariableOp2p
6model_1/model/second_base_dense/BiasAdd/ReadVariableOp6model_1/model/second_base_dense/BiasAdd/ReadVariableOp2t
8model_1/model/second_base_dense/BiasAdd_1/ReadVariableOp8model_1/model/second_base_dense/BiasAdd_1/ReadVariableOp2n
5model_1/model/second_base_dense/MatMul/ReadVariableOp5model_1/model/second_base_dense/MatMul/ReadVariableOp2r
7model_1/model/second_base_dense/MatMul_1/ReadVariableOp7model_1/model/second_base_dense/MatMul_1/ReadVariableOp2n
5model_1/model/third_base_dense/BiasAdd/ReadVariableOp5model_1/model/third_base_dense/BiasAdd/ReadVariableOp2r
7model_1/model/third_base_dense/BiasAdd_1/ReadVariableOp7model_1/model/third_base_dense/BiasAdd_1/ReadVariableOp2l
4model_1/model/third_base_dense/MatMul/ReadVariableOp4model_1/model/third_base_dense/MatMul/ReadVariableOp2p
6model_1/model/third_base_dense/MatMul_1/ReadVariableOp6model_1/model/third_base_dense/MatMul_1/ReadVariableOp:W S
+
_output_shapes
:         
$
_user_specified_name
left_input:XT
+
_output_shapes
:         
%
_user_specified_nameright_input
Ў:
№
A__inference_model_layer_call_and_return_conditional_losses_134794

base_input&
conv1_134751: 
conv1_134753: &
conv2_134757: @
conv2_134759:@'
conv3_134763:@А
conv3_134765:	А(
conv4_134769:АА
conv4_134771:	А+
first_base_dense_134776:
АА&
first_base_dense_134778:	А,
second_base_dense_134782:
АА'
second_base_dense_134784:	А+
third_base_dense_134788:
АА&
third_base_dense_134790:	А
identityИвconv1/StatefulPartitionedCallвconv2/StatefulPartitionedCallвconv3/StatefulPartitionedCallвconv4/StatefulPartitionedCallв(first_base_dense/StatefulPartitionedCallв)second_base_dense/StatefulPartitionedCallв(third_base_dense/StatefulPartitionedCallє
conv1/StatefulPartitionedCallStatefulPartitionedCall
base_inputconv1_134751conv1_134753*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_conv1_layer_call_and_return_conditional_losses_134315у
maxpool1/PartitionedCallPartitionedCall&conv1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_maxpool1_layer_call_and_return_conditional_losses_134258К
conv2/StatefulPartitionedCallStatefulPartitionedCall!maxpool1/PartitionedCall:output:0conv2_134757conv2_134759*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_conv2_layer_call_and_return_conditional_losses_134333у
maxpool2/PartitionedCallPartitionedCall&conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_maxpool2_layer_call_and_return_conditional_losses_134270Л
conv3/StatefulPartitionedCallStatefulPartitionedCall!maxpool2/PartitionedCall:output:0conv3_134763conv3_134765*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_conv3_layer_call_and_return_conditional_losses_134351ф
maxpool3/PartitionedCallPartitionedCall&conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_maxpool3_layer_call_and_return_conditional_losses_134282Л
conv4/StatefulPartitionedCallStatefulPartitionedCall!maxpool3/PartitionedCall:output:0conv4_134769conv4_134771*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_conv4_layer_call_and_return_conditional_losses_134369ф
maxpool4/PartitionedCallPartitionedCall&conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_maxpool4_layer_call_and_return_conditional_losses_134294с
flatten_input/PartitionedCallPartitionedCall!maxpool4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_flatten_input_layer_call_and_return_conditional_losses_134382┤
(first_base_dense/StatefulPartitionedCallStatefulPartitionedCall&flatten_input/PartitionedCall:output:0first_base_dense_134776first_base_dense_134778*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_first_base_dense_layer_call_and_return_conditional_losses_134395ё
first_dropout/PartitionedCallPartitionedCall1first_base_dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_first_dropout_layer_call_and_return_conditional_losses_134406╕
)second_base_dense/StatefulPartitionedCallStatefulPartitionedCall&first_dropout/PartitionedCall:output:0second_base_dense_134782second_base_dense_134784*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *V
fQRO
M__inference_second_base_dense_layer_call_and_return_conditional_losses_134419Ї
second_dropout/PartitionedCallPartitionedCall2second_base_dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_second_dropout_layer_call_and_return_conditional_losses_134430╡
(third_base_dense/StatefulPartitionedCallStatefulPartitionedCall'second_dropout/PartitionedCall:output:0third_base_dense_134788third_base_dense_134790*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_third_base_dense_layer_call_and_return_conditional_losses_134443Б
IdentityIdentity1third_base_dense/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А╚
NoOpNoOp^conv1/StatefulPartitionedCall^conv2/StatefulPartitionedCall^conv3/StatefulPartitionedCall^conv4/StatefulPartitionedCall)^first_base_dense/StatefulPartitionedCall*^second_base_dense/StatefulPartitionedCall)^third_base_dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:         : : : : : : : : : : : : : : 2>
conv1/StatefulPartitionedCallconv1/StatefulPartitionedCall2>
conv2/StatefulPartitionedCallconv2/StatefulPartitionedCall2>
conv3/StatefulPartitionedCallconv3/StatefulPartitionedCall2>
conv4/StatefulPartitionedCallconv4/StatefulPartitionedCall2T
(first_base_dense/StatefulPartitionedCall(first_base_dense/StatefulPartitionedCall2V
)second_base_dense/StatefulPartitionedCall)second_base_dense/StatefulPartitionedCall2T
(third_base_dense/StatefulPartitionedCall(third_base_dense/StatefulPartitionedCall:[ W
/
_output_shapes
:         
$
_user_specified_name
base_input
с
h
J__inference_second_dropout_layer_call_and_return_conditional_losses_134430

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:         А\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
И
№
A__inference_conv3_layer_call_and_return_conditional_losses_134351

inputs9
conv2d_readvariableop_resource:@А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
М
`
D__inference_maxpool1_layer_call_and_return_conditional_losses_134258

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
¤
И
&__inference_model_layer_call_fn_135739

inputs!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А
	unknown_7:
АА
	unknown_8:	А
	unknown_9:
АА

unknown_10:	А

unknown_11:
АА

unknown_12:	А
identityИвStatefulPartitionedCall∙
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_134450p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:         : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
н
E
)__inference_maxpool2_layer_call_fn_135999

inputs
identity╒
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_maxpool2_layer_call_and_return_conditional_losses_134270Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
п

А
L__inference_first_base_dense_layer_call_and_return_conditional_losses_136095

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
═
e
I__inference_flatten_input_layer_call_and_return_conditional_losses_134382

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"       ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         АY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
ш
r
H__inference_output_layer_layer_call_and_return_conditional_losses_134937

inputs
inputs_1
identityO
subSubinputsinputs_1*
T0*(
_output_shapes
:         АL
SquareSquaresub:z:0*
T0*(
_output_shapes
:         АW
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :y
SumSum
Square:y:0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims(N
	Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Х┐╓3f
MaximumMaximumSum:output:0Maximum/y:output:0*
T0*'
_output_shapes
:         K
SqrtSqrtMaximum:z:0*
T0*'
_output_shapes
:         P
IdentityIdentitySqrt:y:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:         А:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs:PL
(
_output_shapes
:         А
 
_user_specified_nameinputs
М
`
D__inference_maxpool4_layer_call_and_return_conditional_losses_136064

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
А
·
A__inference_conv1_layer_call_and_return_conditional_losses_134315

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:          *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:          i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:          w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
▒
Y
-__inference_output_layer_layer_call_fn_135920
inputs_0
inputs_1
identity├
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_output_layer_layer_call_and_return_conditional_losses_134993`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:         А:         А:R N
(
_output_shapes
:         А
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:         А
"
_user_specified_name
inputs/1
пK
╝
A__inference_model_layer_call_and_return_conditional_losses_135833

inputs>
$conv1_conv2d_readvariableop_resource: 3
%conv1_biasadd_readvariableop_resource: >
$conv2_conv2d_readvariableop_resource: @3
%conv2_biasadd_readvariableop_resource:@?
$conv3_conv2d_readvariableop_resource:@А4
%conv3_biasadd_readvariableop_resource:	А@
$conv4_conv2d_readvariableop_resource:АА4
%conv4_biasadd_readvariableop_resource:	АC
/first_base_dense_matmul_readvariableop_resource:
АА?
0first_base_dense_biasadd_readvariableop_resource:	АD
0second_base_dense_matmul_readvariableop_resource:
АА@
1second_base_dense_biasadd_readvariableop_resource:	АC
/third_base_dense_matmul_readvariableop_resource:
АА?
0third_base_dense_biasadd_readvariableop_resource:	А
identityИвconv1/BiasAdd/ReadVariableOpвconv1/Conv2D/ReadVariableOpвconv2/BiasAdd/ReadVariableOpвconv2/Conv2D/ReadVariableOpвconv3/BiasAdd/ReadVariableOpвconv3/Conv2D/ReadVariableOpвconv4/BiasAdd/ReadVariableOpвconv4/Conv2D/ReadVariableOpв'first_base_dense/BiasAdd/ReadVariableOpв&first_base_dense/MatMul/ReadVariableOpв(second_base_dense/BiasAdd/ReadVariableOpв'second_base_dense/MatMul/ReadVariableOpв'third_base_dense/BiasAdd/ReadVariableOpв&third_base_dense/MatMul/ReadVariableOpИ
conv1/Conv2D/ReadVariableOpReadVariableOp$conv1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0е
conv1/Conv2DConv2Dinputs#conv1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:          *
paddingSAME*
strides
~
conv1/BiasAdd/ReadVariableOpReadVariableOp%conv1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0П
conv1/BiasAddBiasAddconv1/Conv2D:output:0$conv1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          d

conv1/ReluReluconv1/BiasAdd:output:0*
T0*/
_output_shapes
:          в
maxpool1/MaxPoolMaxPoolconv1/Relu:activations:0*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides
И
conv2/Conv2D/ReadVariableOpReadVariableOp$conv2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0╕
conv2/Conv2DConv2Dmaxpool1/MaxPool:output:0#conv2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
~
conv2/BiasAdd/ReadVariableOpReadVariableOp%conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0П
conv2/BiasAddBiasAddconv2/Conv2D:output:0$conv2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @d

conv2/ReluReluconv2/BiasAdd:output:0*
T0*/
_output_shapes
:         @в
maxpool2/MaxPoolMaxPoolconv2/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
Й
conv3/Conv2D/ReadVariableOpReadVariableOp$conv3_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0╣
conv3/Conv2DConv2Dmaxpool2/MaxPool:output:0#conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides

conv3/BiasAdd/ReadVariableOpReadVariableOp%conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Р
conv3/BiasAddBiasAddconv3/Conv2D:output:0$conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аe

conv3/ReluReluconv3/BiasAdd:output:0*
T0*0
_output_shapes
:         Аг
maxpool3/MaxPoolMaxPoolconv3/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
К
conv4/Conv2D/ReadVariableOpReadVariableOp$conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0╣
conv4/Conv2DConv2Dmaxpool3/MaxPool:output:0#conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides

conv4/BiasAdd/ReadVariableOpReadVariableOp%conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Р
conv4/BiasAddBiasAddconv4/Conv2D:output:0$conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аe

conv4/ReluReluconv4/BiasAdd:output:0*
T0*0
_output_shapes
:         Аг
maxpool4/MaxPoolMaxPoolconv4/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
d
flatten_input/ConstConst*
_output_shapes
:*
dtype0*
valueB"       М
flatten_input/ReshapeReshapemaxpool4/MaxPool:output:0flatten_input/Const:output:0*
T0*(
_output_shapes
:         АШ
&first_base_dense/MatMul/ReadVariableOpReadVariableOp/first_base_dense_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0д
first_base_dense/MatMulMatMulflatten_input/Reshape:output:0.first_base_dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АХ
'first_base_dense/BiasAdd/ReadVariableOpReadVariableOp0first_base_dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0к
first_base_dense/BiasAddBiasAdd!first_base_dense/MatMul:product:0/first_base_dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
first_base_dense/ReluRelu!first_base_dense/BiasAdd:output:0*
T0*(
_output_shapes
:         Аz
first_dropout/IdentityIdentity#first_base_dense/Relu:activations:0*
T0*(
_output_shapes
:         АЪ
'second_base_dense/MatMul/ReadVariableOpReadVariableOp0second_base_dense_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0з
second_base_dense/MatMulMatMulfirst_dropout/Identity:output:0/second_base_dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АЧ
(second_base_dense/BiasAdd/ReadVariableOpReadVariableOp1second_base_dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0н
second_base_dense/BiasAddBiasAdd"second_base_dense/MatMul:product:00second_base_dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аu
second_base_dense/ReluRelu"second_base_dense/BiasAdd:output:0*
T0*(
_output_shapes
:         А|
second_dropout/IdentityIdentity$second_base_dense/Relu:activations:0*
T0*(
_output_shapes
:         АШ
&third_base_dense/MatMul/ReadVariableOpReadVariableOp/third_base_dense_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0ж
third_base_dense/MatMulMatMul second_dropout/Identity:output:0.third_base_dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АХ
'third_base_dense/BiasAdd/ReadVariableOpReadVariableOp0third_base_dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0к
third_base_dense/BiasAddBiasAdd!third_base_dense/MatMul:product:0/third_base_dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
third_base_dense/ReluRelu!third_base_dense/BiasAdd:output:0*
T0*(
_output_shapes
:         Аs
IdentityIdentity#third_base_dense/Relu:activations:0^NoOp*
T0*(
_output_shapes
:         А╡
NoOpNoOp^conv1/BiasAdd/ReadVariableOp^conv1/Conv2D/ReadVariableOp^conv2/BiasAdd/ReadVariableOp^conv2/Conv2D/ReadVariableOp^conv3/BiasAdd/ReadVariableOp^conv3/Conv2D/ReadVariableOp^conv4/BiasAdd/ReadVariableOp^conv4/Conv2D/ReadVariableOp(^first_base_dense/BiasAdd/ReadVariableOp'^first_base_dense/MatMul/ReadVariableOp)^second_base_dense/BiasAdd/ReadVariableOp(^second_base_dense/MatMul/ReadVariableOp(^third_base_dense/BiasAdd/ReadVariableOp'^third_base_dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:         : : : : : : : : : : : : : : 2<
conv1/BiasAdd/ReadVariableOpconv1/BiasAdd/ReadVariableOp2:
conv1/Conv2D/ReadVariableOpconv1/Conv2D/ReadVariableOp2<
conv2/BiasAdd/ReadVariableOpconv2/BiasAdd/ReadVariableOp2:
conv2/Conv2D/ReadVariableOpconv2/Conv2D/ReadVariableOp2<
conv3/BiasAdd/ReadVariableOpconv3/BiasAdd/ReadVariableOp2:
conv3/Conv2D/ReadVariableOpconv3/Conv2D/ReadVariableOp2<
conv4/BiasAdd/ReadVariableOpconv4/BiasAdd/ReadVariableOp2:
conv4/Conv2D/ReadVariableOpconv4/Conv2D/ReadVariableOp2R
'first_base_dense/BiasAdd/ReadVariableOp'first_base_dense/BiasAdd/ReadVariableOp2P
&first_base_dense/MatMul/ReadVariableOp&first_base_dense/MatMul/ReadVariableOp2T
(second_base_dense/BiasAdd/ReadVariableOp(second_base_dense/BiasAdd/ReadVariableOp2R
'second_base_dense/MatMul/ReadVariableOp'second_base_dense/MatMul/ReadVariableOp2R
'third_base_dense/BiasAdd/ReadVariableOp'third_base_dense/BiasAdd/ReadVariableOp2P
&third_base_dense/MatMul/ReadVariableOp&third_base_dense/MatMul/ReadVariableOp:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
М
`
D__inference_maxpool2_layer_call_and_return_conditional_losses_136004

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
р
g
I__inference_first_dropout_layer_call_and_return_conditional_losses_136110

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:         А\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
п

А
L__inference_third_base_dense_layer_call_and_return_conditional_losses_134443

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Л
Д
C__inference_model_1_layer_call_and_return_conditional_losses_134940

inputs
inputs_1&
model_134881: 
model_134883: &
model_134885: @
model_134887:@'
model_134889:@А
model_134891:	А(
model_134893:АА
model_134895:	А 
model_134897:
АА
model_134899:	А 
model_134901:
АА
model_134903:	А 
model_134905:
АА
model_134907:	А
identityИвmodel/StatefulPartitionedCallвmodel/StatefulPartitionedCall_1╟
reshape_1/PartitionedCallPartitionedCallinputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_reshape_1_layer_call_and_return_conditional_losses_134863┴
reshape/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_reshape_layer_call_and_return_conditional_losses_134879┬
model/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0model_134881model_134883model_134885model_134887model_134889model_134891model_134893model_134895model_134897model_134899model_134901model_134903model_134905model_134907*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_134450╞
model/StatefulPartitionedCall_1StatefulPartitionedCall"reshape_1/PartitionedCall:output:0model_134881model_134883model_134885model_134887model_134889model_134891model_134893model_134895model_134897model_134899model_134901model_134903model_134905model_134907*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_134450О
output_layer/PartitionedCallPartitionedCall&model/StatefulPartitionedCall:output:0(model/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_output_layer_layer_call_and_return_conditional_losses_134937t
IdentityIdentity%output_layer/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         И
NoOpNoOp^model/StatefulPartitionedCall ^model/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:         :         : : : : : : : : : : : : : : 2>
model/StatefulPartitionedCallmodel/StatefulPartitionedCall2B
model/StatefulPartitionedCall_1model/StatefulPartitionedCall_1:S O
+
_output_shapes
:         
 
_user_specified_nameinputs:SO
+
_output_shapes
:         
 
_user_specified_nameinputs
░
K
/__inference_second_dropout_layer_call_fn_136147

inputs
identity╣
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_second_dropout_layer_call_and_return_conditional_losses_134430a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Й
М
&__inference_model_layer_call_fn_134748

base_input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А
	unknown_7:
АА
	unknown_8:	А
	unknown_9:
АА

unknown_10:	А

unknown_11:
АА

unknown_12:	А
identityИвStatefulPartitionedCall¤
StatefulPartitionedCallStatefulPartitionedCall
base_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_134684p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:         : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
/
_output_shapes
:         
$
_user_specified_name
base_input
Ё
t
H__inference_output_layer_layer_call_and_return_conditional_losses_135932
inputs_0
inputs_1
identityQ
subSubinputs_0inputs_1*
T0*(
_output_shapes
:         АL
SquareSquaresub:z:0*
T0*(
_output_shapes
:         АW
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :y
SumSum
Square:y:0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims(N
	Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Х┐╓3f
MaximumMaximumSum:output:0Maximum/y:output:0*
T0*'
_output_shapes
:         K
SqrtSqrtMaximum:z:0*
T0*'
_output_shapes
:         P
IdentityIdentitySqrt:y:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:         А:         А:R N
(
_output_shapes
:         А
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:         А
"
_user_specified_name
inputs/1
У
Я
(__inference_model_1_layer_call_fn_135162

left_input
right_input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А
	unknown_7:
АА
	unknown_8:	А
	unknown_9:
АА

unknown_10:	А

unknown_11:
АА

unknown_12:	А
identityИвStatefulPartitionedCallМ
StatefulPartitionedCallStatefulPartitionedCall
left_inputright_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_model_1_layer_call_and_return_conditional_losses_135097o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:         :         : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
+
_output_shapes
:         
$
_user_specified_name
left_input:XT
+
_output_shapes
:         
%
_user_specified_nameright_input
▄
б
1__inference_first_base_dense_layer_call_fn_136084

inputs
unknown:
АА
	unknown_0:	А
identityИвStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_first_base_dense_layer_call_and_return_conditional_losses_134395p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
═
e
I__inference_flatten_input_layer_call_and_return_conditional_losses_136075

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"       ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         АY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
с
h
J__inference_second_dropout_layer_call_and_return_conditional_losses_136157

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:         А\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╛
J
.__inference_flatten_input_layer_call_fn_136069

inputs
identity╕
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_flatten_input_layer_call_and_return_conditional_losses_134382a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╢
D
(__inference_reshape_layer_call_fn_135673

inputs
identity╣
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_reshape_layer_call_and_return_conditional_losses_134879h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Ё
t
H__inference_output_layer_layer_call_and_return_conditional_losses_135944
inputs_0
inputs_1
identityQ
subSubinputs_0inputs_1*
T0*(
_output_shapes
:         АL
SquareSquaresub:z:0*
T0*(
_output_shapes
:         АW
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :y
SumSum
Square:y:0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims(N
	Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Х┐╓3f
MaximumMaximumSum:output:0Maximum/y:output:0*
T0*'
_output_shapes
:         K
SqrtSqrtMaximum:z:0*
T0*'
_output_shapes
:         P
IdentityIdentitySqrt:y:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:         А:         А:R N
(
_output_shapes
:         А
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:         А
"
_user_specified_name
inputs/1
░

Б
M__inference_second_base_dense_layer_call_and_return_conditional_losses_134419

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Л
Д
C__inference_model_1_layer_call_and_return_conditional_losses_135097

inputs
inputs_1&
model_135051: 
model_135053: &
model_135055: @
model_135057:@'
model_135059:@А
model_135061:	А(
model_135063:АА
model_135065:	А 
model_135067:
АА
model_135069:	А 
model_135071:
АА
model_135073:	А 
model_135075:
АА
model_135077:	А
identityИвmodel/StatefulPartitionedCallвmodel/StatefulPartitionedCall_1╟
reshape_1/PartitionedCallPartitionedCallinputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_reshape_1_layer_call_and_return_conditional_losses_134863┴
reshape/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_reshape_layer_call_and_return_conditional_losses_134879┬
model/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0model_135051model_135053model_135055model_135057model_135059model_135061model_135063model_135065model_135067model_135069model_135071model_135073model_135075model_135077*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_134684╞
model/StatefulPartitionedCall_1StatefulPartitionedCall"reshape_1/PartitionedCall:output:0model_135051model_135053model_135055model_135057model_135059model_135061model_135063model_135065model_135067model_135069model_135071model_135073model_135075model_135077*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_134684О
output_layer/PartitionedCallPartitionedCall&model/StatefulPartitionedCall:output:0(model/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_output_layer_layer_call_and_return_conditional_losses_134993t
IdentityIdentity%output_layer/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         И
NoOpNoOp^model/StatefulPartitionedCall ^model/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:         :         : : : : : : : : : : : : : : 2>
model/StatefulPartitionedCallmodel/StatefulPartitionedCall2B
model/StatefulPartitionedCall_1model/StatefulPartitionedCall_1:S O
+
_output_shapes
:         
 
_user_specified_nameinputs:SO
+
_output_shapes
:         
 
_user_specified_nameinputs
н
E
)__inference_maxpool4_layer_call_fn_136059

inputs
identity╒
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_maxpool4_layer_call_and_return_conditional_losses_134294Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
№К
╬
"__inference__traced_restore_136433
file_prefix7
assignvariableop_conv1_kernel: +
assignvariableop_1_conv1_bias: 9
assignvariableop_2_conv2_kernel: @+
assignvariableop_3_conv2_bias:@:
assignvariableop_4_conv3_kernel:@А,
assignvariableop_5_conv3_bias:	А;
assignvariableop_6_conv4_kernel:АА,
assignvariableop_7_conv4_bias:	А>
*assignvariableop_8_first_base_dense_kernel:
АА7
(assignvariableop_9_first_base_dense_bias:	А@
,assignvariableop_10_second_base_dense_kernel:
АА9
*assignvariableop_11_second_base_dense_bias:	А?
+assignvariableop_12_third_base_dense_kernel:
АА8
)assignvariableop_13_third_base_dense_bias:	А*
 assignvariableop_14_rmsprop_iter:	 +
!assignvariableop_15_rmsprop_decay: 3
)assignvariableop_16_rmsprop_learning_rate: .
$assignvariableop_17_rmsprop_momentum: )
assignvariableop_18_rmsprop_rho: #
assignvariableop_19_total: #
assignvariableop_20_count: F
,assignvariableop_21_rmsprop_conv1_kernel_rms: 8
*assignvariableop_22_rmsprop_conv1_bias_rms: F
,assignvariableop_23_rmsprop_conv2_kernel_rms: @8
*assignvariableop_24_rmsprop_conv2_bias_rms:@G
,assignvariableop_25_rmsprop_conv3_kernel_rms:@А9
*assignvariableop_26_rmsprop_conv3_bias_rms:	АH
,assignvariableop_27_rmsprop_conv4_kernel_rms:АА9
*assignvariableop_28_rmsprop_conv4_bias_rms:	АK
7assignvariableop_29_rmsprop_first_base_dense_kernel_rms:
ААD
5assignvariableop_30_rmsprop_first_base_dense_bias_rms:	АL
8assignvariableop_31_rmsprop_second_base_dense_kernel_rms:
ААE
6assignvariableop_32_rmsprop_second_base_dense_bias_rms:	АK
7assignvariableop_33_rmsprop_third_base_dense_kernel_rms:
ААD
5assignvariableop_34_rmsprop_third_base_dense_bias_rms:	А
identity_36ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_27вAssignVariableOp_28вAssignVariableOp_29вAssignVariableOp_3вAssignVariableOp_30вAssignVariableOp_31вAssignVariableOp_32вAssignVariableOp_33вAssignVariableOp_34вAssignVariableOp_4вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9щ
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:$*
dtype0*П
valueЕBВ$B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBDvariables/0/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/1/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/2/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/3/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/4/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/5/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/6/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/7/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/8/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/9/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBEvariables/10/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBEvariables/11/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBEvariables/12/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBEvariables/13/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH╕
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:$*
dtype0*[
valueRBP$B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ╒
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*ж
_output_shapesУ
Р::::::::::::::::::::::::::::::::::::*2
dtypes(
&2$	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:И
AssignVariableOpAssignVariableOpassignvariableop_conv1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_2AssignVariableOpassignvariableop_2_conv2_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_3AssignVariableOpassignvariableop_3_conv2_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_4AssignVariableOpassignvariableop_4_conv3_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_5AssignVariableOpassignvariableop_5_conv3_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_6AssignVariableOpassignvariableop_6_conv4_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_7AssignVariableOpassignvariableop_7_conv4_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_8AssignVariableOp*assignvariableop_8_first_base_dense_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_9AssignVariableOp(assignvariableop_9_first_base_dense_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_10AssignVariableOp,assignvariableop_10_second_base_dense_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_11AssignVariableOp*assignvariableop_11_second_base_dense_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_12AssignVariableOp+assignvariableop_12_third_base_dense_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_13AssignVariableOp)assignvariableop_13_third_base_dense_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0	*
_output_shapes
:С
AssignVariableOp_14AssignVariableOp assignvariableop_14_rmsprop_iterIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_15AssignVariableOp!assignvariableop_15_rmsprop_decayIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_16AssignVariableOp)assignvariableop_16_rmsprop_learning_rateIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_17AssignVariableOp$assignvariableop_17_rmsprop_momentumIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_18AssignVariableOpassignvariableop_18_rmsprop_rhoIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_19AssignVariableOpassignvariableop_19_totalIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_20AssignVariableOpassignvariableop_20_countIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_21AssignVariableOp,assignvariableop_21_rmsprop_conv1_kernel_rmsIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_22AssignVariableOp*assignvariableop_22_rmsprop_conv1_bias_rmsIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_23AssignVariableOp,assignvariableop_23_rmsprop_conv2_kernel_rmsIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_24AssignVariableOp*assignvariableop_24_rmsprop_conv2_bias_rmsIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_25AssignVariableOp,assignvariableop_25_rmsprop_conv3_kernel_rmsIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_26AssignVariableOp*assignvariableop_26_rmsprop_conv3_bias_rmsIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_27AssignVariableOp,assignvariableop_27_rmsprop_conv4_kernel_rmsIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_28AssignVariableOp*assignvariableop_28_rmsprop_conv4_bias_rmsIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:и
AssignVariableOp_29AssignVariableOp7assignvariableop_29_rmsprop_first_base_dense_kernel_rmsIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:ж
AssignVariableOp_30AssignVariableOp5assignvariableop_30_rmsprop_first_base_dense_bias_rmsIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_31AssignVariableOp8assignvariableop_31_rmsprop_second_base_dense_kernel_rmsIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:з
AssignVariableOp_32AssignVariableOp6assignvariableop_32_rmsprop_second_base_dense_bias_rmsIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:и
AssignVariableOp_33AssignVariableOp7assignvariableop_33_rmsprop_third_base_dense_kernel_rmsIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:ж
AssignVariableOp_34AssignVariableOp5assignvariableop_34_rmsprop_third_base_dense_bias_rmsIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ╤
Identity_35Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_36IdentityIdentity_35:output:0^NoOp_1*
T0*
_output_shapes
: ╛
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_36Identity_36:output:0*[
_input_shapesJ
H: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342(
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
_user_specified_namefile_prefix
М
`
D__inference_maxpool2_layer_call_and_return_conditional_losses_134270

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
о
J
.__inference_first_dropout_layer_call_fn_136100

inputs
identity╕
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_first_dropout_layer_call_and_return_conditional_losses_134406a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
н
E
)__inference_maxpool1_layer_call_fn_135969

inputs
identity╒
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_maxpool1_layer_call_and_return_conditional_losses_134258Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╥
_
C__inference_reshape_layer_call_and_return_conditional_losses_134879

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :й
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:l
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:         `
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
М
`
D__inference_maxpool3_layer_call_and_return_conditional_losses_136034

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ы
Э
&__inference_conv3_layer_call_fn_136013

inputs"
unknown:@А
	unknown_0:	А
identityИвStatefulPartitionedCallт
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_conv3_layer_call_and_return_conditional_losses_134351x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
В
h
/__inference_second_dropout_layer_call_fn_136152

inputs
identityИвStatefulPartitionedCall╔
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_second_dropout_layer_call_and_return_conditional_losses_134511p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
ч▄
╒
C__inference_model_1_layer_call_and_return_conditional_losses_135668
inputs_0
inputs_1D
*model_conv1_conv2d_readvariableop_resource: 9
+model_conv1_biasadd_readvariableop_resource: D
*model_conv2_conv2d_readvariableop_resource: @9
+model_conv2_biasadd_readvariableop_resource:@E
*model_conv3_conv2d_readvariableop_resource:@А:
+model_conv3_biasadd_readvariableop_resource:	АF
*model_conv4_conv2d_readvariableop_resource:АА:
+model_conv4_biasadd_readvariableop_resource:	АI
5model_first_base_dense_matmul_readvariableop_resource:
ААE
6model_first_base_dense_biasadd_readvariableop_resource:	АJ
6model_second_base_dense_matmul_readvariableop_resource:
ААF
7model_second_base_dense_biasadd_readvariableop_resource:	АI
5model_third_base_dense_matmul_readvariableop_resource:
ААE
6model_third_base_dense_biasadd_readvariableop_resource:	А
identityИв"model/conv1/BiasAdd/ReadVariableOpв$model/conv1/BiasAdd_1/ReadVariableOpв!model/conv1/Conv2D/ReadVariableOpв#model/conv1/Conv2D_1/ReadVariableOpв"model/conv2/BiasAdd/ReadVariableOpв$model/conv2/BiasAdd_1/ReadVariableOpв!model/conv2/Conv2D/ReadVariableOpв#model/conv2/Conv2D_1/ReadVariableOpв"model/conv3/BiasAdd/ReadVariableOpв$model/conv3/BiasAdd_1/ReadVariableOpв!model/conv3/Conv2D/ReadVariableOpв#model/conv3/Conv2D_1/ReadVariableOpв"model/conv4/BiasAdd/ReadVariableOpв$model/conv4/BiasAdd_1/ReadVariableOpв!model/conv4/Conv2D/ReadVariableOpв#model/conv4/Conv2D_1/ReadVariableOpв-model/first_base_dense/BiasAdd/ReadVariableOpв/model/first_base_dense/BiasAdd_1/ReadVariableOpв,model/first_base_dense/MatMul/ReadVariableOpв.model/first_base_dense/MatMul_1/ReadVariableOpв.model/second_base_dense/BiasAdd/ReadVariableOpв0model/second_base_dense/BiasAdd_1/ReadVariableOpв-model/second_base_dense/MatMul/ReadVariableOpв/model/second_base_dense/MatMul_1/ReadVariableOpв-model/third_base_dense/BiasAdd/ReadVariableOpв/model/third_base_dense/BiasAdd_1/ReadVariableOpв,model/third_base_dense/MatMul/ReadVariableOpв.model/third_base_dense/MatMul_1/ReadVariableOpG
reshape_1/ShapeShapeinputs_1*
T0*
_output_shapes
:g
reshape_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
reshape_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
reshape_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Г
reshape_1/strided_sliceStridedSlicereshape_1/Shape:output:0&reshape_1/strided_slice/stack:output:0(reshape_1/strided_slice/stack_1:output:0(reshape_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
reshape_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :[
reshape_1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :[
reshape_1/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :█
reshape_1/Reshape/shapePack reshape_1/strided_slice:output:0"reshape_1/Reshape/shape/1:output:0"reshape_1/Reshape/shape/2:output:0"reshape_1/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:В
reshape_1/ReshapeReshapeinputs_1 reshape_1/Reshape/shape:output:0*
T0*/
_output_shapes
:         E
reshape/ShapeShapeinputs_0*
T0*
_output_shapes
:e
reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:∙
reshape/strided_sliceStridedSlicereshape/Shape:output:0$reshape/strided_slice/stack:output:0&reshape/strided_slice/stack_1:output:0&reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Y
reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Y
reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :╤
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0 reshape/Reshape/shape/2:output:0 reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:~
reshape/ReshapeReshapeinputs_0reshape/Reshape/shape:output:0*
T0*/
_output_shapes
:         Ф
!model/conv1/Conv2D/ReadVariableOpReadVariableOp*model_conv1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0├
model/conv1/Conv2DConv2Dreshape/Reshape:output:0)model/conv1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:          *
paddingSAME*
strides
К
"model/conv1/BiasAdd/ReadVariableOpReadVariableOp+model_conv1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0б
model/conv1/BiasAddBiasAddmodel/conv1/Conv2D:output:0*model/conv1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          p
model/conv1/ReluRelumodel/conv1/BiasAdd:output:0*
T0*/
_output_shapes
:          о
model/maxpool1/MaxPoolMaxPoolmodel/conv1/Relu:activations:0*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides
Ф
!model/conv2/Conv2D/ReadVariableOpReadVariableOp*model_conv2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0╩
model/conv2/Conv2DConv2Dmodel/maxpool1/MaxPool:output:0)model/conv2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
К
"model/conv2/BiasAdd/ReadVariableOpReadVariableOp+model_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0б
model/conv2/BiasAddBiasAddmodel/conv2/Conv2D:output:0*model/conv2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @p
model/conv2/ReluRelumodel/conv2/BiasAdd:output:0*
T0*/
_output_shapes
:         @о
model/maxpool2/MaxPoolMaxPoolmodel/conv2/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
Х
!model/conv3/Conv2D/ReadVariableOpReadVariableOp*model_conv3_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0╦
model/conv3/Conv2DConv2Dmodel/maxpool2/MaxPool:output:0)model/conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Л
"model/conv3/BiasAdd/ReadVariableOpReadVariableOp+model_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0в
model/conv3/BiasAddBiasAddmodel/conv3/Conv2D:output:0*model/conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аq
model/conv3/ReluRelumodel/conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         Ап
model/maxpool3/MaxPoolMaxPoolmodel/conv3/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
Ц
!model/conv4/Conv2D/ReadVariableOpReadVariableOp*model_conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0╦
model/conv4/Conv2DConv2Dmodel/maxpool3/MaxPool:output:0)model/conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Л
"model/conv4/BiasAdd/ReadVariableOpReadVariableOp+model_conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0в
model/conv4/BiasAddBiasAddmodel/conv4/Conv2D:output:0*model/conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аq
model/conv4/ReluRelumodel/conv4/BiasAdd:output:0*
T0*0
_output_shapes
:         Ап
model/maxpool4/MaxPoolMaxPoolmodel/conv4/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
j
model/flatten_input/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ю
model/flatten_input/ReshapeReshapemodel/maxpool4/MaxPool:output:0"model/flatten_input/Const:output:0*
T0*(
_output_shapes
:         Ад
,model/first_base_dense/MatMul/ReadVariableOpReadVariableOp5model_first_base_dense_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0╢
model/first_base_dense/MatMulMatMul$model/flatten_input/Reshape:output:04model/first_base_dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аб
-model/first_base_dense/BiasAdd/ReadVariableOpReadVariableOp6model_first_base_dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╝
model/first_base_dense/BiasAddBiasAdd'model/first_base_dense/MatMul:product:05model/first_base_dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А
model/first_base_dense/ReluRelu'model/first_base_dense/BiasAdd:output:0*
T0*(
_output_shapes
:         Аf
!model/first_dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?░
model/first_dropout/dropout/MulMul)model/first_base_dense/Relu:activations:0*model/first_dropout/dropout/Const:output:0*
T0*(
_output_shapes
:         Аz
!model/first_dropout/dropout/ShapeShape)model/first_base_dense/Relu:activations:0*
T0*
_output_shapes
:╡
8model/first_dropout/dropout/random_uniform/RandomUniformRandomUniform*model/first_dropout/dropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0o
*model/first_dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=у
(model/first_dropout/dropout/GreaterEqualGreaterEqualAmodel/first_dropout/dropout/random_uniform/RandomUniform:output:03model/first_dropout/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         АШ
 model/first_dropout/dropout/CastCast,model/first_dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         Аж
!model/first_dropout/dropout/Mul_1Mul#model/first_dropout/dropout/Mul:z:0$model/first_dropout/dropout/Cast:y:0*
T0*(
_output_shapes
:         Аж
-model/second_base_dense/MatMul/ReadVariableOpReadVariableOp6model_second_base_dense_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0╣
model/second_base_dense/MatMulMatMul%model/first_dropout/dropout/Mul_1:z:05model/second_base_dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аг
.model/second_base_dense/BiasAdd/ReadVariableOpReadVariableOp7model_second_base_dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0┐
model/second_base_dense/BiasAddBiasAdd(model/second_base_dense/MatMul:product:06model/second_base_dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АБ
model/second_base_dense/ReluRelu(model/second_base_dense/BiasAdd:output:0*
T0*(
_output_shapes
:         Аg
"model/second_dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?│
 model/second_dropout/dropout/MulMul*model/second_base_dense/Relu:activations:0+model/second_dropout/dropout/Const:output:0*
T0*(
_output_shapes
:         А|
"model/second_dropout/dropout/ShapeShape*model/second_base_dense/Relu:activations:0*
T0*
_output_shapes
:╖
9model/second_dropout/dropout/random_uniform/RandomUniformRandomUniform+model/second_dropout/dropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0p
+model/second_dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=ц
)model/second_dropout/dropout/GreaterEqualGreaterEqualBmodel/second_dropout/dropout/random_uniform/RandomUniform:output:04model/second_dropout/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         АЪ
!model/second_dropout/dropout/CastCast-model/second_dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         Ай
"model/second_dropout/dropout/Mul_1Mul$model/second_dropout/dropout/Mul:z:0%model/second_dropout/dropout/Cast:y:0*
T0*(
_output_shapes
:         Ад
,model/third_base_dense/MatMul/ReadVariableOpReadVariableOp5model_third_base_dense_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0╕
model/third_base_dense/MatMulMatMul&model/second_dropout/dropout/Mul_1:z:04model/third_base_dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аб
-model/third_base_dense/BiasAdd/ReadVariableOpReadVariableOp6model_third_base_dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╝
model/third_base_dense/BiasAddBiasAdd'model/third_base_dense/MatMul:product:05model/third_base_dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А
model/third_base_dense/ReluRelu'model/third_base_dense/BiasAdd:output:0*
T0*(
_output_shapes
:         АЦ
#model/conv1/Conv2D_1/ReadVariableOpReadVariableOp*model_conv1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0╔
model/conv1/Conv2D_1Conv2Dreshape_1/Reshape:output:0+model/conv1/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:          *
paddingSAME*
strides
М
$model/conv1/BiasAdd_1/ReadVariableOpReadVariableOp+model_conv1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0з
model/conv1/BiasAdd_1BiasAddmodel/conv1/Conv2D_1:output:0,model/conv1/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:          t
model/conv1/Relu_1Relumodel/conv1/BiasAdd_1:output:0*
T0*/
_output_shapes
:          ▓
model/maxpool1/MaxPool_1MaxPool model/conv1/Relu_1:activations:0*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides
Ц
#model/conv2/Conv2D_1/ReadVariableOpReadVariableOp*model_conv2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0╨
model/conv2/Conv2D_1Conv2D!model/maxpool1/MaxPool_1:output:0+model/conv2/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
М
$model/conv2/BiasAdd_1/ReadVariableOpReadVariableOp+model_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0з
model/conv2/BiasAdd_1BiasAddmodel/conv2/Conv2D_1:output:0,model/conv2/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @t
model/conv2/Relu_1Relumodel/conv2/BiasAdd_1:output:0*
T0*/
_output_shapes
:         @▓
model/maxpool2/MaxPool_1MaxPool model/conv2/Relu_1:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
Ч
#model/conv3/Conv2D_1/ReadVariableOpReadVariableOp*model_conv3_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0╤
model/conv3/Conv2D_1Conv2D!model/maxpool2/MaxPool_1:output:0+model/conv3/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Н
$model/conv3/BiasAdd_1/ReadVariableOpReadVariableOp+model_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0и
model/conv3/BiasAdd_1BiasAddmodel/conv3/Conv2D_1:output:0,model/conv3/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аu
model/conv3/Relu_1Relumodel/conv3/BiasAdd_1:output:0*
T0*0
_output_shapes
:         А│
model/maxpool3/MaxPool_1MaxPool model/conv3/Relu_1:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
Ш
#model/conv4/Conv2D_1/ReadVariableOpReadVariableOp*model_conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0╤
model/conv4/Conv2D_1Conv2D!model/maxpool3/MaxPool_1:output:0+model/conv4/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Н
$model/conv4/BiasAdd_1/ReadVariableOpReadVariableOp+model_conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0и
model/conv4/BiasAdd_1BiasAddmodel/conv4/Conv2D_1:output:0,model/conv4/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аu
model/conv4/Relu_1Relumodel/conv4/BiasAdd_1:output:0*
T0*0
_output_shapes
:         А│
model/maxpool4/MaxPool_1MaxPool model/conv4/Relu_1:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
l
model/flatten_input/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       д
model/flatten_input/Reshape_1Reshape!model/maxpool4/MaxPool_1:output:0$model/flatten_input/Const_1:output:0*
T0*(
_output_shapes
:         Аж
.model/first_base_dense/MatMul_1/ReadVariableOpReadVariableOp5model_first_base_dense_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0╝
model/first_base_dense/MatMul_1MatMul&model/flatten_input/Reshape_1:output:06model/first_base_dense/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аг
/model/first_base_dense/BiasAdd_1/ReadVariableOpReadVariableOp6model_first_base_dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0┬
 model/first_base_dense/BiasAdd_1BiasAdd)model/first_base_dense/MatMul_1:product:07model/first_base_dense/BiasAdd_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АГ
model/first_base_dense/Relu_1Relu)model/first_base_dense/BiasAdd_1:output:0*
T0*(
_output_shapes
:         Аh
#model/first_dropout/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?╢
!model/first_dropout/dropout_1/MulMul+model/first_base_dense/Relu_1:activations:0,model/first_dropout/dropout_1/Const:output:0*
T0*(
_output_shapes
:         А~
#model/first_dropout/dropout_1/ShapeShape+model/first_base_dense/Relu_1:activations:0*
T0*
_output_shapes
:╣
:model/first_dropout/dropout_1/random_uniform/RandomUniformRandomUniform,model/first_dropout/dropout_1/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0q
,model/first_dropout/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=щ
*model/first_dropout/dropout_1/GreaterEqualGreaterEqualCmodel/first_dropout/dropout_1/random_uniform/RandomUniform:output:05model/first_dropout/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         АЬ
"model/first_dropout/dropout_1/CastCast.model/first_dropout/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         Ам
#model/first_dropout/dropout_1/Mul_1Mul%model/first_dropout/dropout_1/Mul:z:0&model/first_dropout/dropout_1/Cast:y:0*
T0*(
_output_shapes
:         Аи
/model/second_base_dense/MatMul_1/ReadVariableOpReadVariableOp6model_second_base_dense_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0┐
 model/second_base_dense/MatMul_1MatMul'model/first_dropout/dropout_1/Mul_1:z:07model/second_base_dense/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ае
0model/second_base_dense/BiasAdd_1/ReadVariableOpReadVariableOp7model_second_base_dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0┼
!model/second_base_dense/BiasAdd_1BiasAdd*model/second_base_dense/MatMul_1:product:08model/second_base_dense/BiasAdd_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АЕ
model/second_base_dense/Relu_1Relu*model/second_base_dense/BiasAdd_1:output:0*
T0*(
_output_shapes
:         Аi
$model/second_dropout/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?╣
"model/second_dropout/dropout_1/MulMul,model/second_base_dense/Relu_1:activations:0-model/second_dropout/dropout_1/Const:output:0*
T0*(
_output_shapes
:         АА
$model/second_dropout/dropout_1/ShapeShape,model/second_base_dense/Relu_1:activations:0*
T0*
_output_shapes
:╗
;model/second_dropout/dropout_1/random_uniform/RandomUniformRandomUniform-model/second_dropout/dropout_1/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0r
-model/second_dropout/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=ь
+model/second_dropout/dropout_1/GreaterEqualGreaterEqualDmodel/second_dropout/dropout_1/random_uniform/RandomUniform:output:06model/second_dropout/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         АЮ
#model/second_dropout/dropout_1/CastCast/model/second_dropout/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         Ап
$model/second_dropout/dropout_1/Mul_1Mul&model/second_dropout/dropout_1/Mul:z:0'model/second_dropout/dropout_1/Cast:y:0*
T0*(
_output_shapes
:         Аж
.model/third_base_dense/MatMul_1/ReadVariableOpReadVariableOp5model_third_base_dense_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0╛
model/third_base_dense/MatMul_1MatMul(model/second_dropout/dropout_1/Mul_1:z:06model/third_base_dense/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аг
/model/third_base_dense/BiasAdd_1/ReadVariableOpReadVariableOp6model_third_base_dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0┬
 model/third_base_dense/BiasAdd_1BiasAdd)model/third_base_dense/MatMul_1:product:07model/third_base_dense/BiasAdd_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АГ
model/third_base_dense/Relu_1Relu)model/third_base_dense/BiasAdd_1:output:0*
T0*(
_output_shapes
:         Ав
output_layer/subSub)model/third_base_dense/Relu:activations:0+model/third_base_dense/Relu_1:activations:0*
T0*(
_output_shapes
:         Аf
output_layer/SquareSquareoutput_layer/sub:z:0*
T0*(
_output_shapes
:         Аd
"output_layer/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :а
output_layer/SumSumoutput_layer/Square:y:0+output_layer/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims([
output_layer/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Х┐╓3Н
output_layer/MaximumMaximumoutput_layer/Sum:output:0output_layer/Maximum/y:output:0*
T0*'
_output_shapes
:         e
output_layer/SqrtSqrtoutput_layer/Maximum:z:0*
T0*'
_output_shapes
:         d
IdentityIdentityoutput_layer/Sqrt:y:0^NoOp*
T0*'
_output_shapes
:         ш	
NoOpNoOp#^model/conv1/BiasAdd/ReadVariableOp%^model/conv1/BiasAdd_1/ReadVariableOp"^model/conv1/Conv2D/ReadVariableOp$^model/conv1/Conv2D_1/ReadVariableOp#^model/conv2/BiasAdd/ReadVariableOp%^model/conv2/BiasAdd_1/ReadVariableOp"^model/conv2/Conv2D/ReadVariableOp$^model/conv2/Conv2D_1/ReadVariableOp#^model/conv3/BiasAdd/ReadVariableOp%^model/conv3/BiasAdd_1/ReadVariableOp"^model/conv3/Conv2D/ReadVariableOp$^model/conv3/Conv2D_1/ReadVariableOp#^model/conv4/BiasAdd/ReadVariableOp%^model/conv4/BiasAdd_1/ReadVariableOp"^model/conv4/Conv2D/ReadVariableOp$^model/conv4/Conv2D_1/ReadVariableOp.^model/first_base_dense/BiasAdd/ReadVariableOp0^model/first_base_dense/BiasAdd_1/ReadVariableOp-^model/first_base_dense/MatMul/ReadVariableOp/^model/first_base_dense/MatMul_1/ReadVariableOp/^model/second_base_dense/BiasAdd/ReadVariableOp1^model/second_base_dense/BiasAdd_1/ReadVariableOp.^model/second_base_dense/MatMul/ReadVariableOp0^model/second_base_dense/MatMul_1/ReadVariableOp.^model/third_base_dense/BiasAdd/ReadVariableOp0^model/third_base_dense/BiasAdd_1/ReadVariableOp-^model/third_base_dense/MatMul/ReadVariableOp/^model/third_base_dense/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:         :         : : : : : : : : : : : : : : 2H
"model/conv1/BiasAdd/ReadVariableOp"model/conv1/BiasAdd/ReadVariableOp2L
$model/conv1/BiasAdd_1/ReadVariableOp$model/conv1/BiasAdd_1/ReadVariableOp2F
!model/conv1/Conv2D/ReadVariableOp!model/conv1/Conv2D/ReadVariableOp2J
#model/conv1/Conv2D_1/ReadVariableOp#model/conv1/Conv2D_1/ReadVariableOp2H
"model/conv2/BiasAdd/ReadVariableOp"model/conv2/BiasAdd/ReadVariableOp2L
$model/conv2/BiasAdd_1/ReadVariableOp$model/conv2/BiasAdd_1/ReadVariableOp2F
!model/conv2/Conv2D/ReadVariableOp!model/conv2/Conv2D/ReadVariableOp2J
#model/conv2/Conv2D_1/ReadVariableOp#model/conv2/Conv2D_1/ReadVariableOp2H
"model/conv3/BiasAdd/ReadVariableOp"model/conv3/BiasAdd/ReadVariableOp2L
$model/conv3/BiasAdd_1/ReadVariableOp$model/conv3/BiasAdd_1/ReadVariableOp2F
!model/conv3/Conv2D/ReadVariableOp!model/conv3/Conv2D/ReadVariableOp2J
#model/conv3/Conv2D_1/ReadVariableOp#model/conv3/Conv2D_1/ReadVariableOp2H
"model/conv4/BiasAdd/ReadVariableOp"model/conv4/BiasAdd/ReadVariableOp2L
$model/conv4/BiasAdd_1/ReadVariableOp$model/conv4/BiasAdd_1/ReadVariableOp2F
!model/conv4/Conv2D/ReadVariableOp!model/conv4/Conv2D/ReadVariableOp2J
#model/conv4/Conv2D_1/ReadVariableOp#model/conv4/Conv2D_1/ReadVariableOp2^
-model/first_base_dense/BiasAdd/ReadVariableOp-model/first_base_dense/BiasAdd/ReadVariableOp2b
/model/first_base_dense/BiasAdd_1/ReadVariableOp/model/first_base_dense/BiasAdd_1/ReadVariableOp2\
,model/first_base_dense/MatMul/ReadVariableOp,model/first_base_dense/MatMul/ReadVariableOp2`
.model/first_base_dense/MatMul_1/ReadVariableOp.model/first_base_dense/MatMul_1/ReadVariableOp2`
.model/second_base_dense/BiasAdd/ReadVariableOp.model/second_base_dense/BiasAdd/ReadVariableOp2d
0model/second_base_dense/BiasAdd_1/ReadVariableOp0model/second_base_dense/BiasAdd_1/ReadVariableOp2^
-model/second_base_dense/MatMul/ReadVariableOp-model/second_base_dense/MatMul/ReadVariableOp2b
/model/second_base_dense/MatMul_1/ReadVariableOp/model/second_base_dense/MatMul_1/ReadVariableOp2^
-model/third_base_dense/BiasAdd/ReadVariableOp-model/third_base_dense/BiasAdd/ReadVariableOp2b
/model/third_base_dense/BiasAdd_1/ReadVariableOp/model/third_base_dense/BiasAdd_1/ReadVariableOp2\
,model/third_base_dense/MatMul/ReadVariableOp,model/third_base_dense/MatMul/ReadVariableOp2`
.model/third_base_dense/MatMul_1/ReadVariableOp.model/third_base_dense/MatMul_1/ReadVariableOp:U Q
+
_output_shapes
:         
"
_user_specified_name
inputs/0:UQ
+
_output_shapes
:         
"
_user_specified_name
inputs/1
И
№
A__inference_conv3_layer_call_and_return_conditional_losses_136024

inputs9
conv2d_readvariableop_resource:@А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
н
E
)__inference_maxpool3_layer_call_fn_136029

inputs
identity╒
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_maxpool3_layer_call_and_return_conditional_losses_134282Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
▄
б
1__inference_third_base_dense_layer_call_fn_136178

inputs
unknown:
АА
	unknown_0:	А
identityИвStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_third_base_dense_layer_call_and_return_conditional_losses_134443p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
 	
h
I__inference_first_dropout_layer_call_and_return_conditional_losses_136122

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         АC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Н
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=з
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         Аp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         Аj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:         АZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Т>
═
A__inference_model_layer_call_and_return_conditional_losses_134840

base_input&
conv1_134797: 
conv1_134799: &
conv2_134803: @
conv2_134805:@'
conv3_134809:@А
conv3_134811:	А(
conv4_134815:АА
conv4_134817:	А+
first_base_dense_134822:
АА&
first_base_dense_134824:	А,
second_base_dense_134828:
АА'
second_base_dense_134830:	А+
third_base_dense_134834:
АА&
third_base_dense_134836:	А
identityИвconv1/StatefulPartitionedCallвconv2/StatefulPartitionedCallвconv3/StatefulPartitionedCallвconv4/StatefulPartitionedCallв(first_base_dense/StatefulPartitionedCallв%first_dropout/StatefulPartitionedCallв)second_base_dense/StatefulPartitionedCallв&second_dropout/StatefulPartitionedCallв(third_base_dense/StatefulPartitionedCallє
conv1/StatefulPartitionedCallStatefulPartitionedCall
base_inputconv1_134797conv1_134799*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_conv1_layer_call_and_return_conditional_losses_134315у
maxpool1/PartitionedCallPartitionedCall&conv1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_maxpool1_layer_call_and_return_conditional_losses_134258К
conv2/StatefulPartitionedCallStatefulPartitionedCall!maxpool1/PartitionedCall:output:0conv2_134803conv2_134805*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_conv2_layer_call_and_return_conditional_losses_134333у
maxpool2/PartitionedCallPartitionedCall&conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_maxpool2_layer_call_and_return_conditional_losses_134270Л
conv3/StatefulPartitionedCallStatefulPartitionedCall!maxpool2/PartitionedCall:output:0conv3_134809conv3_134811*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_conv3_layer_call_and_return_conditional_losses_134351ф
maxpool3/PartitionedCallPartitionedCall&conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_maxpool3_layer_call_and_return_conditional_losses_134282Л
conv4/StatefulPartitionedCallStatefulPartitionedCall!maxpool3/PartitionedCall:output:0conv4_134815conv4_134817*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_conv4_layer_call_and_return_conditional_losses_134369ф
maxpool4/PartitionedCallPartitionedCall&conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_maxpool4_layer_call_and_return_conditional_losses_134294с
flatten_input/PartitionedCallPartitionedCall!maxpool4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_flatten_input_layer_call_and_return_conditional_losses_134382┤
(first_base_dense/StatefulPartitionedCallStatefulPartitionedCall&flatten_input/PartitionedCall:output:0first_base_dense_134822first_base_dense_134824*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_first_base_dense_layer_call_and_return_conditional_losses_134395Б
%first_dropout/StatefulPartitionedCallStatefulPartitionedCall1first_base_dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_first_dropout_layer_call_and_return_conditional_losses_134544└
)second_base_dense/StatefulPartitionedCallStatefulPartitionedCall.first_dropout/StatefulPartitionedCall:output:0second_base_dense_134828second_base_dense_134830*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *V
fQRO
M__inference_second_base_dense_layer_call_and_return_conditional_losses_134419м
&second_dropout/StatefulPartitionedCallStatefulPartitionedCall2second_base_dense/StatefulPartitionedCall:output:0&^first_dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_second_dropout_layer_call_and_return_conditional_losses_134511╜
(third_base_dense/StatefulPartitionedCallStatefulPartitionedCall/second_dropout/StatefulPartitionedCall:output:0third_base_dense_134834third_base_dense_134836*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_third_base_dense_layer_call_and_return_conditional_losses_134443Б
IdentityIdentity1third_base_dense/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         АЩ
NoOpNoOp^conv1/StatefulPartitionedCall^conv2/StatefulPartitionedCall^conv3/StatefulPartitionedCall^conv4/StatefulPartitionedCall)^first_base_dense/StatefulPartitionedCall&^first_dropout/StatefulPartitionedCall*^second_base_dense/StatefulPartitionedCall'^second_dropout/StatefulPartitionedCall)^third_base_dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:         : : : : : : : : : : : : : : 2>
conv1/StatefulPartitionedCallconv1/StatefulPartitionedCall2>
conv2/StatefulPartitionedCallconv2/StatefulPartitionedCall2>
conv3/StatefulPartitionedCallconv3/StatefulPartitionedCall2>
conv4/StatefulPartitionedCallconv4/StatefulPartitionedCall2T
(first_base_dense/StatefulPartitionedCall(first_base_dense/StatefulPartitionedCall2N
%first_dropout/StatefulPartitionedCall%first_dropout/StatefulPartitionedCall2V
)second_base_dense/StatefulPartitionedCall)second_base_dense/StatefulPartitionedCall2P
&second_dropout/StatefulPartitionedCall&second_dropout/StatefulPartitionedCall2T
(third_base_dense/StatefulPartitionedCall(third_base_dense/StatefulPartitionedCall:[ W
/
_output_shapes
:         
$
_user_specified_name
base_input
ъ:
°
A__inference_model_layer_call_and_return_conditional_losses_134450

inputs&
conv1_134316: 
conv1_134318: &
conv2_134334: @
conv2_134336:@'
conv3_134352:@А
conv3_134354:	А(
conv4_134370:АА
conv4_134372:	А+
first_base_dense_134396:
АА&
first_base_dense_134398:	А,
second_base_dense_134420:
АА'
second_base_dense_134422:	А+
third_base_dense_134444:
АА&
third_base_dense_134446:	А
identityИвconv1/StatefulPartitionedCallвconv2/StatefulPartitionedCallвconv3/StatefulPartitionedCallвconv4/StatefulPartitionedCallв(first_base_dense/StatefulPartitionedCallв)second_base_dense/StatefulPartitionedCallв(third_base_dense/StatefulPartitionedCallя
conv1/StatefulPartitionedCallStatefulPartitionedCallinputsconv1_134316conv1_134318*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_conv1_layer_call_and_return_conditional_losses_134315у
maxpool1/PartitionedCallPartitionedCall&conv1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_maxpool1_layer_call_and_return_conditional_losses_134258К
conv2/StatefulPartitionedCallStatefulPartitionedCall!maxpool1/PartitionedCall:output:0conv2_134334conv2_134336*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_conv2_layer_call_and_return_conditional_losses_134333у
maxpool2/PartitionedCallPartitionedCall&conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_maxpool2_layer_call_and_return_conditional_losses_134270Л
conv3/StatefulPartitionedCallStatefulPartitionedCall!maxpool2/PartitionedCall:output:0conv3_134352conv3_134354*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_conv3_layer_call_and_return_conditional_losses_134351ф
maxpool3/PartitionedCallPartitionedCall&conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_maxpool3_layer_call_and_return_conditional_losses_134282Л
conv4/StatefulPartitionedCallStatefulPartitionedCall!maxpool3/PartitionedCall:output:0conv4_134370conv4_134372*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_conv4_layer_call_and_return_conditional_losses_134369ф
maxpool4/PartitionedCallPartitionedCall&conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_maxpool4_layer_call_and_return_conditional_losses_134294с
flatten_input/PartitionedCallPartitionedCall!maxpool4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_flatten_input_layer_call_and_return_conditional_losses_134382┤
(first_base_dense/StatefulPartitionedCallStatefulPartitionedCall&flatten_input/PartitionedCall:output:0first_base_dense_134396first_base_dense_134398*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_first_base_dense_layer_call_and_return_conditional_losses_134395ё
first_dropout/PartitionedCallPartitionedCall1first_base_dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_first_dropout_layer_call_and_return_conditional_losses_134406╕
)second_base_dense/StatefulPartitionedCallStatefulPartitionedCall&first_dropout/PartitionedCall:output:0second_base_dense_134420second_base_dense_134422*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *V
fQRO
M__inference_second_base_dense_layer_call_and_return_conditional_losses_134419Ї
second_dropout/PartitionedCallPartitionedCall2second_base_dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_second_dropout_layer_call_and_return_conditional_losses_134430╡
(third_base_dense/StatefulPartitionedCallStatefulPartitionedCall'second_dropout/PartitionedCall:output:0third_base_dense_134444third_base_dense_134446*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_third_base_dense_layer_call_and_return_conditional_losses_134443Б
IdentityIdentity1third_base_dense/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А╚
NoOpNoOp^conv1/StatefulPartitionedCall^conv2/StatefulPartitionedCall^conv3/StatefulPartitionedCall^conv4/StatefulPartitionedCall)^first_base_dense/StatefulPartitionedCall*^second_base_dense/StatefulPartitionedCall)^third_base_dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:         : : : : : : : : : : : : : : 2>
conv1/StatefulPartitionedCallconv1/StatefulPartitionedCall2>
conv2/StatefulPartitionedCallconv2/StatefulPartitionedCall2>
conv3/StatefulPartitionedCallconv3/StatefulPartitionedCall2>
conv4/StatefulPartitionedCallconv4/StatefulPartitionedCall2T
(first_base_dense/StatefulPartitionedCall(first_base_dense/StatefulPartitionedCall2V
)second_base_dense/StatefulPartitionedCall)second_base_dense/StatefulPartitionedCall2T
(third_base_dense/StatefulPartitionedCall(third_base_dense/StatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
╥
_
C__inference_reshape_layer_call_and_return_conditional_losses_135687

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :й
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:l
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:         `
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
И╣
╒
C__inference_model_1_layer_call_and_return_conditional_losses_135508
inputs_0
inputs_1D
*model_conv1_conv2d_readvariableop_resource: 9
+model_conv1_biasadd_readvariableop_resource: D
*model_conv2_conv2d_readvariableop_resource: @9
+model_conv2_biasadd_readvariableop_resource:@E
*model_conv3_conv2d_readvariableop_resource:@А:
+model_conv3_biasadd_readvariableop_resource:	АF
*model_conv4_conv2d_readvariableop_resource:АА:
+model_conv4_biasadd_readvariableop_resource:	АI
5model_first_base_dense_matmul_readvariableop_resource:
ААE
6model_first_base_dense_biasadd_readvariableop_resource:	АJ
6model_second_base_dense_matmul_readvariableop_resource:
ААF
7model_second_base_dense_biasadd_readvariableop_resource:	АI
5model_third_base_dense_matmul_readvariableop_resource:
ААE
6model_third_base_dense_biasadd_readvariableop_resource:	А
identityИв"model/conv1/BiasAdd/ReadVariableOpв$model/conv1/BiasAdd_1/ReadVariableOpв!model/conv1/Conv2D/ReadVariableOpв#model/conv1/Conv2D_1/ReadVariableOpв"model/conv2/BiasAdd/ReadVariableOpв$model/conv2/BiasAdd_1/ReadVariableOpв!model/conv2/Conv2D/ReadVariableOpв#model/conv2/Conv2D_1/ReadVariableOpв"model/conv3/BiasAdd/ReadVariableOpв$model/conv3/BiasAdd_1/ReadVariableOpв!model/conv3/Conv2D/ReadVariableOpв#model/conv3/Conv2D_1/ReadVariableOpв"model/conv4/BiasAdd/ReadVariableOpв$model/conv4/BiasAdd_1/ReadVariableOpв!model/conv4/Conv2D/ReadVariableOpв#model/conv4/Conv2D_1/ReadVariableOpв-model/first_base_dense/BiasAdd/ReadVariableOpв/model/first_base_dense/BiasAdd_1/ReadVariableOpв,model/first_base_dense/MatMul/ReadVariableOpв.model/first_base_dense/MatMul_1/ReadVariableOpв.model/second_base_dense/BiasAdd/ReadVariableOpв0model/second_base_dense/BiasAdd_1/ReadVariableOpв-model/second_base_dense/MatMul/ReadVariableOpв/model/second_base_dense/MatMul_1/ReadVariableOpв-model/third_base_dense/BiasAdd/ReadVariableOpв/model/third_base_dense/BiasAdd_1/ReadVariableOpв,model/third_base_dense/MatMul/ReadVariableOpв.model/third_base_dense/MatMul_1/ReadVariableOpG
reshape_1/ShapeShapeinputs_1*
T0*
_output_shapes
:g
reshape_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
reshape_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
reshape_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Г
reshape_1/strided_sliceStridedSlicereshape_1/Shape:output:0&reshape_1/strided_slice/stack:output:0(reshape_1/strided_slice/stack_1:output:0(reshape_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
reshape_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :[
reshape_1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :[
reshape_1/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :█
reshape_1/Reshape/shapePack reshape_1/strided_slice:output:0"reshape_1/Reshape/shape/1:output:0"reshape_1/Reshape/shape/2:output:0"reshape_1/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:В
reshape_1/ReshapeReshapeinputs_1 reshape_1/Reshape/shape:output:0*
T0*/
_output_shapes
:         E
reshape/ShapeShapeinputs_0*
T0*
_output_shapes
:e
reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:∙
reshape/strided_sliceStridedSlicereshape/Shape:output:0$reshape/strided_slice/stack:output:0&reshape/strided_slice/stack_1:output:0&reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Y
reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Y
reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :╤
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0 reshape/Reshape/shape/2:output:0 reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:~
reshape/ReshapeReshapeinputs_0reshape/Reshape/shape:output:0*
T0*/
_output_shapes
:         Ф
!model/conv1/Conv2D/ReadVariableOpReadVariableOp*model_conv1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0├
model/conv1/Conv2DConv2Dreshape/Reshape:output:0)model/conv1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:          *
paddingSAME*
strides
К
"model/conv1/BiasAdd/ReadVariableOpReadVariableOp+model_conv1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0б
model/conv1/BiasAddBiasAddmodel/conv1/Conv2D:output:0*model/conv1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          p
model/conv1/ReluRelumodel/conv1/BiasAdd:output:0*
T0*/
_output_shapes
:          о
model/maxpool1/MaxPoolMaxPoolmodel/conv1/Relu:activations:0*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides
Ф
!model/conv2/Conv2D/ReadVariableOpReadVariableOp*model_conv2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0╩
model/conv2/Conv2DConv2Dmodel/maxpool1/MaxPool:output:0)model/conv2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
К
"model/conv2/BiasAdd/ReadVariableOpReadVariableOp+model_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0б
model/conv2/BiasAddBiasAddmodel/conv2/Conv2D:output:0*model/conv2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @p
model/conv2/ReluRelumodel/conv2/BiasAdd:output:0*
T0*/
_output_shapes
:         @о
model/maxpool2/MaxPoolMaxPoolmodel/conv2/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
Х
!model/conv3/Conv2D/ReadVariableOpReadVariableOp*model_conv3_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0╦
model/conv3/Conv2DConv2Dmodel/maxpool2/MaxPool:output:0)model/conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Л
"model/conv3/BiasAdd/ReadVariableOpReadVariableOp+model_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0в
model/conv3/BiasAddBiasAddmodel/conv3/Conv2D:output:0*model/conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аq
model/conv3/ReluRelumodel/conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         Ап
model/maxpool3/MaxPoolMaxPoolmodel/conv3/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
Ц
!model/conv4/Conv2D/ReadVariableOpReadVariableOp*model_conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0╦
model/conv4/Conv2DConv2Dmodel/maxpool3/MaxPool:output:0)model/conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Л
"model/conv4/BiasAdd/ReadVariableOpReadVariableOp+model_conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0в
model/conv4/BiasAddBiasAddmodel/conv4/Conv2D:output:0*model/conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аq
model/conv4/ReluRelumodel/conv4/BiasAdd:output:0*
T0*0
_output_shapes
:         Ап
model/maxpool4/MaxPoolMaxPoolmodel/conv4/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
j
model/flatten_input/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ю
model/flatten_input/ReshapeReshapemodel/maxpool4/MaxPool:output:0"model/flatten_input/Const:output:0*
T0*(
_output_shapes
:         Ад
,model/first_base_dense/MatMul/ReadVariableOpReadVariableOp5model_first_base_dense_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0╢
model/first_base_dense/MatMulMatMul$model/flatten_input/Reshape:output:04model/first_base_dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аб
-model/first_base_dense/BiasAdd/ReadVariableOpReadVariableOp6model_first_base_dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╝
model/first_base_dense/BiasAddBiasAdd'model/first_base_dense/MatMul:product:05model/first_base_dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А
model/first_base_dense/ReluRelu'model/first_base_dense/BiasAdd:output:0*
T0*(
_output_shapes
:         АЖ
model/first_dropout/IdentityIdentity)model/first_base_dense/Relu:activations:0*
T0*(
_output_shapes
:         Аж
-model/second_base_dense/MatMul/ReadVariableOpReadVariableOp6model_second_base_dense_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0╣
model/second_base_dense/MatMulMatMul%model/first_dropout/Identity:output:05model/second_base_dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аг
.model/second_base_dense/BiasAdd/ReadVariableOpReadVariableOp7model_second_base_dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0┐
model/second_base_dense/BiasAddBiasAdd(model/second_base_dense/MatMul:product:06model/second_base_dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АБ
model/second_base_dense/ReluRelu(model/second_base_dense/BiasAdd:output:0*
T0*(
_output_shapes
:         АИ
model/second_dropout/IdentityIdentity*model/second_base_dense/Relu:activations:0*
T0*(
_output_shapes
:         Ад
,model/third_base_dense/MatMul/ReadVariableOpReadVariableOp5model_third_base_dense_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0╕
model/third_base_dense/MatMulMatMul&model/second_dropout/Identity:output:04model/third_base_dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аб
-model/third_base_dense/BiasAdd/ReadVariableOpReadVariableOp6model_third_base_dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╝
model/third_base_dense/BiasAddBiasAdd'model/third_base_dense/MatMul:product:05model/third_base_dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А
model/third_base_dense/ReluRelu'model/third_base_dense/BiasAdd:output:0*
T0*(
_output_shapes
:         АЦ
#model/conv1/Conv2D_1/ReadVariableOpReadVariableOp*model_conv1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0╔
model/conv1/Conv2D_1Conv2Dreshape_1/Reshape:output:0+model/conv1/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:          *
paddingSAME*
strides
М
$model/conv1/BiasAdd_1/ReadVariableOpReadVariableOp+model_conv1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0з
model/conv1/BiasAdd_1BiasAddmodel/conv1/Conv2D_1:output:0,model/conv1/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:          t
model/conv1/Relu_1Relumodel/conv1/BiasAdd_1:output:0*
T0*/
_output_shapes
:          ▓
model/maxpool1/MaxPool_1MaxPool model/conv1/Relu_1:activations:0*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides
Ц
#model/conv2/Conv2D_1/ReadVariableOpReadVariableOp*model_conv2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0╨
model/conv2/Conv2D_1Conv2D!model/maxpool1/MaxPool_1:output:0+model/conv2/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
М
$model/conv2/BiasAdd_1/ReadVariableOpReadVariableOp+model_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0з
model/conv2/BiasAdd_1BiasAddmodel/conv2/Conv2D_1:output:0,model/conv2/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @t
model/conv2/Relu_1Relumodel/conv2/BiasAdd_1:output:0*
T0*/
_output_shapes
:         @▓
model/maxpool2/MaxPool_1MaxPool model/conv2/Relu_1:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
Ч
#model/conv3/Conv2D_1/ReadVariableOpReadVariableOp*model_conv3_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0╤
model/conv3/Conv2D_1Conv2D!model/maxpool2/MaxPool_1:output:0+model/conv3/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Н
$model/conv3/BiasAdd_1/ReadVariableOpReadVariableOp+model_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0и
model/conv3/BiasAdd_1BiasAddmodel/conv3/Conv2D_1:output:0,model/conv3/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аu
model/conv3/Relu_1Relumodel/conv3/BiasAdd_1:output:0*
T0*0
_output_shapes
:         А│
model/maxpool3/MaxPool_1MaxPool model/conv3/Relu_1:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
Ш
#model/conv4/Conv2D_1/ReadVariableOpReadVariableOp*model_conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0╤
model/conv4/Conv2D_1Conv2D!model/maxpool3/MaxPool_1:output:0+model/conv4/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Н
$model/conv4/BiasAdd_1/ReadVariableOpReadVariableOp+model_conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0и
model/conv4/BiasAdd_1BiasAddmodel/conv4/Conv2D_1:output:0,model/conv4/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аu
model/conv4/Relu_1Relumodel/conv4/BiasAdd_1:output:0*
T0*0
_output_shapes
:         А│
model/maxpool4/MaxPool_1MaxPool model/conv4/Relu_1:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
l
model/flatten_input/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       д
model/flatten_input/Reshape_1Reshape!model/maxpool4/MaxPool_1:output:0$model/flatten_input/Const_1:output:0*
T0*(
_output_shapes
:         Аж
.model/first_base_dense/MatMul_1/ReadVariableOpReadVariableOp5model_first_base_dense_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0╝
model/first_base_dense/MatMul_1MatMul&model/flatten_input/Reshape_1:output:06model/first_base_dense/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аг
/model/first_base_dense/BiasAdd_1/ReadVariableOpReadVariableOp6model_first_base_dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0┬
 model/first_base_dense/BiasAdd_1BiasAdd)model/first_base_dense/MatMul_1:product:07model/first_base_dense/BiasAdd_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АГ
model/first_base_dense/Relu_1Relu)model/first_base_dense/BiasAdd_1:output:0*
T0*(
_output_shapes
:         АК
model/first_dropout/Identity_1Identity+model/first_base_dense/Relu_1:activations:0*
T0*(
_output_shapes
:         Аи
/model/second_base_dense/MatMul_1/ReadVariableOpReadVariableOp6model_second_base_dense_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0┐
 model/second_base_dense/MatMul_1MatMul'model/first_dropout/Identity_1:output:07model/second_base_dense/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ае
0model/second_base_dense/BiasAdd_1/ReadVariableOpReadVariableOp7model_second_base_dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0┼
!model/second_base_dense/BiasAdd_1BiasAdd*model/second_base_dense/MatMul_1:product:08model/second_base_dense/BiasAdd_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АЕ
model/second_base_dense/Relu_1Relu*model/second_base_dense/BiasAdd_1:output:0*
T0*(
_output_shapes
:         АМ
model/second_dropout/Identity_1Identity,model/second_base_dense/Relu_1:activations:0*
T0*(
_output_shapes
:         Аж
.model/third_base_dense/MatMul_1/ReadVariableOpReadVariableOp5model_third_base_dense_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0╛
model/third_base_dense/MatMul_1MatMul(model/second_dropout/Identity_1:output:06model/third_base_dense/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аг
/model/third_base_dense/BiasAdd_1/ReadVariableOpReadVariableOp6model_third_base_dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0┬
 model/third_base_dense/BiasAdd_1BiasAdd)model/third_base_dense/MatMul_1:product:07model/third_base_dense/BiasAdd_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АГ
model/third_base_dense/Relu_1Relu)model/third_base_dense/BiasAdd_1:output:0*
T0*(
_output_shapes
:         Ав
output_layer/subSub)model/third_base_dense/Relu:activations:0+model/third_base_dense/Relu_1:activations:0*
T0*(
_output_shapes
:         Аf
output_layer/SquareSquareoutput_layer/sub:z:0*
T0*(
_output_shapes
:         Аd
"output_layer/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :а
output_layer/SumSumoutput_layer/Square:y:0+output_layer/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims([
output_layer/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Х┐╓3Н
output_layer/MaximumMaximumoutput_layer/Sum:output:0output_layer/Maximum/y:output:0*
T0*'
_output_shapes
:         e
output_layer/SqrtSqrtoutput_layer/Maximum:z:0*
T0*'
_output_shapes
:         d
IdentityIdentityoutput_layer/Sqrt:y:0^NoOp*
T0*'
_output_shapes
:         ш	
NoOpNoOp#^model/conv1/BiasAdd/ReadVariableOp%^model/conv1/BiasAdd_1/ReadVariableOp"^model/conv1/Conv2D/ReadVariableOp$^model/conv1/Conv2D_1/ReadVariableOp#^model/conv2/BiasAdd/ReadVariableOp%^model/conv2/BiasAdd_1/ReadVariableOp"^model/conv2/Conv2D/ReadVariableOp$^model/conv2/Conv2D_1/ReadVariableOp#^model/conv3/BiasAdd/ReadVariableOp%^model/conv3/BiasAdd_1/ReadVariableOp"^model/conv3/Conv2D/ReadVariableOp$^model/conv3/Conv2D_1/ReadVariableOp#^model/conv4/BiasAdd/ReadVariableOp%^model/conv4/BiasAdd_1/ReadVariableOp"^model/conv4/Conv2D/ReadVariableOp$^model/conv4/Conv2D_1/ReadVariableOp.^model/first_base_dense/BiasAdd/ReadVariableOp0^model/first_base_dense/BiasAdd_1/ReadVariableOp-^model/first_base_dense/MatMul/ReadVariableOp/^model/first_base_dense/MatMul_1/ReadVariableOp/^model/second_base_dense/BiasAdd/ReadVariableOp1^model/second_base_dense/BiasAdd_1/ReadVariableOp.^model/second_base_dense/MatMul/ReadVariableOp0^model/second_base_dense/MatMul_1/ReadVariableOp.^model/third_base_dense/BiasAdd/ReadVariableOp0^model/third_base_dense/BiasAdd_1/ReadVariableOp-^model/third_base_dense/MatMul/ReadVariableOp/^model/third_base_dense/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:         :         : : : : : : : : : : : : : : 2H
"model/conv1/BiasAdd/ReadVariableOp"model/conv1/BiasAdd/ReadVariableOp2L
$model/conv1/BiasAdd_1/ReadVariableOp$model/conv1/BiasAdd_1/ReadVariableOp2F
!model/conv1/Conv2D/ReadVariableOp!model/conv1/Conv2D/ReadVariableOp2J
#model/conv1/Conv2D_1/ReadVariableOp#model/conv1/Conv2D_1/ReadVariableOp2H
"model/conv2/BiasAdd/ReadVariableOp"model/conv2/BiasAdd/ReadVariableOp2L
$model/conv2/BiasAdd_1/ReadVariableOp$model/conv2/BiasAdd_1/ReadVariableOp2F
!model/conv2/Conv2D/ReadVariableOp!model/conv2/Conv2D/ReadVariableOp2J
#model/conv2/Conv2D_1/ReadVariableOp#model/conv2/Conv2D_1/ReadVariableOp2H
"model/conv3/BiasAdd/ReadVariableOp"model/conv3/BiasAdd/ReadVariableOp2L
$model/conv3/BiasAdd_1/ReadVariableOp$model/conv3/BiasAdd_1/ReadVariableOp2F
!model/conv3/Conv2D/ReadVariableOp!model/conv3/Conv2D/ReadVariableOp2J
#model/conv3/Conv2D_1/ReadVariableOp#model/conv3/Conv2D_1/ReadVariableOp2H
"model/conv4/BiasAdd/ReadVariableOp"model/conv4/BiasAdd/ReadVariableOp2L
$model/conv4/BiasAdd_1/ReadVariableOp$model/conv4/BiasAdd_1/ReadVariableOp2F
!model/conv4/Conv2D/ReadVariableOp!model/conv4/Conv2D/ReadVariableOp2J
#model/conv4/Conv2D_1/ReadVariableOp#model/conv4/Conv2D_1/ReadVariableOp2^
-model/first_base_dense/BiasAdd/ReadVariableOp-model/first_base_dense/BiasAdd/ReadVariableOp2b
/model/first_base_dense/BiasAdd_1/ReadVariableOp/model/first_base_dense/BiasAdd_1/ReadVariableOp2\
,model/first_base_dense/MatMul/ReadVariableOp,model/first_base_dense/MatMul/ReadVariableOp2`
.model/first_base_dense/MatMul_1/ReadVariableOp.model/first_base_dense/MatMul_1/ReadVariableOp2`
.model/second_base_dense/BiasAdd/ReadVariableOp.model/second_base_dense/BiasAdd/ReadVariableOp2d
0model/second_base_dense/BiasAdd_1/ReadVariableOp0model/second_base_dense/BiasAdd_1/ReadVariableOp2^
-model/second_base_dense/MatMul/ReadVariableOp-model/second_base_dense/MatMul/ReadVariableOp2b
/model/second_base_dense/MatMul_1/ReadVariableOp/model/second_base_dense/MatMul_1/ReadVariableOp2^
-model/third_base_dense/BiasAdd/ReadVariableOp-model/third_base_dense/BiasAdd/ReadVariableOp2b
/model/third_base_dense/BiasAdd_1/ReadVariableOp/model/third_base_dense/BiasAdd_1/ReadVariableOp2\
,model/third_base_dense/MatMul/ReadVariableOp,model/third_base_dense/MatMul/ReadVariableOp2`
.model/third_base_dense/MatMul_1/ReadVariableOp.model/third_base_dense/MatMul_1/ReadVariableOp:U Q
+
_output_shapes
:         
"
_user_specified_name
inputs/0:UQ
+
_output_shapes
:         
"
_user_specified_name
inputs/1
░

Б
M__inference_second_base_dense_layer_call_and_return_conditional_losses_136142

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
М
`
D__inference_maxpool1_layer_call_and_return_conditional_losses_135974

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
А
·
A__inference_conv2_layer_call_and_return_conditional_losses_134333

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         @w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:          : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
А

i
J__inference_second_dropout_layer_call_and_return_conditional_losses_134511

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         АC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Н
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=з
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         Аp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         Аj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:         АZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
▒
Y
-__inference_output_layer_layer_call_fn_135914
inputs_0
inputs_1
identity├
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_output_layer_layer_call_and_return_conditional_losses_134937`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:         А:         А:R N
(
_output_shapes
:         А
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:         А
"
_user_specified_name
inputs/1
в
Л
C__inference_model_1_layer_call_and_return_conditional_losses_135266

left_input
right_input&
model_135220: 
model_135222: &
model_135224: @
model_135226:@'
model_135228:@А
model_135230:	А(
model_135232:АА
model_135234:	А 
model_135236:
АА
model_135238:	А 
model_135240:
АА
model_135242:	А 
model_135244:
АА
model_135246:	А
identityИвmodel/StatefulPartitionedCallвmodel/StatefulPartitionedCall_1╩
reshape_1/PartitionedCallPartitionedCallright_input*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_reshape_1_layer_call_and_return_conditional_losses_134863┼
reshape/PartitionedCallPartitionedCall
left_input*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_reshape_layer_call_and_return_conditional_losses_134879┬
model/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0model_135220model_135222model_135224model_135226model_135228model_135230model_135232model_135234model_135236model_135238model_135240model_135242model_135244model_135246*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_134684╞
model/StatefulPartitionedCall_1StatefulPartitionedCall"reshape_1/PartitionedCall:output:0model_135220model_135222model_135224model_135226model_135228model_135230model_135232model_135234model_135236model_135238model_135240model_135242model_135244model_135246*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_134684О
output_layer/PartitionedCallPartitionedCall&model/StatefulPartitionedCall:output:0(model/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_output_layer_layer_call_and_return_conditional_losses_134993t
IdentityIdentity%output_layer/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         И
NoOpNoOp^model/StatefulPartitionedCall ^model/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:         :         : : : : : : : : : : : : : : 2>
model/StatefulPartitionedCallmodel/StatefulPartitionedCall2B
model/StatefulPartitionedCall_1model/StatefulPartitionedCall_1:W S
+
_output_shapes
:         
$
_user_specified_name
left_input:XT
+
_output_shapes
:         
%
_user_specified_nameright_input
¤
И
&__inference_model_layer_call_fn_135772

inputs!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А
	unknown_7:
АА
	unknown_8:	А
	unknown_9:
АА

unknown_10:	А

unknown_11:
АА

unknown_12:	А
identityИвStatefulPartitionedCall∙
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_134684p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:         : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
ю
Ю
&__inference_conv4_layer_call_fn_136043

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallт
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_conv4_layer_call_and_return_conditional_losses_134369x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs"┐L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*В
serving_defaultю
E

left_input7
serving_default_left_input:0         
G
right_input8
serving_default_right_input:0         @
output_layer0
StatefulPartitionedCall:0         tensorflow/serving/predict:З▓
╦
layer-0
layer-1
layer-2
layer-3
layer_with_weights-0
layer-4
layer-5
	variables
trainable_variables
	regularization_losses

	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
"
_tf_keras_input_layer
е
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
е
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
е
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
 layer-4
!layer_with_weights-2
!layer-5
"layer-6
#layer_with_weights-3
#layer-7
$layer-8
%layer-9
&layer_with_weights-4
&layer-10
'layer-11
(layer_with_weights-5
(layer-12
)layer-13
*layer_with_weights-6
*layer-14
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses"
_tf_keras_network
е
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses"
_tf_keras_layer
Ж
70
81
92
:3
;4
<5
=6
>7
?8
@9
A10
B11
C12
D13"
trackable_list_wrapper
Ж
70
81
92
:3
;4
<5
=6
>7
?8
@9
A10
B11
C12
D13"
trackable_list_wrapper
 "
trackable_list_wrapper
╩
Enon_trainable_variables

Flayers
Gmetrics
Hlayer_regularization_losses
Ilayer_metrics
	variables
trainable_variables
	regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
╓
Jtrace_0
Ktrace_1
Ltrace_2
Mtrace_32ы
(__inference_model_1_layer_call_fn_134971
(__inference_model_1_layer_call_fn_135342
(__inference_model_1_layer_call_fn_135376
(__inference_model_1_layer_call_fn_135162└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 zJtrace_0zKtrace_1zLtrace_2zMtrace_3
┬
Ntrace_0
Otrace_1
Ptrace_2
Qtrace_32╫
C__inference_model_1_layer_call_and_return_conditional_losses_135508
C__inference_model_1_layer_call_and_return_conditional_losses_135668
C__inference_model_1_layer_call_and_return_conditional_losses_135214
C__inference_model_1_layer_call_and_return_conditional_losses_135266└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 zNtrace_0zOtrace_1zPtrace_2zQtrace_3
▄B┘
!__inference__wrapped_model_134249
left_inputright_input"Ш
С▓Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
·
Riter
	Sdecay
Tlearning_rate
Umomentum
Vrho
7rms┴
8rms┬
9rms├
:rms─
;rms┼
<rms╞
=rms╟
>rms╚
?rms╔
@rms╩
Arms╦
Brms╠
Crms═
Drms╬"
	optimizer
,
Wserving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
н
Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ь
]trace_02╧
(__inference_reshape_layer_call_fn_135673в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z]trace_0
З
^trace_02ъ
C__inference_reshape_layer_call_and_return_conditional_losses_135687в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z^trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
н
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ю
dtrace_02╤
*__inference_reshape_1_layer_call_fn_135692в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zdtrace_0
Й
etrace_02ь
E__inference_reshape_1_layer_call_and_return_conditional_losses_135706в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zetrace_0
"
_tf_keras_input_layer
▌
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j__call__
*k&call_and_return_all_conditional_losses

7kernel
8bias
 l_jit_compiled_convolution_op"
_tf_keras_layer
е
m	variables
ntrainable_variables
oregularization_losses
p	keras_api
q__call__
*r&call_and_return_all_conditional_losses"
_tf_keras_layer
▌
s	variables
ttrainable_variables
uregularization_losses
v	keras_api
w__call__
*x&call_and_return_all_conditional_losses

9kernel
:bias
 y_jit_compiled_convolution_op"
_tf_keras_layer
е
z	variables
{trainable_variables
|regularization_losses
}	keras_api
~__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
ф
А	variables
Бtrainable_variables
Вregularization_losses
Г	keras_api
Д__call__
+Е&call_and_return_all_conditional_losses

;kernel
<bias
!Ж_jit_compiled_convolution_op"
_tf_keras_layer
л
З	variables
Иtrainable_variables
Йregularization_losses
К	keras_api
Л__call__
+М&call_and_return_all_conditional_losses"
_tf_keras_layer
ф
Н	variables
Оtrainable_variables
Пregularization_losses
Р	keras_api
С__call__
+Т&call_and_return_all_conditional_losses

=kernel
>bias
!У_jit_compiled_convolution_op"
_tf_keras_layer
л
Ф	variables
Хtrainable_variables
Цregularization_losses
Ч	keras_api
Ш__call__
+Щ&call_and_return_all_conditional_losses"
_tf_keras_layer
л
Ъ	variables
Ыtrainable_variables
Ьregularization_losses
Э	keras_api
Ю__call__
+Я&call_and_return_all_conditional_losses"
_tf_keras_layer
┴
а	variables
бtrainable_variables
вregularization_losses
г	keras_api
д__call__
+е&call_and_return_all_conditional_losses

?kernel
@bias"
_tf_keras_layer
├
ж	variables
зtrainable_variables
иregularization_losses
й	keras_api
к__call__
+л&call_and_return_all_conditional_losses
м_random_generator"
_tf_keras_layer
┴
н	variables
оtrainable_variables
пregularization_losses
░	keras_api
▒__call__
+▓&call_and_return_all_conditional_losses

Akernel
Bbias"
_tf_keras_layer
├
│	variables
┤trainable_variables
╡regularization_losses
╢	keras_api
╖__call__
+╕&call_and_return_all_conditional_losses
╣_random_generator"
_tf_keras_layer
┴
║	variables
╗trainable_variables
╝regularization_losses
╜	keras_api
╛__call__
+┐&call_and_return_all_conditional_losses

Ckernel
Dbias"
_tf_keras_layer
Ж
70
81
92
:3
;4
<5
=6
>7
?8
@9
A10
B11
C12
D13"
trackable_list_wrapper
Ж
70
81
92
:3
;4
<5
=6
>7
?8
@9
A10
B11
C12
D13"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
└non_trainable_variables
┴layers
┬metrics
 ├layer_regularization_losses
─layer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses"
_generic_user_object
╓
┼trace_0
╞trace_1
╟trace_2
╚trace_32у
&__inference_model_layer_call_fn_134481
&__inference_model_layer_call_fn_135739
&__inference_model_layer_call_fn_135772
&__inference_model_layer_call_fn_134748└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 z┼trace_0z╞trace_1z╟trace_2z╚trace_3
┬
╔trace_0
╩trace_1
╦trace_2
╠trace_32╧
A__inference_model_layer_call_and_return_conditional_losses_135833
A__inference_model_layer_call_and_return_conditional_losses_135908
A__inference_model_layer_call_and_return_conditional_losses_134794
A__inference_model_layer_call_and_return_conditional_losses_134840└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 z╔trace_0z╩trace_1z╦trace_2z╠trace_3
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
═non_trainable_variables
╬layers
╧metrics
 ╨layer_regularization_losses
╤layer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses"
_generic_user_object
▄
╥trace_0
╙trace_12б
-__inference_output_layer_layer_call_fn_135914
-__inference_output_layer_layer_call_fn_135920└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЪ

 
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 z╥trace_0z╙trace_1
Т
╘trace_0
╒trace_12╫
H__inference_output_layer_layer_call_and_return_conditional_losses_135932
H__inference_output_layer_layer_call_and_return_conditional_losses_135944└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЪ

 
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 z╘trace_0z╒trace_1
&:$ 2conv1/kernel
: 2
conv1/bias
&:$ @2conv2/kernel
:@2
conv2/bias
':%@А2conv3/kernel
:А2
conv3/bias
(:&АА2conv4/kernel
:А2
conv4/bias
+:)
АА2first_base_dense/kernel
$:"А2first_base_dense/bias
,:*
АА2second_base_dense/kernel
%:#А2second_base_dense/bias
+:)
АА2third_base_dense/kernel
$:"А2third_base_dense/bias
 "
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
(
╓0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЛBИ
(__inference_model_1_layer_call_fn_134971
left_inputright_input"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ЖBГ
(__inference_model_1_layer_call_fn_135342inputs/0inputs/1"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ЖBГ
(__inference_model_1_layer_call_fn_135376inputs/0inputs/1"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ЛBИ
(__inference_model_1_layer_call_fn_135162
left_inputright_input"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
бBЮ
C__inference_model_1_layer_call_and_return_conditional_losses_135508inputs/0inputs/1"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
бBЮ
C__inference_model_1_layer_call_and_return_conditional_losses_135668inputs/0inputs/1"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
жBг
C__inference_model_1_layer_call_and_return_conditional_losses_135214
left_inputright_input"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
жBг
C__inference_model_1_layer_call_and_return_conditional_losses_135266
left_inputright_input"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
:	 (2RMSprop/iter
: (2RMSprop/decay
: (2RMSprop/learning_rate
: (2RMSprop/momentum
: (2RMSprop/rho
┘B╓
$__inference_signature_wrapper_135308
left_inputright_input"Ф
Н▓Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
▄B┘
(__inference_reshape_layer_call_fn_135673inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ўBЇ
C__inference_reshape_layer_call_and_return_conditional_losses_135687inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
▐B█
*__inference_reshape_1_layer_call_fn_135692inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
∙BЎ
E__inference_reshape_1_layer_call_and_return_conditional_losses_135706inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
70
81"
trackable_list_wrapper
.
70
81"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╫non_trainable_variables
╪layers
┘metrics
 ┌layer_regularization_losses
█layer_metrics
f	variables
gtrainable_variables
hregularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses"
_generic_user_object
ь
▄trace_02═
&__inference_conv1_layer_call_fn_135953в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z▄trace_0
З
▌trace_02ш
A__inference_conv1_layer_call_and_return_conditional_losses_135964в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z▌trace_0
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
▐non_trainable_variables
▀layers
рmetrics
 сlayer_regularization_losses
тlayer_metrics
m	variables
ntrainable_variables
oregularization_losses
q__call__
*r&call_and_return_all_conditional_losses
&r"call_and_return_conditional_losses"
_generic_user_object
я
уtrace_02╨
)__inference_maxpool1_layer_call_fn_135969в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zуtrace_0
К
фtrace_02ы
D__inference_maxpool1_layer_call_and_return_conditional_losses_135974в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zфtrace_0
.
90
:1"
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
хnon_trainable_variables
цlayers
чmetrics
 шlayer_regularization_losses
щlayer_metrics
s	variables
ttrainable_variables
uregularization_losses
w__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses"
_generic_user_object
ь
ъtrace_02═
&__inference_conv2_layer_call_fn_135983в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zъtrace_0
З
ыtrace_02ш
A__inference_conv2_layer_call_and_return_conditional_losses_135994в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zыtrace_0
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
ьnon_trainable_variables
эlayers
юmetrics
 яlayer_regularization_losses
Ёlayer_metrics
z	variables
{trainable_variables
|regularization_losses
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
я
ёtrace_02╨
)__inference_maxpool2_layer_call_fn_135999в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zёtrace_0
К
Єtrace_02ы
D__inference_maxpool2_layer_call_and_return_conditional_losses_136004в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЄtrace_0
.
;0
<1"
trackable_list_wrapper
.
;0
<1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
єnon_trainable_variables
Їlayers
їmetrics
 Ўlayer_regularization_losses
ўlayer_metrics
А	variables
Бtrainable_variables
Вregularization_losses
Д__call__
+Е&call_and_return_all_conditional_losses
'Е"call_and_return_conditional_losses"
_generic_user_object
ь
°trace_02═
&__inference_conv3_layer_call_fn_136013в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z°trace_0
З
∙trace_02ш
A__inference_conv3_layer_call_and_return_conditional_losses_136024в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z∙trace_0
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
·non_trainable_variables
√layers
№metrics
 ¤layer_regularization_losses
■layer_metrics
З	variables
Иtrainable_variables
Йregularization_losses
Л__call__
+М&call_and_return_all_conditional_losses
'М"call_and_return_conditional_losses"
_generic_user_object
я
 trace_02╨
)__inference_maxpool3_layer_call_fn_136029в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z trace_0
К
Аtrace_02ы
D__inference_maxpool3_layer_call_and_return_conditional_losses_136034в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zАtrace_0
.
=0
>1"
trackable_list_wrapper
.
=0
>1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Бnon_trainable_variables
Вlayers
Гmetrics
 Дlayer_regularization_losses
Еlayer_metrics
Н	variables
Оtrainable_variables
Пregularization_losses
С__call__
+Т&call_and_return_all_conditional_losses
'Т"call_and_return_conditional_losses"
_generic_user_object
ь
Жtrace_02═
&__inference_conv4_layer_call_fn_136043в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЖtrace_0
З
Зtrace_02ш
A__inference_conv4_layer_call_and_return_conditional_losses_136054в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЗtrace_0
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Иnon_trainable_variables
Йlayers
Кmetrics
 Лlayer_regularization_losses
Мlayer_metrics
Ф	variables
Хtrainable_variables
Цregularization_losses
Ш__call__
+Щ&call_and_return_all_conditional_losses
'Щ"call_and_return_conditional_losses"
_generic_user_object
я
Нtrace_02╨
)__inference_maxpool4_layer_call_fn_136059в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zНtrace_0
К
Оtrace_02ы
D__inference_maxpool4_layer_call_and_return_conditional_losses_136064в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zОtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Пnon_trainable_variables
Рlayers
Сmetrics
 Тlayer_regularization_losses
Уlayer_metrics
Ъ	variables
Ыtrainable_variables
Ьregularization_losses
Ю__call__
+Я&call_and_return_all_conditional_losses
'Я"call_and_return_conditional_losses"
_generic_user_object
Ї
Фtrace_02╒
.__inference_flatten_input_layer_call_fn_136069в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zФtrace_0
П
Хtrace_02Ё
I__inference_flatten_input_layer_call_and_return_conditional_losses_136075в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zХtrace_0
.
?0
@1"
trackable_list_wrapper
.
?0
@1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Цnon_trainable_variables
Чlayers
Шmetrics
 Щlayer_regularization_losses
Ъlayer_metrics
а	variables
бtrainable_variables
вregularization_losses
д__call__
+е&call_and_return_all_conditional_losses
'е"call_and_return_conditional_losses"
_generic_user_object
ў
Ыtrace_02╪
1__inference_first_base_dense_layer_call_fn_136084в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЫtrace_0
Т
Ьtrace_02є
L__inference_first_base_dense_layer_call_and_return_conditional_losses_136095в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЬtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Эnon_trainable_variables
Юlayers
Яmetrics
 аlayer_regularization_losses
бlayer_metrics
ж	variables
зtrainable_variables
иregularization_losses
к__call__
+л&call_and_return_all_conditional_losses
'л"call_and_return_conditional_losses"
_generic_user_object
╥
вtrace_0
гtrace_12Ч
.__inference_first_dropout_layer_call_fn_136100
.__inference_first_dropout_layer_call_fn_136105┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 zвtrace_0zгtrace_1
И
дtrace_0
еtrace_12═
I__inference_first_dropout_layer_call_and_return_conditional_losses_136110
I__inference_first_dropout_layer_call_and_return_conditional_losses_136122┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 zдtrace_0zеtrace_1
"
_generic_user_object
.
A0
B1"
trackable_list_wrapper
.
A0
B1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
жnon_trainable_variables
зlayers
иmetrics
 йlayer_regularization_losses
кlayer_metrics
н	variables
оtrainable_variables
пregularization_losses
▒__call__
+▓&call_and_return_all_conditional_losses
'▓"call_and_return_conditional_losses"
_generic_user_object
°
лtrace_02┘
2__inference_second_base_dense_layer_call_fn_136131в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zлtrace_0
У
мtrace_02Ї
M__inference_second_base_dense_layer_call_and_return_conditional_losses_136142в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zмtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
нnon_trainable_variables
оlayers
пmetrics
 ░layer_regularization_losses
▒layer_metrics
│	variables
┤trainable_variables
╡regularization_losses
╖__call__
+╕&call_and_return_all_conditional_losses
'╕"call_and_return_conditional_losses"
_generic_user_object
╘
▓trace_0
│trace_12Щ
/__inference_second_dropout_layer_call_fn_136147
/__inference_second_dropout_layer_call_fn_136152┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 z▓trace_0z│trace_1
К
┤trace_0
╡trace_12╧
J__inference_second_dropout_layer_call_and_return_conditional_losses_136157
J__inference_second_dropout_layer_call_and_return_conditional_losses_136169┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 z┤trace_0z╡trace_1
"
_generic_user_object
.
C0
D1"
trackable_list_wrapper
.
C0
D1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╢non_trainable_variables
╖layers
╕metrics
 ╣layer_regularization_losses
║layer_metrics
║	variables
╗trainable_variables
╝regularization_losses
╛__call__
+┐&call_and_return_all_conditional_losses
'┐"call_and_return_conditional_losses"
_generic_user_object
ў
╗trace_02╪
1__inference_third_base_dense_layer_call_fn_136178в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╗trace_0
Т
╝trace_02є
L__inference_third_base_dense_layer_call_and_return_conditional_losses_136189в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╝trace_0
 "
trackable_list_wrapper
О
0
1
2
3
 4
!5
"6
#7
$8
%9
&10
'11
(12
)13
*14"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
№B∙
&__inference_model_layer_call_fn_134481
base_input"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
°Bї
&__inference_model_layer_call_fn_135739inputs"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
°Bї
&__inference_model_layer_call_fn_135772inputs"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
№B∙
&__inference_model_layer_call_fn_134748
base_input"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
УBР
A__inference_model_layer_call_and_return_conditional_losses_135833inputs"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
УBР
A__inference_model_layer_call_and_return_conditional_losses_135908inputs"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ЧBФ
A__inference_model_layer_call_and_return_conditional_losses_134794
base_input"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ЧBФ
A__inference_model_layer_call_and_return_conditional_losses_134840
base_input"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
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
ЛBИ
-__inference_output_layer_layer_call_fn_135914inputs/0inputs/1"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЪ

 
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ЛBИ
-__inference_output_layer_layer_call_fn_135920inputs/0inputs/1"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЪ

 
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
жBг
H__inference_output_layer_layer_call_and_return_conditional_losses_135932inputs/0inputs/1"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЪ

 
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
жBг
H__inference_output_layer_layer_call_and_return_conditional_losses_135944inputs/0inputs/1"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЪ

 
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
R
╜	variables
╛	keras_api

┐total

└count"
_tf_keras_metric
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
┌B╫
&__inference_conv1_layer_call_fn_135953inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
їBЄ
A__inference_conv1_layer_call_and_return_conditional_losses_135964inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
▌B┌
)__inference_maxpool1_layer_call_fn_135969inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
°Bї
D__inference_maxpool1_layer_call_and_return_conditional_losses_135974inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
┌B╫
&__inference_conv2_layer_call_fn_135983inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
їBЄ
A__inference_conv2_layer_call_and_return_conditional_losses_135994inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
▌B┌
)__inference_maxpool2_layer_call_fn_135999inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
°Bї
D__inference_maxpool2_layer_call_and_return_conditional_losses_136004inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
┌B╫
&__inference_conv3_layer_call_fn_136013inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
їBЄ
A__inference_conv3_layer_call_and_return_conditional_losses_136024inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
▌B┌
)__inference_maxpool3_layer_call_fn_136029inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
°Bї
D__inference_maxpool3_layer_call_and_return_conditional_losses_136034inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
┌B╫
&__inference_conv4_layer_call_fn_136043inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
їBЄ
A__inference_conv4_layer_call_and_return_conditional_losses_136054inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
▌B┌
)__inference_maxpool4_layer_call_fn_136059inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
°Bї
D__inference_maxpool4_layer_call_and_return_conditional_losses_136064inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
тB▀
.__inference_flatten_input_layer_call_fn_136069inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
¤B·
I__inference_flatten_input_layer_call_and_return_conditional_losses_136075inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
хBт
1__inference_first_base_dense_layer_call_fn_136084inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
АB¤
L__inference_first_base_dense_layer_call_and_return_conditional_losses_136095inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
ЇBё
.__inference_first_dropout_layer_call_fn_136100inputs"┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ЇBё
.__inference_first_dropout_layer_call_fn_136105inputs"┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ПBМ
I__inference_first_dropout_layer_call_and_return_conditional_losses_136110inputs"┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ПBМ
I__inference_first_dropout_layer_call_and_return_conditional_losses_136122inputs"┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
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
цBу
2__inference_second_base_dense_layer_call_fn_136131inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
БB■
M__inference_second_base_dense_layer_call_and_return_conditional_losses_136142inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
їBЄ
/__inference_second_dropout_layer_call_fn_136147inputs"┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
їBЄ
/__inference_second_dropout_layer_call_fn_136152inputs"┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
РBН
J__inference_second_dropout_layer_call_and_return_conditional_losses_136157inputs"┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
РBН
J__inference_second_dropout_layer_call_and_return_conditional_losses_136169inputs"┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
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
хBт
1__inference_third_base_dense_layer_call_fn_136178inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
АB¤
L__inference_third_base_dense_layer_call_and_return_conditional_losses_136189inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
0
┐0
└1"
trackable_list_wrapper
.
╜	variables"
_generic_user_object
:  (2total
:  (2count
0:. 2RMSprop/conv1/kernel/rms
":  2RMSprop/conv1/bias/rms
0:. @2RMSprop/conv2/kernel/rms
": @2RMSprop/conv2/bias/rms
1:/@А2RMSprop/conv3/kernel/rms
#:!А2RMSprop/conv3/bias/rms
2:0АА2RMSprop/conv4/kernel/rms
#:!А2RMSprop/conv4/bias/rms
5:3
АА2#RMSprop/first_base_dense/kernel/rms
.:,А2!RMSprop/first_base_dense/bias/rms
6:4
АА2$RMSprop/second_base_dense/kernel/rms
/:-А2"RMSprop/second_base_dense/bias/rms
5:3
АА2#RMSprop/third_base_dense/kernel/rms
.:,А2!RMSprop/third_base_dense/bias/rms▄
!__inference__wrapped_model_134249╢789:;<=>?@ABCDgвd
]вZ
XЪU
(К%

left_input         
)К&
right_input         
к ";к8
6
output_layer&К#
output_layer         ▒
A__inference_conv1_layer_call_and_return_conditional_losses_135964l787в4
-в*
(К%
inputs         
к "-в*
#К 
0          
Ъ Й
&__inference_conv1_layer_call_fn_135953_787в4
-в*
(К%
inputs         
к " К          ▒
A__inference_conv2_layer_call_and_return_conditional_losses_135994l9:7в4
-в*
(К%
inputs          
к "-в*
#К 
0         @
Ъ Й
&__inference_conv2_layer_call_fn_135983_9:7в4
-в*
(К%
inputs          
к " К         @▓
A__inference_conv3_layer_call_and_return_conditional_losses_136024m;<7в4
-в*
(К%
inputs         @
к ".в+
$К!
0         А
Ъ К
&__inference_conv3_layer_call_fn_136013`;<7в4
-в*
(К%
inputs         @
к "!К         А│
A__inference_conv4_layer_call_and_return_conditional_losses_136054n=>8в5
.в+
)К&
inputs         А
к ".в+
$К!
0         А
Ъ Л
&__inference_conv4_layer_call_fn_136043a=>8в5
.в+
)К&
inputs         А
к "!К         Ао
L__inference_first_base_dense_layer_call_and_return_conditional_losses_136095^?@0в-
&в#
!К
inputs         А
к "&в#
К
0         А
Ъ Ж
1__inference_first_base_dense_layer_call_fn_136084Q?@0в-
&в#
!К
inputs         А
к "К         Ал
I__inference_first_dropout_layer_call_and_return_conditional_losses_136110^4в1
*в'
!К
inputs         А
p 
к "&в#
К
0         А
Ъ л
I__inference_first_dropout_layer_call_and_return_conditional_losses_136122^4в1
*в'
!К
inputs         А
p
к "&в#
К
0         А
Ъ Г
.__inference_first_dropout_layer_call_fn_136100Q4в1
*в'
!К
inputs         А
p 
к "К         АГ
.__inference_first_dropout_layer_call_fn_136105Q4в1
*в'
!К
inputs         А
p
к "К         Ап
I__inference_flatten_input_layer_call_and_return_conditional_losses_136075b8в5
.в+
)К&
inputs         А
к "&в#
К
0         А
Ъ З
.__inference_flatten_input_layer_call_fn_136069U8в5
.в+
)К&
inputs         А
к "К         Ач
D__inference_maxpool1_layer_call_and_return_conditional_losses_135974ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ┐
)__inference_maxpool1_layer_call_fn_135969СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ч
D__inference_maxpool2_layer_call_and_return_conditional_losses_136004ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ┐
)__inference_maxpool2_layer_call_fn_135999СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ч
D__inference_maxpool3_layer_call_and_return_conditional_losses_136034ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ┐
)__inference_maxpool3_layer_call_fn_136029СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ч
D__inference_maxpool4_layer_call_and_return_conditional_losses_136064ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ┐
)__inference_maxpool4_layer_call_fn_136059СRвO
HвE
CК@
inputs4                                    
к ";К84                                    Ё
C__inference_model_1_layer_call_and_return_conditional_losses_135214и789:;<=>?@ABCDoвl
eвb
XЪU
(К%

left_input         
)К&
right_input         
p 

 
к "%в"
К
0         
Ъ Ё
C__inference_model_1_layer_call_and_return_conditional_losses_135266и789:;<=>?@ABCDoвl
eвb
XЪU
(К%

left_input         
)К&
right_input         
p

 
к "%в"
К
0         
Ъ ы
C__inference_model_1_layer_call_and_return_conditional_losses_135508г789:;<=>?@ABCDjвg
`в]
SЪP
&К#
inputs/0         
&К#
inputs/1         
p 

 
к "%в"
К
0         
Ъ ы
C__inference_model_1_layer_call_and_return_conditional_losses_135668г789:;<=>?@ABCDjвg
`в]
SЪP
&К#
inputs/0         
&К#
inputs/1         
p

 
к "%в"
К
0         
Ъ ╚
(__inference_model_1_layer_call_fn_134971Ы789:;<=>?@ABCDoвl
eвb
XЪU
(К%

left_input         
)К&
right_input         
p 

 
к "К         ╚
(__inference_model_1_layer_call_fn_135162Ы789:;<=>?@ABCDoвl
eвb
XЪU
(К%

left_input         
)К&
right_input         
p

 
к "К         ├
(__inference_model_1_layer_call_fn_135342Ц789:;<=>?@ABCDjвg
`в]
SЪP
&К#
inputs/0         
&К#
inputs/1         
p 

 
к "К         ├
(__inference_model_1_layer_call_fn_135376Ц789:;<=>?@ABCDjвg
`в]
SЪP
&К#
inputs/0         
&К#
inputs/1         
p

 
к "К         ┬
A__inference_model_layer_call_and_return_conditional_losses_134794}789:;<=>?@ABCDCв@
9в6
,К)

base_input         
p 

 
к "&в#
К
0         А
Ъ ┬
A__inference_model_layer_call_and_return_conditional_losses_134840}789:;<=>?@ABCDCв@
9в6
,К)

base_input         
p

 
к "&в#
К
0         А
Ъ ╛
A__inference_model_layer_call_and_return_conditional_losses_135833y789:;<=>?@ABCD?в<
5в2
(К%
inputs         
p 

 
к "&в#
К
0         А
Ъ ╛
A__inference_model_layer_call_and_return_conditional_losses_135908y789:;<=>?@ABCD?в<
5в2
(К%
inputs         
p

 
к "&в#
К
0         А
Ъ Ъ
&__inference_model_layer_call_fn_134481p789:;<=>?@ABCDCв@
9в6
,К)

base_input         
p 

 
к "К         АЪ
&__inference_model_layer_call_fn_134748p789:;<=>?@ABCDCв@
9в6
,К)

base_input         
p

 
к "К         АЦ
&__inference_model_layer_call_fn_135739l789:;<=>?@ABCD?в<
5в2
(К%
inputs         
p 

 
к "К         АЦ
&__inference_model_layer_call_fn_135772l789:;<=>?@ABCD?в<
5в2
(К%
inputs         
p

 
к "К         А┌
H__inference_output_layer_layer_call_and_return_conditional_losses_135932Нdвa
ZвW
MЪJ
#К 
inputs/0         А
#К 
inputs/1         А

 
p 
к "%в"
К
0         
Ъ ┌
H__inference_output_layer_layer_call_and_return_conditional_losses_135944Нdвa
ZвW
MЪJ
#К 
inputs/0         А
#К 
inputs/1         А

 
p
к "%в"
К
0         
Ъ ▓
-__inference_output_layer_layer_call_fn_135914Аdвa
ZвW
MЪJ
#К 
inputs/0         А
#К 
inputs/1         А

 
p 
к "К         ▓
-__inference_output_layer_layer_call_fn_135920Аdвa
ZвW
MЪJ
#К 
inputs/0         А
#К 
inputs/1         А

 
p
к "К         н
E__inference_reshape_1_layer_call_and_return_conditional_losses_135706d3в0
)в&
$К!
inputs         
к "-в*
#К 
0         
Ъ Е
*__inference_reshape_1_layer_call_fn_135692W3в0
)в&
$К!
inputs         
к " К         л
C__inference_reshape_layer_call_and_return_conditional_losses_135687d3в0
)в&
$К!
inputs         
к "-в*
#К 
0         
Ъ Г
(__inference_reshape_layer_call_fn_135673W3в0
)в&
$К!
inputs         
к " К         п
M__inference_second_base_dense_layer_call_and_return_conditional_losses_136142^AB0в-
&в#
!К
inputs         А
к "&в#
К
0         А
Ъ З
2__inference_second_base_dense_layer_call_fn_136131QAB0в-
&в#
!К
inputs         А
к "К         Ам
J__inference_second_dropout_layer_call_and_return_conditional_losses_136157^4в1
*в'
!К
inputs         А
p 
к "&в#
К
0         А
Ъ м
J__inference_second_dropout_layer_call_and_return_conditional_losses_136169^4в1
*в'
!К
inputs         А
p
к "&в#
К
0         А
Ъ Д
/__inference_second_dropout_layer_call_fn_136147Q4в1
*в'
!К
inputs         А
p 
к "К         АД
/__inference_second_dropout_layer_call_fn_136152Q4в1
*в'
!К
inputs         А
p
к "К         Аў
$__inference_signature_wrapper_135308╬789:;<=>?@ABCDв|
в 
uкr
6

left_input(К%

left_input         
8
right_input)К&
right_input         ";к8
6
output_layer&К#
output_layer         о
L__inference_third_base_dense_layer_call_and_return_conditional_losses_136189^CD0в-
&в#
!К
inputs         А
к "&в#
К
0         А
Ъ Ж
1__inference_third_base_dense_layer_call_fn_136178QCD0в-
&в#
!К
inputs         А
к "К         А